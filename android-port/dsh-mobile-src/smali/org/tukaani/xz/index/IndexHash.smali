.class public Lorg/tukaani/xz/index/IndexHash;
.super Lorg/tukaani/xz/index/IndexBase;
.source "IndexHash.java"


# instance fields
.field private hash:Lorg/tukaani/xz/check/Check;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    invoke-direct {p0, v0}, Lorg/tukaani/xz/index/IndexBase;-><init>(Lorg/tukaani/xz/XZIOException;)V

    .line 24
    :try_start_0
    new-instance v0, Lorg/tukaani/xz/check/SHA256;

    invoke-direct {v0}, Lorg/tukaani/xz/check/SHA256;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lorg/tukaani/xz/check/CRC32;

    invoke-direct {v1}, Lorg/tukaani/xz/check/CRC32;-><init>()V

    iput-object v1, p0, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;

    .line 28
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    return-void
.end method


# virtual methods
.method public add(JJ)V
    .locals 3
    .param p1, "unpaddedSize"    # J
    .param p3, "uncompressedSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/XZIOException;
        }
    .end annotation

    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Lorg/tukaani/xz/index/IndexBase;->add(JJ)V

    .line 35
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 36
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 37
    invoke-virtual {v0, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 38
    iget-object v1, p0, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/check/Check;->update([B)V

    .line 39
    return-void
.end method

.method public bridge synthetic getIndexSize()J
    .locals 2

    .line 17
    invoke-super {p0}, Lorg/tukaani/xz/index/IndexBase;->getIndexSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getStreamSize()J
    .locals 2

    .line 17
    invoke-super {p0}, Lorg/tukaani/xz/index/IndexBase;->getStreamSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public validate(Ljava/io/InputStream;)V
    .locals 19
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    move-object v2, v0

    .line 45
    .local v2, "crc32":Ljava/util/zip/CRC32;
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/zip/CRC32;->update(I)V

    .line 46
    new-instance v0, Ljava/util/zip/CheckedInputStream;

    move-object/from16 v3, p1

    invoke-direct {v0, v3, v2}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    move-object v4, v0

    .line 52
    .local v4, "inChecked":Ljava/util/zip/CheckedInputStream;
    invoke-static {v4}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v5

    .line 53
    .local v5, "storedRecordCount":J
    iget-wide v7, v1, Lorg/tukaani/xz/index/IndexHash;->recordCount:J

    cmp-long v0, v5, v7

    if-nez v0, :cond_7

    .line 59
    new-instance v0, Lorg/tukaani/xz/index/IndexHash;

    invoke-direct {v0}, Lorg/tukaani/xz/index/IndexHash;-><init>()V

    move-object v7, v0

    .line 60
    .local v7, "stored":Lorg/tukaani/xz/index/IndexHash;
    const-wide/16 v8, 0x0

    .local v8, "i":J
    :goto_0
    iget-wide v10, v1, Lorg/tukaani/xz/index/IndexHash;->recordCount:J

    cmp-long v0, v8, v10

    const-string v10, "XZ Index is corrupt"

    if-gez v0, :cond_1

    .line 61
    invoke-static {v4}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v11

    .line 62
    .local v11, "unpaddedSize":J
    invoke-static {v4}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v13

    .line 65
    .local v13, "uncompressedSize":J
    :try_start_0
    invoke-virtual {v7, v11, v12, v13, v14}, Lorg/tukaani/xz/index/IndexHash;->add(JJ)V
    :try_end_0
    .catch Lorg/tukaani/xz/XZIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    nop

    .line 70
    move-wide v15, v5

    .end local v5    # "storedRecordCount":J
    .local v15, "storedRecordCount":J
    iget-wide v5, v7, Lorg/tukaani/xz/index/IndexHash;->blocksSum:J

    move-wide/from16 v17, v11

    .end local v11    # "unpaddedSize":J
    .local v17, "unpaddedSize":J
    iget-wide v11, v1, Lorg/tukaani/xz/index/IndexHash;->blocksSum:J

    cmp-long v0, v5, v11

    if-gtz v0, :cond_0

    iget-wide v5, v7, Lorg/tukaani/xz/index/IndexHash;->uncompressedSum:J

    iget-wide v11, v1, Lorg/tukaani/xz/index/IndexHash;->uncompressedSum:J

    cmp-long v0, v5, v11

    if-gtz v0, :cond_0

    iget-wide v5, v7, Lorg/tukaani/xz/index/IndexHash;->indexListSize:J

    iget-wide v11, v1, Lorg/tukaani/xz/index/IndexHash;->indexListSize:J

    cmp-long v0, v5, v11

    if-gtz v0, :cond_0

    .line 60
    .end local v13    # "uncompressedSize":J
    .end local v17    # "unpaddedSize":J
    const-wide/16 v5, 0x1

    add-long/2addr v8, v5

    move-wide v5, v15

    goto :goto_0

    .line 73
    .restart local v13    # "uncompressedSize":J
    .restart local v17    # "unpaddedSize":J
    :cond_0
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v10}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    .end local v15    # "storedRecordCount":J
    .end local v17    # "unpaddedSize":J
    .restart local v5    # "storedRecordCount":J
    .restart local v11    # "unpaddedSize":J
    :catch_0
    move-exception v0

    move-wide v15, v5

    move-wide/from16 v17, v11

    move-object v5, v0

    .end local v5    # "storedRecordCount":J
    .end local v11    # "unpaddedSize":J
    .restart local v15    # "storedRecordCount":J
    .restart local v17    # "unpaddedSize":J
    move-object v0, v5

    .line 67
    .local v0, "e":Lorg/tukaani/xz/XZIOException;
    new-instance v5, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v5, v10}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 60
    .end local v0    # "e":Lorg/tukaani/xz/XZIOException;
    .end local v13    # "uncompressedSize":J
    .end local v15    # "storedRecordCount":J
    .end local v17    # "unpaddedSize":J
    .restart local v5    # "storedRecordCount":J
    :cond_1
    move-wide v15, v5

    .line 76
    .end local v5    # "storedRecordCount":J
    .end local v8    # "i":J
    .restart local v15    # "storedRecordCount":J
    iget-wide v5, v7, Lorg/tukaani/xz/index/IndexHash;->blocksSum:J

    iget-wide v8, v1, Lorg/tukaani/xz/index/IndexHash;->blocksSum:J

    cmp-long v0, v5, v8

    if-nez v0, :cond_6

    iget-wide v5, v7, Lorg/tukaani/xz/index/IndexHash;->uncompressedSum:J

    iget-wide v8, v1, Lorg/tukaani/xz/index/IndexHash;->uncompressedSum:J

    cmp-long v0, v5, v8

    if-nez v0, :cond_6

    iget-wide v5, v7, Lorg/tukaani/xz/index/IndexHash;->indexListSize:J

    iget-wide v8, v1, Lorg/tukaani/xz/index/IndexHash;->indexListSize:J

    cmp-long v0, v5, v8

    if-nez v0, :cond_6

    iget-object v0, v7, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;

    .line 79
    invoke-virtual {v0}, Lorg/tukaani/xz/check/Check;->finish()[B

    move-result-object v0

    iget-object v5, v1, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v5}, Lorg/tukaani/xz/check/Check;->finish()[B

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 83
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 84
    .local v0, "inData":Ljava/io/DataInputStream;
    invoke-virtual/range {p0 .. p0}, Lorg/tukaani/xz/index/IndexHash;->getIndexPaddingSize()I

    move-result v5

    .local v5, "i":I
    :goto_1
    if-lez v5, :cond_3

    .line 85
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    if-nez v6, :cond_2

    .line 84
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 86
    :cond_2
    new-instance v6, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v6, v10}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 89
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    .line 90
    .local v5, "value":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    const/4 v9, 0x4

    if-ge v8, v9, :cond_5

    .line 91
    mul-int/lit8 v9, v8, 0x8

    ushr-long v11, v5, v9

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v9

    int-to-long v13, v9

    cmp-long v9, v11, v13

    if-nez v9, :cond_4

    .line 90
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 92
    :cond_4
    new-instance v9, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v9, v10}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 93
    .end local v8    # "i":I
    :cond_5
    return-void

    .line 80
    .end local v0    # "inData":Ljava/io/DataInputStream;
    .end local v5    # "value":J
    :cond_6
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v10}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    .end local v7    # "stored":Lorg/tukaani/xz/index/IndexHash;
    .end local v15    # "storedRecordCount":J
    .local v5, "storedRecordCount":J
    :cond_7
    move-wide v15, v5

    .end local v5    # "storedRecordCount":J
    .restart local v15    # "storedRecordCount":J
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v5, "XZ Block Header or the start of XZ Index is corrupt"

    invoke-direct {v0, v5}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
