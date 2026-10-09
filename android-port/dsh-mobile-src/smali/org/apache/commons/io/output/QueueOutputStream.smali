.class public Lorg/apache/commons/io/output/QueueOutputStream;
.super Ljava/io/OutputStream;
.source "QueueOutputStream.java"


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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/QueueOutputStream;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .line 65
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

    .line 72
    .local p1, "blockingQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 73
    const-string v0, "blockingQueue"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/BlockingQueue;

    iput-object v0, p0, Lorg/apache/commons/io/output/QueueOutputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    .line 74
    return-void
.end method


# virtual methods
.method public newQueueInputStream()Lorg/apache/commons/io/input/QueueInputStream;
    .locals 2

    .line 83
    invoke-static {}, Lorg/apache/commons/io/input/QueueInputStream;->builder()Lorg/apache/commons/io/input/QueueInputStream$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/io/output/QueueOutputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/input/QueueInputStream$Builder;->setBlockingQueue(Ljava/util/concurrent/BlockingQueue;)Lorg/apache/commons/io/input/QueueInputStream$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/io/input/QueueInputStream$Builder;->get()Lorg/apache/commons/io/input/QueueInputStream;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 94
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/output/QueueOutputStream;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    and-int/lit16 v1, p1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    nop

    .line 101
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 97
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 98
    .local v1, "interruptedIoException":Ljava/io/InterruptedIOException;
    invoke-virtual {v1, v0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 99
    throw v1
.end method
