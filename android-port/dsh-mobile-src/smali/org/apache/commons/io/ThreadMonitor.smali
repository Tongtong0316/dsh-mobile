.class final Lorg/apache/commons/io/ThreadMonitor;
.super Ljava/lang/Object;
.source "ThreadMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final thread:Ljava/lang/Thread;

.field private final timeout:Ljava/time/Duration;


# direct methods
.method private constructor <init>(Ljava/lang/Thread;Ljava/time/Duration;)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "timeout"    # Ljava/time/Duration;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/apache/commons/io/ThreadMonitor;->thread:Ljava/lang/Thread;

    .line 92
    iput-object p2, p0, Lorg/apache/commons/io/ThreadMonitor;->timeout:Ljava/time/Duration;

    .line 93
    return-void
.end method

.method static start(Ljava/lang/Thread;Ljava/time/Duration;)Ljava/lang/Thread;
    .locals 3
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "timeout"    # Ljava/time/Duration;

    .line 60
    invoke-virtual {p1}, Ljava/time/Duration;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/time/Duration;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/apache/commons/io/ThreadMonitor;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/io/ThreadMonitor;-><init>(Ljava/lang/Thread;Ljava/time/Duration;)V

    const-class v2, Lorg/apache/commons/io/ThreadMonitor;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 64
    .local v0, "monitor":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    return-object v0

    .line 61
    .end local v0    # "monitor":Ljava/lang/Thread;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static start(Ljava/time/Duration;)Ljava/lang/Thread;
    .locals 1
    .param p0, "timeout"    # Ljava/time/Duration;

    .line 49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/io/ThreadMonitor;->start(Ljava/lang/Thread;Ljava/time/Duration;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method static stop(Ljava/lang/Thread;)V
    .locals 0
    .param p0, "thread"    # Ljava/lang/Thread;

    .line 75
    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 103
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/ThreadMonitor;->timeout:Ljava/time/Duration;

    invoke-static {v0}, Lorg/apache/commons/io/ThreadUtils;->sleep(Ljava/time/Duration;)V

    .line 104
    iget-object v0, p0, Lorg/apache/commons/io/ThreadMonitor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 108
    :goto_0
    return-void
.end method
