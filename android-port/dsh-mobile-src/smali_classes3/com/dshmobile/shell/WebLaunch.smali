.class public final Lcom/dshmobile/shell/WebLaunch;
.super Ljava/lang/Object;
.source "WebLaunch.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 20
    invoke-static {}, Lcom/dshmobile/shell/WebLaunch;->portOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(J)V
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lcom/dshmobile/shell/WebLaunch;->sleep(J)V

    return-void
.end method

.method public static injectMobileFit(Landroid/webkit/WebView;)V
    .locals 2

    .line 102
    const-string v0, "(function(){if(document.getElementById(\'dsh-mobile-fit\'))return;var st=document.createElement(\'style\');st.id=\'dsh-mobile-fit\';st.textContent=`@media(max-width:600px){[data-sidebar-collapsed=\'false\'][style*=\'grid-template-columns\']{grid-template-columns:minmax(0,1fr)!important}[data-sidebar-collapsed=\'false\']>div:first-child{position:fixed;left:0;top:0;bottom:0;width:min(300px,80vw)!important;max-width:min(300px,80vw)!important;z-index:900!important;background:var(--dsw-alias-bg-base,#161616)!important;box-shadow:8px 0 40px rgba(0,0,0,.55)!important}nav button{min-height:44px!important;min-width:44px!important}[role=dialog] button:not([role=switch]){min-height:44px!important}[role=dialog]{margin:0 12px!important}[role=dialog] textarea,[role=dialog] input{font-size:16px!important;min-height:44px!important}textarea,input{font-size:16px!important}[class*=toggle]{min-width:48px!important;min-height:48px!important}}@media(max-width:600px){\n  [data-shortcut-modal=\"settings\"][role=\"dialog\"]{\n    display:flex!important;flex-direction:column!important;\n    width:100vw!important;max-width:100vw!important;height:100dvh!important;\n    max-height:100dvh!important;margin:0!important;border-radius:0!important;\n    box-sizing:border-box!important;overflow:hidden!important;\n  }\n  [data-shortcut-modal=\"settings\"]>nav{flex:none;width:100%!important;max-width:none!important;box-sizing:border-box!important;padding:12px 12px 0!important;min-width:0!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_navTitle\"]{padding:0 48px 12px 4px!important;font-size:18px!important;line-height:32px!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_navList\"]{display:flex!important;flex-direction:row!important;gap:6px!important;overflow-x:auto!important;overflow-y:hidden!important;padding-bottom:10px!important;flex:none!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_navCell\"]{flex:0 0 auto!important;min-height:44px!important;padding:10px 12px!important;white-space:nowrap!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_navLabel\"]{flex:none!important}\n  [data-shortcut-modal=\"settings\"]>[class*=\"_content\"]{display:flex!important;flex-direction:column!important;flex:1!important;min-width:0!important;min-height:0!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_header\"]{height:auto!important;flex:none!important;padding:4px 16px 8px!important;min-height:52px!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_close\"]{position:absolute!important;top:6px!important;right:8px!important;width:44px!important;height:44px!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_options\"]{flex:1!important;min-height:0!important;padding:0 16px 24px!important;overflow-y:auto!important;overflow-x:hidden!important;overscroll-behavior:contain}\n  [data-shortcut-modal=\"settings\"] button:not([role=\"switch\"]){min-height:44px!important;min-width:44px!important;box-sizing:border-box!important}\n  /* Keep a 48x44 touch target; paint the 44x26 track inside it. */\n  [data-shortcut-modal=\"settings\"] button[role=\"switch\"]{\n    position:relative!important;display:block!important;flex:0 0 48px!important;\n    width:48px!important;min-width:48px!important;max-width:48px!important;\n    height:44px!important;min-height:44px!important;max-height:44px!important;\n    padding:0!important;border:0!important;background:transparent!important;\n    box-sizing:border-box!important;border-radius:8px!important;\n  }\n  [data-shortcut-modal=\"settings\"] button[role=\"switch\"]::before{\n    content:\"\";position:absolute;left:2px;top:9px;width:44px;height:26px;\n    border-radius:13px;corner-shape:round;background:var(--dsw-alias-border-l3,#b8bdc6);\n    pointer-events:none;transition:background-color .15s ease;\n  }\n  [data-shortcut-modal=\"settings\"] button[role=\"switch\"][aria-checked=\"true\"]::before{\n    background:var(--dsw-alias-brand-primary,#0f1115);\n  }\n  [data-shortcut-modal=\"settings\"] button[role=\"switch\"]>span{\n    position:absolute!important;left:5px!important;top:12px!important;\n    width:20px!important;height:20px!important;border-radius:50%!important;\n    margin:0!important;corner-shape:round!important;background:var(--dsw-alias-label-primary-foreground,#fff)!important;\n    transform:translateX(0)!important;pointer-events:none;\n    transition:transform .15s ease!important;\n  }\n  [data-shortcut-modal=\"settings\"] button[role=\"switch\"][aria-checked=\"true\"]>span{transform:translateX(18px)!important}\n  [data-shortcut-modal=\"settings\"] button[role=\"switch\"][aria-checked=\"false\"]>span{background:var(--dsw-alias-switch-thumb,#fff)!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_rowText\"]{min-width:0!important;flex:1!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_selector\"]{white-space:normal!important;max-width:180px!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_cubeRow\"]{display:flex!important;gap:8px!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_themeCube\"]{flex:1 1 0!important;width:auto!important;min-width:0!important;padding:12px 4px!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_arrows\"]{display:contents!important;opacity:1!important;visibility:visible!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_stepper\"]{width:auto!important;height:auto!important;min-height:44px!important;overflow:visible!important;gap:4px!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_stepper\"]>[class*=\"_value\"]{order:1!important;min-width:24px!important;text-align:center!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_arrows\"]>button:first-child{order:2!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_arrows\"]>button:last-child{order:0!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_row\"]:has([class*=\"_stepper\"]){flex-wrap:wrap!important;gap:12px!important}\n  [data-shortcut-modal=\"settings\"] [class*=\"_control\"]{flex-shrink:0!important;max-width:100%!important;flex-wrap:wrap!important}\n}\n`;document.head.appendChild(st);function fit(){var root=document.querySelector(\'[data-sidebar-collapsed]\');var open=root&&root.getAttribute(\'data-sidebar-collapsed\')===\'false\'&&window.innerWidth<=600;var ov=document.getElementById(\'dsh-mobile-ov\');if(open&&!ov){ov=document.createElement(\'div\');ov.id=\'dsh-mobile-ov\';ov.style.cssText=\'position:fixed;inset:0;z-index:899;background:rgba(0,0,0,.45)\';ov.addEventListener(\'click\',function(){var t=document.querySelector(\"[class*=\'toggle\']\")||document.querySelector(\'nav button\');if(t)t.click();});document.body.appendChild(ov);}if(!open&&ov)ov.remove();}fit();new MutationObserver(fit).observe(document.documentElement,{subtree:true,childList:true,attributes:true});window.addEventListener(\'resize\',fit);})()"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static launch(Landroid/webkit/WebView;Landroid/content/Context;)V
    .locals 7

    .line 25
    invoke-static {p1}, Lcom/dshmobile/shell/WebLaunch;->readTokenLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    .line 27
    new-instance v6, Ljava/lang/Thread;

    move-wide v1, v0

    new-instance v0, Lcom/dshmobile/shell/WebLaunch$1;

    move-object v5, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/dshmobile/shell/WebLaunch$1;-><init>(JLandroid/content/Context;Ljava/lang/String;Landroid/webkit/WebView;)V

    const-string p0, "dsh-web-launch"

    invoke-direct {v6, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static portOpen()Z
    .locals 4

    .line 107
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 109
    :try_start_1
    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v2, "127.0.0.1"

    const/16 v3, 0xc08

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    .line 112
    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return v1

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 113
    :catchall_2
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    const/4 v0, 0x0

    return v0
.end method

.method static readTokenLine(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 121
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "engine.log"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    .line 123
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p0, v2

    new-array p0, p0, [B

    .line 124
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 127
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    if-gtz v1, :cond_1

    return-object v0

    .line 132
    :cond_1
    :try_start_3
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 133
    const-string p0, "dsh web: http"

    invoke-virtual {v2, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_2

    return-object v0

    :cond_2
    const/16 v1, 0xa

    .line 135
    invoke-virtual {v2, v1, p0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_3

    .line 136
    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x9

    .line 137
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x20

    .line 138
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    .line 139
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 140
    :cond_4
    const-string v1, "http"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v1, :cond_5

    move-object v0, p0

    :cond_5
    return-object v0

    :catchall_1
    move-exception p0

    .line 129
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 130
    :catchall_2
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    return-object v0
.end method

.method private static sleep(J)V
    .locals 0

    .line 147
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
