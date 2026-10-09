.class final Lorg/tukaani/xz/lzma/LZMAEncoderNormal;
.super Lorg/tukaani/xz/lzma/LZMAEncoder;
.source "LZMAEncoderNormal.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EXTRA_SIZE_AFTER:I = 0x1000

.field private static final EXTRA_SIZE_BEFORE:I = 0x1000

.field private static final OPTS:I = 0x1000


# instance fields
.field private matches:Lorg/tukaani/xz/lz/Matches;

.field private final nextState:Lorg/tukaani/xz/lzma/State;

.field private optCur:I

.field private optEnd:I

.field private final opts:[Lorg/tukaani/xz/lzma/Optimum;

.field private final repLens:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 13
    return-void
.end method

.method constructor <init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIIILorg/tukaani/xz/ArrayCache;)V
    .locals 11
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

    .line 41
    move-object v8, p0

    .line 42
    const/16 v9, 0x1000

    move/from16 v10, p6

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 41
    const/16 v2, 0x1000

    const/16 v4, 0x111

    move/from16 v0, p5

    move/from16 v3, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p10

    invoke-static/range {v0 .. v7}, Lorg/tukaani/xz/lz/LZEncoder;->getInstance(IIIIIIILorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/lz/LZEncoder;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/tukaani/xz/lzma/LZMAEncoder;-><init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;Lorg/tukaani/xz/lz/LZEncoder;IIIII)V

    .line 19
    new-array v0, v9, [Lorg/tukaani/xz/lzma/Optimum;

    iput-object v0, v8, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    .line 20
    const/4 v0, 0x0

    iput v0, v8, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 21
    iput v0, v8, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, v8, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    .line 28
    new-instance v0, Lorg/tukaani/xz/lzma/State;

    invoke-direct {v0}, Lorg/tukaani/xz/lzma/State;-><init>()V

    iput-object v0, v8, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v9, :cond_0

    .line 50
    iget-object v1, v8, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    new-instance v2, Lorg/tukaani/xz/lzma/Optimum;

    invoke-direct {v2}, Lorg/tukaani/xz/lzma/Optimum;-><init>()V

    aput-object v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private calc1BytePrices(IIII)V
    .locals 16
    .param p1, "pos"    # I
    .param p2, "posState"    # I
    .param p3, "avail"    # I
    .param p4, "anyRepPrice"    # I

    .line 373
    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x0

    .line 375
    .local v2, "nextIsByte":Z
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v3

    .line 376
    .local v3, "curByte":I
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v6, v6, v7

    iget-object v6, v6, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v6, v6, v4

    const/4 v11, 0x1

    add-int/2addr v6, v11

    invoke-virtual {v5, v6}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v12

    .line 379
    .local v12, "matchByte":I
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v5, v5, v6

    iget v13, v5, Lorg/tukaani/xz/lzma/Optimum;->price:I

    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    .line 380
    invoke-virtual {v6, v11}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v8

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v6, v6, v7

    iget-object v10, v6, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    move v6, v3

    move v7, v12

    move/from16 v9, p1

    invoke-virtual/range {v5 .. v10}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->getPrice(IIIILorg/tukaani/xz/lzma/State;)I

    move-result v5

    add-int/2addr v13, v5

    .line 382
    .local v13, "literalPrice":I
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v6, v11

    aget-object v5, v5, v6

    iget v5, v5, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v13, v5, :cond_0

    .line 383
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v6, v11

    aget-object v5, v5, v6

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    const/4 v7, -0x1

    invoke-virtual {v5, v13, v6, v7}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    .line 384
    const/4 v2, 0x1

    .line 388
    :cond_0
    if-ne v12, v3, :cond_3

    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v6, v11

    aget-object v5, v5, v6

    iget v5, v5, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    if-eq v5, v6, :cond_2

    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v6, v11

    aget-object v5, v5, v6

    iget v5, v5, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v6, p2

    move/from16 v7, p4

    goto :goto_1

    .line 390
    :cond_2
    :goto_0
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    move/from16 v6, p2

    move/from16 v7, p4

    invoke-virtual {v0, v7, v5, v6}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getShortRepPrice(ILorg/tukaani/xz/lzma/State;I)I

    move-result v5

    .line 393
    .local v5, "shortRepPrice":I
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v9, v11

    aget-object v8, v8, v9

    iget v8, v8, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-gt v5, v8, :cond_4

    .line 394
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v9, v11

    aget-object v8, v8, v9

    iget v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    invoke-virtual {v8, v5, v9, v4}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    .line 395
    const/4 v2, 0x1

    goto :goto_1

    .line 388
    .end local v5    # "shortRepPrice":I
    :cond_3
    move/from16 v6, p2

    move/from16 v7, p4

    .line 401
    :cond_4
    :goto_1
    if-nez v2, :cond_6

    if-eq v12, v3, :cond_6

    const/4 v5, 0x2

    if-le v1, v5, :cond_6

    .line 402
    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 403
    .local v8, "lenLimit":I
    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v10, v10, v14

    iget-object v10, v10, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v10, v10, v4

    invoke-virtual {v9, v11, v10, v8}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(III)I

    move-result v9

    .line 405
    .local v9, "len":I
    if-lt v9, v5, :cond_6

    .line 406
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    iget-object v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v10, v10, v14

    iget-object v10, v10, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5, v10}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 407
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    .line 408
    add-int/lit8 v5, p1, 0x1

    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->posMask:I

    and-int/2addr v5, v10

    .line 409
    .local v5, "nextPosState":I
    iget-object v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    .line 410
    invoke-virtual {v0, v4, v9, v10, v5}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getLongRepAndLenPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v10

    add-int/2addr v10, v13

    .line 413
    .local v10, "price":I
    iget v14, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v14, v11

    add-int/2addr v14, v9

    .line 414
    .local v14, "i":I
    :goto_2
    iget v15, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge v15, v14, :cond_5

    .line 415
    iget-object v15, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v4, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    add-int/2addr v4, v11

    iput v4, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    aget-object v4, v15, v4

    invoke-virtual {v4}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    const/4 v4, 0x0

    goto :goto_2

    .line 417
    :cond_5
    iget-object v4, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v4, v4, v14

    iget v4, v4, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v10, v4, :cond_6

    .line 418
    iget-object v4, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v4, v4, v14

    iget v11, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    const/4 v15, 0x0

    invoke-virtual {v4, v10, v11, v15}, Lorg/tukaani/xz/lzma/Optimum;->set2(III)V

    .line 421
    .end local v5    # "nextPosState":I
    .end local v8    # "lenLimit":I
    .end local v9    # "len":I
    .end local v10    # "price":I
    .end local v14    # "i":I
    :cond_6
    return-void
