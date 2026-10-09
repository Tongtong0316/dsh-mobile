.class public Lorg/tukaani/xz/SingleXZInputStream;
.super Ljava/io/InputStream;
.source "SingleXZInputStream.java"


# instance fields
.field private final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private blockDecoder:Lorg/tukaani/xz/BlockInputStream;

.field private final check:Lorg/tukaani/xz/check/Check;

.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private in:Ljava/io/InputStream;

.field private final indexHash:Lorg/tukaani/xz/index/IndexHash;

.field private final memoryLimit:I

.field private final streamHeaderFlags:Lorg/tukaani/xz/common/StreamFlags;

.field private final tempBuf:[B

.field private final verifyCheck:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 90
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

    .line 158
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 159
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

    .line 197
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;IZLorg/tukaani/xz/ArrayCache;)V

    .line 198
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

    .line 252
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;IZLorg/tukaani/xz/ArrayCache;)V

    .line 253
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZLorg/tukaani/xz/ArrayCache;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "memoryLimit"    # I
    .param p3, "verifyCheck"    # Z
    .param p4, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    invoke-static {p1}, Lorg/tukaani/xz/SingleXZInputStream;->readStreamHeader(Ljava/io/InputStream;)[B

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;IZ[BLorg/tukaani/xz/ArrayCache;)V

    .line 298
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;IZ[BLorg/tukaani/xz/ArrayCache;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "memoryLimit"    # I
    .param p3, "verifyCheck"    # Z
    .param p4, "streamHeader"    # [B
    .param p5, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    .line 45
    new-instance v1, Lorg/tukaani/xz/index/IndexHash;

    invoke-direct {v1}, Lorg/tukaani/xz/index/IndexHash;-><init>()V

    iput-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->indexHash:Lorg/tukaani/xz/index/IndexHash;

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->endReached:Z

    .line 47
    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->tempBuf:[B

    .line 303
    iput-object p5, p0, Lorg/tukaani/xz/SingleXZInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 304
    iput-object p1, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    .line 305
    iput p2, p0, Lorg/tukaani/xz/SingleXZInputStream;->memoryLimit:I

    .line 306
    iput-boolean p3, p0, Lorg/tukaani/xz/SingleXZInputStream;->verifyCheck:Z

    .line 307
    invoke-static {p4}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamHeader([B)Lorg/tukaani/xz/common/StreamFlags;

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->streamHeaderFlags:Lorg/tukaani/xz/common/StreamFlags;

    .line 308
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->streamHeaderFlags:Lorg/tukaani/xz/common/StreamFlags;

    iget v0, v0, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    invoke-static {v0}, Lorg/tukaani/xz/check/Check;->getInstance(I)Lorg/tukaani/xz/check/Check;

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    .line 309
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

    .line 124
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V

    .line 125
    return-void
.end method

.method private static readStreamHeader(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 57
    .local v0, "streamHeader":[B
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 58
    return-object v0
.end method

.method private validateStreamFooter()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 446
    .local v0, "buf":[B
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 447
    invoke-static {v0}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamFooter([B)Lorg/tukaani/xz/common/StreamFlags;

    move-result-object v1

    .line 449
    .local v1, "streamFooterFlags":Lorg/tukaani/xz/common/StreamFlags;
    iget-object v2, p0, Lorg/tukaani/xz/SingleXZInputStream;->streamHeaderFlags:Lorg/tukaani/xz/common/StreamFlags;

    invoke-static {v2, v1}, Lorg/tukaani/xz/common/DecoderUtil;->areStreamFlagsEqual(Lorg/tukaani/xz/common/StreamFlags;Lorg/tukaani/xz/common/StreamFlags;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/tukaani/xz/SingleXZInputStream;->indexHash:Lorg/tukaani/xz/index/IndexHash;

    .line 451
    invoke-virtual {v2}, Lorg/tukaani/xz/index/IndexHash;->getIndexSize()J

    move-result-wide v2

    iget-wide v4, v1, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 454
    return-void

    .line 452
    :cond_0
    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    const-string v3, "XZ Stream Footer does not match Stream Header"

    invoke-direct {v2, v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 472
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 475
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/BlockInputStream;->available()I

    move-result v0

    :goto_0
    return v0

    .line 473
    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 470
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

    .line 488
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/tukaani/xz/SingleXZInputStream;->close(Z)V

    .line 489
    return-void
.end method

.method public close(Z)V
    .locals 2
    .param p1, "closeInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 515
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/BlockInputStream;->close()V

    .line 517
    iput-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    .line 521
    :cond_0
    if-eqz p1, :cond_1

    .line 522
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 524
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    .line 525
    throw v0

    .line 524
    :cond_1
    :goto_0
    iput-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    .line 525
    nop

    .line 527
    :cond_2
    return-void
.end method

.method public getCheckName()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v0}, Lorg/tukaani/xz/check/Check;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckType()I
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->streamHeaderFlags:Lorg/tukaani/xz/common/StreamFlags;

    iget v0, v0, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/SingleXZInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->tempBuf:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([BII)I
    .locals 18
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-ltz p2, :cond_a

    if-ltz p3, :cond_a

    add-int v0, p2, p3

    if-ltz v0, :cond_a

    add-int v0, p2, p3

    array-length v3, v2

    if-gt v0, v3, :cond_a

    .line 394
    if-nez p3, :cond_0

    .line 395
    const/4 v0, 0x0

    return v0

    .line 397
    :cond_0
    iget-object v0, v1, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 400
    iget-object v0, v1, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_8

    .line 403
    iget-boolean v0, v1, Lorg/tukaani/xz/SingleXZInputStream;->endReached:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    .line 404
    return v3

    .line 406
    :cond_1
    const/4 v0, 0x0

    move/from16 v4, p2

    move/from16 v5, p3

    move v6, v0

    .line 409
    .end local p2    # "off":I
    .end local p3    # "len":I
    .local v4, "off":I
    .local v5, "len":I
    .local v6, "size":I
    :goto_0
    if-lez v5, :cond_7

    .line 410
    :try_start_0
    iget-object v0, v1, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_3

    .line 412
    :try_start_1
    new-instance v0, Lorg/tukaani/xz/BlockInputStream;

    iget-object v8, v1, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    iget-object v9, v1, Lorg/tukaani/xz/SingleXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    iget-boolean v10, v1, Lorg/tukaani/xz/SingleXZInputStream;->verifyCheck:Z

    iget v11, v1, Lorg/tukaani/xz/SingleXZInputStream;->memoryLimit:I

    iget-object v14, v1, Lorg/tukaani/xz/SingleXZInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    const-wide/16 v12, -0x1

    const-wide/16 v15, -0x1

    move-object v7, v0

    move-object/from16 v17, v14

    move-wide v14, v15

    move-object/from16 v16, v17

    invoke-direct/range {v7 .. v16}, Lorg/tukaani/xz/BlockInputStream;-><init>(Ljava/io/InputStream;Lorg/tukaani/xz/check/Check;ZIJJLorg/tukaani/xz/ArrayCache;)V

    iput-object v0, v1, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;
    :try_end_1
    .catch Lorg/tukaani/xz/IndexIndicatorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 420
    goto :goto_1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Lorg/tukaani/xz/IndexIndicatorException;
    :try_start_2
    iget-object v7, v1, Lorg/tukaani/xz/SingleXZInputStream;->indexHash:Lorg/tukaani/xz/index/IndexHash;

    iget-object v8, v1, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v7, v8}, Lorg/tukaani/xz/index/IndexHash;->validate(Ljava/io/InputStream;)V

    .line 417
    invoke-direct/range {p0 .. p0}, Lorg/tukaani/xz/SingleXZInputStream;->validateStreamFooter()V

    .line 418
    const/4 v7, 0x1

    iput-boolean v7, v1, Lorg/tukaani/xz/SingleXZInputStream;->endReached:Z

    .line 419
    if-lez v6, :cond_2

    move v3, v6

    :cond_2
    return v3

    .line 423
    .end local v0    # "e":Lorg/tukaani/xz/IndexIndicatorException;
    :cond_3
    :goto_1
    iget-object v0, v1, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v0, v2, v4, v5}, Lorg/tukaani/xz/BlockInputStream;->read([BII)I

    move-result v0

    .line 425
    .local v0, "ret":I
    if-lez v0, :cond_4

    .line 426
    add-int/2addr v6, v0

    .line 427
    add-int/2addr v4, v0

    .line 428
    sub-int/2addr v5, v0

    goto :goto_2

    .line 429
    :cond_4
    if-ne v0, v3, :cond_5

    .line 430
    iget-object v7, v1, Lorg/tukaani/xz/SingleXZInputStream;->indexHash:Lorg/tukaani/xz/index/IndexHash;

    iget-object v8, v1, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v8}, Lorg/tukaani/xz/BlockInputStream;->getUnpaddedSize()J

    move-result-wide v8

    iget-object v10, v1, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    .line 431
    invoke-virtual {v10}, Lorg/tukaani/xz/BlockInputStream;->getUncompressedSize()J

    move-result-wide v10

    .line 430
    invoke-virtual {v7, v8, v9, v10, v11}, Lorg/tukaani/xz/index/IndexHash;->add(JJ)V

    .line 432
    const/4 v7, 0x0

    iput-object v7, v1, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 434
    .end local v0    # "ret":I
    :cond_5
    :goto_2
    goto :goto_0

    .line 435
    :catch_1
    move-exception v0

    .line 436
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, v1, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    .line 437
    if-eqz v6, :cond_6

    goto :goto_3

    .line 438
    :cond_6
    throw v0

    .line 439
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    nop

    .line 441
    :goto_3
    return v6

    .line 401
    .end local v4    # "off":I
    .end local v5    # "len":I
    .end local v6    # "size":I
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_8
    iget-object v0, v1, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 398
    :cond_9
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v3, "Stream closed"

    invoke-direct {v0, v3}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
