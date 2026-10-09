.class public abstract Lorg/tukaani/xz/lz/LZEncoder;
.super Ljava/lang/Object;
.source "LZEncoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final MF_BT4:I = 0x14

.field public static final MF_HC4:I = 0x4


# instance fields
.field final buf:[B

.field final bufSize:I

.field private finishing:Z

.field private final keepSizeAfter:I

.field private final keepSizeBefore:I

.field final matchLenMax:I

.field final niceLen:I

.field private pendingSize:I

.field private readLimit:I

.field readPos:I

.field private writePos:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 12
    return-void
.end method

.method constructor <init>(IIIIILorg/tukaani/xz/ArrayCache;)V
    .locals 2
    .param p1, "dictSize"    # I
    .param p2, "extraSizeBefore"    # I
    .param p3, "extraSizeAfter"    # I
    .param p4, "niceLen"    # I
    .param p5, "matchLenMax"    # I
    .param p6, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    .line 37
    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->finishing:Z

    .line 39
    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    .line 40
    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    .line 137
    invoke-static {p1, p2, p3, p5}, Lorg/tukaani/xz/lz/LZEncoder;->getBufSize(IIII)I

    move-result v1

    iput v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->bufSize:I

    .line 142
    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->bufSize:I

    add-int/2addr v1, v0

    invoke-virtual {p6, v1, v0}, Lorg/tukaani/xz/ArrayCache;->getByteArray(IZ)[B

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    .line 144
    add-int v0, p2, p1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeBefore:I

    .line 145
    add-int v0, p3, p5

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeAfter:I

    .line 147
    iput p5, p0, Lorg/tukaani/xz/lz/LZEncoder;->matchLenMax:I

    .line 148
    iput p4, p0, Lorg/tukaani/xz/lz/LZEncoder;->niceLen:I

    .line 149
    return-void
.end method

.method private static getBufSize(IIII)I
    .locals 4
    .param p0, "dictSize"    # I
    .param p1, "extraSizeBefore"    # I
    .param p2, "extraSizeAfter"    # I
    .param p3, "matchLenMax"    # I

    .line 58
    add-int v0, p1, p0

    .line 59
    .local v0, "keepSizeBefore":I
    add-int v1, p2, p3

    .line 60
    .local v1, "keepSizeAfter":I
    div-int/lit8 v2, p0, 0x2

    const/high16 v3, 0x40000

    add-int/2addr v2, v3

    const/high16 v3, 0x20000000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 61
    .local v2, "reserveSize":I
    add-int v3, v0, v1

    add-int/2addr v3, v2

    return v3
.end method

.method public static getInstance(IIIIIIILorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/lz/LZEncoder;
    .locals 9
    .param p0, "dictSize"    # I
    .param p1, "extraSizeBefore"    # I
    .param p2, "extraSizeAfter"    # I
    .param p3, "niceLen"    # I
    .param p4, "matchLenMax"    # I
    .param p5, "mf"    # I
    .param p6, "depthLimit"    # I
    .param p7, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 119
    sparse-switch p5, :sswitch_data_0

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 125
    :sswitch_0
    new-instance v8, Lorg/tukaani/xz/lz/BT4;

    move-object v0, v8

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/tukaani/xz/lz/BT4;-><init>(IIIIIILorg/tukaani/xz/ArrayCache;)V

    return-object v8

    .line 121
    :sswitch_1
    new-instance v8, Lorg/tukaani/xz/lz/HC4;

    move-object v0, v8

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/tukaani/xz/lz/HC4;-><init>(IIIIIILorg/tukaani/xz/ArrayCache;)V

    return-object v8

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getMemoryUsage(IIIII)I
    .locals 2
    .param p0, "dictSize"    # I
    .param p1, "extraSizeBefore"    # I
    .param p2, "extraSizeAfter"    # I
    .param p3, "matchLenMax"    # I
    .param p4, "mf"    # I

    .line 72
    invoke-static {p0, p1, p2, p3}, Lorg/tukaani/xz/lz/LZEncoder;->getBufSize(IIII)I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0xa

    .line 75
    .local v0, "m":I
    sparse-switch p4, :sswitch_data_0

    .line 85
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 81
    :sswitch_0
    invoke-static {p0}, Lorg/tukaani/xz/lz/BT4;->getMemoryUsage(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    goto :goto_0

    .line 77
    :sswitch_1
    invoke-static {p0}, Lorg/tukaani/xz/lz/HC4;->getMemoryUsage(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    nop

    .line 88
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveWindow()V
    .locals 5

    .line 183
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeBefore:I

    sub-int/2addr v0, v1

    and-int/lit8 v0, v0, -0x10

    .line 184
    .local v0, "moveOffset":I
    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    sub-int/2addr v1, v0

    .line 185
    .local v1, "moveSize":I
    iget-object v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget-object v3, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    .line 188
    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    .line 189
    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    .line 190
    return-void
.end method

.method static normalize([III)V
    .locals 2
    .param p0, "positions"    # [I
    .param p1, "positionsCount"    # I
    .param p2, "normalizationOffset"    # I

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 45
    aget v1, p0, v0

    if-gt v1, p2, :cond_0

    .line 46
    const/4 v1, 0x0

    aput v1, p0, v0

    goto :goto_1

    .line 48
    :cond_0
    aget v1, p0, v0

    sub-int/2addr v1, p2

    aput v1, p0, v0

    .line 44
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private processPendingBytes()V
    .locals 2

    .line 235
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    if-ge v0, v1, :cond_1

    .line 236
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    .line 237
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    .line 238
    .local v0, "oldPendingSize":I
    const/4 v1, 0x0

    iput v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    .line 239
    invoke-virtual {p0, v0}, Lorg/tukaani/xz/lz/LZEncoder;->skip(I)V

    .line 240
    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 242
    .end local v0    # "oldPendingSize":I
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public copyUncompressed(Ljava/io/OutputStream;II)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "backward"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, p2

    invoke-virtual {p1, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 282
    return-void
.end method

.method public fillWindow([BII)I
    .locals 3
    .param p1, "in"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 196
    iget-boolean v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->finishing:Z

    if-nez v0, :cond_3

    .line 199
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->bufSize:I

    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeAfter:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 200
    invoke-direct {p0}, Lorg/tukaani/xz/lz/LZEncoder;->moveWindow()V

    .line 204
    :cond_0
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->bufSize:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_1

    .line 205
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->bufSize:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    sub-int p3, v0, v1

    .line 207
    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    .line 212
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeAfter:I

    if-lt v0, v1, :cond_2

    .line 213
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->keepSizeAfter:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    .line 215
    :cond_2
    invoke-direct {p0}, Lorg/tukaani/xz/lz/LZEncoder;->processPendingBytes()V

    .line 219
    return p3

    .line 196
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getAvail()I
    .locals 2

    .line 292
    invoke-virtual {p0}, Lorg/tukaani/xz/lz/LZEncoder;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v0, v1

    return v0

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getByte(I)I
    .locals 2
    .param p1, "backward"    # I

    .line 314
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v1, p1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getByte(II)I
    .locals 2
    .param p1, "forward"    # I
    .param p2, "backward"    # I

    .line 323
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v1, p1

    sub-int/2addr v1, p2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getMatchLen(II)I
    .locals 4
    .param p1, "dist"    # I
    .param p2, "lenLimit"    # I

    .line 335
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p2}, Lorg/tukaani/xz/lz/MatchLength;->getLen([BIIII)I

    move-result v0

    return v0
.end method

.method public getMatchLen(III)I
    .locals 4
    .param p1, "forward"    # I
    .param p2, "dist"    # I
    .param p3, "lenLimit"    # I

    .line 348
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/2addr v1, p1

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p3}, Lorg/tukaani/xz/lz/MatchLength;->getLen([BIIII)I

    move-result v0

    return v0
.end method

.method public abstract getMatches()Lorg/tukaani/xz/lz/Matches;
.end method

.method public getPos()I
    .locals 1

    .line 301
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    return v0
.end method

.method public hasEnoughData(I)Z
    .locals 2
    .param p1, "alreadyReadLen"    # I

    .line 276
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v0, p1

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStarted()Z
    .locals 2

    .line 249
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method movePos(II)I
    .locals 2
    .param p1, "requiredForFlushing"    # I
    .param p2, "requiredForFinishing"    # I

    .line 390
    if-lt p1, p2, :cond_2

    .line 392
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    .line 393
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->readPos:I

    sub-int/2addr v0, v1

    .line 395
    .local v0, "avail":I
    if-ge v0, p1, :cond_1

    .line 396
    if-lt v0, p2, :cond_0

    iget-boolean v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->finishing:Z

    if-nez v1, :cond_1

    .line 397
    :cond_0
    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->pendingSize:I

    .line 398
    const/4 v0, 0x0

    .line 402
    :cond_1
    return v0

    .line 390
    .end local v0    # "avail":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 152
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    invoke-virtual {p1, v0}, Lorg/tukaani/xz/ArrayCache;->putArray([B)V

    .line 153
    return-void
.end method

.method public setFinishing()V
    .locals 2

    .line 266
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    .line 267
    iput-boolean v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->finishing:Z

    .line 268
    invoke-direct {p0}, Lorg/tukaani/xz/lz/LZEncoder;->processPendingBytes()V

    .line 269
    return-void
.end method

.method public setFlushing()V
    .locals 1

    .line 257
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->readLimit:I

    .line 258
    invoke-direct {p0}, Lorg/tukaani/xz/lz/LZEncoder;->processPendingBytes()V

    .line 259
    return-void
.end method

.method public setPresetDict(I[B)V
    .locals 4
    .param p1, "dictSize"    # I
    .param p2, "presetDict"    # [B

    .line 161
    invoke-virtual {p0}, Lorg/tukaani/xz/lz/LZEncoder;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    iget v0, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    if-nez v0, :cond_1

    .line 164
    if-eqz p2, :cond_0

    .line 167
    array-length v0, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 168
    .local v0, "copySize":I
    array-length v1, p2

    sub-int/2addr v1, v0

    .line 169
    .local v1, "offset":I
    iget-object v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->buf:[B

    const/4 v3, 0x0

    invoke-static {p2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/tukaani/xz/lz/LZEncoder;->writePos:I

    .line 171
    invoke-virtual {p0, v0}, Lorg/tukaani/xz/lz/LZEncoder;->skip(I)V

    .line 173
    .end local v0    # "copySize":I
    .end local v1    # "offset":I
    :cond_0
    return-void

    .line 162
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 161
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public abstract skip(I)V
.end method

.method public verifyMatches(Lorg/tukaani/xz/lz/Matches;)Z
    .locals 4
    .param p1, "matches"    # Lorg/tukaani/xz/lz/Matches;

    .line 363
    invoke-virtual {p0}, Lorg/tukaani/xz/lz/LZEncoder;->getAvail()I

    move-result v0

    iget v1, p0, Lorg/tukaani/xz/lz/LZEncoder;->matchLenMax:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 365
    .local v0, "lenLimit":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p1, Lorg/tukaani/xz/lz/Matches;->count:I

    if-ge v1, v2, :cond_1

    .line 366
    iget-object v2, p1, Lorg/tukaani/xz/lz/Matches;->dist:[I

    aget v2, v2, v1

    invoke-virtual {p0, v2, v0}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(II)I

    move-result v2

    iget-object v3, p1, Lorg/tukaani/xz/lz/Matches;->len:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_0

    .line 367
    const/4 v2, 0x0

    return v2

    .line 365
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
