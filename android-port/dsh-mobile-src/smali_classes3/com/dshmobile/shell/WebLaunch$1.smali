.class Lcom/dshmobile/shell/WebLaunch$1;
.super Ljava/lang/Object;
.source "WebLaunch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dshmobile/shell/WebLaunch;->launch(Landroid/webkit/WebView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$deadline:J

.field final synthetic val$initialLine:Ljava/lang/String;

.field final synthetic val$wv:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(JLandroid/content/Context;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    iput-wide p1, p0, Lcom/dshmobile/shell/WebLaunch$1;->val$deadline:J

    iput-object p3, p0, Lcom/dshmobile/shell/WebLaunch$1;->val$ctx:Landroid/content/Context;

    iput-object p4, p0, Lcom/dshmobile/shell/WebLaunch$1;->val$initialLine:Ljava/lang/String;

    iput-object p5, p0, Lcom/dshmobile/shell/WebLaunch$1;->val$wv:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/dshmobile/shell/WebLaunch$1;->val$deadline:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    .line 32
    invoke-static {}, Lcom/dshmobile/shell/WebLaunch;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/dshmobile/shell/WebLaunch$1;->val$ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/dshmobile/shell/WebLaunch;->readTokenLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 35
    iget-object v2, p0, Lcom/dshmobile/shell/WebLaunch$1;->val$initialLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :cond_2
    const-wide/16 v1, 0xfa

    .line 39
    invoke-static {v1, v2}, Lcom/dshmobile/shell/WebLaunch;->access$100(J)V

    goto :goto_0

    .line 42
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x4e20

    add-long/2addr v1, v3

    .line 43
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-gez v5, :cond_5

    .line 44
    iget-object v3, p0, Lcom/dshmobile/shell/WebLaunch$1;->val$ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/dshmobile/shell/WebLaunch;->readTokenLine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_6

    .line 45
    iget-object v4, p0, Lcom/dshmobile/shell/WebLaunch$1;->val$initialLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    const-wide/16 v3, 0x12c

    .line 49
    invoke-static {v3, v4}, Lcom/dshmobile/shell/WebLaunch;->access$100(J)V

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    goto :goto_4

    .line 51
    :cond_7
    const-string v3, "http://127.0.0.1:3080"

    .line 52
    :goto_4
    iget-object v0, p0, Lcom/dshmobile/shell/WebLaunch$1;->val$wv:Landroid/webkit/WebView;

    new-instance v1, Lcom/dshmobile/shell/WebLaunch$1$1;

    invoke-direct {v1, p0, v3}, Lcom/dshmobile/shell/WebLaunch$1$1;-><init>(Lcom/dshmobile/shell/WebLaunch$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
