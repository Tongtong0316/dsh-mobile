.class Lorg/tukaani/xz/LZMA2OutputStream;
.super Lorg/tukaani/xz/FinishableOutputStream;
.source "LZMA2OutputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final COMPRESSED_SIZE_MAX:I = 0x10000


# instance fields
.field private final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private final chunkHeader:[B

.field private dictResetNeeded:Z

.field private exception:Ljava/io/IOException;

.field private finished:Z

.field private lz:Lorg/tukaani/xz/lz/LZEncoder;

.field private lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

.field private out:Lorg/tukaani/xz/FinishableOutputStream;

.field private pendingSize:I

.field private final props:I

.field private propsNeeded:Z

.field private rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;

.field private stateResetNeeded:Z

.field private final tempBuf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 13
    return-void
.end method

.method constructor <init>(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/LZMA2Options;Lorg/tukaani/xz/ArrayCache;)V
    .locals 17
    .param p1, "out"    # Lorg/tukaani/xz/FinishableOutputStream;
    .param p2, "options"    # Lorg/tukaani/xz/LZMA2Options;
    .param p3, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 52
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct/range {p0 .. p0}, Lorg/tukaani/xz/FinishableOutputStream;-><init>()V

    .line 25
    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/tukaani/xz/LZMA2OutputStream;->dictResetNeeded:Z

    .line 26
    iput-boolean v3, v0, Lorg/tukaani/xz/LZMA2OutputStream;->stateResetNeeded:Z

    .line 27
    iput-boolean v3, v0, Lorg/tukaani/xz/LZMA2OutputStream;->propsNeeded:Z

    .line 29
    const/4 v4, 0x0

    iput v4, v0, Lorg/tukaani/xz/LZMA2OutputStream;->pendingSize:I

    .line 30
    iput-boolean v4, v0, Lorg/tukaani/xz/LZMA2OutputStream;->finished:Z

    .line 31
    const/4 v5, 0x0

    iput-object v5, v0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    .line 33
    const/4 v5, 0x6

    new-array v5, v5, [B

    iput-object v5, v0, Lorg/tukaani/xz/LZMA2OutputStream;->chunkHeader:[B

    .line 35
    new-array v3, v3, [B

    iput-object v3, v0, Lorg/tukaani/xz/LZMA2OutputStream;->tempBuf:[B

    .line 53
    if-eqz v1, :cond_1

    .line 56
    iput-object v2, v0, Lorg/tukaani/xz/LZMA2OutputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 57
    iput-object v1, v0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    .line 58
    new-instance v3, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;

    const/high16 v5, 0x10000

    invoke-direct {v3, v5, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;-><init>(ILorg/tukaani/xz/ArrayCache;)V

    iput-object v3, v0, Lorg/tukaani/xz/LZMA2OutputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;

    .line 60
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getDictSize()I

    move-result v3

    .line 61
    .local v3, "dictSize":I
    invoke-static {v3}, Lorg/tukaani/xz/LZMA2OutputStream;->getExtraSizeBefore(I)I

    move-result v5

    .line 62
    .local v5, "extraSizeBefore":I
    iget-object v6, v0, Lorg/tukaani/xz/LZMA2OutputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;

    .line 63
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getLc()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getLp()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getPb()I

    move-result v9

    .line 64
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getMode()I

    move-result v10

    .line 65
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getNiceLen()I

    move-result v13

    .line 66
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getMatchFinder()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getDepthLimit()I

    move-result v15

    iget-object v12, v0, Lorg/tukaani/xz/LZMA2OutputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 62
    move v11, v3

    move-object/from16 v16, v12

    move v12, v5

    invoke-static/range {v6 .. v16}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getInstance(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIIIILorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/lzma/LZMAEncoder;

    move-result-object v6

    iput-object v6, v0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    .line 69
    iget-object v6, v0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v6}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getLZEncoder()Lorg/tukaani/xz/lz/LZEncoder;

    move-result-object v6

    iput-object v6, v0, Lorg/tukaani/xz/LZMA2OutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    .line 71
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getPresetDict()[B

    move-result-object v6

    .line 72
    .local v6, "presetDict":[B
    if-eqz v6, :cond_0

    array-length v7, v6

    if-lez v7, :cond_0

    .line 73
    iget-object v7, v0, Lorg/tukaani/xz/LZMA2OutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v7, v3, v6}, Lorg/tukaani/xz/lz/LZEncoder;->setPresetDict(I[B)V

    .line 74
    iput-boolean v4, v0, Lorg/tukaani/xz/LZMA2OutputStream;->dictResetNeeded:Z

    .line 77
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getPb()I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getLp()I

    move-result v7

    add-int/2addr v4, v7

    mul-int/lit8 v4, v4, 0x9

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/LZMA2Options;->getLc()I

    move-result v7

    add-int/2addr v4, v7

    iput v4, v0, Lorg/tukaani/xz/LZMA2OutputStream;->props:I

    .line 78
    return-void

    .line 54
    .end local v3    # "dictSize":I
    .end local v5    # "extraSizeBefore":I
    .end local v6    # "presetDict":[B
    :cond_1
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3
.end method

.method private static getExtraSizeBefore(I)I
    .locals 1
    .param p0, "dictSize"    # I

    .line 38
    const/high16 v0, 0x10000

    if-le v0, p0, :cond_0

    .line 39
    sub-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0
.end method

.method static getMemoryUsage(Lorg/tukaani/xz/LZMA2Options;)I
    .locals 4
    .param p0, "options"    # Lorg/tukaani/xz/LZMA2Options;

    .line 44
    invoke-virtual {p0}, Lorg/tukaani/xz/LZMA2Options;->getDictSize()I

    move-result v0

    .line 45
    .local v0, "dictSize":I
    invoke-static {v0}, Lorg/tukaani/xz/LZMA2OutputStream;->getExtraSizeBefore(I)I

    move-result v1

    .line 46
    .local v1, "extraSizeBefore":I
    invoke-virtual {p0}, Lorg/tukaani/xz/LZMA2Options;->getMode()I

    move-result v2

    .line 48
    invoke-virtual {p0}, Lorg/tukaani/xz/LZMA2Options;->getMatchFinder()I

    move-result v3

    .line 46
    invoke-static {v2, v0, v1, v3}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getMemoryUsage(IIII)I

    move-result v2

    add-int/lit8 v2, v2, 0x46

    return v2
.end method

.method private writeChunk()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;

    invoke-virtual {v0}, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->finish()I

    move-result v0

    .line 115
    .local v0, "compressedSize":I
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getUncompressedSize()I

    move-result v1

    .line 117
    .local v1, "uncompressedSize":I
    if-lez v0, :cond_3

    .line 118
    if-lez v1, :cond_2

    .line 122
    add-int/lit8 v2, v0, 0x2

    if-ge v2, v1, :cond_0

    .line 123
    invoke-direct {p0, v1, v0}, Lorg/tukaani/xz/LZMA2OutputStream;->writeLZMA(II)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v2, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v2}, Lorg/tukaani/xz/lzma/LZMAEncoder;->reset()V

    .line 126
    iget-object v2, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v2}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getUncompressedSize()I

    move-result v1

    .line 127
    if-lez v1, :cond_1

    .line 128
    invoke-direct {p0, v1}, Lorg/tukaani/xz/LZMA2OutputStream;->writeUncompressed(I)V

    .line 131
    :goto_0
    iget v2, p0, Lorg/tukaani/xz/LZMA2OutputStream;->pendingSize:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/tukaani/xz/LZMA2OutputStream;->pendingSize:I

    .line 132
    iget-object v2, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v2}, Lorg/tukaani/xz/lzma/LZMAEncoder;->resetUncompressedSize()V

    .line 133
    iget-object v2, p0, Lorg/tukaani/xz/LZMA2OutputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;

    invoke-virtual {v2}, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->reset()V

    .line 134
    return-void

    .line 127
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 118
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 117
    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2
.end method

.method private writeEndMarker()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->finished:Z

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->setFinishing()V

    .line 197
    :goto_0
    :try_start_0
    iget v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->pendingSize:I

    if-lez v0, :cond_0

    .line 198
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeForLZMA2()Z

    .line 199
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2OutputStream;->writeChunk()V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/FinishableOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    nop

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->finished:Z

    .line 210
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    iget-object v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/lzma/LZMAEncoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    .line 212
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    .line 213
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2OutputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 214
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;

    .line 215
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    .line 205
    throw v0

    .line 192
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 189
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private writeLZMA(II)V
    .locals 5
    .param p1, "uncompressedSize"    # I
    .param p2, "compressedSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->propsNeeded:Z

    if-eqz v0, :cond_1

    .line 141
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->dictResetNeeded:Z

    if-eqz v0, :cond_0

    .line 142
    const/16 v0, 0xe0

    .local v0, "control":I
    goto :goto_0

    .line 144
    .end local v0    # "control":I
    :cond_0
    const/16 v0, 0xc0

    .restart local v0    # "control":I
    goto :goto_0

    .line 146
    .end local v0    # "control":I
    :cond_1
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->stateResetNeeded:Z

    if-eqz v0, :cond_2

    .line 147
    const/16 v0, 0xa0

    .restart local v0    # "control":I
    goto :goto_0

    .line 149
    .end local v0    # "control":I
    :cond_2
    const/16 v0, 0x80

    .line 152
    .restart local v0    # "control":I
    :goto_0
    add-int/lit8 v1, p1, -0x1

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 153
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->chunkHeader:[B

    int-to-byte v2, v0

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 154
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->chunkHeader:[B

    add-int/lit8 v2, p1, -0x1

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 155
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->chunkHeader:[B

    add-int/lit8 v2, p1, -0x1

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    .line 156
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->chunkHeader:[B

    add-int/lit8 v2, p2, -0x1

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    const/4 v4, 0x3

    aput-byte v2, v1, v4

    .line 157
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->chunkHeader:[B

    add-int/lit8 v2, p2, -0x1

    int-to-byte v2, v2

    const/4 v4, 0x4

    aput-byte v2, v1, v4

    .line 159
    iget-boolean v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->propsNeeded:Z

    const/4 v2, 0x5

    if-eqz v1, :cond_3

    .line 160
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->chunkHeader:[B

    iget v4, p0, Lorg/tukaani/xz/LZMA2OutputStream;->props:I

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 161
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2OutputStream;->chunkHeader:[B

    const/4 v4, 0x6

    invoke-virtual {v1, v2, v3, v4}, Lorg/tukaani/xz/FinishableOutputStream;->write([BII)V

    goto :goto_1

    .line 163
    :cond_3
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    iget-object v4, p0, Lorg/tukaani/xz/LZMA2OutputStream;->chunkHeader:[B

    invoke-virtual {v1, v4, v3, v2}, Lorg/tukaani/xz/FinishableOutputStream;->write([BII)V

    .line 166
    :goto_1
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->write(Ljava/io/OutputStream;)V

    .line 168
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2OutputStream;->propsNeeded:Z

    .line 169
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2OutputStream;->stateResetNeeded:Z

    .line 170
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2OutputStream;->dictResetNeeded:Z

    .line 171
    return-void
.end method

.method private writeUncompressed(I)V
    .locals 6
    .param p1, "uncompressedSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    nop

    :goto_0
    const/4 v0, 0x1

    if-lez p1, :cond_1

    .line 175
    const/high16 v1, 0x10000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 176
    .local v1, "chunkSize":I
    iget-object v2, p0, Lorg/tukaani/xz/LZMA2OutputStream;->chunkHeader:[B

    iget-boolean v3, p0, Lorg/tukaani/xz/LZMA2OutputStream;->dictResetNeeded:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_1
    int-to-byte v3, v3

    const/4 v5, 0x0

    aput-byte v3, v2, v5

    .line 177
    iget-object v2, p0, Lorg/tukaani/xz/LZMA2OutputStream;->chunkHeader:[B

    add-int/lit8 v3, v1, -0x1

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 178
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->chunkHeader:[B

    add-int/lit8 v2, v1, -0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 179
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2OutputStream;->chunkHeader:[B

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v5, v3}, Lorg/tukaani/xz/FinishableOutputStream;->write([BII)V

    .line 180
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0, v2, p1, v1}, Lorg/tukaani/xz/lz/LZEncoder;->copyUncompressed(Ljava/io/OutputStream;II)V

    .line 181
    sub-int/2addr p1, v1

    .line 182
    iput-boolean v5, p0, Lorg/tukaani/xz/LZMA2OutputStream;->dictResetNeeded:Z

    .line 183
    .end local v1    # "chunkSize":I
    goto :goto_0

    .line 185
    :cond_1
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->stateResetNeeded:Z

    .line 186
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

    .line 256
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    if-eqz v0, :cond_2

    .line 257
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 259
    :try_start_0
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2OutputStream;->writeEndMarker()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 264
    :cond_0
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/FinishableOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    goto :goto_2

    .line 265
    :catch_1
    move-exception v0

    .line 266
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 267
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    .line 270
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    .line 273
    :cond_2
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_3

    .line 275
    return-void

    .line 274
    :cond_3
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    throw v0
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 243
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2OutputStream;->writeEndMarker()V

    .line 246
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/FinishableOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    .line 249
    throw v0

    .line 252
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 222
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->finished:Z

    if-nez v0, :cond_1

    .line 226
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->setFlushing()V

    .line 228
    :goto_0
    iget v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->pendingSize:I

    if-lez v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeForLZMA2()Z

    .line 230
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2OutputStream;->writeChunk()V

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/FinishableOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    nop

    .line 238
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    .line 236
    throw v0

    .line 223
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream finished or closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_2
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    throw v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->tempBuf:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 83
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->tempBuf:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/LZMA2OutputStream;->write([BII)V

    .line 84
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    add-int v0, p2, p3

    if-ltz v0, :cond_4

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    .line 91
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_3

    .line 94
    iget-boolean v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->finished:Z

    if-nez v0, :cond_2

    .line 98
    :goto_0
    if-lez p3, :cond_1

    .line 99
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/tukaani/xz/lz/LZEncoder;->fillWindow([BII)I

    move-result v0

    .line 100
    .local v0, "used":I
    add-int/2addr p2, v0

    .line 101
    sub-int/2addr p3, v0

    .line 102
    iget v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->pendingSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->pendingSize:I

    .line 104
    iget-object v1, p0, Lorg/tukaani/xz/LZMA2OutputStream;->lzma:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeForLZMA2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2OutputStream;->writeChunk()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v0    # "used":I
    :cond_0
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    .line 109
    throw v0

    .line 110
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    nop

    .line 111
    return-void

    .line 95
    :cond_2
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream finished or closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2OutputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 89
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
