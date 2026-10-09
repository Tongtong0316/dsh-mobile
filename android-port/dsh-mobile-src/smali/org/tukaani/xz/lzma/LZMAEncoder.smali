.class public abstract Lorg/tukaani/xz/lzma/LZMAEncoder;
.super Lorg/tukaani/xz/lzma/LZMACoder;
.source "LZMAEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;,
        Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ALIGN_PRICE_UPDATE_INTERVAL:I = 0x10

.field private static final DIST_PRICE_UPDATE_INTERVAL:I = 0x80

.field private static final LZMA2_COMPRESSED_LIMIT:I = 0xffe6

.field private static final LZMA2_UNCOMPRESSED_LIMIT:I = 0x1ffeef

.field public static final MODE_FAST:I = 0x1

.field public static final MODE_NORMAL:I = 0x2


# instance fields
.field private alignPriceCount:I

.field private final alignPrices:[I

.field back:I

.field private distPriceCount:I

.field private final distSlotPrices:[[I

.field private final distSlotPricesSize:I

.field private final fullDistPrices:[[I

.field final literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

.field final lz:Lorg/tukaani/xz/lz/LZEncoder;

.field final matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

.field final niceLen:I

.field private final rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

.field readAhead:I

.field final repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

.field private uncompressedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 14
    return-void
.end method

.method constructor <init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;Lorg/tukaani/xz/lz/LZEncoder;IIIII)V
    .locals 6
    .param p1, "rc"    # Lorg/tukaani/xz/rangecoder/RangeEncoder;
    .param p2, "lz"    # Lorg/tukaani/xz/lz/LZEncoder;
    .param p3, "lc"    # I
    .param p4, "lp"    # I
    .param p5, "pb"    # I
    .param p6, "dictSize"    # I
    .param p7, "niceLen"    # I

    .line 147
    invoke-direct {p0, p5}, Lorg/tukaani/xz/lzma/LZMACoder;-><init>(I)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    .line 53
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    .line 57
    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    const/16 v4, 0x80

    aput v4, v2, v3

    const/4 v4, 0x4

    aput v4, v2, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->fullDistPrices:[[I

    .line 59
    const/16 v2, 0x10

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPrices:[I

    .line 61
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    .line 62
    const/4 v2, -0x1

    iput v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    .line 63
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    .line 148
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    .line 149
    iput-object p2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    .line 150
    iput p7, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->niceLen:I

    .line 152
    new-instance v2, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    invoke-direct {v2, p0, p3, p4}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;-><init>(Lorg/tukaani/xz/lzma/LZMAEncoder;II)V

    iput-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    .line 153
    new-instance v2, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-direct {v2, p0, p5, p7}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;-><init>(Lorg/tukaani/xz/lzma/LZMAEncoder;II)V

    iput-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    .line 154
    new-instance v2, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-direct {v2, p0, p5, p7}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;-><init>(Lorg/tukaani/xz/lzma/LZMAEncoder;II)V

    iput-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    .line 156
    add-int/lit8 v2, p6, -0x1

    invoke-static {v2}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getDistSlot(I)I

    move-result v2

    add-int/2addr v2, v3

    iput v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPricesSize:I

    .line 157
    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPricesSize:I

    new-array v1, v1, [I

    aput v2, v1, v3

    aput v4, v1, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    .line 159
    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->reset()V

    .line 160
    return-void
.end method

.method static synthetic access$100(Lorg/tukaani/xz/lzma/LZMAEncoder;)Lorg/tukaani/xz/rangecoder/RangeEncoder;
    .locals 1
    .param p0, "x0"    # Lorg/tukaani/xz/lzma/LZMAEncoder;

    .line 14
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    return-object v0
.end method

.method private encodeInit()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 234
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/tukaani/xz/lz/LZEncoder;->hasEnoughData(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    return v2

    .line 240
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->skip(I)V

    .line 241
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isMatch:[[S

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4, v2, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 242
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    invoke-virtual {v2}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->encodeInit()V

    .line 244
    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    .line 245
    iget v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    if-ne v2, v1, :cond_2

    .line 247
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    .line 248
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    if-ne v1, v0, :cond_1

    .line 250
    return v0

    .line 248
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 245
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 233
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private encodeMatch(III)V
    .locals 9
    .param p1, "dist"    # I
    .param p2, "len"    # I
    .param p3, "posState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/State;->updateMatch()V

    .line 293
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0, p2, p3}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->encode(II)V

    .line 295
    invoke-static {p1}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getDistSlot(I)I

    move-result v0

    .line 296
    .local v0, "distSlot":I
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlots:[[S

    invoke-static {p2}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getDistState(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBitTree([SI)V

    .line 298
    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 299
    ushr-int/lit8 v1, v0, 0x1

    sub-int/2addr v1, v3

    .line 300
    .local v1, "footerBits":I
    and-int/lit8 v4, v0, 0x1

    or-int/2addr v4, v2

    shl-int/2addr v4, v1

    .line 301
    .local v4, "base":I
    sub-int v5, p1, v4

    .line 303
    .local v5, "distReduced":I
    const/16 v6, 0xe

    if-ge v0, v6, :cond_0

    .line 304
    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSpecial:[[S

    add-int/lit8 v8, v0, -0x4

    aget-object v7, v7, v8

    invoke-virtual {v6, v7, v5}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeReverseBitTree([SI)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    ushr-int/lit8 v7, v5, 0x4

    add-int/lit8 v8, v1, -0x4

    invoke-virtual {v6, v7, v8}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeDirectBits(II)V

    .line 310
    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distAlign:[S

    and-int/lit8 v8, v5, 0xf

    invoke-virtual {v6, v7, v8}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeReverseBitTree([SI)V

    .line 311
    iget v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    sub-int/2addr v6, v3

    iput v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    .line 315
    .end local v1    # "footerBits":I
    .end local v4    # "base":I
    .end local v5    # "distReduced":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    aget v4, v4, v2

    const/4 v5, 0x3

    aput v4, v1, v5

    .line 316
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    aget v4, v4, v3

    aput v4, v1, v2

    .line 317
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    aput v2, v1, v3

    .line 318
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    aput p1, v1, v4

    .line 320
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    .line 321
    return-void
.end method

.method private encodeRepMatch(III)V
    .locals 7
    .param p1, "rep"    # I
    .param p2, "len"    # I
    .param p3, "posState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 326
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep0:[S

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v4}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 327
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep0Long:[[S

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v4}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v4

    aget-object v3, v3, v4

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, p3, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    goto :goto_2

    .line 329
    :cond_1
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    aget v2, v2, p1

    .line 330
    .local v2, "dist":I
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep0:[S

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 332
    if-ne p1, v1, :cond_2

    .line 333
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep1:[S

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v5

    invoke-virtual {v3, v4, v5, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    goto :goto_1

    .line 335
    :cond_2
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep1:[S

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 336
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep2:[S

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v5

    add-int/lit8 v6, p1, -0x2

    invoke-virtual {v3, v4, v5, v6}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 338
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne p1, v3, :cond_3

    .line 339
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    aget v6, v6, v4

    aput v6, v5, v3

    .line 341
    :cond_3
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    aget v5, v5, v1

    aput v5, v3, v4

    .line 344
    :goto_1
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    aget v4, v4, v0

    aput v4, v3, v1

    .line 345
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    aput v2, v3, v0

    .line 348
    .end local v2    # "dist":I
    :goto_2
    if-ne p2, v1, :cond_4

    .line 349
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/State;->updateShortRep()V

    goto :goto_3

    .line 351
    :cond_4
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0, p2, p3}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->encode(II)V

    .line 352
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    .line 354
    :goto_3
    return-void
.end method

.method private encodeSymbol()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/lz/LZEncoder;->hasEnoughData(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 255
    return v1

    .line 257
    :cond_0
    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getNextSymbol()I

    move-result v0

    .line 259
    .local v0, "len":I
    iget v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    if-ltz v3, :cond_6

    .line 260
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v3}, Lorg/tukaani/xz/lz/LZEncoder;->getPos()I

    move-result v3

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->posMask:I

    and-int/2addr v3, v4

    .line 262
    .local v3, "posState":I
    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 264
    if-ne v0, v2, :cond_1

    .line 265
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isMatch:[[S

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v3, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 266
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->encode()V

    goto :goto_0

    .line 264
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 269
    :cond_2
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isMatch:[[S

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v6}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v3, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 270
    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    const/4 v5, 0x4

    if-ge v4, v5, :cond_4

    .line 273
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    neg-int v4, v4

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    iget v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    aget v5, v5, v6

    invoke-virtual {v1, v4, v5, v0}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(III)I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 274
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep:[S

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v5

    invoke-virtual {v1, v4, v5, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 275
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    invoke-direct {p0, v1, v0, v3}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeRepMatch(III)V

    goto :goto_0

    .line 273
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 278
    :cond_4
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    neg-int v6, v6

    iget v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    sub-int/2addr v7, v5

    invoke-virtual {v4, v6, v7, v0}, Lorg/tukaani/xz/lz/LZEncoder;->getMatchLen(III)I

    move-result v4

    if-ne v4, v0, :cond_5

    .line 279
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep:[S

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v7}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v7

    invoke-virtual {v4, v6, v7, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 280
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->back:I

    sub-int/2addr v1, v5

    invoke-direct {p0, v1, v0, v3}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeMatch(III)V

    .line 284
    :goto_0
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    .line 285
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    .line 287
    return v2

    .line 278
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 259
    .end local v3    # "posState":I
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static getDistSlot(I)I
    .locals 3
    .param p0, "dist"    # I

    .line 119
    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    if-ltz p0, :cond_0

    .line 120
    return p0

    .line 122
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    .line 123
    .local v0, "i":I
    shl-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, -0x1

    ushr-int v2, p0, v2

    and-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    return v1
.end method

.method public static getInstance(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIIIILorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/lzma/LZMAEncoder;
    .locals 12
    .param p0, "rc"    # Lorg/tukaani/xz/rangecoder/RangeEncoder;
    .param p1, "lc"    # I
    .param p2, "lp"    # I
    .param p3, "pb"    # I
    .param p4, "mode"    # I
    .param p5, "dictSize"    # I
    .param p6, "extraSizeBefore"    # I
    .param p7, "niceLen"    # I
    .param p8, "mf"    # I
    .param p9, "depthLimit"    # I
    .param p10, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 92
    packed-switch p4, :pswitch_data_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 100
    :pswitch_0
    new-instance v11, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;-><init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIIILorg/tukaani/xz/ArrayCache;)V

    return-object v11

    .line 94
    :pswitch_1
    new-instance v11, Lorg/tukaani/xz/lzma/LZMAEncoderFast;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;-><init>(Lorg/tukaani/xz/rangecoder/RangeEncoder;IIIIIIIILorg/tukaani/xz/ArrayCache;)V

    return-object v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMemoryUsage(IIII)I
    .locals 2
    .param p0, "mode"    # I
    .param p1, "dictSize"    # I
    .param p2, "extraSizeBefore"    # I
    .param p3, "mf"    # I

    .line 67
    const/16 v0, 0x50

    .line 69
    .local v0, "m":I
    packed-switch p0, :pswitch_data_0

    .line 81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 76
    :pswitch_0
    invoke-static {p1, p2, p3}, Lorg/tukaani/xz/lzma/LZMAEncoderNormal;->getMemoryUsage(III)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    goto :goto_0

    .line 71
    :pswitch_1
    invoke-static {p1, p2, p3}, Lorg/tukaani/xz/lzma/LZMAEncoderFast;->getMemoryUsage(III)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    nop

    .line 84
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateAlignPrices()V
    .locals 4

    .line 482
    const/16 v0, 0x10

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    .line 484
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 485
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPrices:[I

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distAlign:[S

    invoke-static {v3, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getReverseBitTreePrice([SI)I

    move-result v3

    aput v3, v2, v1

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private updateDistPrices()V
    .locals 13

    .line 437
    const/16 v0, 0x80

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    .line 439
    const/4 v1, 0x0

    .local v1, "distState":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    .line 440
    const/4 v3, 0x0

    .local v3, "distSlot":I
    :goto_1
    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPricesSize:I

    if-ge v3, v4, :cond_0

    .line 441
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    aget-object v4, v4, v1

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlots:[[S

    aget-object v5, v5, v1

    .line 442
    invoke-static {v5, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitTreePrice([SI)I

    move-result v5

    aput v5, v4, v3

    .line 440
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 445
    .end local v3    # "distSlot":I
    :cond_0
    const/16 v3, 0xe

    .restart local v3    # "distSlot":I
    :goto_2
    iget v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPricesSize:I

    if-ge v3, v4, :cond_1

    .line 447
    ushr-int/lit8 v4, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v2

    .line 448
    .local v4, "count":I
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    aget-object v5, v5, v1

    aget v6, v5, v3

    .line 449
    invoke-static {v4}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getDirectBitsPrice(I)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v3

    .line 446
    .end local v4    # "count":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 452
    .end local v3    # "distSlot":I
    :cond_1
    const/4 v3, 0x0

    .local v3, "dist":I
    :goto_3
    if-ge v3, v2, :cond_2

    .line 453
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->fullDistPrices:[[I

    aget-object v4, v4, v1

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    aget-object v5, v5, v1

    aget v5, v5, v3

    aput v5, v4, v3

    .line 452
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 439
    .end local v3    # "dist":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 457
    .end local v1    # "distState":I
    :cond_3
    const/4 v1, 0x4

    .line 458
    .local v1, "dist":I
    const/4 v3, 0x4

    .local v3, "distSlot":I
    :goto_4
    const/16 v4, 0xe

    if-ge v3, v4, :cond_6

    .line 460
    ushr-int/lit8 v4, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    .line 461
    .local v4, "footerBits":I
    and-int/lit8 v5, v3, 0x1

    or-int/lit8 v5, v5, 0x2

    shl-int/2addr v5, v4

    .line 463
    .local v5, "base":I
    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSpecial:[[S

    add-int/lit8 v7, v3, -0x4

    aget-object v6, v6, v7

    array-length v6, v6

    .line 464
    .local v6, "limit":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-ge v7, v6, :cond_5

    .line 465
    sub-int v8, v1, v5

    .line 466
    .local v8, "distReduced":I
    iget-object v9, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSpecial:[[S

    add-int/lit8 v10, v3, -0x4

    aget-object v9, v9, v10

    invoke-static {v9, v8}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getReverseBitTreePrice([SI)I

    move-result v9

    .line 470
    .local v9, "price":I
    const/4 v10, 0x0

    .local v10, "distState":I
    :goto_6
    if-ge v10, v2, :cond_4

    .line 471
    iget-object v11, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->fullDistPrices:[[I

    aget-object v11, v11, v10

    iget-object v12, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    aget-object v12, v12, v10

    aget v12, v12, v3

    add-int/2addr v12, v9

    aput v12, v11, v1

    .line 470
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 474
    .end local v10    # "distState":I
    :cond_4
    nop

    .end local v8    # "distReduced":I
    .end local v9    # "price":I
    add-int/lit8 v1, v1, 0x1

    .line 464
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 459
    .end local v4    # "footerBits":I
    .end local v5    # "base":I
    .end local v6    # "limit":I
    .end local v7    # "i":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 478
    .end local v3    # "distSlot":I
    :cond_6
    if-ne v1, v0, :cond_7

    .line 479
    return-void

    .line 478
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public encodeForLZMA1()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    return-void

    .line 194
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeSymbol()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    return-void
.end method

.method public encodeForLZMA2()Z
    .locals 3

    .line 218
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    return v1

    .line 221
    :cond_0
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    const v2, 0x1ffeef

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    .line 222
    invoke-virtual {v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getPendingSize()I

    move-result v0

    const v2, 0xffe6

    if-gt v0, v2, :cond_1

    .line 223
    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeSymbol()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 224
    return v1

    .line 227
    :cond_1
    nop

    .line 229
    const/4 v0, 0x1

    return v0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    throw v1
.end method

.method public encodeLZMA1EndMarker()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->getPos()I

    move-result v0

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->posMask:I

    and-int/2addr v0, v1

    .line 205
    .local v0, "posState":I
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isMatch:[[S

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 206
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->rc:Lorg/tukaani/xz/rangecoder/RangeEncoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep:[S

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 207
    const/4 v1, -0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->encodeMatch(III)V

    .line 208
    return-void
.end method

.method getAnyMatchPrice(Lorg/tukaani/xz/lzma/State;I)I
    .locals 2
    .param p1, "state"    # Lorg/tukaani/xz/lzma/State;
    .param p2, "posState"    # I

    .line 369
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isMatch:[[S

    invoke-virtual {p1}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v1

    aget-object v0, v0, v1

    aget-short v0, v0, p2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v0

    return v0
.end method

.method getAnyRepPrice(ILorg/tukaani/xz/lzma/State;)I
    .locals 2
    .param p1, "anyMatchPrice"    # I
    .param p2, "state"    # Lorg/tukaani/xz/lzma/State;

    .line 378
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep:[S

    .line 379
    invoke-virtual {p2}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v1

    aget-short v0, v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v0

    add-int/2addr v0, p1

    .line 378
    return v0
.end method

.method public getLZEncoder()Lorg/tukaani/xz/lz/LZEncoder;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    return-object v0
.end method

.method getLongRepAndLenPrice(IILorg/tukaani/xz/lzma/State;I)I
    .locals 4
    .param p1, "rep"    # I
    .param p2, "len"    # I
    .param p3, "state"    # Lorg/tukaani/xz/lzma/State;
    .param p4, "posState"    # I

    .line 411
    invoke-virtual {p0, p3, p4}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getAnyMatchPrice(Lorg/tukaani/xz/lzma/State;I)I

    move-result v0

    .line 412
    .local v0, "anyMatchPrice":I
    invoke-virtual {p0, v0, p3}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getAnyRepPrice(ILorg/tukaani/xz/lzma/State;)I

    move-result v1

    .line 413
    .local v1, "anyRepPrice":I
    invoke-virtual {p0, v1, p1, p3, p4}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getLongRepPrice(IILorg/tukaani/xz/lzma/State;I)I

    move-result v2

    .line 414
    .local v2, "longRepPrice":I
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v3, p2, p4}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->getPrice(II)I

    move-result v3

    add-int/2addr v3, v2

    return v3
.end method

.method getLongRepPrice(IILorg/tukaani/xz/lzma/State;I)I
    .locals 5
    .param p1, "anyRepPrice"    # I
    .param p2, "rep"    # I
    .param p3, "state"    # Lorg/tukaani/xz/lzma/State;
    .param p4, "posState"    # I

    .line 390
    move v0, p1

    .line 392
    .local v0, "price":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    .line 393
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep0:[S

    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v4

    aget-short v3, v3, v4

    invoke-static {v3, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v1

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep0Long:[[S

    .line 395
    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v4

    aget-object v3, v3, v4

    aget-short v3, v3, p4

    .line 394
    invoke-static {v3, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    .line 397
    :cond_0
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep0:[S

    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v4

    aget-short v3, v3, v4

    invoke-static {v3, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 399
    if-ne p2, v2, :cond_1

    .line 400
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep1:[S

    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    aget-short v2, v2, v3

    invoke-static {v2, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 402
    :cond_1
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep1:[S

    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    aget-short v1, v1, v3

    invoke-static {v1, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v1

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep2:[S

    .line 403
    invoke-virtual {p3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    aget-short v2, v2, v3

    add-int/lit8 v3, p2, -0x2

    invoke-static {v2, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 407
    :goto_0
    return v0
.end method

.method getMatchAndLenPrice(IIII)I
    .locals 6
    .param p1, "normalMatchPrice"    # I
    .param p2, "dist"    # I
    .param p3, "len"    # I
    .param p4, "posState"    # I

    .line 419
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    .line 420
    invoke-virtual {v0, p3, p4}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->getPrice(II)I

    move-result v0

    add-int/2addr v0, p1

    .line 421
    .local v0, "price":I
    invoke-static {p3}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getDistState(I)I

    move-result v1

    .line 423
    .local v1, "distState":I
    const/16 v2, 0x80

    if-ge p2, v2, :cond_0

    .line 424
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->fullDistPrices:[[I

    aget-object v2, v2, v1

    aget v2, v2, p2

    add-int/2addr v0, v2

    goto :goto_0

    .line 428
    :cond_0
    invoke-static {p2}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getDistSlot(I)I

    move-result v2

    .line 429
    .local v2, "distSlot":I
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distSlotPrices:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPrices:[I

    and-int/lit8 v5, p2, 0xf

    aget v4, v4, v5

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 433
    .end local v2    # "distSlot":I
    :goto_0
    return v0
.end method

.method getMatches()Lorg/tukaani/xz/lz/Matches;
    .locals 2

    .line 357
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    .line 358
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZEncoder;->getMatches()Lorg/tukaani/xz/lz/Matches;

    move-result-object v0

    .line 359
    .local v0, "matches":Lorg/tukaani/xz/lz/Matches;
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v1, v0}, Lorg/tukaani/xz/lz/LZEncoder;->verifyMatches(Lorg/tukaani/xz/lz/Matches;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    return-object v0

    .line 359
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method abstract getNextSymbol()I
.end method

.method getNormalMatchPrice(ILorg/tukaani/xz/lzma/State;)I
    .locals 2
    .param p1, "anyMatchPrice"    # I
    .param p2, "state"    # Lorg/tukaani/xz/lzma/State;

    .line 373
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep:[S

    .line 374
    invoke-virtual {p2}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v1

    aget-short v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v0

    add-int/2addr v0, p1

    .line 373
    return v0
.end method

.method getShortRepPrice(ILorg/tukaani/xz/lzma/State;I)I
    .locals 4
    .param p1, "anyRepPrice"    # I
    .param p2, "state"    # Lorg/tukaani/xz/lzma/State;
    .param p3, "posState"    # I

    .line 383
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep0:[S

    .line 384
    invoke-virtual {p2}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v1

    aget-short v0, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v0

    add-int/2addr v0, p1

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->isRep0Long:[[S

    .line 385
    invoke-virtual {p2}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    aget-object v2, v2, v3

    aget-short v2, v2, p3

    invoke-static {v2, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 383
    return v0
.end method

.method public getUncompressedSize()I
    .locals 1

    .line 180
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    return v0
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 110
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    .line 111
    return-void
.end method

.method public reset()V
    .locals 2

    .line 168
    invoke-super {p0}, Lorg/tukaani/xz/lzma/LZMACoder;->reset()V

    .line 169
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->literalEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->reset()V

    .line 170
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->reset()V

    .line 171
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->reset()V

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    .line 173
    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    .line 175
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    .line 176
    const/4 v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    .line 177
    return-void
.end method

.method public resetUncompressedSize()V
    .locals 1

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->uncompressedSize:I

    .line 185
    return-void
.end method

.method skip(I)V
    .locals 1
    .param p1, "len"    # I

    .line 364
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    .line 365
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/lz/LZEncoder;->skip(I)V

    .line 366
    return-void
.end method

.method updatePrices()V
    .locals 1

    .line 495
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->distPriceCount:I

    if-gtz v0, :cond_0

    .line 496
    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->updateDistPrices()V

    .line 498
    :cond_0
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->alignPriceCount:I

    if-gtz v0, :cond_1

    .line 499
    invoke-direct {p0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->updateAlignPrices()V

    .line 501
    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->matchLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->updatePrices()V

    .line 502
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder;->repLenEncoder:Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->updatePrices()V

    .line 503
    return-void
.end method
