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


    /**
     * 竖屏手机适配注入（onPageFinished 调用；幂等）。
     * 稳定钩子：data-sidebar-collapsed / role=dialog / nav button；
     * CSS 经 JS 模板字面量嵌入（内容无反引号/无 ${），避免多层转义。
     */
    public static void injectMobileFit(final WebView wv) {
        final String css = "@media(max-width:600px){"
            + "[data-sidebar-collapsed='false'][style*='grid-template-columns']{grid-template-columns:minmax(0,1fr)!important}"
            + "[data-sidebar-collapsed='false']>div:first-child{position:fixed;left:0;top:0;bottom:0;"
            + "width:min(300px,80vw)!important;max-width:min(300px,80vw)!important;z-index:900!important;"
            + "background:var(--dsw-alias-bg-base,#161616)!important;box-shadow:8px 0 40px rgba(0,0,0,.55)!important}"
            + "nav button{min-height:44px!important;min-width:44px!important}"
            + "[role=dialog] button:not([role=switch]){min-height:44px!important}"
            + "[role=dialog]{margin:0 12px!important}"
            + "[role=dialog] textarea,[role=dialog] input{font-size:16px!important;min-height:44px!important}"
            + "textarea,input{font-size:16px!important}"
            + "[class*=toggle]{min-width:48px!important;min-height:48px!important}"
            + "}"
            // Phone settings: layout and independent switch touch target.
            + "@media(max-width:600px){\n  [data-shortcut-modal=\"settings\"][role=\"dialog\"]{\n    display:flex!important;flex-direction:column!important;\n    width:100vw!important;max-width:100vw!important;height:100dvh!important;\n    max-height:100dvh!important;margin:0!important;border-radius:0!important;\n    box-sizing:border-box!important;overflow:hidden!important;\n  }\n  [data-shortcut-modal=\"settings\"]>nav{flex:none;width:100%!important;max-width:none!important;box-sizing:border-box!important;padding:12px 12px 0!important;min-width:0!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_navTitle\"]{padding:0 48px 12px 4px!important;font-size:18px!important;line-height:32px!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_navList\"]{display:flex!important;flex-direction:row!important;gap:6px!important;overflow-x:auto!important;overflow-y:hidden!important;padding-bottom:10px!important;flex:none!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_navCell\"]{flex:0 0 auto!important;min-height:44px!important;padding:10px 12px!important;white-space:nowrap!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_navLabel\"]{flex:none!important}\n  [data-shortcut-modal=\"settings\"]>[class*=\"_content\"]{display:flex!important;flex-direction:column!important;flex:1!important;min-width:0!important;min-height:0!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_header\"]{height:auto!important;flex:none!important;padding:4px 16px 8px!important;min-height:52px!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_close\"]{position:absolute!important;top:6px!important;right:8px!important;width:44px!important;height:44px!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_options\"]{flex:1!important;min-height:0!important;padding:0 16px 24px!important;overflow-y:auto!important;overflow-x:hidden!important;overscroll-behavior:contain}\n  [data-shortcut-modal=\"settings\"] button:not([role=\"switch\"]){min-height:44px!important;min-width:44px!important;box-sizing:border-box!important}\n  /* Keep a 48x44 touch target; paint the 44x26 track inside it. */\n  [data-shortcut-modal=\"settings\"] button[role=\"switch\"]{\n    position:relative!important;display:block!important;flex:0 0 48px!important;\n    width:48px!important;min-width:48px!important;max-width:48px!important;\n    height:44px!important;min-height:44px!important;max-height:44px!important;\n    padding:0!important;border:0!important;background:transparent!important;\n    box-sizing:border-box!important;border-radius:8px!important;\n  }\n  [data-shortcut-modal=\"settings\"] button[role=\"switch\"]::before{\n    content:\"\";position:absolute;left:2px;top:9px;width:44px;height:26px;\n    border-radius:13px;corner-shape:round;background:var(--dsw-alias-border-l3,#b8bdc6);\n    pointer-events:none;transition:background-color .15s ease;\n  }\n  [data-shortcut-modal=\"settings\"] button[role=\"switch\"][aria-checked=\"true\"]::before{\n    background:var(--dsw-alias-brand-primary,#0f1115);\n  }\n  [data-shortcut-modal=\"settings\"] button[role=\"switch\"]>span{\n    position:absolute!important;left:5px!important;top:12px!important;\n    width:20px!important;height:20px!important;border-radius:50%!important;\n    margin:0!important;corner-shape:round!important;background:var(--dsw-alias-label-primary-foreground,#fff)!important;\n    transform:translateX(0)!important;pointer-events:none;\n    transition:transform .15s ease!important;\n  }\n  [data-shortcut-modal=\"settings\"] button[role=\"switch\"][aria-checked=\"true\"]>span{transform:translateX(18px)!important}\n  [data-shortcut-modal=\"settings\"] button[role=\"switch\"][aria-checked=\"false\"]>span{background:var(--dsw-alias-switch-thumb,#fff)!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_rowText\"]{min-width:0!important;flex:1!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_selector\"]{white-space:normal!important;max-width:180px!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_cubeRow\"]{display:flex!important;gap:8px!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_themeCube\"]{flex:1 1 0!important;width:auto!important;min-width:0!important;padding:12px 4px!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_arrows\"]{display:contents!important;opacity:1!important;visibility:visible!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_stepper\"]{width:auto!important;height:auto!important;min-height:44px!important;overflow:visible!important;gap:4px!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_stepper\"]>[class*=\"_value\"]{order:1!important;min-width:24px!important;text-align:center!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_arrows\"]>button:first-child{order:2!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_arrows\"]>button:last-child{order:0!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_row\"]:has([class*=\"_stepper\"]){flex-wrap:wrap!important;gap:12px!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_control\"]{flex-shrink:0!important;max-width:100%!important;flex-wrap:wrap!important}\n}\n";
        final String script = "(function(){"
            + "if(document.getElementById('dsh-mobile-fit'))return;"
            + "var st=document.createElement('style');st.id='dsh-mobile-fit';"
            + "st.textContent=`" + css + "`;"
            + "document.head.appendChild(st);"
            + "function fit(){var root=document.querySelector('[data-sidebar-collapsed]');"
            + "var open=root&&root.getAttribute('data-sidebar-collapsed')==='false'&&window.innerWidth<=600;"
            + "var ov=document.getElementById('dsh-mobile-ov');"
            + "if(open&&!ov){ov=document.createElement('div');ov.id='dsh-mobile-ov';"
            + "ov.style.cssText='position:fixed;inset:0;z-index:899;background:rgba(0,0,0,.45)';"
            + "ov.addEventListener('click',function(){"
            + "var t=document.querySelector(\"[class*='toggle']\")||document.querySelector('nav button');"
            + "if(t)t.click();});"
            + "document.body.appendChild(ov);}"
            + "if(!open&&ov)ov.remove();}"
            + "fit();"
            + "new MutationObserver(fit).observe(document.documentElement,{subtree:true,childList:true,attributes:true});"
            + "window.addEventListener('resize',fit);"
            + "})()";
        wv.evaluateJavascript(script, null);
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
