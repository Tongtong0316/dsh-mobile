.class public final Lcom/dshmobile/shell/ShizukuSupport;
.super Ljava/lang/Object;
.source "ShizukuSupport.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dshmobile/shell/ShizukuSupport;",
        "",
        "<init>",
        "()V",
        "isAvailable",
        "",
        "status",
        "",
        "context",
        "Landroid/content/Context;",
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


# static fields
.field public static final INSTANCE:Lcom/dshmobile/shell/ShizukuSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dshmobile/shell/ShizukuSupport;

    invoke-direct {v0}, Lcom/dshmobile/shell/ShizukuSupport;-><init>()V

    sput-object v0, Lcom/dshmobile/shell/ShizukuSupport;->INSTANCE:Lcom/dshmobile/shell/ShizukuSupport;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isAvailable()Z
    .locals 2

    .line 17
    nop

    .line 18
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lrikka/shizuku/Shizuku;->pingBinder()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lrikka/shizuku/Shizuku;->checkSelfPermission()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    .local v1, "<unused var>":Ljava/lang/Throwable;
    nop

    .line 17
    .end local v1    # "<unused var>":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return v0
.end method

.method public final status(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/dshmobile/shell/ShizukuSupport;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Lrikka/shizuku/Shizuku;->getVersion()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shizuku \u5df2\u6388\u6743\uff08v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff09\u2014\u2014\u4fdd\u6d3b\u589e\u5f3a\u5c31\u7eea"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "Shizuku \u672a\u8fd0\u884c\uff08\u53ef\u9009\uff1a\u540e\u53f0\u4fdd\u6d3b\u589e\u5f3a\u9700\u8981\u5b83\uff09"

    .line 26
    :goto_0
    return-object v0
.end method
