.class public final Lcom/dshmobile/shell/MainActivity$configureWebView$2;
.super Landroid/webkit/WebViewClient;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dshmobile/shell/MainActivity;->configureWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J(\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0018\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\rH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/dshmobile/shell/MainActivity$configureWebView$2",
        "Landroid/webkit/WebViewClient;",
        "shouldOverrideUrlLoading",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "onReceivedError",
        "",
        "errorCode",
        "",
        "description",
        "",
        "failingUrl",
        "onPageFinished",
        "url",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dshmobile/shell/MainActivity;


# direct methods
.method constructor <init>(Lcom/dshmobile/shell/MainActivity;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/dshmobile/shell/MainActivity;

    iput-object p1, p0, Lcom/dshmobile/shell/MainActivity$configureWebView$2;->this$0:Lcom/dshmobile/shell/MainActivity;

    .line 147
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/dshmobile/shell/MainActivity$configureWebView$2;->this$0:Lcom/dshmobile/shell/MainActivity;

    invoke-static {v0, p1}, Lcom/dshmobile/shell/MainActivity;->access$pushSystemDark(Lcom/dshmobile/shell/MainActivity;Landroid/webkit/WebView;)V

    invoke-virtual {v0}, Lcom/dshmobile/shell/MainActivity;->revealWeb()V

    invoke-static {p1}, Lcom/dshmobile/shell/WebLaunch;->injectMobileFit(Landroid/webkit/WebView;)V

    .line 175
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failingUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/dshmobile/shell/MainActivity$configureWebView$2;->this$0:Lcom/dshmobile/shell/MainActivity;

    invoke-static {v0, p4}, Lcom/dshmobile/shell/MainActivity;->access$isEngineSource(Lcom/dshmobile/shell/MainActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dshmobile/shell/MainActivity$configureWebView$2;->this$0:Lcom/dshmobile/shell/MainActivity;

    invoke-static {v0}, Lcom/dshmobile/shell/MainActivity;->access$showGuide(Lcom/dshmobile/shell/MainActivity;)V

    .line 170
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dshmobile/shell/MainActivity$configureWebView$2;->this$0:Lcom/dshmobile/shell/MainActivity;

    invoke-static {v0}, Lcom/dshmobile/shell/MainActivity;->access$showGuide(Lcom/dshmobile/shell/MainActivity;)V

    invoke-static {}, Lcom/dshmobile/shell/RetryLoad;->scheduleDelay()J

    move-result-wide v1

    new-instance v0, Lcom/dshmobile/shell/RetryLoad;

    invoke-direct {v0, p1}, Lcom/dshmobile/shell/RetryLoad;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/dshmobile/shell/RetryLoad;->resetAttempts()V

    .line 154
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/dshmobile/shell/MainActivity$configureWebView$2;->this$0:Lcom/dshmobile/shell/MainActivity;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getMethod(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Lcom/dshmobile/shell/MainActivity;->access$isSessionExport(Lcom/dshmobile/shell/MainActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/dshmobile/shell/MainActivity$configureWebView$2;->this$0:Lcom/dshmobile/shell/MainActivity;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/dshmobile/shell/MainActivity;->access$downloadToDownloads(Lcom/dshmobile/shell/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return v2

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/dshmobile/shell/MainActivity$configureWebView$2;->this$0:Lcom/dshmobile/shell/MainActivity;

    invoke-static {v1, v0}, Lcom/dshmobile/shell/MainActivity;->access$isEngineSource(Lcom/dshmobile/shell/MainActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 162
    return v2

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/dshmobile/shell/MainActivity$configureWebView$2;->this$0:Lcom/dshmobile/shell/MainActivity;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "getUrl(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/dshmobile/shell/MainActivity;->access$openInExternalBrowser(Lcom/dshmobile/shell/MainActivity;Landroid/net/Uri;)Z

    .line 165
    return v2
.end method
