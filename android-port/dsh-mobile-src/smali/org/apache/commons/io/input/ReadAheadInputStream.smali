.class public Lorg/apache/commons/io/input/ReadAheadInputStream;
.super Ljava/io/FilterInputStream;
.source "ReadAheadInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BYTE_ARRAY_1:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private activeBuffer:Ljava/nio/ByteBuffer;

.field private final asyncReadComplete:Ljava/util/concurrent/locks/Condition;

.field private endOfStream:Z

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private isClosed:Z

.field private isReading:Z

.field private isUnderlyingInputStreamBeingClosed:Z

.field private final isWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private readAborted:Z

.field private readAheadBuffer:Ljava/nio/ByteBuffer;

.field private readException:Ljava/lang/Throwable;

.field private readInProgress:Z

.field private final shutdownExecutorService:Z

.field private final stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public static synthetic $r8$lambda$cP932H2nA4Uo10rUydLTRzAUSL0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->newDaemonThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 50
    nop

    .line 115
    new-instance v0, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/ReadAheadInputStream;->BYTE_ARRAY_1:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bufferSizeInBytes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    invoke-static {}, Lorg/apache/commons/io/input/ReadAheadInputStream;->newExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/ReadAheadInputStream;-><init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;Z)V

    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bufferSizeInBytes"    # I
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/input/ReadAheadInputStream;-><init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;Z)V

    .line 215
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;Z)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bufferSizeInBytes"    # I
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "shutdownExecutorService"    # Z

    .line 227
    const-string v0, "inputStream"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 148
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 184
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 190
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->asyncReadComplete:Ljava/util/concurrent/locks/Condition;

    .line 228
    if-lez p2, :cond_0

    .line 231
    const-string v0, "executorService"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 232
    iput-boolean p4, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->shutdownExecutorService:Z

    .line 233
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    .line 234
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    .line 235
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 236
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 237
    return-void

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bufferSizeInBytes should be greater than 0, but the value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;ZLorg/apache/commons/io/input/ReadAheadInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lorg/apache/commons/io/input/ReadAheadInputStream$1;

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/io/input/ReadAheadInputStream;-><init>(Ljava/io/InputStream;ILjava/util/concurrent/ExecutorService;Z)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 50
    invoke-static {}, Lorg/apache/commons/io/input/ReadAheadInputStream;->newExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;
    .locals 1

    .line 124
    new-instance v0, Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ReadAheadInputStream$Builder;-><init>()V

    return-object v0
.end method

.method private checkReadException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    iget-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAborted:Z

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readException:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readException:Ljava/lang/Throwable;

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 255
    :cond_0
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readException:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 257
    :cond_1
    return-void
.end method

.method private closeUnderlyingInputStreamIfNecessary()V
    .locals 3

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "needToCloseUnderlyingInputStream":Z
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 298
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isReading:Z

    .line 299
    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isClosed:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isUnderlyingInputStreamBeingClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 301
    const/4 v0, 0x1

    .line 304
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 305
    nop

    .line 306
    if-eqz v0, :cond_1

    .line 308
    :try_start_1
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 311
    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    .line 313
    :cond_1
    :goto_0
    return-void

    .line 304
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 305
    throw v1
.end method

