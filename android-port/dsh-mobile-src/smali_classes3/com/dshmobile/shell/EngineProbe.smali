.class public final Lcom/dshmobile/shell/EngineProbe;
.super Ljava/lang/Object;
.source "EngineProbe.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dshmobile/shell/EngineProbe;",
        "",
        "<init>",
        "()V",
        "ENGINE_URL",
        "",
        "check",
        "Lorg/json/JSONObject;",
        "timeoutMs",
        "",
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
.field public static final ENGINE_URL:Ljava/lang/String; = "http://127.0.0.1:3080"

.field public static final INSTANCE:Lcom/dshmobile/shell/EngineProbe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dshmobile/shell/EngineProbe;

    invoke-direct {v0}, Lcom/dshmobile/shell/EngineProbe;-><init>()V

    sput-object v0, Lcom/dshmobile/shell/EngineProbe;->INSTANCE:Lcom/dshmobile/shell/EngineProbe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic check$default(Lcom/dshmobile/shell/EngineProbe;IILjava/lang/Object;)Lorg/json/JSONObject;
    .locals 0

    .line 17
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x320

    :cond_0
    invoke-virtual {p0, p1}, Lcom/dshmobile/shell/EngineProbe;->check(I)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final check(I)Lorg/json/JSONObject;
    .locals 10
    .param p1, "timeoutMs"    # I

    .line 18
    const-string v0, "running"

    .line 19
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "http://127.0.0.1:3080"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 20
    .local v2, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 21
    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 22
    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 24
    .local v3, "start":J
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 25
    .local v5, "code":I
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 26
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 27
    if-lez v5, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v1

    :goto_0
    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 28
    const-string v7, "latencyMs"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "start":J
    .end local v5    # "code":I
    goto :goto_1

    .line 29
    :catch_0
    move-exception v2

    .line 30
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "unknown"

    :cond_1
    const-string v3, "error"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 18
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method
