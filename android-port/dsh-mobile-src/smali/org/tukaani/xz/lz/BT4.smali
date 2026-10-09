.class final Lorg/tukaani/xz/lz/BT4;
.super Lorg/tukaani/xz/lz/LZEncoder;
.source "BT4.java"


# instance fields
.field private cyclicPos:I

.field private final cyclicSize:I

.field private final depthLimit:I

.field private final hash:Lorg/tukaani/xz/lz/Hash234;

.field private lzPos:I

.field private final matches:Lorg/tukaani/xz/lz/Matches;

.field private final tree:[I


# direct methods
.method constructor <init>(IIIIIILorg/tukaani/xz/ArrayCache;)V
    .locals 7
    .param p1, "dictSize"    # I
    .param p2, "beforeSizeMin"    # I
    .param p3, "readAheadMax"    # I
    .param p4, "niceLen"    # I
    .param p5, "matchLenMax"    # I
    .param p6, "depthLimit"    # I
    .param p7, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 28
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

    iput v0, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    .line 31
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    .line 32
    iget v0, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    iput v0, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    .line 34
    new-instance v0, Lorg/tukaani/xz/lz/Hash234;

    invoke-direct {v0, p1, p7}, Lorg/tukaani/xz/lz/Hash234;-><init>(ILorg/tukaani/xz/ArrayCache;)V

    iput-object v0, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    .line 35
    iget v0, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p7, v0, v1}, Lorg/tukaani/xz/ArrayCache;->getIntArray(IZ)[I

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    .line 40
    new-instance v0, Lorg/tukaani/xz/lz/Matches;

    add-int/lit8 v1, p4, -0x1

    invoke-direct {v0, v1}, Lorg/tukaani/xz/lz/Matches;-><init>(I)V

    iput-object v0, p0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    .line 42
    if-lez p6, :cond_0

    move v0, p6

    goto :goto_0

    :cond_0
    div-int/lit8 v0, p4, 0x2

    add-int/lit8 v0, v0, 0x10

    :goto_0
    iput v0, p0, Lorg/tukaani/xz/lz/BT4;->depthLimit:I

    .line 43
    return-void
.end method

.method static getMemoryUsage(I)I
    .locals 2
    .param p0, "dictSize"    # I

    .line 22
    invoke-static {p0}, Lorg/tukaani/xz/lz/Hash234;->getMemoryUsage(I)I

    move-result v0

    div-int/lit16 v1, p0, 0x80

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private movePos()I
    .locals 4

    .line 53
    iget v0, p0, Lorg/tukaani/xz/lz/BT4;->niceLen:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/tukaani/xz/lz/BT4;->movePos(II)I

    move-result v0

    .line 55
    .local v0, "avail":I
    if-eqz v0, :cond_1

    .line 56
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 57
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    sub-int/2addr v2, v1

    .line 58
    .local v2, "normalizationOffset":I
    iget-object v1, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/lz/Hash234;->normalize(I)V

    .line 59
    iget-object v1, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    iget v3, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3, v2}, Lorg/tukaani/xz/lz/BT4;->normalize([III)V

    .line 60
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    .line 63
    .end local v2    # "normalizationOffset":I
    :cond_0
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    iget v2, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    if-ne v1, v2, :cond_1

    .line 64
    const/4 v1, 0x0

    iput v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    .line 67
    :cond_1
    return v0
.end method

.method private skip(II)V
    .locals 11
    .param p1, "niceLenLimit"    # I
    .param p2, "currentMatch"    # I

    .line 193
    iget v0, p0, Lorg/tukaani/xz/lz/BT4;->depthLimit:I

    .line 195
    .local v0, "depth":I
    iget v1, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 196
    .local v1, "ptr0":I
    iget v2, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    shl-int/lit8 v2, v2, 0x1

    .line 197
    .local v2, "ptr1":I
    const/4 v3, 0x0

    .line 198
    .local v3, "len0":I
    const/4 v4, 0x0

    .line 201
    .local v4, "len1":I
    :goto_0
    iget v5, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    sub-int/2addr v5, p2

    .line 203
    .local v5, "delta":I
    add-int/lit8 v6, v0, -0x1

    .end local v0    # "depth":I
    .local v6, "depth":I
    const/4 v7, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    if-lt v5, v0, :cond_0

    goto/16 :goto_2

    .line 209
    :cond_0
    iget v0, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    sub-int/2addr v0, v5

    .line 210
    iget v8, p0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    if-le v5, v8, :cond_1

    iget v7, p0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    :cond_1
    add-int/2addr v0, v7

    shl-int/lit8 v0, v0, 0x1

    .line 211
    .local v0, "pair":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 213
    .local v7, "len":I
    iget-object v8, p0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v9, p0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    add-int/2addr v9, v7

    sub-int/2addr v9, v5

    aget-byte v8, v8, v9

    iget-object v9, p0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    add-int/2addr v10, v7

    aget-byte v9, v9, v10

    if-ne v8, v9, :cond_2

    .line 217
    iget-object v8, p0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v9, p0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    add-int/lit8 v10, v7, 0x1

    invoke-static {v8, v9, v5, v10, p1}, Lorg/tukaani/xz/lz/MatchLength;->getLen([BIIII)I

    move-result v7

    .line 219
    if-ne v7, p1, :cond_2

    .line 220
    iget-object v8, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    iget-object v9, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aget v9, v9, v0

    aput v9, v8, v2

    .line 221
    iget-object v8, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    iget-object v9, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    add-int/lit8 v10, v0, 0x1

    aget v9, v9, v10

    aput v9, v8, v1

    .line 222
    return-void

    .line 226
    :cond_2
    iget-object v8, p0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v9, p0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    add-int/2addr v9, v7

    sub-int/2addr v9, v5

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    iget-object v9, p0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v10, p0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    add-int/2addr v10, v7

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    if-ge v8, v9, :cond_3

    .line 228
    iget-object v8, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput p2, v8, v2

    .line 229
    add-int/lit8 v2, v0, 0x1

    .line 230
    iget-object v8, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aget p2, v8, v2

    .line 231
    move v4, v7

    goto :goto_1

    .line 233
    :cond_3
    iget-object v8, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput p2, v8, v1

    .line 234
    move v1, v0

    .line 235
    iget-object v8, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aget p2, v8, v1

    .line 236
    move v3, v7

    .line 238
    .end local v0    # "pair":I
    .end local v5    # "delta":I
    .end local v7    # "len":I
    :goto_1
    move v0, v6

    goto :goto_0

    .line 204
    .restart local v5    # "delta":I
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput v7, v0, v1

    .line 205
    iget-object v0, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput v7, v0, v2

    .line 206
    return-void
.end method


# virtual methods
.method public getMatches()Lorg/tukaani/xz/lz/Matches;
    .locals 19

    .line 72
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    const/4 v2, 0x0

    iput v2, v1, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 74
    iget v1, v0, Lorg/tukaani/xz/lz/BT4;->matchLenMax:I

    .line 75
    .local v1, "matchLenLimit":I
    iget v3, v0, Lorg/tukaani/xz/lz/BT4;->niceLen:I

    .line 76
    .local v3, "niceLenLimit":I
    invoke-direct/range {p0 .. p0}, Lorg/tukaani/xz/lz/BT4;->movePos()I

    move-result v4

    .line 78
    .local v4, "avail":I
    if-ge v4, v1, :cond_1

    .line 79
    if-nez v4, :cond_0

    .line 80
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v2

    .line 82
    :cond_0
    move v1, v4

    .line 83
    if-le v3, v4, :cond_1

    .line 84
    move v3, v4

    .line 87
    :cond_1
    iget-object v5, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget-object v6, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v7, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    invoke-virtual {v5, v6, v7}, Lorg/tukaani/xz/lz/Hash234;->calcHashes([BI)V

    .line 88
    iget v5, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    iget-object v6, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v6}, Lorg/tukaani/xz/lz/Hash234;->getHash2Pos()I

    move-result v6

    sub-int/2addr v5, v6

    .line 89
    .local v5, "delta2":I
    iget v6, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    iget-object v7, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v7}, Lorg/tukaani/xz/lz/Hash234;->getHash3Pos()I

    move-result v7

    sub-int/2addr v6, v7

    .line 90
    .local v6, "delta3":I
    iget-object v7, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v7}, Lorg/tukaani/xz/lz/Hash234;->getHash4Pos()I

    move-result v7

    .line 91
    .local v7, "currentMatch":I
    iget-object v8, v0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget v9, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    invoke-virtual {v8, v9}, Lorg/tukaani/xz/lz/Hash234;->updateTables(I)V

    .line 93
    const/4 v8, 0x0

    .line 99
    .local v8, "lenBest":I
    iget v9, v0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    const/4 v10, 0x1

    if-ge v5, v9, :cond_2

    iget-object v9, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v11, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    sub-int/2addr v11, v5

    aget-byte v9, v9, v11

    iget-object v11, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v12, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    aget-byte v11, v11, v12

    if-ne v9, v11, :cond_2

    .line 100
    const/4 v8, 0x2

    .line 101
    iget-object v9, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v9, v9, Lorg/tukaani/xz/lz/Matches;->len:[I

    const/4 v11, 0x2

    aput v11, v9, v2

    .line 102
    iget-object v9, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v9, v9, Lorg/tukaani/xz/lz/Matches;->dist:[I

    add-int/lit8 v11, v5, -0x1

    aput v11, v9, v2

    .line 103
    iget-object v9, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iput v10, v9, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 110
    :cond_2
    if-eq v5, v6, :cond_3

    iget v9, v0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    if-ge v6, v9, :cond_3

    iget-object v9, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v11, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    sub-int/2addr v11, v6

    aget-byte v9, v9, v11

    iget-object v11, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v12, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    aget-byte v11, v11, v12

    if-ne v9, v11, :cond_3

    .line 112
    const/4 v8, 0x3

    .line 113
    iget-object v9, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v9, v9, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v11, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v12, v11, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v11, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v11, v6, -0x1

    aput v11, v9, v12

    .line 114
    move v5, v6

    .line 118
    :cond_3
    iget-object v9, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v9, v9, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v9, :cond_4

    .line 119
    iget-object v9, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v11, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    invoke-static {v9, v11, v5, v8, v1}, Lorg/tukaani/xz/lz/MatchLength;->getLen([BIIII)I

    move-result v8

    .line 121
    iget-object v9, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v9, v9, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v11, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v11, v11, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v11, v10

    aput v8, v9, v11

    .line 125
    if-lt v8, v3, :cond_4

    .line 126
    invoke-direct {v0, v3, v7}, Lorg/tukaani/xz/lz/BT4;->skip(II)V

    .line 127
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v2

    .line 133
    :cond_4
    const/4 v9, 0x3

    if-ge v8, v9, :cond_5

    .line 134
    const/4 v8, 0x3

    .line 136
    :cond_5
    iget v9, v0, Lorg/tukaani/xz/lz/BT4;->depthLimit:I

    .line 138
    .local v9, "depth":I
    iget v11, v0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    shl-int/2addr v11, v10

    add-int/2addr v11, v10

    .line 139
    .local v11, "ptr0":I
    iget v12, v0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    shl-int/2addr v12, v10

    .line 140
    .local v12, "ptr1":I
    const/4 v13, 0x0

    .line 141
    .local v13, "len0":I
    const/4 v14, 0x0

    .line 144
    .local v14, "len1":I
    :goto_0
    iget v15, v0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    sub-int/2addr v15, v7

    .line 149
    .local v15, "delta":I
    add-int/lit8 v16, v9, -0x1

    .end local v9    # "depth":I
    .local v16, "depth":I
    if-eqz v9, :cond_c

    iget v9, v0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    if-lt v15, v9, :cond_6

    move/from16 v17, v4

    move/from16 v18, v5

    goto/16 :goto_4

    .line 155
    :cond_6
    iget v9, v0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    sub-int/2addr v9, v15

    .line 156
    iget v2, v0, Lorg/tukaani/xz/lz/BT4;->cyclicPos:I

    if-le v15, v2, :cond_7

    iget v2, v0, Lorg/tukaani/xz/lz/BT4;->cyclicSize:I

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v9, v2

    shl-int/lit8 v2, v9, 0x1

    .line 157
    .local v2, "pair":I
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 159
    .local v9, "len":I
    iget-object v10, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    move/from16 v17, v4

    .end local v4    # "avail":I
    .local v17, "avail":I
    iget v4, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    add-int/2addr v4, v9

    sub-int/2addr v4, v15

    aget-byte v4, v10, v4

    iget-object v10, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    move/from16 v18, v5

    .end local v5    # "delta2":I
    .local v18, "delta2":I
    iget v5, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    add-int/2addr v5, v9

    aget-byte v5, v10, v5

    if-ne v4, v5, :cond_a

    .line 160
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v5, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    add-int/lit8 v10, v9, 0x1

    invoke-static {v4, v5, v15, v10, v1}, Lorg/tukaani/xz/lz/MatchLength;->getLen([BIIII)I

    move-result v9

    .line 163
    if-le v9, v8, :cond_9

    .line 164
    move v4, v9

    .line 165
    .end local v8    # "lenBest":I
    .local v4, "lenBest":I
    iget-object v5, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v5, v5, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v8, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    aput v9, v5, v8

    .line 166
    iget-object v5, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v5, v5, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v8, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v10, v15, -0x1

    aput v10, v5, v8

    .line 167
    iget-object v5, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v5, Lorg/tukaani/xz/lz/Matches;->count:I

    const/4 v10, 0x1

    add-int/2addr v8, v10

    iput v8, v5, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 169
    if-lt v9, v3, :cond_8

    .line 170
    iget-object v5, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    iget-object v8, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aget v8, v8, v2

    aput v8, v5, v12

    .line 171
    iget-object v5, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    iget-object v8, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    add-int/lit8 v10, v2, 0x1

    aget v8, v8, v10

    aput v8, v5, v11

    .line 172
    iget-object v5, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v5

    .line 169
    :cond_8
    move v8, v4

    goto :goto_2

    .line 163
    .end local v4    # "lenBest":I
    .restart local v8    # "lenBest":I
    :cond_9
    const/4 v10, 0x1

    goto :goto_2

    .line 159
    :cond_a
    const/4 v10, 0x1

    .line 177
    :goto_2
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v5, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    add-int/2addr v5, v9

    sub-int/2addr v5, v15

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    iget-object v5, v0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v10, v0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    add-int/2addr v10, v9

    aget-byte v5, v5, v10

    and-int/lit16 v5, v5, 0xff

    if-ge v4, v5, :cond_b

    .line 179
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput v7, v4, v12

    .line 180
    add-int/lit8 v4, v2, 0x1

    .line 181
    .end local v12    # "ptr1":I
    .local v4, "ptr1":I
    iget-object v5, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aget v5, v5, v4

    .line 182
    .end local v7    # "currentMatch":I
    .local v5, "currentMatch":I
    move v7, v9

    move v12, v4

    move v14, v7

    move v7, v5

    .end local v14    # "len1":I
    .local v7, "len1":I
    goto :goto_3

    .line 184
    .end local v4    # "ptr1":I
    .end local v5    # "currentMatch":I
    .local v7, "currentMatch":I
    .restart local v12    # "ptr1":I
    .restart local v14    # "len1":I
    :cond_b
    iget-object v4, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput v7, v4, v11

    .line 185
    move v4, v2

    .line 186
    .end local v11    # "ptr0":I
    .local v4, "ptr0":I
    iget-object v5, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aget v5, v5, v4

    .line 187
    .end local v7    # "currentMatch":I
    .restart local v5    # "currentMatch":I
    move v7, v9

    move v11, v4

    move v13, v7

    move v7, v5

    .line 189
    .end local v2    # "pair":I
    .end local v4    # "ptr0":I
    .end local v5    # "currentMatch":I
    .end local v9    # "len":I
    .end local v15    # "delta":I
    .restart local v7    # "currentMatch":I
    .restart local v11    # "ptr0":I
    :goto_3
    move/from16 v9, v16

    move/from16 v4, v17

    move/from16 v5, v18

    const/4 v2, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 149
    .end local v17    # "avail":I
    .end local v18    # "delta2":I
    .local v4, "avail":I
    .local v5, "delta2":I
    .restart local v15    # "delta":I
    :cond_c
    move/from16 v17, v4

    move/from16 v18, v5

    .line 150
    .end local v4    # "avail":I
    .end local v5    # "delta2":I
    .restart local v17    # "avail":I
    .restart local v18    # "delta2":I
    :goto_4
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    const/4 v4, 0x0

    aput v4, v2, v11

    .line 151
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    aput v4, v2, v12

    .line 152
    iget-object v2, v0, Lorg/tukaani/xz/lz/BT4;->matches:Lorg/tukaani/xz/lz/Matches;

    return-object v2
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 47
    iget-object v0, p0, Lorg/tukaani/xz/lz/BT4;->tree:[I

    invoke-virtual {p1, v0}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    .line 48
    iget-object v0, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/lz/Hash234;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 49
    invoke-super {p0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 50
    return-void
.end method

.method public skip(I)V
    .locals 5
    .param p1, "len"    # I

    .line 243
    nop

    :goto_0
    add-int/lit8 v0, p1, -0x1

    .end local p1    # "len":I
    .local v0, "len":I
    if-lez p1, :cond_2

    .line 244
    iget p1, p0, Lorg/tukaani/xz/lz/BT4;->niceLen:I

    .line 245
    .local p1, "niceLenLimit":I
    invoke-direct {p0}, Lorg/tukaani/xz/lz/BT4;->movePos()I

    move-result v1

    .line 247
    .local v1, "avail":I
    if-ge v1, p1, :cond_1

    .line 248
    if-nez v1, :cond_0

    .line 249
    goto :goto_1

    .line 251
    :cond_0
    move p1, v1

    .line 254
    :cond_1
    iget-object v2, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget-object v3, p0, Lorg/tukaani/xz/lz/BT4;->buf:[B

    iget v4, p0, Lorg/tukaani/xz/lz/BT4;->readPos:I

    invoke-virtual {v2, v3, v4}, Lorg/tukaani/xz/lz/Hash234;->calcHashes([BI)V

    .line 255
    iget-object v2, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    invoke-virtual {v2}, Lorg/tukaani/xz/lz/Hash234;->getHash4Pos()I

    move-result v2

    .line 256
    .local v2, "currentMatch":I
    iget-object v3, p0, Lorg/tukaani/xz/lz/BT4;->hash:Lorg/tukaani/xz/lz/Hash234;

    iget v4, p0, Lorg/tukaani/xz/lz/BT4;->lzPos:I

    invoke-virtual {v3, v4}, Lorg/tukaani/xz/lz/Hash234;->updateTables(I)V

    .line 258
    invoke-direct {p0, p1, v2}, Lorg/tukaani/xz/lz/BT4;->skip(II)V

    .line 259
    .end local v1    # "avail":I
    .end local v2    # "currentMatch":I
    .end local p1    # "niceLenLimit":I
    nop

    .line 243
    :goto_1
    move p1, v0

    goto :goto_0

    .line 260
    :cond_2
    return-void
.end method
