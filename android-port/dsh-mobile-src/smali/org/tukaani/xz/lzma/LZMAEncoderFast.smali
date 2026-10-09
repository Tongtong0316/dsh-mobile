.class final Lorg/tukaani/xz/lzma/LZMAEncoderFast;
.super Lorg/tukaani/xz/lzma/LZMAEncoder;
.source "LZMAEncoderFast.java"


# static fields
.field private static final EXTRA_SIZE_AFTER:I = 0x110

.field private static final EXTRA_SIZE_BEFORE:I = 0x1


# instance fields
.field private matches:Lorg/tukaani/xz/lz/Matches;


# direct methods
.method constructor <init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIIILorg/tukaani/xz/ArrayCache;)V
    .locals 15
    .param p1, "rc"    # Lorg/tukaani/xz/rangecoder/RangeEncoder;
    .param p2, "lc"    # I
    .param p3, "lp"    # I
    .param p4, "pb"    # I
    .param p5, "dictSize"    # I
    .param p6, "extraSizeBefore"    # I
    .param p7, "niceLen"    # I
    .param p8, "mf"    # I
    .param p9, "depthLimit"    # I
    .param p10, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 29
    nop

    .line 30
    const/4 v0, 0x1

    move/from16 v1, p6

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 29
    const/16 v4, 0x110

    const/16 v6, 0x111

    move/from16 v2, p5

    move/from16 v5, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-static/range {v2 .. v9}, Lorg/tukaani/xz/lz/LZEncoder;->getInstance(IIIIIIILorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/lz/LZEncoder;

    move-result-object v9

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p7

    invoke-direct/range {v7 .. v14}, Lorg/tukaani/xz/lzma/LZMAEncoder;-><init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;Lorg/tukaani/xz/lz/LZEncoder;IIIII)V

    .line 17
    const/4 v0, 0x0

    move-object v2, p0

    iput-object v0, v2, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    .line 36
    return-void
.end method

