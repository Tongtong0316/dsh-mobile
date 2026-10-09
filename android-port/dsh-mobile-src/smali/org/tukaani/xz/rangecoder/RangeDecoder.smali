.class public abstract Lorg/tukaani/xz/rangecoder/RangeDecoder;
.super Lorg/tukaani/xz/rangecoder/RangeCoder;
.source "RangeDecoder.java"


# instance fields
.field code:I

.field range:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeCoder;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    .line 12
    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    return-void
.end method


# virtual methods
.method public decodeBit([SI)I
    .locals 3
    .param p1, "probs"    # [S
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->normalize()V

    .line 19
    aget-short v0, p1, p2

    .line 20
    .local v0, "prob":I
    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    ushr-int/lit8 v1, v1, 0xb

    mul-int/2addr v1, v0

    .line 23
    .local v1, "bound":I
    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    invoke-static {v2, v1}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v2

    if-gez v2, :cond_0

    .line 24
    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    .line 25
    rsub-int v2, v0, 0x800

    ushr-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v0

    int-to-short v2, v2

    aput-short v2, p1, p2

    .line 27
    const/4 v2, 0x0

    .local v2, "bit":I
    goto :goto_0

    .line 29
    .end local v2    # "bit":I
    :cond_0
    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    .line 30
    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    .line 31
    ushr-int/lit8 v2, v0, 0x5

    sub-int v2, v0, v2

    int-to-short v2, v2

    aput-short v2, p1, p2

    .line 32
    const/4 v2, 0x1

    .line 35
    .restart local v2    # "bit":I
    :goto_0
    return v2
.end method

.method public decodeBitTree([S)I
    .locals 3
    .param p1, "probs"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x1

    .line 42
    .local v0, "symbol":I
    :cond_0
    shl-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v2

    or-int v0, v1, v2

    .line 43
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 45
    array-length v1, p1

    sub-int v1, v0, v1

    return v1
.end method

.method public decodeDirectBits(I)I
    .locals 5
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    .line 66
    .local v0, "result":I
    :cond_0
    invoke-virtual {p0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->normalize()V

    .line 68
    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    ushr-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    .line 69
    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    sub-int/2addr v1, v2

    ushr-int/lit8 v1, v1, 0x1f

    .line 70
    .local v1, "t":I
    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    iget v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    add-int/lit8 v4, v1, -0x1

    and-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    .line 71
    shl-int/lit8 v2, v0, 0x1

    rsub-int/lit8 v3, v1, 0x1

    or-int v0, v2, v3

    .line 72
    .end local v1    # "t":I
    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_0

    .line 74
    return v0
.end method

.method public decodeReverseBitTree([S)I
    .locals 5
    .param p1, "probs"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x1

    .line 50
    .local v0, "symbol":I
    const/4 v1, 0x0

    .line 51
    .local v1, "i":I
    const/4 v2, 0x0

    .line 54
    .local v2, "result":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v3

    .line 55
    .local v3, "bit":I
    shl-int/lit8 v4, v0, 0x1

    or-int v0, v4, v3

    .line 56
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    shl-int v1, v3, v1

    or-int/2addr v2, v1

    .line 57
    .end local v3    # "bit":I
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 59
    return v2

    .line 57
    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method public abstract normalize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
