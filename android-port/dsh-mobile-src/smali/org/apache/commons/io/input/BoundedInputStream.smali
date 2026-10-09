.class public Lorg/apache/commons/io/input/BoundedInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "BoundedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/BoundedInputStream$Builder;,
        Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;
    }
.end annotation


# instance fields
.field private count:J

.field private mark:J

.field private final maxCount:J

.field private propagateClose:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/input/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 274
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 7
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "maxCount"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 287
    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/BoundedInputStream;-><init>(Ljava/io/InputStream;JJZ)V

    .line 288
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;JJZ)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "count"    # J
    .param p4, "maxCount"    # J
    .param p6, "propagateClose"    # Z

    .line 303
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    .line 304
    iput-wide p2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->count:J

    .line 305
    iput-wide p4, p0, Lorg/apache/commons/io/input/BoundedInputStream;->maxCount:J

    .line 306
    iput-boolean p6, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    .line 307
    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;
    .locals 1

    .line 246
    new-instance v0, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;-><init>()V

    return-object v0
.end method

.method private isMaxCount()Z
    .locals 4

    .line 390
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->maxCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->maxCount:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private toReadLen(J)J
    .locals 4
    .param p1, "len"    # J

    .line 519
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->maxCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->maxCount:J

    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    return-wide v0
.end method


# virtual methods
.method protected declared-synchronized afterRead(I)V
    .locals 4
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 318
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 319
    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->count:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->count:J

    goto :goto_0

    .line 317
    .end local p0    # "this":Lorg/apache/commons/io/input/BoundedInputStream;
    .end local p1    # "n":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 321
    .restart local p1    # "n":I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    invoke-direct {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->isMaxCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->maxCount:J

    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/io/input/BoundedInputStream;->onMaxLength(JJ)V

    .line 330
    const/4 v0, 0x0

    return v0

    .line 332
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    iget-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 345
    :cond_0
    return-void
.end method

.method public declared-synchronized getCount()J
    .locals 2

    monitor-enter p0

    .line 354
    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 354
    .end local p0    # "this":Lorg/apache/commons/io/input/BoundedInputStream;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMaxCount()J
    .locals 2

    .line 364
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->maxCount:J

    return-wide v0
.end method

.method public getMaxLength()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 376
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->maxCount:J

    return-wide v0
.end method

.method public getRemaining()J
    .locals 4

    .line 386
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->getMaxCount()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public isPropagateClose()Z
    .locals 1

    .line 399
    iget-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readLimit"    # I

    monitor-enter p0

    .line 409
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 410
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->count:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->mark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    monitor-exit p0

    return-void

    .line 408
    .end local p0    # "this":Lorg/apache/commons/io/input/BoundedInputStream;
    .end local p1    # "readLimit":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 420
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method protected onMaxLength(JJ)V
    .locals 0
    .param p1, "maxLength"    # J
    .param p3, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    invoke-direct {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->isMaxCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->maxCount:J

    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/io/input/BoundedInputStream;->onMaxLength(JJ)V

    .line 446
    const/4 v0, -0x1

    return v0

    .line 448
    :cond_0
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/BoundedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    invoke-direct {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->isMaxCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->maxCount:J

    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/io/input/BoundedInputStream;->onMaxLength(JJ)V

    .line 476
    const/4 v0, -0x1

    return v0

    .line 478
    :cond_0
    int-to-long v0, p3

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/input/BoundedInputStream;->toReadLen(J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-super {p0, p1, p2, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 488
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 489
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->mark:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    monitor-exit p0

    return-void

    .line 487
    .end local p0    # "this":Lorg/apache/commons/io/input/BoundedInputStream;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setPropagateClose(Z)V
    .locals 0
    .param p1, "propagateClose"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 501
    iput-boolean p1, p0, Lorg/apache/commons/io/input/BoundedInputStream;->propagateClose:Z

    .line 502
    return-void
.end method

.method public declared-synchronized skip(J)J
    .locals 4
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 513
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/BoundedInputStream;->toReadLen(J)J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Lorg/apache/commons/io/input/ProxyInputStream;->skip(J)J

    move-result-wide v0

    .line 514
    .local v0, "skip":J
    iget-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->count:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/commons/io/input/BoundedInputStream;->count:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    monitor-exit p0

    return-wide v0

    .line 512
    .end local v0    # "skip":J
    .end local p0    # "this":Lorg/apache/commons/io/input/BoundedInputStream;
    .end local p1    # "n":J
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 529
    iget-object v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