.end method

.method private calcLongRepPrices(IIII)I
    .locals 25
    .param p1, "pos"    # I
    .param p2, "posState"    # I
    .param p3, "avail"    # I
    .param p4, "anyRepPrice"    # I

    .line 428
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x2

    .line 429
    .local v3, "startLen":I
    iget v4, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 431
    .local v4, "lenLimit":I
    const/4 v5, 0x0

    move v11, v5

    .local v11, "rep":I
    :goto_0
    const/4 v5, 0x4

    if-ge v11, v5, :cond_a

    .line 432
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v6, v6, v7

    iget-object v6, v6, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v6, v6, v11

    invoke-virtual {v5, v6, v4}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(II)I

    move-result v12

    .line 433
    .local v12, "len":I
    const/4 v5, 0x2

    if-ge v12, v5, :cond_0

    .line 434
    move/from16 v13, p4

    goto/16 :goto_5

    .line 436
    :cond_0
    :goto_1
    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    iget v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v7, v12

    const/4 v8, 0x1

    if-ge v6, v7, :cond_1

    .line 437
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    add-int/2addr v7, v8

    iput v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    goto :goto_1

    .line 439
    :cond_1
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v6, v6, v7

    iget-object v6, v6, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    move/from16 v13, p4

    invoke-virtual {v0, v13, v11, v6, v1}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getLongRepPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v14

    .line 442
    .local v14, "longRepPrice":I
    move v6, v12

    .local v6, "i":I
    :goto_2
    if-lt v6, v5, :cond_3

    .line 443
    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    .line 444
    invoke-virtual {v7, v6, v1}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->getPrice(II)I

    move-result v7

    add-int/2addr v7, v14

    .line 445
    .local v7, "price":I
    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v10, v6

    aget-object v9, v9, v10

    iget v9, v9, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v7, v9, :cond_2

    .line 446
    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v10, v6

    aget-object v9, v9, v10

    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    invoke-virtual {v9, v7, v10, v11}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    .line 442
    .end local v7    # "price":I
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 449
    .end local v6    # "i":I
    :cond_3
    if-nez v11, :cond_4

    .line 450
    add-int/lit8 v3, v12, 0x1

    .line 452
    :cond_4
    sub-int v6, v2, v12

    sub-int/2addr v6, v8

    .line 453
    .local v6, "len2Limit":I
    if-ge v6, v5, :cond_5

    .line 454
    goto/16 :goto_5

    .line 456
    :cond_5
    iget v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    if-le v6, v7, :cond_6

    .line 457
    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    move v15, v6

    goto :goto_3

    .line 456
    :cond_6
    move v15, v6

    .line 459
    .end local v6    # "len2Limit":I
    .local v15, "len2Limit":I
    :goto_3
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    add-int/lit8 v7, v12, 0x1

    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v9, v9, v10

    iget-object v9, v9, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v9, v9, v11

    invoke-virtual {v6, v7, v9, v15}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(III)I

    move-result v10

    .line 462
    .local v10, "len2":I
    if-lt v10, v5, :cond_9

    .line 464
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    .line 465
    invoke-virtual {v5, v12, v1}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->getPrice(II)I

    move-result v5

    add-int/2addr v5, v14

    .line 466
    .local v5, "price":I
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v7, v7, v9

    iget-object v7, v7, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6, v7}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 467
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    .line 470
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    const/4 v7, 0x0

    invoke-virtual {v6, v12, v7}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(II)I

    move-result v22

    .line 471
    .local v22, "curByte":I
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v6, v7}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v23

    .line 472
    .local v23, "matchByte":I
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v6, v12, v8}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(II)I

    move-result v24

    .line 473
    .local v24, "prevByte":I
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    add-int v20, p1, v12

    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    move-object/from16 v16, v6

    move/from16 v17, v22

    move/from16 v18, v23

    move/from16 v19, v24

    move-object/from16 v21, v9

    invoke-virtual/range {v16 .. v21}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->getPrice(IIIILorg/tukaani/xz/lzma/State;)I

    move-result v6

    add-int/2addr v5, v6

    .line 475
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    .line 478
    add-int v6, p1, v12

    add-int/2addr v6, v8

    iget v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->posMask:I

    and-int/2addr v9, v6

    .line 479
    .local v9, "nextPosState":I
    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0, v7, v10, v6, v9}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getLongRepAndLenPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v6

    add-int v7, v5, v6

    .line 482
    .end local v5    # "price":I
    .restart local v7    # "price":I
    iget v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v5, v12

    add-int/2addr v5, v8

    add-int v6, v5, v10

    .line 483
    .local v6, "i":I
    :goto_4
    iget v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge v5, v6, :cond_7

    .line 484
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    add-int/2addr v1, v8

    iput v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    aget-object v1, v5, v1

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    move/from16 v1, p2

    goto :goto_4

    .line 486
    :cond_7
    iget-object v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v1, v1, v6

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v7, v1, :cond_8

    .line 487
    iget-object v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v5, v1, v6

    iget v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    const/16 v16, 0x0

    move/from16 v17, v6

    .end local v6    # "i":I
    .local v17, "i":I
    move v6, v7

    move/from16 v18, v7

    .end local v7    # "price":I
    .local v18, "price":I
    move v7, v1

    move v8, v11

    move v1, v9

    .end local v9    # "nextPosState":I
    .local v1, "nextPosState":I
    move v9, v12

    move/from16 v19, v10

    .end local v10    # "len2":I
    .local v19, "len2":I
    move/from16 v10, v16

    invoke-virtual/range {v5 .. v10}, Lorg/tukaani/xz/lzma/Optimum;->set3(IIIII)V

    goto :goto_5

    .line 486
    .end local v1    # "nextPosState":I
    .end local v17    # "i":I
    .end local v18    # "price":I
    .end local v19    # "len2":I
    .restart local v6    # "i":I
    .restart local v7    # "price":I
    .restart local v9    # "nextPosState":I
    .restart local v10    # "len2":I
    :cond_8
    move/from16 v17, v6

    move/from16 v18, v7

    move v1, v9

    move/from16 v19, v10

    .end local v6    # "i":I
    .end local v7    # "price":I
    .end local v9    # "nextPosState":I
    .end local v10    # "len2":I
    .restart local v1    # "nextPosState":I
    .restart local v17    # "i":I
    .restart local v18    # "price":I
    .restart local v19    # "len2":I
    goto :goto_5

    .line 462
    .end local v1    # "nextPosState":I
    .end local v17    # "i":I
    .end local v18    # "price":I
    .end local v19    # "len2":I
    .end local v22    # "curByte":I
    .end local v23    # "matchByte":I
    .end local v24    # "prevByte":I
    .restart local v10    # "len2":I
    :cond_9
    move/from16 v19, v10

    .line 431
    .end local v10    # "len2":I
    .end local v12    # "len":I
    .end local v14    # "longRepPrice":I
    .end local v15    # "len2Limit":I
    :goto_5
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p2

    goto/16 :goto_0

    :cond_a
    move/from16 v13, p4

    .line 491
    .end local v11    # "rep":I
    return v3
