.class public Lorg/tukaani/xz/XZInputStream;
.super Ljava/io/InputStream;
.source "XZInputStream.java"


# instance fields
.field private final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private in:Ljava/io/InputStream;

.field private final memoryLimit:I

.field private final tempBuf:[B

.field private final verifyCheck:Z

.field private xzIn:Lorg/tukaani/xz/SingleXZInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "memoryLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "memoryLimit"    # I
    .param p3, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;IZLorg/tukaani/xz/ArrayCache;)V

    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "memoryLimit"    # I
    .param p3, "verifyCheck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;IZLorg/tukaani/xz/ArrayCache;)V

    .line 257
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZLorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "memoryLimit"    # I
    .param p3, "verifyCheck"    # Z
    .param p4, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/XZInputStream;->endReached:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/XZInputStream;->exception:Ljava/io/IOException;

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/XZInputStream;->tempBuf:[B

    .line 299
    iput-object p4, p0, Lorg/tukaani/xz/XZInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 300
    iput-object p1, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    .line 301
    iput p2, p0, Lorg/tukaani/xz/XZInputStream;->memoryLimit:I

    .line 302
    iput-boolean p3, p0, Lorg/tukaani/xz/XZInputStream;->verifyCheck:Z

    .line 303
    new-instance v0, Lorg/tukaani/xz/SingleXZInputStream;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;IZLorg/tukaani/xz/ArrayCache;)V

    iput-object v0, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;

    .line 305
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V

    .line 130
    return-void
.end method

.method private prepareNextStream()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 415
    .local v0, "inData":Ljava/io/DataInputStream;
    const/16 v1, 0xc

    new-array v1, v1, [B

    .line 422
    .local v1, "buf":[B
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v4

    .line 423
    .local v4, "ret":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 424
    iput-boolean v3, p0, Lorg/tukaani/xz/XZInputStream;->endReached:Z

    .line 425
    return-void

    .line 430
    :cond_1
    const/4 v5, 0x3

    invoke-virtual {v0, v1, v3, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 432
    .end local v4    # "ret":I
    aget-byte v2, v1, v2

    if-nez v2, :cond_2

    aget-byte v2, v1, v3

    if-nez v2, :cond_2

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    if-nez v2, :cond_2

    aget-byte v2, v1, v5

    if-eqz v2, :cond_0

    .line 437
    :cond_2
    const/4 v2, 0x4

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 440
    :try_start_0
    new-instance v8, Lorg/tukaani/xz/SingleXZInputStream;

    iget-object v3, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    iget v4, p0, Lorg/tukaani/xz/XZInputStream;->memoryLimit:I

    iget-boolean v5, p0, Lorg/tukaani/xz/XZInputStream;->verifyCheck:Z

    iget-object v7, p0, Lorg/tukaani/xz/XZInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    move-object v2, v8

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;IZ[BLorg/tukaani/xz/ArrayCache;)V

    iput-object v8, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;
    :try_end_0
    .catch Lorg/tukaani/xz/XZFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    nop

    .line 448
    return-void

    .line 442
    :catch_0
    move-exception v2

    .line 445
    .local v2, "e":Lorg/tukaani/xz/XZFormatException;
    new-instance v3, Lorg/tukaani/xz/CorruptedInputException;

    const-string v4, "Garbage after a valid XZ Stream"

    invoke-direct {v3, v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 466
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 469
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/SingleXZInputStream;->available()I

    move-result v0

    :goto_0
    return v0

    .line 467
    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 464
    :cond_2
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/tukaani/xz/XZInputStream;->close(Z)V

    .line 483
    return-void
.end method

.method public close(Z)V
    .locals 3
    .param p1, "closeInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 509
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/tukaani/xz/SingleXZInputStream;->close(Z)V

    .line 511
    iput-object v1, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;

    .line 515
    :cond_0
    if-eqz p1, :cond_1

    .line 516
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    .line 519
    throw v0

    .line 518
    :cond_1
    :goto_0
    iput-object v1, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    .line 519
    nop

    .line 521
    :cond_2
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/XZInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->tempBuf:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    if-ltz p2, :cond_a

    if-ltz p3, :cond_a

    add-int v0, p2, p3

    if-ltz v0, :cond_a

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_a

    .line 372
    if-nez p3, :cond_0

    .line 373
    const/4 v0, 0x0

    return v0

    .line 375
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 378
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_8

    .line 381
    iget-boolean v0, p0, Lorg/tukaani/xz/XZInputStream;->endReached:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 382
    return v1

    .line 384
    :cond_1
    const/4 v0, 0x0

    .line 387
    .local v0, "size":I
    :goto_0
    if-lez p3, :cond_7

    .line 388
    :try_start_0
    iget-object v2, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;

    if-nez v2, :cond_3

    .line 389
    invoke-direct {p0}, Lorg/tukaani/xz/XZInputStream;->prepareNextStream()V

    .line 390
    iget-boolean v2, p0, Lorg/tukaani/xz/XZInputStream;->endReached:Z

    if-eqz v2, :cond_3

    .line 391
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    return v1

    .line 394
    :cond_3
    iget-object v2, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;

    invoke-virtual {v2, p1, p2, p3}, Lorg/tukaani/xz/SingleXZInputStream;->read([BII)I

    move-result v2

    .line 396
    .local v2, "ret":I
    if-lez v2, :cond_4

    .line 397
    add-int/2addr v0, v2

    .line 398
    add-int/2addr p2, v2

    .line 399
    sub-int/2addr p3, v2

    goto :goto_2

    .line 400
    :cond_4
    if-ne v2, v1, :cond_5

    .line 401
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .end local v2    # "ret":I
    :cond_5
    :goto_2
    goto :goto_0

    .line 404
    :catch_0
    move-exception v1

    .line 405
    .local v1, "e":Ljava/io/IOException;
    iput-object v1, p0, Lorg/tukaani/xz/XZInputStream;->exception:Ljava/io/IOException;

    .line 406
    if-eqz v0, :cond_6

    goto :goto_3

    .line 407
    :cond_6
    throw v1

    .line 408
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7
    nop

    .line 410
    :goto_3
    return v0

    .line 379
    .end local v0    # "size":I
    :cond_8
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 376
    :cond_9
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
