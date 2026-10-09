.class abstract Lorg/tukaani/xz/lzma/LZMACoder;
.super Ljava/lang/Object;
.source "LZMACoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;,
        Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;
    }
.end annotation


# static fields
.field static final ALIGN_BITS:I = 0x4

.field static final ALIGN_MASK:I = 0xf

.field static final ALIGN_SIZE:I = 0x10

.field static final DIST_MODEL_END:I = 0xe

.field static final DIST_MODEL_START:I = 0x4

.field static final DIST_SLOTS:I = 0x40

.field static final DIST_STATES:I = 0x4

.field static final FULL_DISTANCES:I = 0x80

.field static final MATCH_LEN_MAX:I = 0x111

.field static final MATCH_LEN_MIN:I = 0x2

.field static final POS_STATES_MAX:I = 0x10

.field static final REPS:I = 0x4


# instance fields
.field final distAlign:[S

.field final distSlots:[[S

.field final distSpecial:[[S

.field final isMatch:[[S

.field final isRep:[S

.field final isRep0:[S

.field final isRep0Long:[[S

.field final isRep1:[S

.field final isRep2:[S

.field final posMask:I

.field final reps:[I

.field final state:Lorg/tukaani/xz/lzma/State;


# direct methods
.method constructor <init>(I)V
    .locals 16
    .param p1, "pb"    # I

    .line 55
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v1, 0x4

    new-array v2, v1, [I

    iput-object v2, v0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    .line 33
    new-instance v2, Lorg/tukaani/xz/lzma/State;

    invoke-direct {v2}, Lorg/tukaani/xz/lzma/State;-><init>()V

    iput-object v2, v0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    .line 35
    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    const/16 v5, 0x10

    aput v5, v3, v4

    const/4 v6, 0x0

    const/16 v7, 0xc

    aput v7, v3, v6

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    .line 36
    new-array v3, v7, [S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep:[S

    .line 37
    new-array v3, v7, [S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0:[S

    .line 38
    new-array v3, v7, [S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep1:[S

    .line 39
    new-array v3, v7, [S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep2:[S

    .line 40
    new-array v3, v2, [I

    aput v5, v3, v4

    aput v7, v3, v6

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0Long:[[S

    .line 41
    new-array v3, v2, [I

    const/16 v7, 0x40

    aput v7, v3, v4

    aput v1, v3, v6

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    iput-object v3, v0, Lorg/tukaani/xz/lzma/LZMACoder;->distSlots:[[S

    .line 42
    new-array v6, v2, [S

    new-array v7, v2, [S

    new-array v8, v1, [S

    new-array v9, v1, [S

    const/16 v1, 0x8

    new-array v10, v1, [S

    new-array v11, v1, [S

    new-array v12, v5, [S

    new-array v13, v5, [S

    const/16 v1, 0x20

    new-array v14, v1, [S

    new-array v15, v1, [S

    filled-new-array/range {v6 .. v15}, [[S

    move-result-object v1

    iput-object v1, v0, Lorg/tukaani/xz/lzma/LZMACoder;->distSpecial:[[S

    .line 47
    new-array v1, v5, [S

    iput-object v1, v0, Lorg/tukaani/xz/lzma/LZMACoder;->distAlign:[S

    .line 56
    shl-int v1, v4, p1

    sub-int/2addr v1, v4

    iput v1, v0, Lorg/tukaani/xz/lzma/LZMACoder;->posMask:I

    .line 57
    return-void
.end method

.method static final getDistState(I)I
    .locals 1
    .param p0, "len"    # I

    .line 50
    const/4 v0, 0x6

    if-ge p0, v0, :cond_0

    .line 51
    add-int/lit8 v0, p0, -0x2

    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, 0x3

    .line 50
    :goto_0
    return v0
.end method


# virtual methods
.method reset()V
    .locals 3

    .line 60
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 61
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 62
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 63
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 64
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/State;->reset()V

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep:[S

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    .line 70
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0:[S

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    .line 71
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep1:[S

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    .line 72
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep2:[S

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    .line 74
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0Long:[[S

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 75
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0Long:[[S

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSlots:[[S

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 78
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSlots:[[S

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 80
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSpecial:[[S

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 81
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSpecial:[[S

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 83
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distAlign:[S

    invoke-static {v0}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    .line 84
    return-void
.end method
