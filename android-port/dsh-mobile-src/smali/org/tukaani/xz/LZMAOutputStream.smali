.class public Lorg/tukaani/xz/LZMAOutputStream;
.super Lorg/tukaani/xz/FinishableOutputStream;
.source "LZMAOutputStream.java"


# instance fields
.field private final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private currentUncompressedSize:J

.field private exception:Ljava/io/IOException;

.field private final expectedUncompressedSize:J

.field private finished:Z

.field private lz:Lorg/tukaani/xz/lz/LZEncoder;

.field private lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

.field private out:Ljava/io/OutputStream;

.field private final props:I

.field private final rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;

.field private final tempBuf:[B

.field private final useEndMarker:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;J)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "options"    # Lorg/tukaani/xz/LZMA2Options;
    .param p3, "inputSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/tukaani/xz/LZMAOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;JLorg/tukaani/xz/ArrayCache;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;JLorg/tukaani/xz/ArrayCache;)V
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "options"    # Lorg/tukaani/xz/LZMA2Options;
    .param p3, "inputSize"    # J
    .param p5, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lorg/tukaani/xz/LZMAOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;ZZJLorg/tukaani/xz/ArrayCache;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "options"    # Lorg/tukaani/xz/LZMA2Options;
    .param p3, "useEndMarker"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/tukaani/xz/LZMAOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;ZLorg/tukaani/xz/ArrayCache;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;ZLorg/tukaani/xz/ArrayCache;)V
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "options"    # Lorg/tukaani/xz/LZMA2Options;
    .param p3, "useEndMarker"    # Z
    .param p4, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    const/4 v3, 0x0

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/tukaani/xz/LZMAOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;ZZJLorg/tukaani/xz/ArrayCache;)V

    .line 206
    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;ZZJLorg/tukaani/xz/ArrayCache;)V
    .locals 18
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "options"    # Lorg/tukaani/xz/LZMA2Options;
    .param p3, "useHeader"    # Z
    .param p4, "useEndMarker"    # Z
    .param p5, "expectedUncompressedSize"    # J
    .param p7, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p5

    invoke-direct/range {p0 .. p0}, Lorg/tukaani/xz/FinishableOutputStream;-><init>()V

    .line 31
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lorg/tukaani/xz/LZMAOutputStream;->currentUncompressedSize:J

    .line 33
    const/4 v4, 0x0

    iput-boolean v4, v0, Lorg/tukaani/xz/LZMAOutputStream;->finished:Z

    .line 34
    const/4 v4, 0x0

    iput-object v4, v0, Lorg/tukaani/xz/LZMAOutputStream;->exception:Ljava/io/IOException;

    .line 36
    const/4 v4, 0x1

    new-array v4, v4, [B

    iput-object v4, v0, Lorg/tukaani/xz/LZMAOutputStream;->tempBuf:[B

    .line 43
    if-eqz v1, :cond_6

    .line 47
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-ltz v4, :cond_5

    .line 51
    move/from16 v4, p4

    iput-boolean v4, v0, Lorg/tukaani/xz/LZMAOutputStream;->useEndMarker:Z

    .line 52
    iput-wide v2, v0, Lorg/tukaani/xz/LZMAOutputStream;->expectedUncompressedSize:J

    .line 54
    move-object/from16 v15, p7

    iput-object v15, v0, Lorg/tukaani/xz/LZMAOutputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 56
    iput-object v1, v0, Lorg/tukaani/xz/LZMAOutputStream;->out:Ljava/io/OutputStream;

    .line 57
    new-instance v5, Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;

    invoke-direct {v5, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v5, v0, Lorg/tukaani/xz/LZMAOutputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;

    .line 59
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getDictSize()I

    move-result v14

    .line 60
    .local v14, "dictSize":I
    iget-object v5, v0, Lorg/tukaani/xz/LZMAOutputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;

    .line 61
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getLc()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getLp()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getPb()I

    move-result v8

    .line 62
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getMode()I

    move-result v9

    .line 63
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getNiceLen()I

    move-result v12

    .line 64
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getMatchFinder()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getDepthLimit()I

    move-result v16

    .line 60
    const/4 v11, 0x0

    move v10, v14

    move/from16 v17, v14

    .end local v14    # "dictSize":I
    .local v17, "dictSize":I
    move/from16 v14, v16

    invoke-static/range {v5 .. v15}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getInstance(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIIIILorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/lzma/LZMAEncoder;

    move-result-object v5

    iput-object v5, v0, Lorg/tukaani/xz/LZMAOutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    .line 67
    iget-object v5, v0, Lorg/tukaani/xz/LZMAOutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getLZEncoder()Lorg/tukaani/xz/lz/LZEncoder;

    move-result-object v5

    iput-object v5, v0, Lorg/tukaani/xz/LZMAOutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    .line 69
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getPresetDict()[B

    move-result-object v5

    .line 70
    .local v5, "presetDict":[B
    if-eqz v5, :cond_1

    array-length v6, v5

    if-lez v6, :cond_1

    .line 71
    if-nez p3, :cond_0

    .line 76
    iget-object v6, v0, Lorg/tukaani/xz/LZMAOutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    move/from16 v7, v17

    .end local v17    # "dictSize":I
    .local v7, "dictSize":I
    invoke-virtual {v6, v7, v5}, Lorg/tukaani/xz/lz/LZEncoder;->setPresetDict(I[B)V

    goto :goto_0

    .line 72
    .end local v7    # "dictSize":I
    .restart local v17    # "dictSize":I
    :cond_0
    new-instance v6, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v8, "Preset dictionary cannot be used in .lzma files (try a raw LZMA stream instead)"

    invoke-direct {v6, v8}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 70
    :cond_1
    move/from16 v7, v17

    .line 79
    .end local v17    # "dictSize":I
    .restart local v7    # "dictSize":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getPb()I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getLp()I

    move-result v8

    add-int/2addr v6, v8

    mul-int/lit8 v6, v6, 0x9

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getLc()I

    move-result v8

    add-int/2addr v6, v8

    iput v6, v0, Lorg/tukaani/xz/LZMAOutputStream;->props:I

    .line 81
    if-eqz p3, :cond_3

    .line 83
    iget v6, v0, Lorg/tukaani/xz/LZMAOutputStream;->props:I

    invoke-virtual {v1, v6}, Ljava/io/OutputStream;->write(I)V

    .line 87
    const/4 v6, 0x0

    move v14, v7

    .end local v7    # "dictSize":I
    .local v6, "i":I
    .restart local v14    # "dictSize":I
    :goto_1
    const/4 v7, 0x4

    if-ge v6, v7, :cond_2

    .line 88
    and-int/lit16 v7, v14, 0xff

    invoke-virtual {v1, v7}, Ljava/io/OutputStream;->write(I)V

    .line 89
    ushr-int/lit8 v14, v14, 0x8

    .line 87
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 95
    .end local v6    # "i":I
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    const/16 v7, 0x8

    if-ge v6, v7, :cond_4

    .line 96
    mul-int/lit8 v7, v6, 0x8

    ushr-long v7, v2, v7

    long-to-int v7, v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v1, v7}, Ljava/io/OutputStream;->write(I)V

    .line 95
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 81
    .end local v6    # "i":I
    .end local v14    # "dictSize":I
    .restart local v7    # "dictSize":I
    :cond_3
    move v14, v7

    .line 98
    .end local v7    # "dictSize":I
    .restart local v14    # "dictSize":I
    :cond_4
    return-void

    .line 48
    .end local v5    # "presetDict":[B
    .end local v14    # "dictSize":I
    :cond_5
    move/from16 v4, p4

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid expected input size (less than -1)"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 44
    :cond_6
    move/from16 v4, p4

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 315
    :try_start_0
    invoke-virtual {p0}, Lorg/tukaani/xz/LZMAOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 319
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 323
    goto :goto_2

    .line 320
    :catch_1
    move-exception v0

    .line 321
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/tukaani/xz/LZMAOutputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_0

    .line 322
    iput-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->exception:Ljava/io/IOException;

    .line 325
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->out:Ljava/io/OutputStream;

    .line 328
    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 330
    return-void

    .line 329
    :cond_2
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->exception:Ljava/io/IOException;

    throw v0
.end method

.method public finish()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->finished:Z

    if-nez v0, :cond_4

    .line 277
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_3

    .line 281
    :try_start_0
    iget-wide v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->expectedUncompressedSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->expectedUncompressedSize:J

    iget-wide v2, p0, Lorg/tukaani/xz/LZMAOutputStream;->currentUncompressedSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected uncompressed size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/tukaani/xz/LZMAOutputStream;->expectedUncompressedSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") doesn\'t equal the number of bytes written to the stream ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/tukaani/xz/LZMAOutputStream;->currentUncompressedSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->setFinishing()V

    .line 289
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeForLZMA1()V

    .line 291
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->useEndMarker:Z

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeLZMA1EndMarker()V

    .line 294
    :cond_2
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;->finish()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    nop

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->finished:Z

    .line 302
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    iget-object v1, p0, Lorg/tukaani/xz/LZMAOutputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/lzma/LZMAEncoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    .line 304
    iput-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    goto :goto_1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->exception:Ljava/io/IOException;

    .line 297
    throw v0

    .line 278
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 306
    :cond_4
    :goto_1
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "LZMAOutputStream does not support flushing"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProps()I
    .locals 1

    .line 214
    iget v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->props:I

    return v0
.end method

.method public getUncompressedSize()J
    .locals 2

    .line 223
    iget-wide v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->currentUncompressedSize:J

    return-wide v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->tempBuf:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 229
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->tempBuf:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/LZMAOutputStream;->write([BII)V

    .line 230
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    add-int v0, p2, p3

    if-ltz v0, :cond_5

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_5

    .line 237
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_4

    .line 240
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->finished:Z

    if-nez v0, :cond_3

    .line 243
    iget-wide v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->expectedUncompressedSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->expectedUncompressedSize:J

    iget-wide v2, p0, Lorg/tukaani/xz/LZMAOutputStream;->currentUncompressedSize:J

    sub-long/2addr v0, v2

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected uncompressed input size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/tukaani/xz/LZMAOutputStream;->expectedUncompressedSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes) was exceeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1
    :goto_0
    iget-wide v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->currentUncompressedSize:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->currentUncompressedSize:J

    .line 251
    :goto_1
    if-lez p3, :cond_2

    .line 252
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/tukaani/xz/lz/LZEncoder;->fillWindow([BII)I

    move-result v0

    .line 253
    .local v0, "used":I
    add-int/2addr p2, v0

    .line 254
    sub-int/2addr p3, v0

    .line 255
    iget-object v1, p0, Lorg/tukaani/xz/LZMAOutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeForLZMA1()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v0    # "used":I
    goto :goto_1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->exception:Ljava/io/IOException;

    .line 259
    throw v0

    .line 260
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    nop

    .line 261
    return-void

    .line 241
    :cond_3
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream finished or closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_4
    iget-object v0, p0, Lorg/tukaani/xz/LZMAOutputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 235
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
