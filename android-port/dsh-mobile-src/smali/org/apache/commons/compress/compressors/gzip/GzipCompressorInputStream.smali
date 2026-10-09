.class public Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "GzipCompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# static fields
.field private static final FCOMMENT:I = 0x10

.field private static final FEXTRA:I = 0x4

.field private static final FHCRC:I = 0x2

.field private static final FNAME:I = 0x8

.field private static final FRESERVED:I = 0xe0


# instance fields
.field private final buf:[B

.field private bufUsed:I

.field private final countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

.field private final crc:Ljava/util/zip/CRC32;

.field private final decompressConcatenated:Z

.field private endReached:Z

.field private final in:Ljava/io/InputStream;

.field private inf:Ljava/util/zip/Inflater;

.field private final oneByte:[B

.field private final parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "decompressConcatenated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 110
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->buf:[B

    .line 116
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    .line 119
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->crc:Ljava/util/zip/CRC32;

    .line 125
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->oneByte:[B

    .line 127
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    .line 155
    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

    .line 158
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    goto :goto_0

    .line 161
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    .line 164
    :goto_0
    iput-boolean p2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->decompressConcatenated:Z

    .line 165
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->init(Z)Z

    .line 166
    return-void
.end method

.method private init(Z)Z
    .locals 10
    .param p1, "isFirstMember"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->decompressConcatenated:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected: isFirstMember and decompressConcatenated are both false!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 213
    .local v0, "magic0":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_2

    .line 214
    const/4 v1, 0x0

    return v1

    .line 217
    :cond_2
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_a

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0x8b

    if-eq v1, v2, :cond_3

    goto/16 :goto_3

    .line 222
    :cond_3
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 223
    .local v1, "inData":Ljava/io/DataInput;
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    .line 224
    .local v2, "method":I
    const/16 v3, 0x8

    if-ne v2, v3, :cond_9

    .line 228
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 229
    .local v4, "flg":I
    and-int/lit16 v5, v4, 0xe0

    if-nez v5, :cond_8

    .line 233
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    const/4 v6, 0x4

    invoke-static {v1, v6}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Ljava/io/DataInput;I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setModificationTime(J)V

    .line 234
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    const/4 v6, 0x1

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 239
    :pswitch_1
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-virtual {v5, v6}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setCompressionLevel(I)V

    .line 240
    goto :goto_1

    .line 236
    :pswitch_2
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    const/16 v7, 0x9

    invoke-virtual {v5, v7}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setCompressionLevel(I)V

    .line 237
    nop

    .line 245
    :goto_1
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setOperatingSystem(I)V

    .line 248
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_4

    .line 249
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    .line 250
    .local v5, "xlen":I
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v7

    shl-int/lit8 v3, v7, 0x8

    or-int/2addr v3, v5

    .line 255
    .end local v5    # "xlen":I
    .local v3, "xlen":I
    :goto_2
    add-int/lit8 v5, v3, -0x1

    .end local v3    # "xlen":I
    .restart local v5    # "xlen":I
    if-lez v3, :cond_4

    .line 256
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    move v3, v5

    goto :goto_2

    .line 261
    .end local v5    # "xlen":I
    :cond_4
    and-int/lit8 v3, v4, 0x8

    if-eqz v3, :cond_5

    .line 262
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    new-instance v5, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->readToNull(Ljava/io/DataInput;)[B

    move-result-object v7

    sget-object v8, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->GZIP_ENCODING:Ljava/nio/charset/Charset;

    invoke-direct {v5, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v5}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setFileName(Ljava/lang/String;)V

    .line 266
    :cond_5
    and-int/lit8 v3, v4, 0x10

    if-eqz v3, :cond_6

    .line 267
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    new-instance v5, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->readToNull(Ljava/io/DataInput;)[B

    move-result-object v7

    sget-object v8, Lorg/apache/commons/compress/compressors/gzip/GzipUtils;->GZIP_ENCODING:Ljava/nio/charset/Charset;

    invoke-direct {v5, v7, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v5}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setComment(Ljava/lang/String;)V

    .line 275
    :cond_6
    and-int/lit8 v3, v4, 0x2

    if-eqz v3, :cond_7

    .line 276
    invoke-interface {v1}, Ljava/io/DataInput;->readShort()S

    .line 280
    :cond_7
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->reset()V

    .line 281
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    .line 283
    return v6

    .line 230
    :cond_8
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Reserved flags are set in the .gz header"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 225
    .end local v4    # "flg":I
    :cond_9
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported compression method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in the .gz header"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 218
    .end local v1    # "inData":Ljava/io/DataInput;
    .end local v2    # "method":I
    :cond_a
    :goto_3
    new-instance v1, Ljava/io/IOException;

    if-eqz p1, :cond_b

    const-string v2, "Input is not in the .gz format"

    goto :goto_4

    :cond_b
    const-string v2, "Garbage after a valid .gz stream"

    :goto_4
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static matches([BI)Z
    .locals 4
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 87
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    aget-byte v0, p0, v1

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    aget-byte v2, p0, v0

    const/16 v3, -0x75

    if-ne v2, v3, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private static readToNull(Ljava/io/DataInput;)[B
    .locals 3
    .param p0, "inData"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 93
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    move v2, v1

    .local v2, "b":I
    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 96
    return-object v1

    .line 91
    .end local v2    # "b":I
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_1

    .line 181
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 183
    :cond_1
    return-void
.end method

.method public getCompressedCount()J
    .locals 2

    .line 190
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetaData()Lorg/apache/commons/compress/compressors/gzip/GzipParameters;
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->parameters:Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->oneByte:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->oneByte:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([BII)I
    .locals 19
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 299
    return v0

    .line 301
    :cond_0
    iget-boolean v3, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->endReached:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    .line 302
    return v4

    .line 305
    :cond_1
    const/4 v3, 0x0

    move/from16 v5, p3

    move v6, v3

    move/from16 v3, p2

    .line 307
    .end local p2    # "off":I
    .end local p3    # "len":I
    .local v3, "off":I
    .local v5, "len":I
    .local v6, "size":I
    :goto_0
    if-lez v5, :cond_a

    .line 308
    iget-object v7, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v7}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 311
    iget-object v7, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    iget-object v8, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->buf:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/io/InputStream;->mark(I)V

    .line 313
    iget-object v7, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    iget-object v8, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->buf:[B

    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v7

    iput v7, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    .line 314
    iget v7, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    if-eq v7, v4, :cond_2

    .line 318
    iget-object v7, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v8, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->buf:[B

    iget v9, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    invoke-virtual {v7, v8, v0, v9}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_1

    .line 315
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 323
    :cond_3
    :goto_1
    :try_start_0
    iget-object v7, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v7, v2, v3, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v7
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .local v7, "ret":I
    nop

    .line 328
    iget-object v8, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v8, v2, v3, v7}, Ljava/util/zip/CRC32;->update([BII)V

    .line 329
    add-int/2addr v3, v7

    .line 330
    sub-int/2addr v5, v7

    .line 331
    add-int/2addr v6, v7

    .line 332
    invoke-virtual {v1, v7}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->count(I)V

    .line 334
    iget-object v8, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v8}, Ljava/util/zip/Inflater;->finished()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 337
    iget-object v8, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->reset()V

    .line 339
    iget v8, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    iget-object v9, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v9}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v9

    sub-int/2addr v8, v9

    .line 340
    .local v8, "skipAmount":I
    iget-object v9, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    int-to-long v10, v8

    invoke-static {v9, v10, v11}, Lorg/apache/commons/io/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v9

    int-to-long v11, v8

    cmp-long v9, v9, v11

    if-nez v9, :cond_8

    .line 344
    iput v0, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->bufUsed:I

    .line 346
    new-instance v9, Ljava/io/DataInputStream;

    iget-object v10, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v9, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 349
    .local v9, "inData":Ljava/io/DataInput;
    const/4 v10, 0x4

    invoke-static {v9, v10}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Ljava/io/DataInput;I)J

    move-result-wide v11

    .line 351
    .local v11, "crcStored":J
    iget-object v13, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v13}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v13

    cmp-long v13, v11, v13

    if-nez v13, :cond_7

    .line 356
    invoke-static {v9, v10}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Ljava/io/DataInput;I)J

    move-result-wide v13

    .line 358
    .local v13, "isize":J
    iget-object v10, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v10}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v15

    const-wide v17, 0xffffffffL

    and-long v15, v15, v17

    cmp-long v10, v13, v15

    if-nez v10, :cond_6

    .line 363
    iget-boolean v10, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->decompressConcatenated:Z

    if-eqz v10, :cond_4

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->init(Z)Z

    move-result v10

    if-nez v10, :cond_9

    .line 364
    :cond_4
    iget-object v0, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 365
    const/4 v0, 0x0

    iput-object v0, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->inf:Ljava/util/zip/Inflater;

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->endReached:Z

    .line 367
    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    move v4, v6

    :goto_2
    return v4

    .line 359
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Gzip-compressed data is corrupt(uncompressed size mismatch)"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    .end local v13    # "isize":J
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Gzip-compressed data is corrupt (CRC32 error)"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    .end local v9    # "inData":Ljava/io/DataInput;
    .end local v11    # "crcStored":J
    :cond_8
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 370
    .end local v7    # "ret":I
    .end local v8    # "skipAmount":I
    :cond_9
    goto/16 :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/util/zip/DataFormatException;
    new-instance v4, Ljava/io/IOException;

    const-string v7, "Gzip-compressed data is corrupt"

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 372
    .end local v0    # "e":Ljava/util/zip/DataFormatException;
    :cond_a
    return v6
.end method
