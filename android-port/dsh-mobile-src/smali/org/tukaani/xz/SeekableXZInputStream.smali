.class public Lorg/tukaani/xz/SeekableXZInputStream;
.super Lorg/tukaani/xz/SeekableInputStream;
.source "SeekableXZInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private blockCount:I

.field private blockDecoder:Lorg/tukaani/xz/BlockInputStream;

.field private check:Lorg/tukaani/xz/check/Check;

.field private checkTypes:I

.field private final curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

.field private curPos:J

.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private in:Lorg/tukaani/xz/SeekableInputStream;

.field private indexMemoryUsage:I

.field private largestBlockSize:J

.field private final memoryLimit:I

.field private final queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

.field private seekNeeded:Z

.field private seekPos:J

.field private final streams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/tukaani/xz/index/IndexDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final tempBuf:[B

.field private uncompressedSize:J

.field private final verifyCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;)V
    .locals 1
    .param p1, "in"    # Lorg/tukaani/xz/SeekableInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/tukaani/xz/SeekableXZInputStream;-><init>(Lorg/tukaani/xz/SeekableInputStream;I)V

    .line 226
    return-void
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;I)V
    .locals 1
    .param p1, "in"    # Lorg/tukaani/xz/SeekableInputStream;
    .param p2, "memoryLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/SeekableXZInputStream;-><init>(Lorg/tukaani/xz/SeekableInputStream;IZ)V

    .line 299
    return-void
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;ILorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "in"    # Lorg/tukaani/xz/SeekableInputStream;
    .param p2, "memoryLimit"    # I
    .param p3, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/tukaani/xz/SeekableXZInputStream;-><init>(Lorg/tukaani/xz/SeekableInputStream;IZLorg/tukaani/xz/ArrayCache;)V

    .line 345
    return-void
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;IZ)V
    .locals 1
    .param p1, "in"    # Lorg/tukaani/xz/SeekableInputStream;
    .param p2, "memoryLimit"    # I
    .param p3, "verifyCheck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/tukaani/xz/SeekableXZInputStream;-><init>(Lorg/tukaani/xz/SeekableInputStream;IZLorg/tukaani/xz/ArrayCache;)V

    .line 405
    return-void
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;IZLorg/tukaani/xz/ArrayCache;)V
    .locals 23
    .param p1, "in"    # Lorg/tukaani/xz/SeekableInputStream;
    .param p2, "memoryLimit"    # I
    .param p3, "verifyCheck"    # Z
    .param p4, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-direct/range {p0 .. p0}, Lorg/tukaani/xz/SeekableInputStream;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput v0, v1, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    .line 121
    iput v0, v1, Lorg/tukaani/xz/SeekableXZInputStream;->checkTypes:I

    .line 126
    const-wide/16 v9, 0x0

    iput-wide v9, v1, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    .line 131
    iput-wide v9, v1, Lorg/tukaani/xz/SeekableXZInputStream;->largestBlockSize:J

    .line 136
    iput v0, v1, Lorg/tukaani/xz/SeekableXZInputStream;->blockCount:I

    .line 164
    const/4 v2, 0x0

    iput-object v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    .line 169
    iput-wide v9, v1, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    .line 180
    iput-boolean v0, v1, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    .line 186
    iput-boolean v0, v1, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    .line 191
    iput-object v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    .line 197
    const/4 v0, 0x1

    new-array v2, v0, [B

    iput-object v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->tempBuf:[B

    .line 455
    move-object/from16 v11, p4

    iput-object v11, v1, Lorg/tukaani/xz/SeekableXZInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 456
    move/from16 v12, p3

    iput-boolean v12, v1, Lorg/tukaani/xz/SeekableXZInputStream;->verifyCheck:Z

    .line 457
    iput-object v8, v1, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    .line 458
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v13, v2

    .line 462
    .local v13, "inData":Ljava/io/DataInputStream;
    invoke-virtual {v8, v9, v10}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    .line 463
    sget-object v2, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v2, v2

    new-array v2, v2, [B

    .line 464
    .local v2, "buf":[B
    invoke-virtual {v13, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 465
    sget-object v3, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 470
    .end local v2    # "buf":[B
    invoke-virtual/range {p1 .. p1}, Lorg/tukaani/xz/SeekableInputStream;->length()J

    move-result-wide v2

    .line 471
    .local v2, "pos":J
    const-wide/16 v4, 0x3

    and-long/2addr v4, v2

    cmp-long v4, v4, v9

    if-nez v4, :cond_e

    .line 476
    const/16 v4, 0xc

    new-array v14, v4, [B

    .line 477
    .local v14, "buf":[B
    const-wide/16 v4, 0x0

    move/from16 v15, p2

    move-wide/from16 v16, v4

    .line 479
    .end local p2    # "memoryLimit":I
    .local v15, "memoryLimit":I
    .local v16, "streamPadding":J
    :goto_0
    cmp-long v4, v2, v9

    if-lez v4, :cond_b

    .line 480
    const-wide/16 v18, 0xc

    cmp-long v4, v2, v18

    if-ltz v4, :cond_a

    .line 484
    sub-long v4, v2, v18

    invoke-virtual {v8, v4, v5}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    .line 485
    invoke-virtual {v13, v14}, Ljava/io/DataInputStream;->readFully([B)V

    .line 490
    const/16 v4, 0x8

    aget-byte v4, v14, v4

    if-nez v4, :cond_0

    const/16 v4, 0x9

    aget-byte v4, v14, v4

    if-nez v4, :cond_0

    const/16 v4, 0xa

    aget-byte v4, v14, v4

    if-nez v4, :cond_0

    const/16 v4, 0xb

    aget-byte v4, v14, v4

    if-nez v4, :cond_0

    .line 492
    const-wide/16 v4, 0x4

    add-long v16, v16, v4

    .line 493
    sub-long/2addr v2, v4

    .line 494
    goto :goto_0

    .line 498
    :cond_0
    sub-long v20, v2, v18

    .line 502
    .end local v2    # "pos":J
    .local v20, "pos":J
    invoke-static {v14}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamFooter([B)Lorg/tukaani/xz/common/StreamFlags;

    move-result-object v7

    .line 503
    .local v7, "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    iget-wide v2, v7, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    cmp-long v2, v2, v20

    if-gez v2, :cond_9

    .line 509
    iget v2, v7, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    invoke-static {v2}, Lorg/tukaani/xz/check/Check;->getInstance(I)Lorg/tukaani/xz/check/Check;

    move-result-object v2

    iput-object v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    .line 512
    iget v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->checkTypes:I

    iget v3, v7, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    shl-int v3, v0, v3

    or-int/2addr v2, v3

    iput v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->checkTypes:I

    .line 515
    iget-wide v2, v7, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    sub-long v2, v20, v2

    invoke-virtual {v8, v2, v3}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    .line 520
    :try_start_0
    new-instance v22, Lorg/tukaani/xz/index/IndexDecoder;
    :try_end_0
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    move-object v4, v7

    move-wide/from16 v5, v16

    move-object v9, v7

    .end local v7    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    .local v9, "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    move v7, v15

    :try_start_1
    invoke-direct/range {v2 .. v7}, Lorg/tukaani/xz/index/IndexDecoder;-><init>(Lorg/tukaani/xz/SeekableInputStream;Lorg/tukaani/xz/common/StreamFlags;JI)V
    :try_end_1
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v2, v22

    .line 529
    .local v2, "index":Lorg/tukaani/xz/index/IndexDecoder;
    nop

    .line 532
    iget v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    invoke-virtual {v2}, Lorg/tukaani/xz/index/IndexDecoder;->getMemoryUsage()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    .line 533
    if-ltz v15, :cond_2

    .line 534
    invoke-virtual {v2}, Lorg/tukaani/xz/index/IndexDecoder;->getMemoryUsage()I

    move-result v3

    sub-int/2addr v15, v3

    .line 535
    if-ltz v15, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 539
    :cond_2
    :goto_1
    iget-wide v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->largestBlockSize:J

    invoke-virtual {v2}, Lorg/tukaani/xz/index/IndexDecoder;->getLargestBlockSize()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 540
    invoke-virtual {v2}, Lorg/tukaani/xz/index/IndexDecoder;->getLargestBlockSize()J

    move-result-wide v3

    iput-wide v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->largestBlockSize:J

    .line 544
    :cond_3
    invoke-virtual {v2}, Lorg/tukaani/xz/index/IndexDecoder;->getStreamSize()J

    move-result-wide v3

    sub-long v3, v3, v18

    .line 545
    .local v3, "off":J
    cmp-long v5, v20, v3

    if-ltz v5, :cond_7

    .line 550
    sub-long v5, v20, v3

    .line 551
    .end local v20    # "pos":J
    .local v5, "pos":J
    invoke-virtual {v8, v5, v6}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    .line 554
    invoke-virtual {v13, v14}, Ljava/io/DataInputStream;->readFully([B)V

    .line 555
    invoke-static {v14}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamHeader([B)Lorg/tukaani/xz/common/StreamFlags;

    move-result-object v7

    .line 558
    .local v7, "streamHeader":Lorg/tukaani/xz/common/StreamFlags;
    invoke-static {v7, v9}, Lorg/tukaani/xz/common/DecoderUtil;->areStreamFlagsEqual(Lorg/tukaani/xz/common/StreamFlags;Lorg/tukaani/xz/common/StreamFlags;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 564
    move-wide/from16 v18, v3

    .end local v3    # "off":J
    .local v18, "off":J
    iget-wide v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    invoke-virtual {v2}, Lorg/tukaani/xz/index/IndexDecoder;->getUncompressedSize()J

    move-result-wide v20

    add-long v3, v3, v20

    iput-wide v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    .line 565
    iget-wide v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    const-wide/16 v20, 0x0

    cmp-long v3, v3, v20

    if-ltz v3, :cond_5

    .line 569
    iget v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->blockCount:I

    invoke-virtual {v2}, Lorg/tukaani/xz/index/IndexDecoder;->getRecordCount()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->blockCount:I

    .line 570
    iget v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->blockCount:I

    if-ltz v3, :cond_4

    .line 575
    iget-object v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    const-wide/16 v16, 0x0

    .line 579
    .end local v2    # "index":Lorg/tukaani/xz/index/IndexDecoder;
    .end local v7    # "streamHeader":Lorg/tukaani/xz/common/StreamFlags;
    .end local v9    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    .end local v18    # "off":J
    move-wide v2, v5

    const-wide/16 v9, 0x0

    goto/16 :goto_0

    .line 571
    .restart local v2    # "index":Lorg/tukaani/xz/index/IndexDecoder;
    .restart local v7    # "streamHeader":Lorg/tukaani/xz/common/StreamFlags;
    .restart local v9    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    .restart local v18    # "off":J
    :cond_4
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v3, "XZ file has over 2147483647 Blocks"

    invoke-direct {v0, v3}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_5
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v3, "XZ file is too big"

    invoke-direct {v0, v3}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    .end local v18    # "off":J
    .restart local v3    # "off":J
    :cond_6
    move-wide/from16 v18, v3

    .end local v3    # "off":J
    .restart local v18    # "off":J
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v3, "XZ Stream Footer does not match Stream Header"

    invoke-direct {v0, v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    .end local v5    # "pos":J
    .end local v7    # "streamHeader":Lorg/tukaani/xz/common/StreamFlags;
    .end local v18    # "off":J
    .restart local v3    # "off":J
    .restart local v20    # "pos":J
    :cond_7
    move-wide/from16 v18, v3

    .end local v3    # "off":J
    .restart local v18    # "off":J
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v3, "XZ Index indicates too big compressed size for the XZ Stream"

    invoke-direct {v0, v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    .end local v2    # "index":Lorg/tukaani/xz/index/IndexDecoder;
    .end local v18    # "off":J
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v9    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    .local v7, "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    :catch_1
    move-exception v0

    move-object v9, v7

    .line 525
    .end local v7    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    .local v0, "e":Lorg/tukaani/xz/MemoryLimitException;
    .restart local v9    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    :goto_2
    if-gez v15, :cond_8

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 526
    :cond_8
    new-instance v2, Lorg/tukaani/xz/MemoryLimitException;

    .line 527
    invoke-virtual {v0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result v3

    iget v4, v1, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    add-int/2addr v3, v4

    iget v4, v1, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    add-int/2addr v4, v15

    invoke-direct {v2, v3, v4}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw v2

    .line 504
    .end local v0    # "e":Lorg/tukaani/xz/MemoryLimitException;
    .end local v9    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    .restart local v7    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    :cond_9
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v2, "Backward Size in XZ Stream Footer is too big"

    invoke-direct {v0, v2}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    .end local v7    # "streamFooter":Lorg/tukaani/xz/common/StreamFlags;
    .end local v20    # "pos":J
    .local v2, "pos":J
    :cond_a
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    .line 581
    :cond_b
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_d

    .line 584
    iput v15, v1, Lorg/tukaani/xz/SeekableXZInputStream;->memoryLimit:I

    .line 589
    iget-object v4, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    iget-object v5, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/tukaani/xz/index/IndexDecoder;

    .line 590
    .local v4, "prev":Lorg/tukaani/xz/index/IndexDecoder;
    iget-object v5, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    .local v5, "i":I
    :goto_3
    if-ltz v5, :cond_c

    .line 591
    iget-object v6, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/tukaani/xz/index/IndexDecoder;

    .line 592
    .local v6, "cur":Lorg/tukaani/xz/index/IndexDecoder;
    invoke-virtual {v6, v4}, Lorg/tukaani/xz/index/IndexDecoder;->setOffsets(Lorg/tukaani/xz/index/IndexDecoder;)V

    .line 593
    move-object v4, v6

    .line 590
    .end local v6    # "cur":Lorg/tukaani/xz/index/IndexDecoder;
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 600
    .end local v5    # "i":I
    :cond_c
    iget-object v5, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    iget-object v6, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tukaani/xz/index/IndexDecoder;

    .line 601
    .local v0, "first":Lorg/tukaani/xz/index/IndexDecoder;
    new-instance v5, Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {v5, v0}, Lorg/tukaani/xz/index/BlockInfo;-><init>(Lorg/tukaani/xz/index/IndexDecoder;)V

    iput-object v5, v1, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    .line 605
    new-instance v5, Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {v5, v0}, Lorg/tukaani/xz/index/BlockInfo;-><init>(Lorg/tukaani/xz/index/IndexDecoder;)V

    iput-object v5, v1, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    .line 606
    return-void

    .line 581
    .end local v0    # "first":Lorg/tukaani/xz/index/IndexDecoder;
    .end local v4    # "prev":Lorg/tukaani/xz/index/IndexDecoder;
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 472
    .end local v14    # "buf":[B
    .end local v15    # "memoryLimit":I
    .end local v16    # "streamPadding":J
    .restart local p2    # "memoryLimit":I
    :cond_e
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v4, "XZ file size is not a multiple of 4 bytes"

    invoke-direct {v0, v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    .local v2, "buf":[B
    :cond_f
    new-instance v0, Lorg/tukaani/xz/XZFormatException;

    invoke-direct {v0}, Lorg/tukaani/xz/XZFormatException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;Lorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "in"    # Lorg/tukaani/xz/SeekableInputStream;
    .param p2, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/tukaani/xz/SeekableXZInputStream;-><init>(Lorg/tukaani/xz/SeekableInputStream;ILorg/tukaani/xz/ArrayCache;)V

    .line 262
    return-void
.end method

.method private initBlockDecoder()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1146
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/BlockInputStream;->close()V

    .line 1148
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    .line 1151
    :cond_0
    new-instance v0, Lorg/tukaani/xz/BlockInputStream;

    iget-object v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    iget-object v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    iget-boolean v4, p0, Lorg/tukaani/xz/SeekableXZInputStream;->verifyCheck:Z

    iget v5, p0, Lorg/tukaani/xz/SeekableXZInputStream;->memoryLimit:I

    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v6, v1, Lorg/tukaani/xz/index/BlockInfo;->unpaddedSize:J

    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v8, v1, Lorg/tukaani/xz/index/BlockInfo;->uncompressedSize:J

    iget-object v10, p0, Lorg/tukaani/xz/SeekableXZInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lorg/tukaani/xz/BlockInputStream;-><init>(Ljava/io/InputStream;Lorg/tukaani/xz/check/Check;ZIJJLorg/tukaani/xz/ArrayCache;)V

    iput-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;
    :try_end_0
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/tukaani/xz/IndexIndicatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    nop

    .line 1166
    return-void

    .line 1162
    :catch_0
    move-exception v0

    .line 1164
    .local v0, "e":Lorg/tukaani/xz/IndexIndicatorException;
    new-instance v1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v1

    .line 1155
    .end local v0    # "e":Lorg/tukaani/xz/IndexIndicatorException;
    :catch_1
    move-exception v0

    .line 1158
    .local v0, "e":Lorg/tukaani/xz/MemoryLimitException;
    iget v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->memoryLimit:I

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1159
    :cond_1
    new-instance v1, Lorg/tukaani/xz/MemoryLimitException;

    .line 1160
    invoke-virtual {v0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result v2

    iget v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->memoryLimit:I

    iget v4, p0, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    add-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw v1
.end method

.method private locateBlockByNumber(Lorg/tukaani/xz/index/BlockInfo;I)V
    .locals 3
    .param p1, "info"    # Lorg/tukaani/xz/index/BlockInfo;
    .param p2, "blockNumber"    # I

    .line 1119
    if-ltz p2, :cond_2

    iget v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockCount:I

    if-ge p2, v0, :cond_2

    .line 1124
    iget v0, p1, Lorg/tukaani/xz/index/BlockInfo;->blockNumber:I

    if-ne v0, p2, :cond_0

    .line 1125
    return-void

    .line 1129
    :cond_0
    const/4 v0, 0x0

    .line 1130
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/tukaani/xz/index/IndexDecoder;

    .line 1131
    .local v1, "index":Lorg/tukaani/xz/index/IndexDecoder;
    invoke-virtual {v1, p2}, Lorg/tukaani/xz/index/IndexDecoder;->hasRecord(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1132
    invoke-virtual {v1, p1, p2}, Lorg/tukaani/xz/index/IndexDecoder;->setBlockInfo(Lorg/tukaani/xz/index/BlockInfo;I)V

    .line 1133
    return-void

    .line 1129
    .end local v1    # "index":Lorg/tukaani/xz/index/IndexDecoder;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1120
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid XZ Block number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private locateBlockByPos(Lorg/tukaani/xz/index/BlockInfo;J)V
    .locals 8
    .param p1, "info"    # Lorg/tukaani/xz/index/BlockInfo;
    .param p2, "pos"    # J

    .line 1092
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_5

    iget-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_5

    .line 1098
    const/4 v2, 0x0

    .line 1099
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/tukaani/xz/index/IndexDecoder;

    .line 1100
    .local v3, "index":Lorg/tukaani/xz/index/IndexDecoder;
    invoke-virtual {v3, p2, p3}, Lorg/tukaani/xz/index/IndexDecoder;->hasUncompressedOffset(J)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1101
    nop

    .line 1105
    .end local v2    # "i":I
    invoke-virtual {v3, p1, p2, p3}, Lorg/tukaani/xz/index/IndexDecoder;->locateBlock(Lorg/tukaani/xz/index/BlockInfo;J)V

    .line 1107
    iget-wide v4, p1, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    const-wide/16 v6, 0x3

    and-long/2addr v4, v6

    cmp-long v2, v4, v0

    if-nez v2, :cond_3

    .line 1108
    iget-wide v4, p1, Lorg/tukaani/xz/index/BlockInfo;->uncompressedSize:J

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    .line 1109
    iget-wide v0, p1, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    .line 1110
    iget-wide v0, p1, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    iget-wide v4, p1, Lorg/tukaani/xz/index/BlockInfo;->uncompressedSize:J

    add-long/2addr v0, v4

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 1111
    return-void

    .line 1110
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1109
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1108
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1107
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1098
    .restart local v2    # "i":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1093
    .end local v2    # "i":I
    .end local v3    # "index":Lorg/tukaani/xz/index/IndexDecoder;
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid uncompressed position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private seek()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1021
    iget-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    if-nez v0, :cond_1

    .line 1022
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-virtual {v0}, Lorg/tukaani/xz/index/BlockInfo;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-virtual {v0}, Lorg/tukaani/xz/index/BlockInfo;->setNext()V

    .line 1024
    invoke-direct {p0}, Lorg/tukaani/xz/SeekableXZInputStream;->initBlockDecoder()V

    .line 1025
    return-void

    .line 1028
    :cond_0
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    iput-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    .line 1031
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    .line 1034
    iget-wide v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    iget-wide v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    .line 1035
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    iput-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    .line 1037
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    if-eqz v0, :cond_2

    .line 1038
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/BlockInputStream;->close()V

    .line 1039
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    .line 1042
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    .line 1043
    return-void

    .line 1046
    :cond_3
    iput-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    .line 1049
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    invoke-direct {p0, v0, v1, v2}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByPos(Lorg/tukaani/xz/index/BlockInfo;J)V

    .line 1061
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    iget-object v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v2, v2, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    iget-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 1063
    :cond_4
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v1, v1, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    invoke-virtual {v0, v1, v2}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    .line 1067
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-virtual {v0}, Lorg/tukaani/xz/index/BlockInfo;->getCheckType()I

    move-result v0

    invoke-static {v0}, Lorg/tukaani/xz/check/Check;->getInstance(I)Lorg/tukaani/xz/check/Check;

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    .line 1070
    invoke-direct {p0}, Lorg/tukaani/xz/SeekableXZInputStream;->initBlockDecoder()V

    .line 1071
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v0, v0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    iput-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    .line 1076
    :cond_5
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    iget-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 1080
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    iget-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    sub-long/2addr v0, v2

    .line 1081
    .local v0, "skipAmount":J
    iget-object v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v2, v0, v1}, Lorg/tukaani/xz/BlockInputStream;->skip(J)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_6

    .line 1084
    iget-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    iput-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    goto :goto_0

    .line 1082
    :cond_6
    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v2}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v2

    .line 1086
    .end local v0    # "skipAmount":J
    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 871
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-eqz v0, :cond_3

    .line 874
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 877
    iget-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    if-nez v0, :cond_0

    goto :goto_0

    .line 880
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/BlockInputStream;->available()I

    move-result v0

    return v0

    .line 878
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 875
    :cond_2
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 872
    :cond_3
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

    .line 893
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/tukaani/xz/SeekableXZInputStream;->close(Z)V

    .line 894
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

    .line 919
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-eqz v0, :cond_2

    .line 920
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/BlockInputStream;->close()V

    .line 922
    iput-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    .line 926
    :cond_0
    if-eqz p1, :cond_1

    .line 927
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/SeekableInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 929
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    .line 930
    throw v0

    .line 929
    :cond_1
    :goto_0
    iput-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    .line 930
    nop

    .line 932
    :cond_2
    return-void
.end method

.method public getBlockCheckType(I)I
    .locals 1
    .param p1, "blockNumber"    # I

    .line 733
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {p0, v0, p1}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByNumber(Lorg/tukaani/xz/index/BlockInfo;I)V

    .line 734
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-virtual {v0}, Lorg/tukaani/xz/index/BlockInfo;->getCheckType()I

    move-result v0

    return v0
.end method

.method public getBlockCompPos(I)J
    .locals 2
    .param p1, "blockNumber"    # I

    .line 701
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {p0, v0, p1}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByNumber(Lorg/tukaani/xz/index/BlockInfo;I)V

    .line 702
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v0, v0, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    return-wide v0
.end method

.method public getBlockCompSize(I)J
    .locals 4
    .param p1, "blockNumber"    # I

    .line 717
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {p0, v0, p1}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByNumber(Lorg/tukaani/xz/index/BlockInfo;I)V

    .line 718
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v0, v0, Lorg/tukaani/xz/index/BlockInfo;->unpaddedSize:J

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const-wide/16 v2, -0x4

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getBlockCount()I
    .locals 1

    .line 658
    iget v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockCount:I

    return v0
.end method

.method public getBlockNumber(J)I
    .locals 1
    .param p1, "pos"    # J

    .line 748
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {p0, v0, p1, p2}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByPos(Lorg/tukaani/xz/index/BlockInfo;J)V

    .line 749
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget v0, v0, Lorg/tukaani/xz/index/BlockInfo;->blockNumber:I

    return v0
.end method

.method public getBlockPos(I)J
    .locals 2
    .param p1, "blockNumber"    # I

    .line 671
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {p0, v0, p1}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByNumber(Lorg/tukaani/xz/index/BlockInfo;I)V

    .line 672
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v0, v0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    return-wide v0
.end method

.method public getBlockSize(I)J
    .locals 2
    .param p1, "blockNumber"    # I

    .line 685
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {p0, v0, p1}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByNumber(Lorg/tukaani/xz/index/BlockInfo;I)V

    .line 686
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v0, v0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedSize:J

    return-wide v0
.end method

.method public getCheckTypes()I
    .locals 1

    .line 618
    iget v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->checkTypes:I

    return v0
.end method

.method public getIndexMemoryUsage()I
    .locals 1

    .line 628
    iget v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    return v0
.end method

.method public getLargestBlockSize()J
    .locals 2

    .line 640
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->largestBlockSize:J

    return-wide v0
.end method

.method public getStreamCount()I
    .locals 1

    .line 649
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public length()J
    .locals 2

    .line 940
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    return-wide v0
.end method

.method public position()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 950
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-eqz v0, :cond_1

    .line 953
    iget-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    :goto_0
    return-wide v0

    .line 951
    :cond_1
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/SeekableXZInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->tempBuf:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([BII)I
    .locals 7
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 804
    if-ltz p2, :cond_b

    if-ltz p3, :cond_b

    add-int v0, p2, p3

    if-ltz v0, :cond_b

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_b

    .line 807
    if-nez p3, :cond_0

    .line 808
    const/4 v0, 0x0

    return v0

    .line 810
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-eqz v0, :cond_a

    .line 813
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_9

    .line 816
    const/4 v0, 0x0

    .line 819
    .local v0, "size":I
    :try_start_0
    iget-boolean v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    if-eqz v1, :cond_1

    .line 820
    invoke-direct {p0}, Lorg/tukaani/xz/SeekableXZInputStream;->seek()V

    .line 822
    :cond_1
    iget-boolean v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 823
    return v2

    .line 825
    :cond_2
    :goto_0
    if-lez p3, :cond_6

    .line 826
    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    if-nez v1, :cond_3

    .line 827
    invoke-direct {p0}, Lorg/tukaani/xz/SeekableXZInputStream;->seek()V

    .line 828
    iget-boolean v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    if-eqz v1, :cond_3

    .line 829
    goto :goto_2

    .line 832
    :cond_3
    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v1, p1, p2, p3}, Lorg/tukaani/xz/BlockInputStream;->read([BII)I

    move-result v1

    .line 834
    .local v1, "ret":I
    if-lez v1, :cond_4

    .line 835
    iget-wide v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    .line 836
    add-int/2addr v0, v1

    .line 837
    add-int/2addr p2, v1

    .line 838
    sub-int/2addr p3, v1

    goto :goto_1

    .line 839
    :cond_4
    if-ne v1, v2, :cond_5

    .line 840
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    .end local v1    # "ret":I
    :cond_5
    :goto_1
    goto :goto_0

    .line 853
    :cond_6
    :goto_2
    goto :goto_3

    .line 843
    :catch_0
    move-exception v1

    .line 847
    .local v1, "e":Ljava/io/IOException;
    instance-of v2, v1, Ljava/io/EOFException;

    if-eqz v2, :cond_7

    .line 848
    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v2}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    move-object v1, v2

    .line 850
    :cond_7
    iput-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    .line 851
    if-eqz v0, :cond_8

    .line 855
    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    return v0

    .line 852
    .restart local v1    # "e":Ljava/io/IOException;
    :cond_8
    throw v1

    .line 814
    .end local v0    # "size":I
    .end local v1    # "e":Ljava/io/IOException;
    :cond_9
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 811
    :cond_a
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 805
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public seek(J)V
    .locals 3
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 973
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-eqz v0, :cond_1

    .line 976
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 979
    iput-wide p1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    .line 980
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    .line 981
    return-void

    .line 977
    :cond_0
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative seek position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 974
    :cond_1
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seekToBlock(I)V
    .locals 3
    .param p1, "blockNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 994
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-eqz v0, :cond_1

    .line 997
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockCount:I

    if-ge p1, v0, :cond_0

    .line 1008
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {p0, v0, p1}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByNumber(Lorg/tukaani/xz/index/BlockInfo;I)V

    .line 1009
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v0, v0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    iput-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    .line 1010
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    .line 1011
    return-void

    .line 998
    :cond_0
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid XZ Block number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 995
    :cond_1
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
