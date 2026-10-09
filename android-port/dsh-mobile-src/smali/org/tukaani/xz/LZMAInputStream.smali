.class public Lorg/tukaani/xz/LZMAInputStream;
.super Ljava/io/InputStream;
.source "LZMAInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DICT_SIZE_MAX:I = 0x7ffffff0


# instance fields
.field private arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private in:Ljava/io/InputStream;

.field private lz:Lorg/tukaani/xz/lz/LZDecoder;

.field private lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

.field private rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

.field private relaxedEndCondition:Z

.field private remainingSize:J

.field private final tempBuf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 178
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

    .line 247
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V

    .line 248
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V
    .locals 17
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "memoryLimit"    # I
    .param p3, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    move-object/from16 v8, p0

    move/from16 v9, p2

    invoke-direct/range {p0 .. p0}, Ljava/io/InputStream;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, v8, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 52
    iput-boolean v0, v8, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    .line 54
    const/4 v0, 0x1

    new-array v1, v0, [B

    iput-object v1, v8, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    .line 62
    const/4 v1, 0x0

    iput-object v1, v8, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 288
    new-instance v1, Ljava/io/DataInputStream;

    move-object/from16 v10, p1

    invoke-direct {v1, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v11, v1

    .line 291
    .local v11, "inData":Ljava/io/DataInputStream;
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readByte()B

    move-result v12

    .line 294
    .local v12, "propsByte":B
    const/4 v1, 0x0

    .line 295
    .local v1, "dictSize":I
    const/4 v2, 0x0

    move v13, v1

    .end local v1    # "dictSize":I
    .local v2, "i":I
    .local v13, "dictSize":I
    :goto_0
    const/4 v1, 0x4

    if-ge v2, v1, :cond_0

    .line 296
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    mul-int/lit8 v3, v2, 0x8

    shl-int/2addr v1, v3

    or-int/2addr v13, v1

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    .end local v2    # "i":I
    :cond_0
    const-wide/16 v1, 0x0

    .line 303
    .local v1, "uncompSize":J
    const/4 v3, 0x0

    move-wide v14, v1

    .end local v1    # "uncompSize":J
    .local v3, "i":I
    .local v14, "uncompSize":J
    :goto_1
    const/16 v1, 0x8

    if-ge v3, v1, :cond_1

    .line 304
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    int-to-long v1, v1

    mul-int/lit8 v4, v3, 0x8

    shl-long/2addr v1, v4

    or-long/2addr v14, v1

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 307
    .end local v3    # "i":I
    :cond_1
    invoke-static {v13, v12}, Lorg/tukaani/xz/LZMAInputStream;->getMemoryUsage(IB)I

    move-result v7

    .line 308
    .local v7, "memoryNeeded":I
    const/4 v1, -0x1

    if-eq v9, v1, :cond_3

    if-gt v7, v9, :cond_2

    goto :goto_2

    .line 309
    :cond_2
    new-instance v0, Lorg/tukaani/xz/MemoryLimitException;

    invoke-direct {v0, v7, v9}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw v0

    .line 314
    :cond_3
    :goto_2
    iput-boolean v0, v8, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    .line 316
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v14

    move v4, v12

    move v5, v13

    move/from16 v16, v7

    .end local v7    # "memoryNeeded":I
    .local v16, "memoryNeeded":I
    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V

    .line 317
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JBI)V
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "uncompSize"    # J
    .param p4, "propsByte"    # B
    .param p5, "dictSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 52
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 367
    nop

    .line 368
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v8

    .line 367
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v8}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V

    .line 369
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JBI[B)V
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "uncompSize"    # J
    .param p4, "propsByte"    # B
    .param p5, "dictSize"    # I
    .param p6, "presetDict"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 52
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 406
    nop

    .line 407
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v8

    .line 406
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V

    .line 408
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "uncompSize"    # J
    .param p4, "propsByte"    # B
    .param p5, "dictSize"    # I
    .param p6, "presetDict"    # [B
    .param p7, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 52
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 454
    invoke-direct/range {p0 .. p7}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V

    .line 456
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JIIII[B)V
    .locals 11
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "uncompSize"    # J
    .param p4, "lc"    # I
    .param p5, "lp"    # I
    .param p6, "pb"    # I
    .param p7, "dictSize"    # I
    .param p8, "presetDict"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 493
    move-object v10, p0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, v10, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 52
    iput-boolean v0, v10, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, v10, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    .line 62
    const/4 v0, 0x0

    iput-object v0, v10, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 494
    nop

    .line 495
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v9

    .line 494
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JIIII[BLorg/tukaani/xz/ArrayCache;)V

    .line 496
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JIIII[BLorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "uncompSize"    # J
    .param p4, "lc"    # I
    .param p5, "lp"    # I
    .param p6, "pb"    # I
    .param p7, "dictSize"    # I
    .param p8, "presetDict"    # [B
    .param p9, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 52
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 543
    invoke-direct/range {p0 .. p9}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JIIII[BLorg/tukaani/xz/ArrayCache;)V

    .line 545
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

    .line 213
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V

    .line 214
    return-void
.end method

.method private static getDictSize(I)I
    .locals 2
    .param p0, "dictSize"    # I

    .line 131
    if-ltz p0, :cond_1

    const v0, 0x7ffffff0

    if-gt p0, v0, :cond_1

    .line 145
    const/16 v0, 0x1000

    if-ge p0, v0, :cond_0

    .line 146
    const/16 p0, 0x1000

    .line 150
    :cond_0
    add-int/lit8 v0, p0, 0xf

    and-int/lit8 v0, v0, -0x10

    return v0

    .line 132
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LZMA dictionary is too big for this implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMemoryUsage(IB)I
    .locals 4
    .param p0, "dictSize"    # I
    .param p1, "propsByte"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;,
            Lorg/tukaani/xz/CorruptedInputException;
        }
    .end annotation

    .line 85
    if-ltz p0, :cond_1

    const v0, 0x7ffffff0

    if-gt p0, v0, :cond_1

    .line 89
    and-int/lit16 v0, p1, 0xff

    .line 90
    .local v0, "props":I
    const/16 v1, 0xe0

    if-gt v0, v1, :cond_0

    .line 93
    rem-int/lit8 v0, v0, 0x2d

    .line 94
    div-int/lit8 v1, v0, 0x9

    .line 95
    .local v1, "lp":I
    mul-int/lit8 v2, v1, 0x9

    sub-int v2, v0, v2

    .line 97
    .local v2, "lc":I
    invoke-static {p0, v2, v1}, Lorg/tukaani/xz/LZMAInputStream;->getMemoryUsage(III)I

    move-result v3

    return v3

    .line 91
    .end local v1    # "lp":I
    .end local v2    # "lc":I
    :cond_0
    new-instance v1, Lorg/tukaani/xz/CorruptedInputException;

    const-string v2, "Invalid LZMA properties byte"

    invoke-direct {v1, v2}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    .end local v0    # "props":I
    :cond_1
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "LZMA dictionary is too big for this implementation"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMemoryUsage(III)I
    .locals 3
    .param p0, "dictSize"    # I
    .param p1, "lc"    # I
    .param p2, "lp"    # I

    .line 116
    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    .line 126
    invoke-static {p0}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0xa

    const/16 v1, 0x600

    add-int v2, p1, p2

    shl-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x400

    add-int/2addr v0, v1

    return v0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid lc or lp"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initialize(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V
    .locals 16
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "uncompSize"    # J
    .param p4, "propsByte"    # B
    .param p5, "dictSize"    # I
    .param p6, "presetDict"    # [B
    .param p7, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 553
    move/from16 v10, p5

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2

    .line 559
    move/from16 v11, p4

    and-int/lit16 v0, v11, 0xff

    .line 560
    .local v0, "props":I
    const/16 v1, 0xe0

    if-gt v0, v1, :cond_1

    .line 563
    div-int/lit8 v12, v0, 0x2d

    .line 564
    .local v12, "pb":I
    mul-int/lit8 v1, v12, 0x9

    mul-int/lit8 v1, v1, 0x5

    sub-int v13, v0, v1

    .line 565
    .end local v0    # "props":I
    .local v13, "props":I
    div-int/lit8 v14, v13, 0x9

    .line 566
    .local v14, "lp":I
    mul-int/lit8 v0, v14, 0x9

    sub-int v15, v13, v0

    .line 570
    .local v15, "lc":I
    if-ltz v10, :cond_0

    const v0, 0x7ffffff0

    if-gt v10, v0, :cond_0

    .line 574
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move v4, v15

    move v5, v14

    move v6, v12

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JIIII[BLorg/tukaani/xz/ArrayCache;)V

    .line 576
    return-void

    .line 571
    :cond_0
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "LZMA dictionary is too big for this implementation"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    .end local v12    # "pb":I
    .end local v13    # "props":I
    .end local v14    # "lp":I
    .end local v15    # "lc":I
    .restart local v0    # "props":I
    :cond_1
    new-instance v1, Lorg/tukaani/xz/CorruptedInputException;

    const-string v2, "Invalid LZMA properties byte"

    invoke-direct {v1, v2}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 554
    .end local v0    # "props":I
    :cond_2
    move/from16 v11, p4

    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "Uncompressed size is too big"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initialize(Ljava/io/InputStream;JIIII[BLorg/tukaani/xz/ArrayCache;)V
    .locals 16
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "uncompSize"    # J
    .param p4, "lc"    # I
    .param p5, "lp"    # I
    .param p6, "pb"    # I
    .param p7, "dictSize"    # I
    .param p8, "presetDict"    # [B
    .param p9, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p9

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    if-ltz v10, :cond_1

    const/16 v4, 0x8

    if-gt v10, v4, :cond_1

    if-ltz v11, :cond_1

    const/4 v4, 0x4

    if-gt v11, v4, :cond_1

    if-ltz v12, :cond_1

    if-gt v12, v4, :cond_1

    .line 589
    iput-object v1, v0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    .line 590
    iput-object v13, v0, Lorg/tukaani/xz/LZMAInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 594
    invoke-static/range {p7 .. p7}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    move-result v4

    .line 595
    .end local p7    # "dictSize":I
    .local v4, "dictSize":I
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-ltz v5, :cond_0

    int-to-long v5, v4

    cmp-long v5, v5, v2

    if-lez v5, :cond_0

    .line 596
    long-to-int v5, v2

    invoke-static {v5}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    move-result v4

    move v14, v4

    goto :goto_0

    .line 598
    :cond_0
    move v14, v4

    .end local v4    # "dictSize":I
    .local v14, "dictSize":I
    :goto_0
    new-instance v4, Lorg/tukaani/xz/lz/LZDecoder;

    invoke-static {v14}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    move-result v5

    move-object/from16 v15, p8

    invoke-direct {v4, v5, v15, v13}, Lorg/tukaani/xz/lz/LZDecoder;-><init>(I[BLorg/tukaani/xz/ArrayCache;)V

    iput-object v4, v0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 599
    new-instance v4, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    invoke-direct {v4, v1}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, v0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    .line 600
    new-instance v9, Lorg/tukaani/xz/lzma/LZMADecoder;

    iget-object v5, v0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    iget-object v6, v0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    move-object v4, v9

    move/from16 v7, p4

    move/from16 v8, p5

    move-object v1, v9

    move/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lorg/tukaani/xz/lzma/LZMADecoder;-><init>(Lorg/tukaani/xz/lz/LZDecoder;Lorg/tukaani/xz/rangecoder/RangeDecoder;III)V

    iput-object v1, v0, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 602
    iput-wide v2, v0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    .line 603
    return-void

    .line 585
    .end local v14    # "dictSize":I
    .restart local p7    # "dictSize":I
    :cond_1
    move-object/from16 v15, p8

    .line 587
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private putArraysToCache()V
    .locals 2

    .line 816
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    iget-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/lz/LZDecoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 818
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 820
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 830
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 831
    invoke-direct {p0}, Lorg/tukaani/xz/LZMAInputStream;->putArraysToCache()V

    .line 834
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    .line 837
    goto :goto_0

    .line 836
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    .line 837
    throw v1

    .line 839
    :cond_0
    :goto_0
    return-void
.end method

.method public enableRelaxedEndCondition()V
    .locals 1

    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    .line 627
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/LZMAInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([BII)I
    .locals 16
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-ltz p2, :cond_13

    if-ltz p3, :cond_13

    add-int v0, p2, p3

    if-ltz v0, :cond_13

    add-int v0, p2, p3

    array-length v3, v2

    if-gt v0, v3, :cond_13

    .line 681
    if-nez p3, :cond_0

    .line 682
    const/4 v0, 0x0

    return v0

    .line 684
    :cond_0
    iget-object v0, v1, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_12

    .line 687
    iget-object v0, v1, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_11

    .line 690
    iget-boolean v0, v1, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    .line 691
    return v3

    .line 694
    :cond_1
    const/4 v0, 0x0

    move/from16 v4, p2

    move/from16 v5, p3

    move v6, v0

    .line 696
    .end local p2    # "off":I
    .end local p3    # "len":I
    .local v4, "off":I
    .local v5, "len":I
    .local v6, "size":I
    :goto_0
    if-lez v5, :cond_10

    .line 700
    move v0, v5

    .line 701
    .local v0, "copySizeMax":I
    :try_start_0
    iget-wide v7, v1, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_2

    iget-wide v7, v1, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    int-to-long v11, v5

    cmp-long v7, v7, v11

    if-gez v7, :cond_2

    .line 702
    iget-wide v7, v1, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    long-to-int v0, v7

    move v7, v0

    goto :goto_1

    .line 704
    :cond_2
    move v7, v0

    .end local v0    # "copySizeMax":I
    .local v7, "copySizeMax":I
    :goto_1
    iget-object v0, v1, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v0, v7}, Lorg/tukaani/xz/lz/LZDecoder;->setLimit(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 708
    const-wide/16 v11, -0x1

    const/4 v8, 0x1

    :try_start_1
    iget-object v0, v1, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMADecoder;->decode()V
    :try_end_1
    .catch Lorg/tukaani/xz/CorruptedInputException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 724
    goto :goto_2

    .line 709
    :catch_0
    move-exception v0

    .line 714
    .local v0, "e":Lorg/tukaani/xz/CorruptedInputException;
    :try_start_2
    iget-wide v13, v1, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    cmp-long v13, v13, v11

    if-nez v13, :cond_f

    iget-object v13, v1, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v13}, Lorg/tukaani/xz/lzma/LZMADecoder;->endMarkerDetected()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 717
    iput-boolean v8, v1, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 723
    iget-object v13, v1, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    invoke-virtual {v13}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->normalize()V

    .line 727
    .end local v0    # "e":Lorg/tukaani/xz/CorruptedInputException;
    :goto_2
    iget-object v0, v1, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v0, v2, v4}, Lorg/tukaani/xz/lz/LZDecoder;->flush([BI)I

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move v13, v0

    .line 728
    .local v13, "copiedSize":I
    add-int/2addr v4, v13

    .line 729
    sub-int/2addr v5, v13

    .line 730
    add-int/2addr v6, v13

    .line 732
    :try_start_3
    iget-wide v14, v1, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    cmp-long v0, v14, v9

    if-ltz v0, :cond_4

    .line 734
    iget-wide v14, v1, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move/from16 p2, v4

    .end local v4    # "off":I
    .restart local p2    # "off":I
    int-to-long v3, v13

    sub-long/2addr v14, v3

    :try_start_4
    iput-wide v14, v1, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    .line 735
    iget-wide v3, v1, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    cmp-long v0, v3, v9

    if-ltz v0, :cond_3

    .line 737
    iget-wide v3, v1, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    cmp-long v0, v3, v9

    if-nez v0, :cond_5

    .line 738
    iput-boolean v8, v1, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    goto :goto_3

    .line 735
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v5    # "len":I
    .end local p1    # "buf":[B
    .end local p2    # "off":I
    throw v0

    .line 732
    .restart local v4    # "off":I
    .restart local v5    # "len":I
    .restart local p1    # "buf":[B
    :cond_4
    move/from16 p2, v4

    .line 741
    .end local v4    # "off":I
    .restart local p2    # "off":I
    :cond_5
    :goto_3
    iget-boolean v0, v1, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    if-eqz v0, :cond_e

    .line 747
    iget-object v0, v1, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZDecoder;->hasPending()Z

    move-result v0

    if-nez v0, :cond_d

    .line 754
    iget-object v0, v1, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->isFinished()Z

    move-result v0

    if-nez v0, :cond_b

    .line 763
    iget-wide v3, v1, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    cmp-long v0, v3, v11

    if-eqz v0, :cond_a

    iget-boolean v0, v1, Lorg/tukaani/xz/LZMAInputStream;->relaxedEndCondition:Z

    if-eqz v0, :cond_a

    .line 771
    iget-object v0, v1, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v0, v8}, Lorg/tukaani/xz/lz/LZDecoder;->setLimit(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 773
    const/4 v3, 0x0

    .line 776
    .local v3, "endMarkerDetected":Z
    :try_start_5
    iget-object v0, v1, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMADecoder;->decode()V
    :try_end_5
    .catch Lorg/tukaani/xz/CorruptedInputException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 786
    goto :goto_4

    .line 777
    :catch_1
    move-exception v0

    .line 778
    .restart local v0    # "e":Lorg/tukaani/xz/CorruptedInputException;
    :try_start_6
    iget-object v4, v1, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v4}, Lorg/tukaani/xz/lzma/LZMADecoder;->endMarkerDetected()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 781
    const/4 v3, 0x1

    .line 785
    iget-object v4, v1, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    invoke-virtual {v4}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->normalize()V

    .line 791
    .end local v0    # "e":Lorg/tukaani/xz/CorruptedInputException;
    :goto_4
    if-eqz v3, :cond_8

    iget-object v0, v1, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 798
    iget-object v0, v1, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZDecoder;->hasPending()Z

    move-result v0

    if-nez v0, :cond_7

    .line 799
    iget-object v0, v1, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZDecoder;->hasSpace()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v5    # "len":I
    .end local p1    # "buf":[B
    .end local p2    # "off":I
    throw v0

    .line 798
    .restart local v5    # "len":I
    .restart local p1    # "buf":[B
    .restart local p2    # "off":I
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v5    # "len":I
    .end local p1    # "buf":[B
    .end local p2    # "off":I
    throw v0

    .line 792
    .restart local v5    # "len":I
    .restart local p1    # "buf":[B
    .restart local p2    # "off":I
    :cond_8
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .end local v5    # "len":I
    .end local p1    # "buf":[B
    .end local p2    # "off":I
    throw v0

    .line 779
    .restart local v0    # "e":Lorg/tukaani/xz/CorruptedInputException;
    .restart local v5    # "len":I
    .restart local p1    # "buf":[B
    .restart local p2    # "off":I
    :cond_9
    nop

    .end local v5    # "len":I
    .end local p1    # "buf":[B
    .end local p2    # "off":I
    throw v0

    .line 764
    .end local v0    # "e":Lorg/tukaani/xz/CorruptedInputException;
    .end local v3    # "endMarkerDetected":Z
    .restart local v5    # "len":I
    .restart local p1    # "buf":[B
    .restart local p2    # "off":I
    :cond_a
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .end local v5    # "len":I
    .end local p1    # "buf":[B
    .end local p2    # "off":I
    throw v0

    .line 802
    .restart local v5    # "len":I
    .restart local p1    # "buf":[B
    .restart local p2    # "off":I
    :cond_b
    :goto_5
    invoke-direct/range {p0 .. p0}, Lorg/tukaani/xz/LZMAInputStream;->putArraysToCache()V

    .line 803
    if-nez v6, :cond_c

    const/4 v3, -0x1

    goto :goto_6

    :cond_c
    move v3, v6

    :goto_6
    return v3

    .line 748
    :cond_d
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .end local v5    # "len":I
    .end local p1    # "buf":[B
    .end local p2    # "off":I
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 805
    .end local v7    # "copySizeMax":I
    .end local v13    # "copiedSize":I
    .restart local v5    # "len":I
    .restart local p1    # "buf":[B
    .restart local p2    # "off":I
    :cond_e
    move/from16 v4, p2

    const/4 v3, -0x1

    goto/16 :goto_0

    .line 809
    .end local v6    # "size":I
    :catch_2
    move-exception v0

    move/from16 v4, p2

    goto :goto_7

    .end local p2    # "off":I
    .restart local v4    # "off":I
    :catch_3
    move-exception v0

    move/from16 p2, v4

    .end local v4    # "off":I
    .restart local p2    # "off":I
    goto :goto_7

    .line 715
    .end local p2    # "off":I
    .restart local v0    # "e":Lorg/tukaani/xz/CorruptedInputException;
    .restart local v4    # "off":I
    .restart local v6    # "size":I
    .restart local v7    # "copySizeMax":I
    :cond_f
    nop

    .end local v4    # "off":I
    .end local v5    # "len":I
    .end local p1    # "buf":[B
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 809
    .end local v0    # "e":Lorg/tukaani/xz/CorruptedInputException;
    .end local v6    # "size":I
    .end local v7    # "copySizeMax":I
    .restart local v4    # "off":I
    .restart local v5    # "len":I
    .restart local p1    # "buf":[B
    :catch_4
    move-exception v0

    .line 810
    .local v0, "e":Ljava/io/IOException;
    :goto_7
    iput-object v0, v1, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 811
    throw v0

    .line 807
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v6    # "size":I
    :cond_10
    return v6

    .line 688
    .end local v4    # "off":I
    .end local v5    # "len":I
    .end local v6    # "size":I
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_11
    iget-object v0, v1, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 685
    :cond_12
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v3, "Stream closed"

    invoke-direct {v0, v3}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 679
    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