.end method

.method private calcNormalMatchPrices(IIIII)V
    .locals 25
    .param p1, "pos"    # I
    .param p2, "posState"    # I
    .param p3, "avail"    # I
    .param p4, "anyMatchPrice"    # I
    .param p5, "startLen"    # I

    .line 501
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p5

    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v3, v3, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v4, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v4, v4, Lorg/tukaani/xz/lz/Matches;->count:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget v3, v3, v4

    const/4 v4, 0x0

    if-le v3, v1, :cond_1

    .line 502
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iput v4, v3, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 503
    :goto_0
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v3, v3, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v6, v6, Lorg/tukaani/xz/lz/Matches;->count:I

    aget v3, v3, v6

    if-ge v3, v1, :cond_0

    .line 504
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v6, v3, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/2addr v6, v5

    iput v6, v3, Lorg/tukaani/xz/lz/Matches;->count:I

    goto :goto_0

    .line 506
    :cond_0
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v3, v3, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v7, v6, Lorg/tukaani/xz/lz/Matches;->count:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Lorg/tukaani/xz/lz/Matches;->count:I

    aput v1, v3, v7

    .line 509
    :cond_1
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v3, v3, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v6, v6, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v6, v5

    aget v3, v3, v6

    if-ge v3, v2, :cond_2

    .line 510
    return-void

    .line 512
    :cond_2
    :goto_1
    iget v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iget-object v7, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v7, v7, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v8, v8, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v8, v5

    aget v7, v7, v8

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_3

    .line 513
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    add-int/2addr v6, v5

    iput v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    goto :goto_1

    .line 515
    :cond_3
    iget-object v3, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v3, v3, v6

    iget-object v3, v3, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    move/from16 v6, p4

    invoke-virtual {v0, v6, v3}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getNormalMatchPrice(ILorg/tukaani/xz/lzma/State;)I

    move-result v3

    .line 518
    .local v3, "normalMatchPrice":I
    const/4 v7, 0x0

    .line 519
    .local v7, "match":I
    :goto_2
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->len:[I

    aget v8, v8, v7

    if-le v2, v8, :cond_4

    .line 520
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 522
    :cond_4
    move/from16 v8, p5

    move v14, v8

    .line 523
    .local v14, "len":I
    :goto_3
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->dist:[I

    aget v15, v8, v7

    .line 527
    .local v15, "dist":I
    move/from16 v13, p2

    invoke-virtual {v0, v3, v15, v14, v13}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getMatchAndLenPrice(IIII)I

    move-result v12

    .line 529
    .local v12, "matchAndLenPrice":I
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v9, v14

    aget-object v8, v8, v9

    iget v8, v8, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v12, v8, :cond_5

    .line 530
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v9, v14

    aget-object v8, v8, v9

    iget v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/lit8 v10, v15, 0x4

    invoke-virtual {v8, v12, v9, v10}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    .line 533
    :cond_5
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v8, v8, Lorg/tukaani/xz/lz/Matches;->len:[I

    aget v8, v8, v7

    if-eq v14, v8, :cond_6

    .line 534
    move/from16 v17, v4

    move/from16 v16, v5

    goto/16 :goto_8

    .line 537
    :cond_6
    sub-int v8, v1, v14

    sub-int/2addr v8, v5

    .line 538
    .local v8, "len2Limit":I
    const/4 v9, 0x2

    if-lt v8, v9, :cond_b

    .line 539
    iget v10, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    if-le v8, v10, :cond_7

    .line 540
    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    move v11, v8

    goto :goto_4

    .line 539
    :cond_7
    move v11, v8

    .line 542
    .end local v8    # "len2Limit":I
    .local v11, "len2Limit":I
    :goto_4
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    add-int/lit8 v10, v14, 0x1

    invoke-virtual {v8, v10, v15, v11}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(III)I

    move-result v10

    .line 543
    .local v10, "len2":I
    if-lt v10, v9, :cond_a

    .line 544
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v5, v9, v5

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v8, v5}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 545
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->updateMatch()V

    .line 548
    iget-object v5, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v5, v14, v4}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(II)I

    move-result v5

    .line 549
    .local v5, "curByte":I
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v8, v4}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v23

    .line 550
    .local v23, "matchByte":I
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    const/4 v9, 0x1

    invoke-virtual {v8, v14, v9}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(II)I

    move-result v24

    .line 551
    .local v24, "prevByte":I
    iget-object v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    add-int v21, p1, v14

    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    .line 552
    move-object/from16 v17, v8

    move/from16 v18, v5

    move/from16 v19, v23

    move/from16 v20, v24

    move-object/from16 v22, v9

    invoke-virtual/range {v17 .. v22}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->getPrice(IIIILorg/tukaani/xz/lzma/State;)I

    move-result v8

    add-int/2addr v8, v12

    .line 555
    .local v8, "price":I
    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v9}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    .line 558
    add-int v9, p1, v14

    const/16 v16, 0x1

    add-int/lit8 v9, v9, 0x1

    iget v4, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->posMask:I

    and-int/2addr v4, v9

    .line 559
    .local v4, "nextPosState":I
    iget-object v9, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->nextState:Lorg/tukaani/xz/lzma/State;

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v10, v9, v4}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getLongRepAndLenPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v9

    add-int/2addr v9, v8

    .line 562
    .end local v8    # "price":I
    .local v9, "price":I
    iget v8, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/2addr v8, v14

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v8, v10

    .line 563
    .local v8, "i":I
    :goto_5
    iget v13, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge v13, v8, :cond_8

    .line 564
    iget-object v13, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    aget-object v1, v13, v1

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    move/from16 v1, p3

    const/4 v13, 0x0

    goto :goto_5

    .line 566
    :cond_8
    iget-object v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v1, v1, v8

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v9, v1, :cond_9

    .line 567
    iget-object v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v1, v1, v8

    iget v13, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    add-int/lit8 v18, v15, 0x4

    const/16 v19, 0x0

    move/from16 v20, v8

    .end local v8    # "i":I
    .local v20, "i":I
    move-object v8, v1

    move v1, v9

    .end local v9    # "price":I
    .local v1, "price":I
    move/from16 v21, v10

    .end local v10    # "len2":I
    .local v21, "len2":I
    move v10, v13

    move/from16 v22, v11

    .end local v11    # "len2Limit":I
    .local v22, "len2Limit":I
    move/from16 v11, v18

    move/from16 v18, v12

    .end local v12    # "matchAndLenPrice":I
    .local v18, "matchAndLenPrice":I
    move v12, v14

    const/16 v17, 0x0

    move/from16 v13, v19

    invoke-virtual/range {v8 .. v13}, Lorg/tukaani/xz/lzma/Optimum;->set3(IIIII)V

    goto :goto_6

    .line 566
    .end local v1    # "price":I
    .end local v18    # "matchAndLenPrice":I
    .end local v20    # "i":I
    .end local v21    # "len2":I
    .end local v22    # "len2Limit":I
    .restart local v8    # "i":I
    .restart local v9    # "price":I
    .restart local v10    # "len2":I
    .restart local v11    # "len2Limit":I
    .restart local v12    # "matchAndLenPrice":I
    :cond_9
    move/from16 v20, v8

    move v1, v9

    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v18, v12

    const/16 v17, 0x0

    .end local v8    # "i":I
    .end local v9    # "price":I
    .end local v10    # "len2":I
    .end local v11    # "len2Limit":I
    .end local v12    # "matchAndLenPrice":I
    .restart local v1    # "price":I
    .restart local v18    # "matchAndLenPrice":I
    .restart local v20    # "i":I
    .restart local v21    # "len2":I
    .restart local v22    # "len2Limit":I
    goto :goto_6

    .line 543
    .end local v1    # "price":I
    .end local v4    # "nextPosState":I
    .end local v5    # "curByte":I
    .end local v18    # "matchAndLenPrice":I
    .end local v20    # "i":I
    .end local v21    # "len2":I
    .end local v22    # "len2Limit":I
    .end local v23    # "matchByte":I
    .end local v24    # "prevByte":I
    .restart local v10    # "len2":I
    .restart local v11    # "len2Limit":I
    .restart local v12    # "matchAndLenPrice":I
    :cond_a
    move/from16 v17, v4

    move/from16 v16, v5

    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v18, v12

    .line 571
    .end local v10    # "len2":I
    .end local v11    # "len2Limit":I
    .end local v12    # "matchAndLenPrice":I
    .restart local v18    # "matchAndLenPrice":I
    .restart local v22    # "len2Limit":I
    :goto_6
    move/from16 v8, v22

    goto :goto_7

    .line 538
    .end local v18    # "matchAndLenPrice":I
    .end local v22    # "len2Limit":I
    .local v8, "len2Limit":I
    .restart local v12    # "matchAndLenPrice":I
    :cond_b
    move/from16 v17, v4

    move/from16 v16, v5

    move/from16 v18, v12

    .line 571
    .end local v12    # "matchAndLenPrice":I
    .restart local v18    # "matchAndLenPrice":I
    :goto_7
    add-int/lit8 v7, v7, 0x1

    iget-object v1, v0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v1, v1, Lorg/tukaani/xz/lz/Matches;->count:I

    if-ne v7, v1, :cond_c

    .line 572
    nop

    .line 574
    .end local v8    # "len2Limit":I
    .end local v14    # "len":I
    .end local v15    # "dist":I
    .end local v18    # "matchAndLenPrice":I
    return-void

    .line 522
    .restart local v14    # "len":I
    :cond_c
    :goto_8
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p3

    move/from16 v5, v16

    move/from16 v4, v17

    goto/16 :goto_3
