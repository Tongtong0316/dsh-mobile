.class public final Lorg/tukaani/xz/lzma/LZMADecoder;
.super Lorg/tukaani/xz/lzma/LZMACoder;
.source "LZMADecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;,
        Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;
    }
.end annotation


# instance fields
.field private final literalDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

.field private final lz:Lorg/tukaani/xz/lz/LZDecoder;

.field private final matchLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

.field private final rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

.field private final repLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;


# direct methods
.method public constructor <init>(Lorg/tukaani/xz/lz/LZDecoder;Lorg/tukaani/xz/rangecoder/RangeDecoder;III)V
    .locals 2
    .param p1, "lz"    # Lorg/tukaani/xz/lz/LZDecoder;
    .param p2, "rc"    # Lorg/tukaani/xz/rangecoder/RangeDecoder;
    .param p3, "lc"    # I
    .param p4, "lp"    # I
    .param p5, "pb"    # I

    .line 20
    invoke-direct {p0, p5}, Lorg/tukaani/xz/lzma/LZMACoder;-><init>(I)V

    .line 16
    new-instance v0, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;-><init>(Lorg/tukaani/xz/lzma/LZMADecoder;Lorg/tukaani/xz/lzma/LZMADecoder$1;)V

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->matchLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    .line 17
    new-instance v0, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    invoke-direct {v0, p0, v1}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;-><init>(Lorg/tukaani/xz/lzma/LZMADecoder;Lorg/tukaani/xz/lzma/LZMADecoder$1;)V

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->repLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    .line 21
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 22
    iput-object p2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    .line 23
    new-instance v0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    invoke-direct {v0, p0, p3, p4}, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;-><init>(Lorg/tukaani/xz/lzma/LZMADecoder;II)V

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->literalDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    .line 24
    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMADecoder;->reset()V

    .line 25
    return-void
.end method

.method static synthetic access$200(Lorg/tukaani/xz/lzma/LZMADecoder;)Lorg/tukaani/xz/lz/LZDecoder;
    .locals 1
    .param p0, "x0"    # Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 12
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    return-object v0
.end method

.method static synthetic access$300(Lorg/tukaani/xz/lzma/LZMADecoder;)Lorg/tukaani/xz/rangecoder/RangeDecoder;
    .locals 1
    .param p0, "x0"    # Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 12
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    return-object v0
.end method

.method private decodeMatch(I)I
    .locals 9
    .param p1, "posState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/State;->updateMatch()V

    .line 71
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    const/4 v3, 0x3

    aput v1, v0, v3

    .line 72
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v2

    .line 73
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    const/4 v4, 0x0

    aget v1, v1, v4

    aput v1, v0, v3

    .line 75
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->matchLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->decode(I)I

    move-result v0

    .line 76
    .local v0, "len":I
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->distSlots:[[S

    invoke-static {v0}, Lorg/tukaani/xz/lzma/LZMADecoder;->getDistState(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v1, v5}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBitTree([S)I

    move-result v1

    .line 78
    .local v1, "distSlot":I
    const/4 v5, 0x4

    if-ge v1, v5, :cond_0

    .line 79
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aput v1, v2, v4

    goto :goto_0

    .line 81
    :cond_0
    shr-int/lit8 v6, v1, 0x1

    sub-int/2addr v6, v3

    .line 82
    .local v6, "limit":I
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    and-int/lit8 v7, v1, 0x1

    or-int/2addr v2, v7

    shl-int/2addr v2, v6

    aput v2, v3, v4

    .line 84
    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 85
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v3, v2, v4

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->distSpecial:[[S

    add-int/lit8 v8, v1, -0x4

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeReverseBitTree([S)I

    move-result v5

    or-int/2addr v3, v5

    aput v3, v2, v4

    goto :goto_0

    .line 88
    :cond_1
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v3, v2, v4

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    add-int/lit8 v8, v6, -0x4

    invoke-virtual {v7, v8}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeDirectBits(I)I

    move-result v7

    shl-int/lit8 v5, v7, 0x4

    or-int/2addr v3, v5

    aput v3, v2, v4

    .line 90
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v3, v2, v4

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->distAlign:[S

    invoke-virtual {v5, v7}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeReverseBitTree([S)I

    move-result v5

    or-int/2addr v3, v5

    aput v3, v2, v4

    .line 94
    .end local v6    # "limit":I
    :goto_0
    return v0
.end method

.method private decodeRepMatch(I)I
    .locals 6
    .param p1, "posState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep0:[S

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v2}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep0Long:[[S

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, p1}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v0

    if-nez v0, :cond_3

    .line 100
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/State;->updateShortRep()V

    .line 101
    return v1

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep1:[S

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v0, v0, v1

    .local v0, "tmp":I
    goto :goto_1

    .line 109
    .end local v0    # "tmp":I
    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep2:[S

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v0, v0, v2

    .restart local v0    # "tmp":I
    goto :goto_0

    .line 112
    .end local v0    # "tmp":I
    :cond_2
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    const/4 v3, 0x3

    aget v0, v0, v3

    .line 113
    .restart local v0    # "tmp":I
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v5, v5, v2

    aput v5, v4, v3

    .line 116
    :goto_0
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v4, v4, v1

    aput v4, v3, v2

    .line 119
    :goto_1
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v2, v1

    .line 120
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aput v0, v1, v4

    .line 123
    .end local v0    # "tmp":I
    :cond_3
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    .line 125
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->repLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->decode(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public decode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZDecoder;->repeatPending()V

    .line 48
    :goto_0
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZDecoder;->hasSpace()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lz/LZDecoder;->getPos()I

    move-result v0

    iget v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->posMask:I

    and-int/2addr v0, v1

    .line 51
    .local v0, "posState":I
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isMatch:[[S

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v1

    if-nez v1, :cond_0

    .line 52
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->literalDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->decode()V

    goto :goto_2

    .line 54
    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep:[S

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v1

    if-nez v1, :cond_1

    .line 55
    invoke-direct {p0, v0}, Lorg/tukaani/xz/lzma/LZMADecoder;->decodeMatch(I)I

    move-result v1

    goto :goto_1

    .line 56
    :cond_1
    invoke-direct {p0, v0}, Lorg/tukaani/xz/lzma/LZMADecoder;->decodeRepMatch(I)I

    move-result v1

    :goto_1
    nop

    .line 61
    .local v1, "len":I
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3, v1}, Lorg/tukaani/xz/lz/LZDecoder;->repeat(II)V

    .line 63
    .end local v0    # "posState":I
    .end local v1    # "len":I
    :goto_2
    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->normalize()V

    .line 66
    return-void
.end method

.method public endMarkerDetected()Z
    .locals 3

    .line 42
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public reset()V
    .locals 1

    .line 29
    invoke-super {p0}, Lorg/tukaani/xz/lzma/LZMACoder;->reset()V

    .line 30
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->literalDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->reset()V

    .line 31
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->matchLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->reset()V

    .line 32
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->repLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->reset()V

    .line 33
    return-void
.end method
