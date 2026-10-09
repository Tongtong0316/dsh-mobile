.class final Lorg/tukaani/xz/lz/HC4;
.super Lorg/tukaani/xz/lz/LZEncoder;
.source "HC4.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final chain:[I

.field private cyclicPos:I

.field private final cyclicSize:I

.field private final depthLimit:I

.field private final hash:Lorg/tukaani/xz/lz/Hash234;

.field private lzPos:I

.field private final matches:Lorg/tukaani/xz/lz/Matches;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 11
    return-void
.end method

.method constructor <init>(IIIIIILorg/tukaani/xz/ArrayCache;)V
    .locals 7
    .param p1, "dictSize"    # I
    .param p2, "beforeSizeMin"    # I
    .param p3, "readAheadMax"    # I
    .param p4, "niceLen"    # I
    .param p5, "matchLenMax"    # I
    .param p6, "depthLimit"    # I
    .param p7, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 35
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/tukaani/xz/lz/LZEncoder;-><init>(IIIIILorg/tukaani/xz/ArrayCache;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    .line 38
    new-instance v0, Lorg/tukaani/xz/lz/Hash234;

    invoke-direct {v0, p1, p7}, Lorg/tukaani/xz/lz/Hash234;-><init>(ILorg/tukaani/xz/ArrayCache;)V

    iput-object v0, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    .line 41
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    .line 42
    iget v0, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    const/4 v1, 0x0

    invoke-virtual {p7, v0, v1}, Lorg/tukaani/xz/ArrayCache;->getIntArray(IZ)[I

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    .line 43
    iget v0, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    iput v0, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    .line 48
    new-instance v0, Lorg/tukaani/xz/lz/Matches;

    add-int/lit8 v1, p4, -0x1

    invoke-direct {v0, v1}, Lorg/tukaani/xz/lz/Matches;-><init>(I)V

    iput-object v0, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    .line 53
    if-lez p6, :cond_0

    move v0, p6

    goto :goto_0

    :cond_0
    div-int/lit8 v0, p4, 0x4

    add-int/lit8 v0, v0, 0x4

    :goto_0
    iput v0, p0, Lorg/tukaani/xz/lz/HC4;->depthLimit:I

    .line 54
    return-void
.end method

.method static getMemoryUsage(I)I
    .locals 2
    .param p0, "dictSize"    # I

    .line 25
    invoke-static {p0}, Lorg/tukaani/xz/lz/Hash234;->getMemoryUsage(I)I

    move-result v0

    div-int/lit16 v1, p0, 0x100

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private movePos()I
    .locals 4

    .line 70
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v0}, Lorg/tukaani/xz/lz/HC4;->movePos(II)I

    move-result v0

    .line 72
    .local v0, "avail":I
    if-eqz v0, :cond_1

    .line 73
    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 74
    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    sub-int/2addr v2, v1

    .line 75
    .local v2, "normalizationOffset":I
    iget-object v1, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/lz/Hash234;->normalize(I)V

    .line 76
    iget-object v1, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    iget v3, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    invoke-static {v1, v3, v2}, Lorg/tukaani/xz/lz/HC4;->normalize([III)V

    .line 77
    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    .line 80
    .end local v2    # "normalizationOffset":I
    :cond_0
    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    iget v2, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    if-ne v1, v2, :cond_1

    .line 81
    const/4 v1, 0x0

    iput v1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    .line 84
    :cond_1
    return v0
.end method


# virtual methods
.method public getMatches()Lorg/tukaani/xz/lz/Matches;
    .locals 15

    .line 89
    iget-object v0, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    const/4 v1, 0x0

    iput v1, v0, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 90
    iget v0, p0, Lorg/tukaani/xz/lz/HC4;->matchLenMax:I

    .line 91
    .local v0, "matchLenLimit":I
    iget v2, p0, Lorg/tukaani/xz/lz/HC4;->niceLen:I

    .line 92
    .local v2, "niceLenLimit":I
    invoke-direct {p0}, Lorg/tukaani/xz/lz/HC4;->movePos()I

    move-result v3

    .line 94
    .local v3, "avail":I
    if-ge v3, v0, :cond_1

    .line 95
    if-nez v3, :cond_0

    .line 96
    iget-object v1, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v1

    .line 98
    :cond_0
    move v0, v3

    .line 99
    if-le v2, v3, :cond_1

    .line 100
    move v2, v3

    .line 103
    :cond_1
    iget-object v4, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget-object v5, p0, Lorg/tukaani/xz/lz/HC4;->buf:[B

    iget v6, p0, Lorg/tukaani/xz/lz/HC4;->readPos:I

    invoke-virtual {v4, v5, v6}, Lorg/tukaani/xz/lz/Hash234;->calcHashes([BI)V

    .line 104
    iget v4, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    iget-object v5, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v5}, Lorg/tukaani/xz/lz/Hash234;->getHash2Pos()I

    move-result v5

    sub-int/2addr v4, v5

    .line 105
    .local v4, "delta2":I
    iget v5, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    iget-object v6, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v6}, Lorg/tukaani/xz/lz/Hash234;->getHash3Pos()I

    move-result v6

    sub-int/2addr v5, v6

    .line 106
    .local v5, "delta3":I
    iget-object v6, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v6}, Lorg/tukaani/xz/lz/Hash234;->getHash4Pos()I

    move-result v6

    .line 107
    .local v6, "currentMatch":I
    iget-object v7, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget v8, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    invoke-virtual {v7, v8}, Lorg/tukaani/xz/lz/Hash234;->updateTables(I)V

    .line 109
    iget-object v7, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    iget v8, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    aput v6, v7, v8

    .line 111
    const/4 v7, 0x0

    .line 117
    .local v7, "lenBest":I
    iget v8, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    const/4 v9, 0x1

    if-ge v4, v8, :cond_2

    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/HC4;->readPos:I

    sub-int/2addr v10, v4

    aget-byte v8, v8, v10

    iget-object v10, p0, Lorg/tukaani/xz/lz/HC4;->buf:[B

    iget v11, p0, Lorg/tukaani/xz/lz/HC4;->readPos:I

    aget-byte v10, v10, v11

    if-ne v8, v10, :cond_2

    .line 118
    const/4 v7, 0x2

    .line 119
    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->len:[I

    const/4 v10, 0x2

    aput v10, v8, v1

    .line 120
    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->dist:[I

    add-int/lit8 v10, v4, -0x1

    aput v10, v8, v1

    .line 121
    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iput v9, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 128
    :cond_2
    if-eq v4, v5, :cond_3

    iget v8, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    if-ge v5, v8, :cond_3

    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/HC4;->readPos:I

    sub-int/2addr v10, v5

    aget-byte v8, v8, v10

    iget-object v10, p0, Lorg/tukaani/xz/lz/HC4;->buf:[B

    iget v11, p0, Lorg/tukaani/xz/lz/HC4;->readPos:I

    aget-byte v10, v10, v11

    if-ne v8, v10, :cond_3

    .line 130
    const/4 v7, 0x3

    .line 131
    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v10, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v11, v10, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v10, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v10, v5, -0x1

    aput v10, v8, v11

    .line 132
    move v4, v5

    .line 136
    :cond_3
    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v8, :cond_4

    .line 137
    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/HC4;->readPos:I

    invoke-static {v8, v10, v4, v7, v0}, Lorg/tukaani/xz/lz/MatchLength;->getLen([BIIII)I

    move-result v7

    .line 139
    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v10, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v10, v10, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v10, v9

    aput v7, v8, v10

    .line 143
    if-lt v7, v2, :cond_4

    .line 144
    iget-object v1, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v1

    .line 149
    :cond_4
    const/4 v8, 0x3

    if-ge v7, v8, :cond_5

    .line 150
    const/4 v7, 0x3

    .line 152
    :cond_5
    iget v8, p0, Lorg/tukaani/xz/lz/HC4;->depthLimit:I

    .line 155
    .local v8, "depth":I
    :goto_0
    iget v10, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    sub-int/2addr v10, v6

    .line 160
    .local v10, "delta":I
    add-int/lit8 v11, v8, -0x1

    .end local v8    # "depth":I
    .local v11, "depth":I
    if-eqz v8, :cond_9

    iget v8, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    if-lt v10, v8, :cond_6

    goto :goto_2

    .line 163
    :cond_6
    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    iget v12, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    sub-int/2addr v12, v10

    .line 164
    iget v13, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    if-le v10, v13, :cond_7

    iget v13, p0, Lorg/tukaani/xz/lz/HC4;->cyclicSize:I

    goto :goto_1

    :cond_7
    move v13, v1

    :goto_1
    add-int/2addr v12, v13

    aget v6, v8, v12

    .line 169
    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->buf:[B

    iget v12, p0, Lorg/tukaani/xz/lz/HC4;->readPos:I

    add-int/2addr v12, v7

    sub-int/2addr v12, v10

    aget-byte v8, v8, v12

    iget-object v12, p0, Lorg/tukaani/xz/lz/HC4;->buf:[B

    iget v13, p0, Lorg/tukaani/xz/lz/HC4;->readPos:I

    add-int/2addr v13, v7

    aget-byte v12, v12, v13

    if-ne v8, v12, :cond_8

    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->buf:[B

    iget v12, p0, Lorg/tukaani/xz/lz/HC4;->readPos:I

    sub-int/2addr v12, v10

    aget-byte v8, v8, v12

    iget-object v12, p0, Lorg/tukaani/xz/lz/HC4;->buf:[B

    iget v13, p0, Lorg/tukaani/xz/lz/HC4;->readPos:I

    aget-byte v12, v12, v13

    if-ne v8, v12, :cond_8

    .line 172
    iget-object v8, p0, Lorg/tukaani/xz/lz/HC4;->buf:[B

    iget v12, p0, Lorg/tukaani/xz/lz/HC4;->readPos:I

    invoke-static {v8, v12, v10, v9, v0}, Lorg/tukaani/xz/lz/MatchLength;->getLen([BIIII)I

    move-result v8

    .line 177
    .local v8, "len":I
    if-le v8, v7, :cond_8

    .line 178
    move v7, v8

    .line 179
    iget-object v12, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v12, v12, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v13, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v13, v13, Lorg/tukaani/xz/lz/Matches;->count:I

    aput v8, v12, v13

    .line 180
    iget-object v12, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v12, v12, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v13, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v13, v13, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v14, v10, -0x1

    aput v14, v12, v13

    .line 181
    iget-object v12, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v13, v12, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/2addr v13, v9

    iput v13, v12, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 185
    if-lt v8, v2, :cond_8

    .line 186
    iget-object v1, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v1

    .line 189
    .end local v8    # "len":I
    .end local v10    # "delta":I
    :cond_8
    move v8, v11

    goto :goto_0

    .line 161
    .restart local v10    # "delta":I
    :cond_9
    :goto_2
    iget-object v1, p0, Lorg/tukaani/xz/lz/HC4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v1
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 58
    iget-object v0, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    invoke-virtual {p1, v0}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    .line 59
    iget-object v0, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/lz/Hash234;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 60
    invoke-super {p0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 61
    return-void
.end method

.method public skip(I)V
    .locals 3
    .param p1, "len"    # I

    .line 194
    if-ltz p1, :cond_2

    .line 196
    :goto_0
    add-int/lit8 v0, p1, -0x1

    .end local p1    # "len":I
    .local v0, "len":I
    if-lez p1, :cond_1

    .line 197
    invoke-direct {p0}, Lorg/tukaani/xz/lz/HC4;->movePos()I

    move-result p1

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget-object v1, p0, Lorg/tukaani/xz/lz/HC4;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/lz/HC4;->readPos:I

    invoke-virtual {p1, v1, v2}, Lorg/tukaani/xz/lz/Hash234;->calcHashes([BI)V

    .line 200
    iget-object p1, p0, Lorg/tukaani/xz/lz/HC4;->chain:[I

    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->cyclicPos:I

    iget-object v2, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v2}, Lorg/tukaani/xz/lz/Hash234;->getHash4Pos()I

    move-result v2

    aput v2, p1, v1

    .line 201
    iget-object p1, p0, Lorg/tukaani/xz/lz/HC4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget v1, p0, Lorg/tukaani/xz/lz/HC4;->lzPos:I

    invoke-virtual {p1, v1}, Lorg/tukaani/xz/lz/Hash234;->updateTables(I)V

    .line 196
    :cond_0
    move p1, v0

    goto :goto_0

    .line 204
    :cond_1
    return-void

    .line 194
    .end local v0    # "len":I
    .restart local p1    # "len":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
