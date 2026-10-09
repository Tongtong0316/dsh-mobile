package com.dshmobile.shell;

import android.content.Context;
import android.webkit.WebView;
import java.io.File;
import java.io.FileInputStream;
import java.net.InetSocketAddress;
import java.net.Socket;

/**
 * 安卓移植（dsh-mobile）：取代 v14 的急切 loadUrlWithToken。
 * 冷启动时引擎未起，旧实现拿上一次 boot 的 token 行立即加载，
 * 必然 ERR_CONNECTION_REFUSED → WebView 错误页闪屏。
 *
 * 本类后台线程等待 127.0.0.1:3080 真正监听：
 *  - 首次探测端口就通（引擎已在跑/重试场景）→ 直接用现有 token 行
 *  - 端口曾不通（冷启动）→ 要求 engine.log 出现与启动时不同的新 token 行
 *    （boot 完成才会写），再回主线程 loadUrl；期间由鲸鱼引导层覆盖屏幕。
 */
public final class WebLaunch {

    private WebLaunch() {}

    public static void launch(final WebView wv, final Context ctx) {
        final String initialLine = readTokenLine(ctx);
        final long deadline = System.currentTimeMillis() + 120000L;
        new Thread(new Runnable() {
            @Override
            public void run() {
                boolean coldBoot = false;
                while (System.currentTimeMillis() < deadline) {
                    if (portOpen()) {
                        if (!coldBoot) break;
                        String line = readTokenLine(ctx);
                        if (line != null && !line.equals(initialLine)) break;
                    } else {
                        coldBoot = true;
                    }
                    sleep(250);
                }
                String url = null;
                long tokenDeadline = System.currentTimeMillis() + 20000L;
                while (System.currentTimeMillis() < tokenDeadline) {
                    String line = readTokenLine(ctx);
                    if (line != null && (!coldBoot || !line.equals(initialLine))) {
                        url = line;
                        break;
                    }
                    sleep(300);
                }
                final String target = url != null ? url : "http://127.0.0.1:3080";
                wv.post(new Runnable() {
                    @Override
                    public void run() {
                        try { wv.loadUrl(target); } catch (Throwable ignored) {}
                    }
                });
            }
        }, "dsh-web-launch").start();
    }

    private static boolean portOpen() {
        try {
            Socket s = new Socket();
            try {
                s.connect(new InetSocketAddress("127.0.0.1", 3080), 300);
                return true;
            } finally {
                try { s.close(); } catch (Throwable ignored) {}
            }
        } catch (Throwable t) {
            return false;
        }
    }

    static String readTokenLine(Context ctx) {
        try {
            File log = new File(ctx.getFilesDir(), "engine.log");
            if (!log.isFile()) return null;
            byte[] buf = new byte[(int) Math.min(log.length(), 1048576L)];
            FileInputStream fis = new FileInputStream(log);
            int n;
            try {
                n = fis.read(buf);
            } finally {
                try { fis.close(); } catch (Throwable ignored) {}
            }
            if (n <= 0) return null;
            String s = new String(buf, 0, n, "UTF-8");
            int i = s.lastIndexOf("dsh web: http");
            if (i < 0) return null;
            int e = s.indexOf('\n', i);
            String line = (e < 0 ? s.substring(i) : s.substring(i, e)).trim();
            String url = line.substring("dsh web: ".length()).trim();
            int sp = url.indexOf(' ');
            if (sp >= 0) url = url.substring(0, sp);
            return url.startsWith("http") ? url : null;
        } catch (Throwable t) {
            return null;
        }
    }

    private static void sleep(long ms) {
        try { Thread.sleep(ms); } catch (InterruptedException e) { Thread.currentThread().interrupt(); }
    }
}