.end method

.method private convertOpts()I
    .locals 5

    .line 66
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    .line 68
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 71
    .local v0, "optPrev":I
    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    .line 73
    .local v1, "opt":Lorg/tukaani/xz/lzma/Optimum;
    iget-boolean v2, v1, Lorg/tukaani/xz/lzma/Optimum;->prev1IsLiteral:Z

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v2, v2, v0

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iput v3, v2, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 75
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v2, v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    .line 76
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "optPrev":I
    .local v2, "optPrev":I
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 78
    iget-boolean v0, v1, Lorg/tukaani/xz/lzma/Optimum;->hasPrev2:Z

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v0, v0, v2

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 80
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v0, v0, v2

    iget v3, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev2:I

    iput v3, v0, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    .line 81
    iput v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 82
    iget v0, v1, Lorg/tukaani/xz/lzma/Optimum;->optPrev2:I

    .end local v2    # "optPrev":I
    .restart local v0    # "optPrev":I
    goto :goto_0

    .line 78
    .end local v0    # "optPrev":I
    .restart local v2    # "optPrev":I
    :cond_1
    move v0, v2

    .line 86
    .end local v2    # "optPrev":I
    .restart local v0    # "optPrev":I
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v2, v2, v0

    iget v2, v2, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 87
    .local v2, "temp":I
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v3, v3, v0

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iput v4, v3, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 88
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 89
    move v0, v2

    .line 90
    .end local v1    # "opt":Lorg/tukaani/xz/lzma/Optimum;
    .end local v2    # "temp":I
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    if-gtz v1, :cond_0

    .line 92
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 93
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->back:I

    .line 94
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    return v1
.end method