.method private isEndOfStream()Z
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->endOfStream:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$static$0()[B
    .locals 1

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [B

    return-object v0
.end method

.method private static newDaemonThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 134
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "commons-io-read-ahead"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 135
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 136
    return-object v0
.end method

.method private static newExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 145
    new-instance v0, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private readAsync()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 375
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 376
    .local v0, "arr":[B
    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->endOfStream:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->checkReadException()V

    .line 380
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 381
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 382
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 385
    nop

    .line 386
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/apache/commons/io/input/ReadAheadInputStream$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/input/ReadAheadInputStream;[B)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 448
    return-void

    .line 384
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 377
    return-void

    .line 384
    .end local v0    # "arr":[B
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 385
    throw v0
.end method

.method private signalAsyncReadComplete()V
    .locals 2

    .line 451
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 453
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->asyncReadComplete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 456
    nop

    .line 457
    return-void

    .line 455
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 456
    throw v0
.end method

.method private skipInternal(J)J
    .locals 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 489
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->waitForAsyncReadComplete()V

    .line 490
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    const-wide/16 v0, 0x0

    return-wide v0

    .line 493
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, p1

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 495
    long-to-int v0, p1

    .line 497
    .local v0, "toSkip":I
    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v0, v2

    .line 498
    if-lez v0, :cond_1

    .line 499
    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 500
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 501
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 502
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->swapBuffers()V

    .line 504
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAsync()V

    .line 505
    return-wide p1

    .line 498
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 507
    .end local v0    # "toSkip":I
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->available()I

    move-result v0

    .line 508
    .local v0, "skippedBytes":I
    int-to-long v2, v0

    sub-long v2, p1, v2

    .line 509
    .local v2, "toSkip":J
    iget-object v4, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 510
    iget-object v4, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 511
    iget-object v4, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 512
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 513
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 514
    .local v4, "skippedFromInputStream":J
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAsync()V

    .line 515
    int-to-long v6, v0

    add-long/2addr v6, v4

    return-wide v6

    .line 488
    .end local v0    # "skippedBytes":I
    .end local v2    # "toSkip":J
    .end local v4    # "skippedFromInputStream":J
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private swapBuffers()V
    .locals 2

    .line 522
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    .line 523
    .local v0, "temp":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    .line 524
    iput-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    .line 525
    return-void
.end method

.method private waitForAsyncReadComplete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 530
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 533
    :goto_0
    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->asyncReadComplete:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 542
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 545
    nop

    .line 546
    nop

    .line 547
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->checkReadException()V

    .line 548
    return-void

    .line 544
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 545
    throw v0

    .line 541
    :catchall_1
    move-exception v1

    goto :goto_1

    .line 536
    :catch_0
    move-exception v1

    .line 537
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 538
    .local v2, "iio":Ljava/io/InterruptedIOException;
    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 539
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 542
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "iio":Ljava/io/InterruptedIOException;
    :goto_1
    :try_start_3
    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 544
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 545
    nop

    .line 546
    throw v1

    .line 544
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 545
    throw v0
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 244
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    .line 246
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 244
    return v0

    .line 246
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 247
    throw v0
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "isSafeToCloseUnderlyingInputStream":Z
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 264
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 265
    return-void

    .line 267
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isClosed:Z

    .line 268
    iget-boolean v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isReading:Z

    if-nez v2, :cond_1

    .line 270
    const/4 v0, 0x1

    .line 272
    iput-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isUnderlyingInputStreamBeingClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 275
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 276
    nop

    .line 278
    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->shutdownExecutorService:Z

    if-eqz v1, :cond_3

    .line 280
    :try_start_2
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 281
    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->executorService:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v3, 0x7fffffffffffffffL

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    if-eqz v0, :cond_3

    .line 288
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    goto :goto_1

    .line 287
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 284
    .local v2, "iio":Ljava/io/InterruptedIOException;
    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 285
    nop

    .end local v0    # "isSafeToCloseUnderlyingInputStream":Z
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 287
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "iio":Ljava/io/InterruptedIOException;
    .restart local v0    # "isSafeToCloseUnderlyingInputStream":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 288
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 290
    :cond_2
    throw v1

    .line 292
    :cond_3
    :goto_1
    return-void

    .line 275
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 276
    throw v1
.end method

.method synthetic lambda$readAsync$1$org-apache-commons-io-input-ReadAheadInputStream([B)V
    .locals 8
    .param p1, "arr"    # [B

    .line 387
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 389
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 390
    iput-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 397
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 391
    return-void

    .line 395
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isReading:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 397
    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 398
    nop

    .line 409
    const/4 v2, 0x0

    .line 410
    .local v2, "read":I
    const/4 v3, 0x0

    .local v3, "off":I
    array-length v4, p1

    .line 411
    .local v4, "len":I
    const/4 v5, 0x0

    .line 416
    .local v5, "exception":Ljava/lang/Throwable;
    :cond_1
    :try_start_2
    iget-object v6, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v6, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v2, v6

    .line 417
    if-gtz v2, :cond_2

    .line 418
    goto :goto_0

    .line 420
    :cond_2
    add-int/2addr v3, v2

    .line 421
    sub-int/2addr v4, v2

    .line 422
    if-lez v4, :cond_3

    iget-object v6, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->isWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v6, :cond_1

    .line 431
    :cond_3
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 433
    :try_start_3
    iget-object v6, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 434
    if-ltz v2, :cond_4

    .line 436
    if-eqz v5, :cond_5

    .line 437
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAborted:Z

    .line 438
    iput-object v5, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readException:Ljava/lang/Throwable;

    goto :goto_1

    .line 435
    :cond_4
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->endOfStream:Z

    .line 440
    :cond_5
    :goto_1
    iput-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z

    .line 441
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->signalAsyncReadComplete()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 443
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 444
    throw v0

    .line 423
    :catchall_1
    move-exception v6

    .line 424
    .local v6, "ex":Ljava/lang/Throwable;
    move-object v5, v6

    .line 425
    :try_start_4
    instance-of v7, v6, Ljava/lang/Error;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v7, :cond_8

    .line 431
    .end local v6    # "ex":Ljava/lang/Throwable;
    iget-object v6, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 433
    :try_start_5
    iget-object v6, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 434
    if-ltz v2, :cond_7

    instance-of v6, v5, Ljava/io/EOFException;

    if-eqz v6, :cond_6

    goto :goto_2

    .line 436
    :cond_6
    nop

    .line 437
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAborted:Z

    .line 438
    iput-object v5, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readException:Ljava/lang/Throwable;

    goto :goto_3

    .line 435
    :cond_7
    :goto_2
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->endOfStream:Z

    .line 440
    :goto_3
    iput-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z

    .line 441
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->signalAsyncReadComplete()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 443
    :goto_4
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 444
    nop

    .line 445
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->closeUnderlyingInputStreamIfNecessary()V

    .line 446
    nop

    .line 447
    return-void

    .line 443
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 444
    throw v0

    .line 428
    .restart local v6    # "ex":Ljava/lang/Throwable;
    :cond_8
    :try_start_6
    move-object v7, v6

    check-cast v7, Ljava/lang/Error;

    .end local v2    # "read":I
    .end local v3    # "off":I
    .end local v4    # "len":I
    .end local v5    # "exception":Ljava/lang/Throwable;
    .end local p1    # "arr":[B
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 431
    .end local v6    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "read":I
    .restart local v3    # "off":I
    .restart local v4    # "len":I
    .restart local v5    # "exception":Ljava/lang/Throwable;
    .restart local p1    # "arr":[B
    :catchall_3
    move-exception v6

    iget-object v7, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 433
    :try_start_7
    iget-object v7, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 434
    if-ltz v2, :cond_9

    instance-of v7, v5, Ljava/io/EOFException;

    if-nez v7, :cond_9

    .line 436
    nop

    .line 437
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAborted:Z

    .line 438
    iput-object v5, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readException:Ljava/lang/Throwable;

    goto :goto_5

    .line 435
    :cond_9
    iput-boolean v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->endOfStream:Z

    .line 440
    :goto_5
    iput-boolean v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readInProgress:Z

    .line 441
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->signalAsyncReadComplete()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 443
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 444
    nop

    .line 445
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->closeUnderlyingInputStreamIfNecessary()V

    .line 446
    throw v6

    .line 443
    :catchall_4
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 444
    throw v0

    .line 397
    .end local v2    # "read":I
    .end local v3    # "off":I
    .end local v4    # "len":I
    .end local v5    # "exception":Ljava/lang/Throwable;
    :catchall_5
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 398
    throw v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 325
    :cond_0
    sget-object v0, Lorg/apache/commons/io/input/ReadAheadInputStream;->BYTE_ARRAY_1:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 326
    .local v0, "oneByteArray":[B
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 327
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/io/input/ReadAheadInputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    aget-byte v1, v0, v1

    and-int/lit16 v3, v1, 0xff

    :goto_0
    return v3
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_3

    .line 335
    if-nez p3, :cond_0

    .line 336
    const/4 v0, 0x0

    return v0

    .line 339
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_2

    .line 341
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 343
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->waitForAsyncReadComplete()V

    .line 344
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAheadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAsync()V

    .line 347
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->waitForAsyncReadComplete()V

    .line 348
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->isEndOfStream()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 349
    nop

    .line 357
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 349
    const/4 v0, -0x1

    return v0

    .line 353
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->swapBuffers()V

    .line 355
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReadAheadInputStream;->readAsync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 358
    goto :goto_0

    .line 357
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 358
    throw v0

    .line 360
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 361
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 363
    return p3

    .line 333
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public skip(J)J
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 462
    return-wide v0

    .line 464
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 466
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->activeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 467
    return-wide p1

    .line 469
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 472
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/ReadAheadInputStream;->skipInternal(J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    .local v0, "skipped":J
    iget-object v2, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 475
    nop

    .line 476
    return-wide v0

    .line 474
    .end local v0    # "skipped":J
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/io/input/ReadAheadInputStream;->stateChangeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 475
    throw v0
.end method
