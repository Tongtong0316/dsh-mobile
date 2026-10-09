.class public Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "SnappyCompressorOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/compressors/CompressorOutputStream<",
        "Ljava/io/OutputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final FOUR_BYTE_COPY_TAG:I = 0x3

.field private static final FOUR_SIZE_BYTE_MARKER:I = 0xfc

.field private static final MAX_LITERAL_SIZE_WITHOUT_SIZE_BYTES:I = 0x3c

.field private static final MAX_LITERAL_SIZE_WITH_ONE_SIZE_BYTE:I = 0x100

.field private static final MAX_LITERAL_SIZE_WITH_THREE_SIZE_BYTES:I = 0x1000000

.field private static final MAX_LITERAL_SIZE_WITH_TWO_SIZE_BYTES:I = 0x10000

.field private static final MAX_MATCH_LENGTH:I = 0x40

.field private static final MAX_MATCH_LENGTH_WITH_ONE_OFFSET_BYTE:I = 0xb

.field private static final MAX_OFFSET_WITH_ONE_OFFSET_BYTE:I = 0x400

.field private static final MAX_OFFSET_WITH_TWO_OFFSET_BYTES:I = 0x8000

.field private static final MIN_MATCH_LENGTH:I = 0x4

.field private static final MIN_MATCH_LENGTH_WITH_ONE_OFFSET_BYTE:I = 0x4

.field private static final ONE_BYTE_COPY_TAG:I = 0x1

.field private static final ONE_SIZE_BYTE_MARKER:I = 0xf0

.field private static final THREE_SIZE_BYTE_MARKER:I = 0xf8

.field private static final TWO_BYTE_COPY_TAG:I = 0x2

.field private static final TWO_SIZE_BYTE_MARKER:I = 0xf4


# instance fields
.field private final compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

.field private final consumer:Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;

.field private finished:Z

