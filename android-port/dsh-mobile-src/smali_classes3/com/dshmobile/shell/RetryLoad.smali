.class public Lcom/dshmobile/shell/RetryLoad;
.super Ljava/lang/Object;
.source "RetryLoad.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static attempts:I


# instance fields
.field private final wv:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "wv"    # Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dshmobile/shell/RetryLoad;->wv:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget v0, Lcom/dshmobile/shell/RetryLoad;->attempts:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/dshmobile/shell/RetryLoad;->attempts:I

    :try_start_0
    iget-object v0, p0, Lcom/dshmobile/shell/RetryLoad;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dshmobile/shell/WebLaunch;->launch(Landroid/webkit/WebView;Landroid/content/Context;)V

    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static final scheduleDelay()J
    .locals 2

    sget v0, Lcom/dshmobile/shell/RetryLoad;->attempts:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const-wide/16 v0, 0x9c4

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3a98

    return-wide v0
.end method

.method public static final resetAttempts()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/dshmobile/shell/RetryLoad;->attempts:I

    return-void
.end method
