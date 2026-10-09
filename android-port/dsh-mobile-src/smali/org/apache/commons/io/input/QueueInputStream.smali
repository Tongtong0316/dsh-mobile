.class public Lorg/apache/commons/io/input/QueueInputStream;
.super Ljava/io/InputStream;
.source "QueueInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/QueueInputStream$Builder;
    }
.end annotation


# instance fields
.field private final blockingQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final timeoutNanos:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 149
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/QueueInputStream;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    .local p1, "blockingQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Integer;>;"
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/QueueInputStream;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/time/Duration;)V

    .line 161
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/time/Duration;)V
    .locals 2
    .param p2, "timeout"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/time/Duration;",
            ")V"
        }
    .end annotation

    .line 169
    .local p1, "blockingQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 170
    const-string v0, "blockingQueue"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/BlockingQueue;

    iput-object v0, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    .line 171
    const-string v0, "timeout"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/io/input/QueueInputStream;->timeoutNanos:J

    .line 172
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/time/Duration;Lorg/apache/commons/io/input/QueueInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/concurrent/BlockingQueue;
    .param p2, "x1"    # Ljava/time/Duration;
    .param p3, "x2"    # Lorg/apache/commons/io/input/QueueInputStream$1;

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/QueueInputStream;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/time/Duration;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/QueueInputStream$Builder;
    .locals 1

    .line 138
    new-instance v0, Lorg/apache/commons/io/input/QueueInputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/QueueInputStream$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method getBlockingQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method getTimeout()Ljava/time/Duration;
    .locals 2

    .line 189
    iget-wide v0, p0, Lorg/apache/commons/io/input/QueueInputStream;->timeoutNanos:J

    invoke-static {v0, v1}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public newQueueOutputStream()Lorg/apache/commons/io/output/QueueOutputStream;
    .locals 2

    .line 198
    new-instance v0, Lorg/apache/commons/io/output/QueueOutputStream;

    iget-object v1, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/output/QueueOutputStream;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    return-object v0
.end method

.method public read()I
    .locals 4

    .line 210
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/QueueInputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    iget-wide v1, p0, Lorg/apache/commons/io/input/QueueInputStream;->timeoutNanos:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 211
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v1, 0xff

    :goto_0
    return v1

    .line 212
    .end local v0    # "value":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 216
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