.field private final oneByte:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;J)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "uncompressedSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    const v0, 0x8000

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;-><init>(Ljava/io/OutputStream;JI)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;JI)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "uncompressedSize"    # J
    .param p4, "blockSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-static {p4}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->createParameterBuilder(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->build()Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;-><init>(Ljava/io/OutputStream;JLorg/apache/commons/compress/compressors/lz77support/Parameters;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;JLorg/apache/commons/compress/compressors/lz77support/Parameters;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "uncompressedSize"    # J
    .param p4, "params"    # Lorg/apache/commons/compress/compressors/lz77support/Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 105
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->oneByte:[B

    .line 142
    new-instance v0, Lorg/apache/commons/compress/utils/ByteUtils$OutputStreamByteConsumer;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/utils/ByteUtils$OutputStreamByteConsumer;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->consumer:Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;

    .line 143
    new-instance v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    new-instance v1, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;)V

    invoke-direct {v0, p4, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;-><init>(Lorg/apache/commons/compress/compressors/lz77support/Parameters;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    .line 155
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeUncompressedSize(J)V

    .line 156
    return-void
.end method

.method public static createParameterBuilder(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
    .locals 2
    .param p0, "blockSize"    # I

    .line 97
    invoke-static {p0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->builder(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMinBackReferenceLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMaxBackReferenceLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMaxOffset(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMaxLiteralLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v0

    .line 97
    return-object v0
.end method

.method private writeBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V
    .locals 3
    .param p1, "block"    # Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->getLength()I

    move-result v0

    .line 192
    .local v0, "len":I
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->getOffset()I

    move-result v1

    .line 193
    .local v1, "offset":I
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    const/16 v2, 0xb

    if-gt v0, v2, :cond_0

    const/16 v2, 0x400

    if-gt v1, v2, :cond_0

    .line 194
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeBackReferenceWithOneOffsetByte(II)V

    goto :goto_0

    .line 195
    :cond_0
    const v2, 0x8000

    if-ge v1, v2, :cond_1

    .line 196
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeBackReferenceWithTwoOffsetBytes(II)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeBackReferenceWithFourOffsetBytes(II)V

    .line 200
    :goto_0
    return-void
.end method

.method private writeBackReferenceWithFourOffsetBytes(II)V
    .locals 2
    .param p1, "len"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeBackReferenceWithLittleEndianOffset(IIII)V

    .line 204
    return-void
.end method

.method private writeBackReferenceWithLittleEndianOffset(IIII)V
    .locals 2
    .param p1, "tag"    # I
    .param p2, "offsetBytes"    # I
    .param p3, "len"    # I
    .param p4, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v1, p3, -0x1

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 208
    invoke-direct {p0, p2, p4}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLittleEndian(II)V

    .line 209
    return-void
.end method

.method private writeBackReferenceWithOneOffsetByte(II)V
    .locals 3
    .param p1, "len"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v1, p1, -0x4

    shl-int/lit8 v1, v1, 0x2

    or-int/lit8 v1, v1, 0x1

    and-int/lit16 v2, p2, 0x700

    shr-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 213
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->out:Ljava/io/OutputStream;

    and-int/lit16 v1, p2, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 214
    return-void
.end method

.method private writeBackReferenceWithTwoOffsetBytes(II)V
    .locals 1
    .param p1, "len"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    const/4 v0, 0x2

    invoke-direct {p0, v0, v0, p1, p2}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeBackReferenceWithLittleEndianOffset(IIII)V

    .line 218
    return-void
.end method

.method private writeLiteralBlock(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V
    .locals 2
    .param p1, "block"    # Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getLength()I

    move-result v0

    .line 222
    .local v0, "len":I
    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    .line 223
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockNoSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V

    goto :goto_0

    .line 224
    :cond_0
    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    .line 225
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockOneSizeByte(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V

    goto :goto_0

    .line 226
    :cond_1
    const/high16 v1, 0x10000

    if-gt v0, v1, :cond_2

    .line 227
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockTwoSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V

    goto :goto_0

    .line 228
    :cond_2
    const/high16 v1, 0x1000000

    if-gt v0, v1, :cond_3

    .line 229
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockThreeSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V

    goto :goto_0

    .line 231
    :cond_3
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockFourSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V

    .line 233
    :goto_0
    return-void
.end method

.method private writeLiteralBlockFourSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V
    .locals 2
    .param p1, "block"    # Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    const/16 v0, 0xfc

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockWithSize(IIILorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    .line 237
    return-void
.end method

.method private writeLiteralBlockNoSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V
    .locals 2
    .param p1, "block"    # Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    add-int/lit8 v0, p2, -0x1

    shl-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockWithSize(IIILorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    .line 241
    return-void
.end method

.method private writeLiteralBlockOneSizeByte(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V
    .locals 2
    .param p1, "block"    # Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    const/16 v0, 0xf0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockWithSize(IIILorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    .line 245
    return-void
.end method

.method private writeLiteralBlockThreeSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V
    .locals 2
    .param p1, "block"    # Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    const/16 v0, 0xf8

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p2, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockWithSize(IIILorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    .line 249
    return-void
.end method

.method private writeLiteralBlockTwoSizeBytes(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;I)V
    .locals 2
    .param p1, "block"    # Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    const/16 v0, 0xf4

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p2, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlockWithSize(IIILorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    .line 253
    return-void
.end method

.method private writeLiteralBlockWithSize(IIILorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V
    .locals 3
    .param p1, "tagByte"    # I
    .param p2, "sizeBytes"    # I
    .param p3, "len"    # I
    .param p4, "block"    # Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 257
    add-int/lit8 v0, p3, -0x1

    invoke-direct {p0, p2, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLittleEndian(II)V

    .line 258
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p4}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getData()[B

    move-result-object v1

    invoke-virtual {p4}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getOffset()I

    move-result v2

    invoke-virtual {v0, v1, v2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 259
    return-void
.end method

.method private writeLittleEndian(II)V
    .locals 3
    .param p1, "numBytes"    # I
    .param p2, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->consumer:Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;

    int-to-long v1, p2

    invoke-static {v0, v1, v2, p1}, Lorg/apache/commons/compress/utils/ByteUtils;->toLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteConsumer;JI)V

    .line 263
    return-void
.end method

.method private writeUncompressedSize(J)V
    .locals 3
    .param p1, "uncompressedSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    nop

    :cond_0
    const-wide/16 v0, 0x7f

    and-long/2addr v0, p1

    long-to-int v0, v0

    .line 269
    .local v0, "currentByte":I
    int-to-long v1, v0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 270
    .local v1, "more":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 271
    or-int/lit16 v0, v0, 0x80

    .line 273
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 274
    const/4 v2, 0x7

    shr-long/2addr p1, v2

    .line 275
    .end local v0    # "currentByte":I
    if-nez v1, :cond_0

    .line 276
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

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 164
    nop

    .line 165
    return-void

    .line 163
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 164
    throw v0
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->finish()V

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->finished:Z

    .line 177
    :cond_0
    return-void
.end method

.method synthetic lambda$new$0$org-apache-commons-compress-compressors-snappy-SnappyCompressorOutputStream(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V
    .locals 2
    .param p1, "block"    # Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream$1;->$SwitchMap$org$apache$commons$compress$compressors$lz77support$LZ77Compressor$Block$BlockType:[I

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;->getType()Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 149
    :pswitch_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V

    .line 150
    goto :goto_0

    .line 146
    :pswitch_1
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->writeLiteralBlock(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    .line 147
    nop

    .line 154
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->oneByte:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 187
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->oneByte:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->write([B)V

    .line 188
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->compress([BII)V

    .line 182
    return-void
.end method