.method static getMemoryUsage(III)I
    .locals 3
    .param p0, "dictSize"    # I
    .param p1, "extraSizeBefore"    # I
    .param p2, "mf"    # I

    .line 31
    nop

    .line 32
    const/16 v0, 0x1000

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 31
    const/16 v2, 0x111

    invoke-static {p0, v1, v0, v2, p2}, Lorg/tukaani/xz/lz/LZEncoder;->getMemoryUsage(IIIII)I

    move-result v0

    add-int/lit16 v0, v0, 0x100

    return v0
.end method

.method private updateOptStateAndReps()V
    .locals 7

    .line 304
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 305
    .local v0, "optPrev":I
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    if-ge v0, v1, :cond_c

    .line 307
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lorg/tukaani/xz/lzma/Optimum;->prev1IsLiteral:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_2

    .line 308
    add-int/lit8 v0, v0, -0x1

    .line 310
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-boolean v1, v1, Lorg/tukaani/xz/lzma/Optimum;->hasPrev2:Z

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v4, v4, v5

    iget v4, v4, Lorg/tukaani/xz/lzma/Optimum;->optPrev2:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1, v3}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 312
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev2:I

    if-ge v1, v2, :cond_0

    .line 313
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    goto :goto_0

    .line 315
    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateMatch()V

    goto :goto_0

    .line 317
    :cond_1
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1, v3}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 320
    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    goto :goto_1

    .line 322
    :cond_2
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1, v3}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 325
    :goto_1
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    const/4 v4, 0x0

    if-ne v0, v1, :cond_6

    .line 327
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 329
    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    if-nez v1, :cond_5

    .line 330
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateShortRep()V

    goto :goto_3

    .line 332
    :cond_5
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v3

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    .line 334
    :goto_3
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v1, v1, v0

    iget-object v1, v1, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v3, v3, v5

    iget-object v3, v3, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_7

    .line 338
    :cond_6
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v5

    iget-boolean v1, v1, Lorg/tukaani/xz/lzma/Optimum;->prev1IsLiteral:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v5

    iget-boolean v1, v1, Lorg/tukaani/xz/lzma/Optimum;->hasPrev2:Z

    if-eqz v1, :cond_7

    .line 339
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v5

    iget v0, v1, Lorg/tukaani/xz/lzma/Optimum;->optPrev2:I

    .line 340
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v5

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev2:I

    .line 341
    .local v1, "back":I
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    goto :goto_4

    .line 343
    .end local v1    # "back":I
    :cond_7
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v5

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    .line 344
    .restart local v1    # "back":I
    if-ge v1, v2, :cond_8

    .line 345
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    goto :goto_4

    .line 347
    :cond_8
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->updateMatch()V

    .line 350
    :goto_4
    if-ge v1, v2, :cond_b

    .line 351
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v3, v3, v5

    iget-object v3, v3, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v5, v5, v0

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v5, v5, v1

    aput v5, v3, v4

    .line 354
    const/4 v3, 0x1

    .local v3, "rep":I
    :goto_5
    if-gt v3, v1, :cond_9

    .line 355
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v5, v5, v0

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    add-int/lit8 v6, v3, -0x1

    aget v5, v5, v6

    aput v5, v4, v3

    .line 354
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 357
    :cond_9
    :goto_6
    if-ge v3, v2, :cond_a

    .line 358
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v5, v5, v0

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    aget v5, v5, v3

    aput v5, v4, v3

    .line 357
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 359
    .end local v3    # "rep":I
    :cond_a
    goto :goto_7

    .line 360
    :cond_b
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v2, v2, v5

    iget-object v2, v2, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    add-int/lit8 v5, v1, -0x4

    aput v5, v2, v4

    .line 361
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v2, v2, v0

    iget-object v2, v2, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    const/4 v6, 0x3

    invoke-static {v2, v4, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    .end local v1    # "back":I
    :goto_7
    return-void

    .line 305
    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method getNextSymbol()I
    .locals 22

    .line 101
    move-object/from16 v6, p0

    iget v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iget v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v0, v0, v1

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iget v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    sub-int/2addr v0, v1

    .line 103
    .local v0, "len":I
    iget-object v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    iput v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 104
    iget-object v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v1, v1, v2

    iget v1, v1, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    iput v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->back:I

    .line 105
    return v0

    .line 108
    .end local v0    # "len":I
    :cond_0
    iget v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iget v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ne v0, v1, :cond_1b

    .line 109
    const/4 v0, 0x0

    iput v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 110
    iput v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    .line 111
    const/4 v1, -0x1

    iput v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->back:I

    .line 113
    iget v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->readAhead:I

    if-ne v2, v1, :cond_1

    .line 114
    invoke-virtual/range {p0 .. p0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getMatches()Lorg/tukaani/xz/lz/Matches;

    move-result-object v2

    iput-object v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    .line 120
    :cond_1
    iget-object v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v2}, Lorg/tukaani/xz/lz/LZEncoder;->getAvail()I

    move-result v2

    const/16 v3, 0x111

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 121
    .local v2, "avail":I
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v2, v7, :cond_2

    .line 122
    return v8

    .line 125
    :cond_2
    const/4 v3, 0x0

    .line 126
    .local v3, "repBest":I
    const/4 v4, 0x0

    move v9, v3

    .end local v3    # "repBest":I
    .local v4, "rep":I
    .local v9, "repBest":I
    :goto_0
    const/4 v3, 0x4

    if-ge v4, v3, :cond_5

    .line 127
    iget-object v3, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    iget-object v5, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v10, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->reps:[I

    aget v10, v10, v4

    invoke-virtual {v5, v10, v2}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(II)I

    move-result v5

    aput v5, v3, v4

    .line 129
    iget-object v3, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v3, v3, v4

    if-ge v3, v7, :cond_3

    .line 130
    iget-object v3, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aput v0, v3, v4

    .line 131
    goto :goto_1

    .line 134
    :cond_3
    iget-object v3, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v3, v3, v4

    iget-object v5, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v5, v5, v9

    if-le v3, v5, :cond_4

    .line 135
    move v3, v4

    move v9, v3

    .line 126
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 139
    .end local v4    # "rep":I
    :cond_5
    iget-object v4, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v4, v4, v9

    iget v5, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    if-lt v4, v5, :cond_6

    .line 140
    iput v9, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->back:I

    .line 141
    iget-object v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v0, v0, v9

    sub-int/2addr v0, v8

    invoke-virtual {v6, v0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->skip(I)V

    .line 142
    iget-object v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v0, v0, v9

    return v0

    .line 147
    :cond_6
    const/4 v4, 0x0

    .line 148
    .local v4, "mainLen":I
    const/4 v5, 0x0

    .line 149
    .local v5, "mainDist":I
    iget-object v10, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v10, v10, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v10, :cond_8

    .line 150
    iget-object v10, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v10, v10, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v11, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v11, v11, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v11, v8

    aget v4, v10, v11

    .line 151
    iget-object v10, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v10, v10, Lorg/tukaani/xz/lz/Matches;->dist:[I

    iget-object v11, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v11, v11, Lorg/tukaani/xz/lz/Matches;->count:I

    sub-int/2addr v11, v8

    aget v5, v10, v11

    .line 154
    iget v10, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    if-lt v4, v10, :cond_7

    .line 155
    add-int/lit8 v0, v5, 0x4

    iput v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->back:I

    .line 156
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v6, v0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->skip(I)V

    .line 157
    return v4

    .line 154
    :cond_7
    move v10, v4

    move v11, v5

    goto :goto_2

    .line 149
    :cond_8
    move v10, v4

    move v11, v5

    .line 161
    .end local v4    # "mainLen":I
    .end local v5    # "mainDist":I
    .local v10, "mainLen":I
    .local v11, "mainDist":I
    :goto_2
    iget-object v4, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v4, v0}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v5

    .line 162
    .local v5, "curByte":I
    iget-object v4, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v12, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->reps:[I

    aget v12, v12, v0

    add-int/2addr v12, v8

    invoke-virtual {v4, v12}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v4

    .line 167
    .local v4, "matchByte":I
    if-ge v10, v7, :cond_9

    if-eq v5, v4, :cond_9

    iget-object v12, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v12, v12, v9

    if-ge v12, v7, :cond_9

    .line 169
    return v8

    .line 172
    :cond_9
    iget-object v12, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v12}, Lorg/tukaani/xz/lz/LZEncoder;->getPos()I

    move-result v18

    .line 173
    .local v18, "pos":I
    iget v12, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->posMask:I

    and-int v15, v18, v12

    .line 177
    .local v15, "posState":I
    iget-object v12, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v12, v8}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v19

    .line 178
    .local v19, "prevByte":I
    iget-object v12, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    iget-object v14, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    move v13, v5

    move-object/from16 v17, v14

    move v14, v4

    move v3, v15

    .end local v15    # "posState":I
    .local v3, "posState":I
    move/from16 v15, v19

    move/from16 v16, v18

    invoke-virtual/range {v12 .. v17}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->getPrice(IIIILorg/tukaani/xz/lzma/State;)I

    move-result v12

    .line 180
    .local v12, "literalPrice":I
    iget-object v13, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v13, v13, v8

    invoke-virtual {v13, v12, v0, v1}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    .line 183
    .end local v12    # "literalPrice":I
    .end local v19    # "prevByte":I
    iget-object v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6, v1, v3}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getAnyMatchPrice(Lorg/tukaani/xz/lzma/State;I)I

    move-result v1

    .line 184
    .local v1, "anyMatchPrice":I
    iget-object v12, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6, v1, v12}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getAnyRepPrice(ILorg/tukaani/xz/lzma/State;)I

    move-result v12

    .line 188
    .local v12, "anyRepPrice":I
    if-ne v4, v5, :cond_a

    .line 189
    iget-object v13, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6, v12, v13, v3}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getShortRepPrice(ILorg/tukaani/xz/lzma/State;I)I

    move-result v13

    .line 191
    .local v13, "shortRepPrice":I
    iget-object v14, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v14, v14, v8

    iget v14, v14, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v13, v14, :cond_a

    .line 192
    iget-object v14, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v14, v14, v8

    invoke-virtual {v14, v13, v0, v0}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    .line 197
    .end local v13    # "shortRepPrice":I
    :cond_a
    iget-object v13, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v13, v13, v9

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    .line 198
    iget v13, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge v13, v7, :cond_c

    .line 199
    iget v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-nez v0, :cond_b

    .line 200
    iget-object v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v0, v0, v8

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    iput v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->back:I

    .line 201
    return v8

    .line 199
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    iget v7, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    invoke-direct {v0, v7}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 208
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->updatePrices()V

    .line 213
    iget-object v13, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v13, v13, v0

    iget-object v13, v13, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    iget-object v14, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v13, v14}, Lorg/tukaani/xz/lzma/State;->set(Lorg/tukaani/xz/lzma/State;)V

    .line 214
    iget-object v13, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->reps:[I

    iget-object v14, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v14, v14, v0

    iget-object v14, v14, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    const/4 v15, 0x4

    invoke-static {v13, v0, v14, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iget v13, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    .local v13, "i":I
    :goto_3
    if-lt v13, v7, :cond_d

    .line 218
    iget-object v14, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v14, v14, v13

    invoke-virtual {v14}, Lorg/tukaani/xz/lzma/Optimum;->reset()V

    .line 217
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    .line 221
    .end local v13    # "i":I
    :cond_d
    const/4 v13, 0x0

    .local v13, "rep":I
    :goto_4
    const/4 v14, 0x4

    if-ge v13, v14, :cond_11

    .line 222
    iget-object v15, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v15, v15, v13

    .line 223
    .local v15, "repLen":I
    if-ge v15, v7, :cond_e

    .line 224
    goto :goto_6

    .line 226
    :cond_e
    iget-object v14, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6, v12, v13, v14, v3}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getLongRepPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v14

    .line 229
    .local v14, "longRepPrice":I
    :goto_5
    iget-object v8, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v8, v15, v3}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->getPrice(II)I

    move-result v8

    add-int/2addr v8, v14

    .line 231
    .local v8, "price":I
    iget-object v7, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v7, v7, v15

    iget v7, v7, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v8, v7, :cond_f

    .line 232
    iget-object v7, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v7, v7, v15

    invoke-virtual {v7, v8, v0, v13}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    .line 233
    .end local v8    # "price":I
    :cond_f
    add-int/lit8 v15, v15, -0x1

    const/4 v7, 0x2

    if-ge v15, v7, :cond_10

    .line 221
    .end local v14    # "longRepPrice":I
    .end local v15    # "repLen":I
    :goto_6
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    goto :goto_4

    .line 233
    .restart local v14    # "longRepPrice":I
    .restart local v15    # "repLen":I
    :cond_10
    const/4 v7, 0x2

    const/4 v8, 0x1

    goto :goto_5

    .line 238
    .end local v13    # "rep":I
    .end local v14    # "longRepPrice":I
    .end local v15    # "repLen":I
    :cond_11
    iget-object v7, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->repLens:[I

    aget v7, v7, v0

    const/4 v8, 0x1

    add-int/2addr v7, v8

    const/4 v8, 0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 239
    .local v7, "len":I
    if-gt v7, v10, :cond_15

    .line 240
    iget-object v8, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6, v1, v8}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getNormalMatchPrice(ILorg/tukaani/xz/lzma/State;)I

    move-result v8

    .line 245
    .local v8, "normalMatchPrice":I
    const/4 v13, 0x0

    .line 246
    .local v13, "i":I
    :goto_7
    iget-object v14, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v14, v14, Lorg/tukaani/xz/lz/Matches;->len:[I

    aget v14, v14, v13

    if-le v7, v14, :cond_12

    .line 247
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 250
    :cond_12
    :goto_8
    iget-object v14, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v14, v14, Lorg/tukaani/xz/lz/Matches;->dist:[I

    aget v14, v14, v13

    .line 251
    .local v14, "dist":I
    invoke-virtual {v6, v8, v14, v7, v3}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getMatchAndLenPrice(IIII)I

    move-result v15

    .line 253
    .local v15, "price":I
    iget-object v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v0, v0, v7

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->price:I

    if-ge v15, v0, :cond_13

    .line 254
    iget-object v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    aget-object v0, v0, v7

    move/from16 v20, v1

    .end local v1    # "anyMatchPrice":I
    .local v20, "anyMatchPrice":I
    add-int/lit8 v1, v14, 0x4

    move/from16 v21, v2

    const/4 v2, 0x0

    .end local v2    # "avail":I
    .local v21, "avail":I
    invoke-virtual {v0, v15, v2, v1}, Lorg/tukaani/xz/lzma/Optimum;->set1(III)V

    goto :goto_9

    .line 253
    .end local v20    # "anyMatchPrice":I
    .end local v21    # "avail":I
    .restart local v1    # "anyMatchPrice":I
    .restart local v2    # "avail":I
    :cond_13
    move/from16 v20, v1

    move/from16 v21, v2

    const/4 v2, 0x0

    .line 256
    .end local v1    # "anyMatchPrice":I
    .end local v2    # "avail":I
    .restart local v20    # "anyMatchPrice":I
    .restart local v21    # "avail":I
    :goto_9
    iget-object v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v0, v0, Lorg/tukaani/xz/lz/Matches;->len:[I

    aget v0, v0, v13

    if-ne v7, v0, :cond_14

    .line 257
    add-int/lit8 v13, v13, 0x1

    iget-object v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v0, v0, Lorg/tukaani/xz/lz/Matches;->count:I

    if-ne v13, v0, :cond_14

    .line 258
    goto :goto_a

    .line 260
    :cond_14
    nop

    .end local v14    # "dist":I
    .end local v15    # "price":I
    add-int/lit8 v7, v7, 0x1

    .line 261
    move v0, v2

    move/from16 v1, v20

    move/from16 v2, v21

    goto :goto_8

    .line 239
    .end local v8    # "normalMatchPrice":I
    .end local v13    # "i":I
    .end local v20    # "anyMatchPrice":I
    .end local v21    # "avail":I
    .restart local v1    # "anyMatchPrice":I
    .restart local v2    # "avail":I
    :cond_15
    move/from16 v20, v1

    move/from16 v21, v2

    .line 266
    .end local v1    # "anyMatchPrice":I
    .end local v2    # "avail":I
    .end local v7    # "len":I
    .restart local v20    # "anyMatchPrice":I
    .restart local v21    # "avail":I
    :goto_a
    iget-object v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->getAvail()I

    move-result v0

    const/16 v1, 0xfff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v15, v3

    move/from16 v1, v20

    .line 271
    .end local v3    # "posState":I
    .end local v20    # "anyMatchPrice":I
    .end local v21    # "avail":I
    .local v0, "avail":I
    .restart local v1    # "anyMatchPrice":I
    .local v15, "posState":I
    :goto_b
    iget v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    iget v3, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    if-ge v2, v3, :cond_1a

    .line 272
    invoke-virtual/range {p0 .. p0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getMatches()Lorg/tukaani/xz/lz/Matches;

    move-result-object v2

    iput-object v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    .line 273
    iget-object v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v2, v2, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v2, :cond_16

    iget-object v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget-object v2, v2, Lorg/tukaani/xz/lz/Matches;->len:[I

    iget-object v3, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v3, v3, Lorg/tukaani/xz/lz/Matches;->count:I

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    aget v2, v2, v3

    iget v3, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->niceLen:I

    if-lt v2, v3, :cond_17

    .line 275
    move/from16 v19, v4

    move/from16 v20, v5

    goto/16 :goto_e

    .line 273
    :cond_16
    const/4 v7, 0x1

    .line 277
    :cond_17
    add-int/lit8 v8, v0, -0x1

    .line 278
    .end local v0    # "avail":I
    .local v8, "avail":I
    add-int/lit8 v13, v18, 0x1

    .line 279
    .end local v18    # "pos":I
    .local v13, "pos":I
    iget v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->posMask:I

    and-int v15, v13, v0

    .line 281
    invoke-direct/range {p0 .. p0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->updateOptStateAndReps()V

    .line 282
    iget-object v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v0, v0, v2

    iget v0, v0, Lorg/tukaani/xz/lzma/Optimum;->price:I

    iget-object v2, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v3, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    .line 283
    invoke-virtual {v6, v2, v15}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getAnyMatchPrice(Lorg/tukaani/xz/lzma/State;I)I

    move-result v2

    add-int v14, v0, v2

    .line 284
    .end local v1    # "anyMatchPrice":I
    .local v14, "anyMatchPrice":I
    iget-object v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->opts:[Lorg/tukaani/xz/lzma/Optimum;

    iget v1, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6, v14, v0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getAnyRepPrice(ILorg/tukaani/xz/lzma/State;)I

    move-result v12

    .line 286
    invoke-direct {v6, v13, v15, v8, v12}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->calc1BytePrices(IIII)V

    .line 288
    const/4 v3, 0x2

    if-lt v8, v3, :cond_19

    .line 289
    invoke-direct {v6, v13, v15, v8, v12}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->calcLongRepPrices(IIII)I

    move-result v16

    .line 291
    .local v16, "startLen":I
    iget-object v0, v6, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->matches:Lorg/tukaani/xz/lz/Matches;

    iget v0, v0, Lorg/tukaani/xz/lz/Matches;->count:I

    if-lez v0, :cond_18

    .line 292
    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move/from16 v17, v3

    move v3, v8

    move/from16 v19, v4

    .end local v4    # "matchByte":I
    .local v19, "matchByte":I
    move v4, v14

    move/from16 v20, v5

    .end local v5    # "curByte":I
    .local v20, "curByte":I
    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->calcNormalMatchPrices(IIIII)V

    goto :goto_c

    .line 291
    .end local v19    # "matchByte":I
    .end local v20    # "curByte":I
    .restart local v4    # "matchByte":I
    .restart local v5    # "curByte":I
    :cond_18
    move/from16 v17, v3

    move/from16 v19, v4

    move/from16 v20, v5

    .line 294
    .end local v4    # "matchByte":I
    .end local v5    # "curByte":I
    .end local v16    # "startLen":I
    .restart local v19    # "matchByte":I
    .restart local v20    # "curByte":I
    :goto_c
    goto :goto_d

    .line 288
    .end local v19    # "matchByte":I
    .end local v20    # "curByte":I
    .restart local v4    # "matchByte":I
    .restart local v5    # "curByte":I
    :cond_19
    move/from16 v17, v3

    move/from16 v19, v4

    move/from16 v20, v5

    .line 271
    .end local v4    # "matchByte":I
    .end local v5    # "curByte":I
    .restart local v19    # "matchByte":I
    .restart local v20    # "curByte":I
    :goto_d
    move v0, v8

    move/from16 v18, v13

    move v1, v14

    move/from16 v4, v19

    move/from16 v5, v20

    goto/16 :goto_b

    .end local v8    # "avail":I
    .end local v13    # "pos":I
    .end local v14    # "anyMatchPrice":I
    .end local v19    # "matchByte":I
    .end local v20    # "curByte":I
    .restart local v0    # "avail":I
    .restart local v1    # "anyMatchPrice":I
    .restart local v4    # "matchByte":I
    .restart local v5    # "curByte":I
    .restart local v18    # "pos":I
    :cond_1a
    move/from16 v19, v4

    move/from16 v20, v5

    .line 297
    .end local v4    # "matchByte":I
    .end local v5    # "curByte":I
    .restart local v19    # "matchByte":I
    .restart local v20    # "curByte":I
    :goto_e
    invoke-direct/range {p0 .. p0}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->convertOpts()I

    move-result v2

    return v2

    .line 108
    .end local v0    # "avail":I
    .end local v1    # "anyMatchPrice":I
    .end local v9    # "repBest":I
    .end local v10    # "mainLen":I
    .end local v11    # "mainDist":I
    .end local v12    # "anyRepPrice":I
    .end local v15    # "posState":I
    .end local v18    # "pos":I
    .end local v19    # "matchByte":I
    .end local v20    # "curByte":I
    :cond_1b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optCur:I

    .line 56
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->optEnd:I

    .line 57
    invoke-super {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->reset()V

    .line 58
    return-void
.end method
