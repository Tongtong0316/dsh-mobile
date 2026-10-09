.class public Lorg/tukaani/xz/LZMA2InputStream;
.super Ljava/io/InputStream;
.source "LZMA2InputStream.java"


# static fields
.field private static final COMPRESSED_SIZE_MAX:I = 0x10000

.field public static final DICT_SIZE_MAX:I = 0x7ffffff0

.field public static final DICT_SIZE_MIN:I = 0x1000


# instance fields
.field private final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private in:Ljava/io/DataInputStream;

.field private isLZMAChunk:Z

.field private lz:Lorg/tukaani/xz/lz/LZDecoder;

.field private lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

.field private needDictReset:Z

.field private needProps:Z

.field private rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

.field private final tempBuf:[B

.field private uncompressedSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "dictSize"    # I

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/LZMA2InputStream;-><init>(Ljava/io/InputStream;I[B)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I[B)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "dictSize"    # I
    .param p3, "presetDict"    # [B

    .line 135
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/tukaani/xz/LZMA2InputStream;-><init>(Ljava/io/InputStream;I[BLorg/tukaani/xz/ArrayCache;)V

    .line 136
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;I[BLorg/tukaani/xz/ArrayCache;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "dictSize"    # I
    .param p3, "presetDict"    # [B
    .param p4, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 160
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    .line 50
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    .line 52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->needDictReset:Z

    .line 53
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->needProps:Z

    .line 54
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->endReached:Z

    .line 56
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    .line 58
    new-array v1, v1, [B

    iput-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->tempBuf:[B

    .line 163
    if-eqz p1, :cond_1

    .line 166
    iput-object p4, p0, Lorg/tukaani/xz/LZMA2InputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 167
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    .line 168
    new-instance v1, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    const/high16 v2, 0x10000

    invoke-direct {v1, v2, p4}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;-><init>(ILorg/tukaani/xz/ArrayCache;)V

    iput-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    .line 169
    new-instance v1, Lorg/tukaani/xz/lz/LZDecoder;

    invoke-static {p2}, Lorg/tukaani/xz/LZMA2InputStream;->getDictSize(I)I

    move-result v2

    invoke-direct {v1, v2, p3, p4}, Lorg/tukaani/xz/lz/LZDecoder;-><init>(I[BLorg/tukaani/xz/ArrayCache;)V

    iput-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 171
    if-eqz p3, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    .line 172
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->needDictReset:Z

    .line 173
    :cond_0
    return-void

    .line 164
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private decodeChunkHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 281
    .local v0, "control":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 282
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->endReached:Z

    .line 283
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2InputStream;->putArraysToCache()V

    .line 284
    return-void

    .line 287
    :cond_0
    const/16 v2, 0xe0

    const/4 v3, 0x0

    if-ge v0, v2, :cond_3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 291
    :cond_1
    iget-boolean v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->needDictReset:Z

    if-nez v2, :cond_2

    goto :goto_1

    .line 292
    :cond_2
    new-instance v1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v1

    .line 288
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->needProps:Z

    .line 289
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->needDictReset:Z

    .line 290
    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v2}, Lorg/tukaani/xz/lz/LZDecoder;->reset()V

    .line 295
    :goto_1
    const/16 v2, 0x80

    if-lt v0, v2, :cond_7

    .line 296
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    .line 298
    and-int/lit8 v2, v0, 0x1f

    shl-int/lit8 v2, v2, 0x10

    iput v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    .line 299
    iget v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    iget-object v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    add-int/2addr v4, v1

    add-int/2addr v2, v4

    iput v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    .line 301
    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    add-int/2addr v2, v1

    .line 303
    .local v2, "compressedSize":I
    const/16 v1, 0xc0

    if-lt v0, v1, :cond_4

    .line 304
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->needProps:Z

    .line 305
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2InputStream;->decodeProps()V

    goto :goto_2

    .line 307
    :cond_4
    iget-boolean v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->needProps:Z

    if-nez v1, :cond_6

    .line 310
    const/16 v1, 0xa0

    if-lt v0, v1, :cond_5

    .line 311
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/LZMADecoder;->reset()V

    .line 314
    :cond_5
    :goto_2
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    iget-object v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1, v3, v2}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->prepareInputBuffer(Ljava/io/DataInputStream;I)V

    .line 316
    .end local v2    # "compressedSize":I
    goto :goto_3

    .line 308
    .restart local v2    # "compressedSize":I
    :cond_6
    new-instance v1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v1

    .line 316
    .end local v2    # "compressedSize":I
    :cond_7
    const/4 v2, 0x2

    if-gt v0, v2, :cond_8

    .line 320
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    .line 321
    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    .line 323
    :goto_3
    return-void

    .line 317
    :cond_8
    new-instance v1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v1
.end method

.method private decodeProps()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 328
    .local v0, "props":I
    const/16 v1, 0xe0

    if-gt v0, v1, :cond_1

    .line 331
    div-int/lit8 v1, v0, 0x2d

    .line 332
    .local v1, "pb":I
    mul-int/lit8 v2, v1, 0x9

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v0, v2

    .line 333
    div-int/lit8 v8, v0, 0x9

    .line 334
    .local v8, "lp":I
    mul-int/lit8 v2, v8, 0x9

    sub-int v9, v0, v2

    .line 336
    .local v9, "lc":I
    add-int v2, v9, v8

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    .line 339
    new-instance v10, Lorg/tukaani/xz/lzma/LZMADecoder;

    iget-object v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    iget-object v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    move-object v2, v10

    move v5, v9

    move v6, v8

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lorg/tukaani/xz/lzma/LZMADecoder;-><init>(Lorg/tukaani/xz/lz/LZDecoder;Lorg/tukaani/xz/rangecoder/RangeDecoder;III)V

    iput-object v10, p0, Lorg/tukaani/xz/LZMA2InputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 340
    return-void

    .line 337
    :cond_0
    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v2}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v2

    .line 329
    .end local v1    # "pb":I
    .end local v8    # "lp":I
    .end local v9    # "lc":I
    :cond_1
    new-instance v1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v1
.end method

.method private static getDictSize(I)I
    .locals 3
    .param p0, "dictSize"    # I

    .line 78
    const/16 v0, 0x1000

    if-lt p0, v0, :cond_0

    const v0, 0x7ffffff0

    if-gt p0, v0, :cond_0

    .line 86
    add-int/lit8 v0, p0, 0xf

    and-int/lit8 v0, v0, -0x10

    return v0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported dictionary size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMemoryUsage(I)I
    .locals 1
    .param p0, "dictSize"    # I

    .line 74
    invoke-static {p0}, Lorg/tukaani/xz/LZMA2InputStream;->getDictSize(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0x68

    return v0
.end method

.method private putArraysToCache()V
    .locals 3

    .line 373
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/lz/LZDecoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 377
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 378
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    .line 380
    :cond_0
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

    .line 362
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 368
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    goto :goto_0

    .line 369
    :cond_0
    iget v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 368
    :goto_0
    return v0

    .line 366
    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 363
    :cond_2
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    .line 391
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2InputStream;->putArraysToCache()V

    .line 394
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    .line 397
    goto :goto_0

    .line 396
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    .line 397
    throw v1

    .line 399
    :cond_0
    :goto_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/LZMA2InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->tempBuf:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([BII)I
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    if-ltz p2, :cond_a

    if-ltz p3, :cond_a

    add-int v0, p2, p3

    if-ltz v0, :cond_a

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_a

    .line 228
    if-nez p3, :cond_0

    .line 229
    const/4 v0, 0x0

    return v0

    .line 231
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    if-eqz v0, :cond_9

    .line 234
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_8

    .line 237
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->endReached:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 238
    return v1

    .line 241
    :cond_1
    const/4 v0, 0x0

    .line 243
    .local v0, "size":I
    :goto_0
    if-lez p3, :cond_7

    .line 244
    :try_start_0
    iget v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    if-nez v2, :cond_3

    .line 245
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2InputStream;->decodeChunkHeader()V

    .line 246
    iget-boolean v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->endReached:Z

    if-eqz v2, :cond_3

    .line 247
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    return v1

    .line 250
    :cond_3
    iget v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 252
    .local v2, "copySizeMax":I
    iget-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    if-nez v3, :cond_4

    .line 253
    iget-object v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    iget-object v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3, v4, v2}, Lorg/tukaani/xz/lz/LZDecoder;->copyUncompressed(Ljava/io/DataInputStream;I)V

    goto :goto_2

    .line 255
    :cond_4
    iget-object v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v3, v2}, Lorg/tukaani/xz/lz/LZDecoder;->setLimit(I)V

    .line 256
    iget-object v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/LZMADecoder;->decode()V

    .line 259
    :goto_2
    iget-object v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v3, p1, p2}, Lorg/tukaani/xz/lz/LZDecoder;->flush([BI)I

    move-result v3

    .line 260
    .local v3, "copiedSize":I
    add-int/2addr p2, v3

    .line 261
    sub-int/2addr p3, v3

    .line 262
    add-int/2addr v0, v3

    .line 263
    iget v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    sub-int/2addr v4, v3

    iput v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    .line 265
    iget v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    if-nez v4, :cond_6

    .line 266
    iget-object v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    invoke-virtual {v4}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v4}, Lorg/tukaani/xz/lz/LZDecoder;->hasPending()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    .line 267
    :cond_5
    new-instance v1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .end local p1    # "buf":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v2    # "copySizeMax":I
    .end local v3    # "copiedSize":I
    .restart local p1    # "buf":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_6
    :goto_3
    goto :goto_0

    .line 272
    .end local v0    # "size":I
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    .line 274
    throw v0

    .line 270
    .local v0, "size":I
    :cond_7
    return v0

    .line 235
    .end local v0    # "size":I
    :cond_8
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 232
    :cond_9
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
