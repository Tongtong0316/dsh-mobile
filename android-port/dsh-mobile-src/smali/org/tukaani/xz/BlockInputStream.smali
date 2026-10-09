.class Lorg/tukaani/xz/BlockInputStream;
.super Ljava/io/InputStream;
.source "BlockInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final check:Lorg/tukaani/xz/check/Check;

.field private compressedSizeInHeader:J

.field private compressedSizeLimit:J

.field private endReached:Z

.field private filterChain:Ljava/io/InputStream;

.field private final headerSize:I

.field private final inCounted:Lorg/tukaani/xz/CountingInputStream;

.field private final inData:Ljava/io/DataInputStream;

.field private final tempBuf:[B

.field private uncompressedSize:J

.field private uncompressedSizeInHeader:J

.field private final verifyCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/tukaani/xz/check/Check;ZIJJLorg/tukaani/xz/ArrayCache;)V
    .locals 22
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "check"    # Lorg/tukaani/xz/check/Check;
    .param p3, "verifyCheck"    # Z
    .param p4, "memoryLimit"    # I
    .param p5, "unpaddedSizeInIndex"    # J
    .param p7, "uncompressedSizeInIndex"    # J
    .param p9, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/tukaani/xz/IndexIndicatorException;
        }
    .end annotation

    .line 37
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p4

    move-wide/from16 v4, p7

    invoke-direct/range {p0 .. p0}, Ljava/io/InputStream;-><init>()V

    .line 22
    const-wide/16 v6, -0x1

    iput-wide v6, v1, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    .line 23
    iput-wide v6, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    .line 26
    const-wide/16 v8, 0x0

    iput-wide v8, v1, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, v1, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    .line 29
    const/4 v10, 0x1

    new-array v11, v10, [B

    iput-object v11, v1, Lorg/tukaani/xz/BlockInputStream;->tempBuf:[B

    .line 38
    move-object/from16 v11, p2

    iput-object v11, v1, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    .line 39
    move/from16 v12, p3

    iput-boolean v12, v1, Lorg/tukaani/xz/BlockInputStream;->verifyCheck:Z

    .line 40
    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v13, v1, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    .line 43
    iget-object v13, v1, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v13

    .line 46
    .local v13, "b":I
    if-eqz v13, :cond_17

    .line 50
    add-int/lit8 v14, v13, 0x1

    mul-int/lit8 v14, v14, 0x4

    iput v14, v1, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    .line 52
    iget v14, v1, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    new-array v14, v14, [B

    .line 53
    .local v14, "buf":[B
    int-to-byte v15, v13

    aput-byte v15, v14, v0

    .line 54
    iget-object v15, v1, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    iget v6, v1, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    sub-int/2addr v6, v10

    invoke-virtual {v15, v14, v10, v6}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 57
    iget v6, v1, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    add-int/lit8 v6, v6, -0x4

    iget v7, v1, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    add-int/lit8 v7, v7, -0x4

    invoke-static {v14, v0, v6, v7}, Lorg/tukaani/xz/common/DecoderUtil;->isCRC32Valid([BIII)Z

    move-result v0

    const-string v6, "XZ Block Header is corrupt"

    if-eqz v0, :cond_16

    .line 61
    aget-byte v0, v14, v10

    and-int/lit8 v0, v0, 0x3c

    const-string v7, "Unsupported options in XZ Block Header"

    if-nez v0, :cond_15

    .line 66
    aget-byte v0, v14, v10

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v15, v0, 0x1

    .line 67
    .local v15, "filterCount":I
    new-array v8, v15, [J

    .line 68
    .local v8, "filterIDs":[J
    new-array v9, v15, [[B

    .line 72
    .local v9, "filterProps":[[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget v10, v1, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    add-int/lit8 v10, v10, -0x6

    const/4 v11, 0x2

    invoke-direct {v0, v14, v11, v10}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object v10, v0

    .line 78
    .local v10, "bufStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    iget v0, v1, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    int-to-long v11, v0

    const-wide v20, 0x7ffffffffffffffcL

    sub-long v20, v20, v11

    .line 79
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v0

    int-to-long v11, v0

    sub-long v11, v20, v11

    iput-wide v11, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    .line 83
    const/4 v0, 0x1

    aget-byte v11, v14, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit8 v0, v11, 0x40

    if-eqz v0, :cond_1

    .line 84
    :try_start_1
    invoke-static {v10}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v11

    iput-wide v11, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    .line 86
    iget-wide v11, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    const-wide/16 v18, 0x0

    cmp-long v0, v11, v18

    if-eqz v0, :cond_0

    iget-wide v11, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    iget-wide v2, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    cmp-long v0, v11, v2

    if-gtz v0, :cond_0

    .line 90
    iget-wide v2, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    iput-wide v2, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .end local v8    # "filterIDs":[J
    .end local v9    # "filterProps":[[B
    .end local v10    # "bufStream":Ljava/io/ByteArrayInputStream;
    .end local v13    # "b":I
    .end local v14    # "buf":[B
    .end local v15    # "filterCount":I
    .end local p1    # "in":Ljava/io/InputStream;
    .end local p2    # "check":Lorg/tukaani/xz/check/Check;
    .end local p3    # "verifyCheck":Z
    .end local p4    # "memoryLimit":I
    .end local p5    # "unpaddedSizeInIndex":J
    .end local p7    # "uncompressedSizeInIndex":J
    .end local p9    # "arrayCache":Lorg/tukaani/xz/ArrayCache;
    throw v0

    .line 95
    .restart local v8    # "filterIDs":[J
    .restart local v9    # "filterProps":[[B
    .restart local v10    # "bufStream":Ljava/io/ByteArrayInputStream;
    .restart local v13    # "b":I
    .restart local v14    # "buf":[B
    .restart local v15    # "filterCount":I
    .restart local p1    # "in":Ljava/io/InputStream;
    .restart local p2    # "check":Lorg/tukaani/xz/check/Check;
    .restart local p3    # "verifyCheck":Z
    .restart local p4    # "memoryLimit":I
    .restart local p5    # "unpaddedSizeInIndex":J
    .restart local p7    # "uncompressedSizeInIndex":J
    .restart local p9    # "arrayCache":Lorg/tukaani/xz/ArrayCache;
    :cond_1
    :goto_0
    const/4 v0, 0x1

    aget-byte v2, v14, v0

    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_2

    .line 96
    invoke-static {v10}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    .line 99
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v15, :cond_4

    .line 100
    invoke-static {v10}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v2

    aput-wide v2, v8, v0

    .line 102
    invoke-static {v10}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v2

    .line 103
    .local v2, "filterPropsSize":J
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v11

    int-to-long v11, v11

    cmp-long v11, v2, v11

    if-gtz v11, :cond_3

    .line 106
    long-to-int v11, v2

    new-array v11, v11, [B

    aput-object v11, v9, v0

    .line 107
    aget-object v11, v9, v0

    invoke-virtual {v10, v11}, Ljava/io/ByteArrayInputStream;->read([B)I

    .line 99
    nop

    .end local v2    # "filterPropsSize":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    .restart local v2    # "filterPropsSize":J
    :cond_3
    new-instance v7, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v7}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .end local v8    # "filterIDs":[J
    .end local v9    # "filterProps":[[B
    .end local v10    # "bufStream":Ljava/io/ByteArrayInputStream;
    .end local v13    # "b":I
    .end local v14    # "buf":[B
    .end local v15    # "filterCount":I
    .end local p1    # "in":Ljava/io/InputStream;
    .end local p2    # "check":Lorg/tukaani/xz/check/Check;
    .end local p3    # "verifyCheck":Z
    .end local p4    # "memoryLimit":I
    .end local p5    # "unpaddedSizeInIndex":J
    .end local p7    # "uncompressedSizeInIndex":J
    .end local p9    # "arrayCache":Lorg/tukaani/xz/ArrayCache;
    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    .end local v0    # "i":I
    .end local v2    # "filterPropsSize":J
    .restart local v8    # "filterIDs":[J
    .restart local v9    # "filterProps":[[B
    .restart local v10    # "bufStream":Ljava/io/ByteArrayInputStream;
    .restart local v13    # "b":I
    .restart local v14    # "buf":[B
    .restart local v15    # "filterCount":I
    .restart local p1    # "in":Ljava/io/InputStream;
    .restart local p2    # "check":Lorg/tukaani/xz/check/Check;
    .restart local p3    # "verifyCheck":Z
    .restart local p4    # "memoryLimit":I
    .restart local p5    # "unpaddedSizeInIndex":J
    .restart local p7    # "uncompressedSizeInIndex":J
    .restart local p9    # "arrayCache":Lorg/tukaani/xz/ArrayCache;
    :cond_4
    nop

    .line 115
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .restart local v0    # "i":I
    :goto_2
    if-lez v0, :cond_6

    .line 116
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    if-nez v2, :cond_5

    .line 115
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 117
    :cond_5
    new-instance v2, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {v2, v7}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    .end local v0    # "i":I
    :cond_6
    const-wide/16 v2, -0x1

    cmp-long v0, p5, v2

    if-eqz v0, :cond_c

    .line 126
    iget v0, v1, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 127
    .local v0, "headerAndCheckSize":I
    int-to-long v2, v0

    cmp-long v2, v2, p5

    const-string v3, "XZ Index does not match a Block Header"

    if-gez v2, :cond_b

    .line 134
    int-to-long v6, v0

    sub-long v6, p5, v6

    .line 136
    .local v6, "compressedSizeFromIndex":J
    iget-wide v11, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    cmp-long v2, v6, v11

    if-gtz v2, :cond_a

    iget-wide v11, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    const-wide/16 v16, -0x1

    cmp-long v2, v11, v16

    if-eqz v2, :cond_7

    iget-wide v11, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    cmp-long v2, v11, v6

    if-nez v2, :cond_a

    .line 145
    :cond_7
    iget-wide v11, v1, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    const-wide/16 v16, -0x1

    cmp-long v2, v11, v16

    if-eqz v2, :cond_9

    iget-wide v11, v1, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long v2, v11, v4

    if-nez v2, :cond_8

    goto :goto_3

    .line 147
    :cond_8
    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v2, v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_9
    :goto_3
    iput-wide v6, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    .line 153
    iput-wide v6, v1, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    .line 154
    iput-wide v4, v1, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    goto :goto_4

    .line 139
    :cond_a
    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v2, v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    .end local v6    # "compressedSizeFromIndex":J
    :cond_b
    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v2, v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    .end local v0    # "headerAndCheckSize":I
    :cond_c
    :goto_4
    array-length v0, v8

    new-array v0, v0, [Lorg/tukaani/xz/FilterDecoder;

    .line 162
    .local v0, "filters":[Lorg/tukaani/xz/FilterDecoder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    array-length v3, v0

    if-ge v2, v3, :cond_10

    .line 163
    aget-wide v6, v8, v2

    const-wide/16 v11, 0x21

    cmp-long v3, v6, v11

    if-nez v3, :cond_d

    .line 164
    new-instance v3, Lorg/tukaani/xz/LZMA2Decoder;

    aget-object v6, v9, v2

    invoke-direct {v3, v6}, Lorg/tukaani/xz/LZMA2Decoder;-><init>([B)V

    aput-object v3, v0, v2

    goto :goto_6

    .line 166
    :cond_d
    aget-wide v6, v8, v2

    const-wide/16 v11, 0x3

    cmp-long v3, v6, v11

    if-nez v3, :cond_e

    .line 167
    new-instance v3, Lorg/tukaani/xz/DeltaDecoder;

    aget-object v6, v9, v2

    invoke-direct {v3, v6}, Lorg/tukaani/xz/DeltaDecoder;-><init>([B)V

    aput-object v3, v0, v2

    goto :goto_6

    .line 169
    :cond_e
    aget-wide v6, v8, v2

    invoke-static {v6, v7}, Lorg/tukaani/xz/BCJDecoder;->isBCJFilterID(J)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 170
    new-instance v3, Lorg/tukaani/xz/BCJDecoder;

    aget-wide v6, v8, v2

    aget-object v11, v9, v2

    invoke-direct {v3, v6, v7, v11}, Lorg/tukaani/xz/BCJDecoder;-><init>(J[B)V

    aput-object v3, v0, v2

    .line 162
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 173
    :cond_f
    new-instance v3, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown Filter ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v11, v8, v2

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 177
    .end local v2    # "i":I
    :cond_10
    invoke-static {v0}, Lorg/tukaani/xz/RawCoder;->validate([Lorg/tukaani/xz/FilterCoder;)V

    .line 180
    move/from16 v2, p4

    if-ltz v2, :cond_13

    .line 181
    const/4 v3, 0x0

    .line 182
    .local v3, "memoryNeeded":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7
    array-length v7, v0

    if-ge v6, v7, :cond_11

    .line 183
    aget-object v7, v0, v6

    invoke-interface {v7}, Lorg/tukaani/xz/FilterDecoder;->getMemoryUsage()I

    move-result v7

    add-int/2addr v3, v7

    .line 182
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 185
    .end local v6    # "i":I
    :cond_11
    if-gt v3, v2, :cond_12

    goto :goto_8

    .line 186
    :cond_12
    new-instance v6, Lorg/tukaani/xz/MemoryLimitException;

    invoke-direct {v6, v3, v2}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw v6

    .line 191
    .end local v3    # "memoryNeeded":I
    :cond_13
    :goto_8
    new-instance v3, Lorg/tukaani/xz/CountingInputStream;

    move-object/from16 v11, p1

    invoke-direct {v3, v11}, Lorg/tukaani/xz/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, v1, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    .line 194
    iget-object v3, v1, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    iput-object v3, v1, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    .line 195
    array-length v3, v0

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    .local v3, "i":I
    :goto_9
    if-ltz v3, :cond_14

    .line 196
    aget-object v6, v0, v3

    iget-object v7, v1, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    move-object/from16 v12, p9

    invoke-interface {v6, v7, v12}, Lorg/tukaani/xz/FilterDecoder;->getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, v1, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    .line 195
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    :cond_14
    move-object/from16 v12, p9

    .line 197
    .end local v3    # "i":I
    return-void

    .line 110
    .end local v0    # "filters":[Lorg/tukaani/xz/FilterDecoder;
    :catch_0
    move-exception v0

    move-object/from16 v11, p1

    move/from16 v2, p4

    move-object/from16 v12, p9

    goto :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v12, p9

    move-object v11, v2

    move v2, v3

    .line 111
    .local v0, "e":Ljava/io/IOException;
    :goto_a
    new-instance v3, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v3, v6}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    .end local v8    # "filterIDs":[J
    .end local v9    # "filterProps":[[B
    .end local v10    # "bufStream":Ljava/io/ByteArrayInputStream;
    .end local v15    # "filterCount":I
    :cond_15
    move-object/from16 v12, p9

    move-object v11, v2

    move v2, v3

    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {v0, v7}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_16
    move-object/from16 v12, p9

    move-object v11, v2

    move v2, v3

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v6}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    .end local v14    # "buf":[B
    :cond_17
    move-object/from16 v12, p9

    move-object v11, v2

    move v2, v3

    new-instance v0, Lorg/tukaani/xz/IndexIndicatorException;

    invoke-direct {v0}, Lorg/tukaani/xz/IndexIndicatorException;-><init>()V

    throw v0
.end method

.method private validate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide v0

    .line 253
    .local v0, "compressedSize":J
    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    :cond_0
    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    iget-wide v4, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v2}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v2

    .line 260
    :cond_2
    :goto_0
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .end local v0    # "compressedSize":J
    .local v2, "compressedSize":J
    const-wide/16 v4, 0x3

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 261
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-nez v0, :cond_3

    move-wide v0, v2

    goto :goto_0

    .line 262
    :cond_3
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    .line 265
    :cond_4
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v0}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v0

    new-array v0, v0, [B

    .line 266
    .local v0, "storedCheck":[B
    iget-object v1, p0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 267
    iget-boolean v1, p0, Lorg/tukaani/xz/BlockInputStream;->verifyCheck:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v1}, Lorg/tukaani/xz/check/Check;->finish()[B

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 268
    :cond_5
    new-instance v1, Lorg/tukaani/xz/CorruptedInputException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Integrity check ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    .line 269
    invoke-virtual {v5}, Lorg/tukaani/xz/check/Check;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") does not match"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    .line 285
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    nop

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    .line 296
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public getUncompressedSize()J
    .locals 2

    .line 303
    iget-wide v0, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    return-wide v0
.end method

.method public getUnpaddedSize()J
    .locals 4

    .line 299
    iget v0, p0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    int-to-long v0, v0

    iget-object v2, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {v2}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v2}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/BlockInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->tempBuf:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([BII)I
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-boolean v0, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 207
    return v1

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 211
    .local v0, "ret":I
    const/4 v2, 0x1

    if-lez v0, :cond_6

    .line 212
    iget-boolean v3, p0, Lorg/tukaani/xz/BlockInputStream;->verifyCheck:Z

    if-eqz v3, :cond_1

    .line 213
    iget-object v3, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v3, p1, p2, v0}, Lorg/tukaani/xz/check/Check;->update([BII)V

    .line 215
    :cond_1
    iget-wide v3, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    .line 218
    iget-object v3, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {v3}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide v3

    .line 219
    .local v3, "compressedSize":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_5

    iget-wide v7, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    cmp-long v7, v3, v7

    if-gtz v7, :cond_5

    iget-wide v7, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    cmp-long v5, v7, v5

    if-ltz v5, :cond_5

    iget-wide v5, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    iget-wide v5, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    iget-wide v7, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_5

    .line 233
    :cond_2
    if-lt v0, p3, :cond_3

    iget-wide v5, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    iget-wide v7, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_7

    .line 234
    :cond_3
    iget-object v5, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ne v5, v1, :cond_4

    .line 237
    invoke-direct {p0}, Lorg/tukaani/xz/BlockInputStream;->validate()V

    .line 238
    iput-boolean v2, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    goto :goto_0

    .line 235
    :cond_4
    new-instance v1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v1

    .line 224
    :cond_5
    new-instance v1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v1

    .line 240
    .end local v3    # "compressedSize":J
    :cond_6
    if-ne v0, v1, :cond_7

    .line 241
    invoke-direct {p0}, Lorg/tukaani/xz/BlockInputStream;->validate()V

    .line 242
    iput-boolean v2, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    goto :goto_1

    .line 240
    :cond_7
    :goto_0
    nop

    .line 245
    :goto_1
    return v0
.end method