.method private changePair(II)Z
    .locals 1
    .param p1, "smallDist"    # I
    .param p2, "bigDist"    # I

    .line 39
    ushr-int/lit8 v0, p2, 0x7

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static getMemoryUsage(III)I
    .locals 3
    .param p0, "dictSize"    # I
    .param p1, "extraSizeBefore"    # I
    .param p2, "mf"    # I

    .line 20
    nop

    .line 21
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 20
    const/16 v1, 0x110

    const/16 v2, 0x111

    invoke-static {p0, v0, v1, v2, p2}, Lorg/tukaani/xz/lz/LZEncoder;->getMemoryUsage(IIIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method getNextSymbol()I
    .locals 11

    .line 47
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->readAhead:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->getMatches()Lorg/tukaani/xz/lz/Matches;

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    .line 50
    :cond_0
    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->back:I

    .line 56
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->getAvail()I

    move-result v0

    const/16 v1, 0x111

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 57
    .local v0, "avail":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 58
    return v2

    .line 61
    :cond_1
    const/4 v3, 0x0

    .line 62
    .local v3, "bestRepLen":I
    const/4 v4, 0x0

    .line 63
    .local v4, "bestRepIndex":I
    const/4 v5, 0x0

    .local v5, "rep":I
    :goto_0
    const/4 v6, 0x4

    if-ge v5, v6, :cond_5

    .line 64
    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->reps:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7, v0}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(II)I

    move-result v6

    .line 65
    .local v6, "len":I
    if-ge v6, v1, :cond_2

    .line 66
    goto :goto_1

    .line 69
    :cond_2
    iget v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->niceLen:I

    if-lt v6, v7, :cond_3

    .line 70
    iput v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->back:I

    .line 71
    add-int/lit8 v1, v6, -0x1

    invoke-virtual {p0, v1}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->skip(I)V

    .line 72
    return v6

    .line 76
    :cond_3
    if-le v6, v3, :cond_4

    .line 77
    move v4, v5

    .line 78
    move v3, v6

    .line 63
    .end local v6    # "len":I
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 82
    .end local v5    # "rep":I
    :cond_5
    const/4 v5, 0x0

    .line 83
    .local v5, "mainLen":I
    const/4 v7, 0x0

    .line 85
    .local v7, "mainDist":I
    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v8, :cond_9

    .line 86
    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v9, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v9, v9, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v9, v2

    aget v5, v8, v9

    .line 87
    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v9, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v9, v9, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v9, v2

    aget v7, v8, v9

    .line 89
    iget v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->niceLen:I

    if-lt v5, v8, :cond_6

    .line 90
    add-int/lit8 v1, v7, 0x4

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->back:I

    .line 91
    add-int/lit8 v1, v5, -0x1

    invoke-virtual {p0, v1}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->skip(I)V

    .line 92
    return v5

    .line 95
    :cond_6
    :goto_2
    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    if-le v8, v2, :cond_8

    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v9, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v9, v9, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v9, v1

    aget v8, v8, v9

    add-int/2addr v8, v2

    if-ne v5, v8, :cond_8

    .line 97
    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v9, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v9, v9, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v9, v1

    aget v8, v8, v9

    invoke-direct {p0, v8, v7}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->changePair(II)Z

    move-result v8

    if-nez v8, :cond_7

    .line 98
    goto :goto_3

    .line 100
    :cond_7
    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v9, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v9, v2

    iput v9, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 101
    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v9, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v9, v9, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v9, v2

    aget v5, v8, v9

    .line 102
    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v9, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v9, v9, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v9, v2

    aget v7, v8, v9

    goto :goto_2

    .line 105
    :cond_8
    :goto_3
    if-ne v5, v1, :cond_9

    const/16 v8, 0x80

    if-lt v7, v8, :cond_9

    .line 106
    const/4 v5, 0x1

    .line 109
    :cond_9
    if-lt v3, v1, :cond_c

    .line 110
    add-int/lit8 v8, v3, 0x1

    if-ge v8, v5, :cond_b

    add-int/lit8 v8, v3, 0x2

    if-lt v8, v5, :cond_a

    const/16 v8, 0x200

    if-ge v7, v8, :cond_b

    :cond_a
    add-int/lit8 v8, v3, 0x3

    if-lt v8, v5, :cond_c

    const v8, 0x8000

    if-lt v7, v8, :cond_c

    .line 113
    :cond_b
    iput v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->back:I

    .line 114
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {p0, v1}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->skip(I)V

    .line 115
    return v3

    .line 119
    :cond_c
    if-lt v5, v1, :cond_14

    if-gt v0, v1, :cond_d

    goto :goto_5

    .line 124
    :cond_d
    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->getMatches()Lorg/tukaani/xz/lz/Matches;

    move-result-object v8

    iput-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    .line 126
    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v8, :cond_11

    .line 127
    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v9, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v9, v9, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v9, v2

    aget v8, v8, v9

    .line 128
    .local v8, "newLen":I
    iget-object v9, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v9, v9, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v10, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v10, v10, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v10, v2

    aget v9, v9, v10

    .line 130
    .local v9, "newDist":I
    if-lt v8, v5, :cond_e

    if-lt v9, v7, :cond_10

    :cond_e
    add-int/lit8 v10, v5, 0x1

    if-ne v8, v10, :cond_f

    .line 132
    invoke-direct {p0, v7, v9}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->changePair(II)Z

    move-result v10

    if-eqz v10, :cond_10

    :cond_f
    add-int/lit8 v10, v5, 0x1

    if-gt v8, v10, :cond_10

    add-int/lit8 v10, v8, 0x1

    if-lt v10, v5, :cond_11

    const/4 v10, 0x3

    if-lt v5, v10, :cond_11

    .line 136
    invoke-direct {p0, v9, v7}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->changePair(II)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 137
    :cond_10
    return v2

    .line 140
    .end local v8    # "newLen":I
    .end local v9    # "newDist":I
    :cond_11
    add-int/lit8 v8, v5, -0x1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 141
    .local v1, "limit":I
    const/4 v8, 0x0

    .local v8, "rep":I
    :goto_4
    if-ge v8, v6, :cond_13

    .line 142
    iget-object v9, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v10, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->reps:[I

    aget v10, v10, v8

    invoke-virtual {v9, v10, v1}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(II)I

    move-result v9

    if-ne v9, v1, :cond_12

    .line 143
    return v2

    .line 141
    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 145
    .end local v8    # "rep":I
    :cond_13
    add-int/lit8 v2, v7, 0x4

    iput v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->back:I

    .line 146
    add-int/lit8 v2, v5, -0x2

    invoke-virtual {p0, v2}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->skip(I)V

    .line 147
    return v5

    .line 120
    .end local v1    # "limit":I
    :cond_14
    :goto_5
    return v2
.end method
