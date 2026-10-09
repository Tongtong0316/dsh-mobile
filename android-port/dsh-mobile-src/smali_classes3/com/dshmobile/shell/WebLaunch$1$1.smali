.class Lcom/dshmobile/shell/WebLaunch$1$1;
.super Ljava/lang/Object;
.source "WebLaunch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dshmobile/shell/WebLaunch$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dshmobile/shell/WebLaunch$1;

.field final synthetic val$target:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dshmobile/shell/WebLaunch$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/dshmobile/shell/WebLaunch$1$1;->this$0:Lcom/dshmobile/shell/WebLaunch$1;

    iput-object p2, p0, Lcom/dshmobile/shell/WebLaunch$1$1;->val$target:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/dshmobile/shell/WebLaunch$1$1;->this$0:Lcom/dshmobile/shell/WebLaunch$1;

    iget-object v0, v0, Lcom/dshmobile/shell/WebLaunch$1;->val$wv:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/dshmobile/shell/WebLaunch$1$1;->val$target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
