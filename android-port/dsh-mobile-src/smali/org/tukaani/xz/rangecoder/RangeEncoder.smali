.class public abstract Lorg/tukaani/xz/rangecoder/RangeEncoder;
.super Lorg/tukaani/xz/rangecoder/RangeCoder;
.source "RangeEncoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BIT_PRICE_SHIFT_BITS:I = 0x4

.field private static final MOVE_REDUCING_BITS:I = 0x4

.field private static final prices:[I


# instance fields
.field private cache:B

.field cacheSize:J

.field private low:J

.field private range:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    nop

    .line 14
    const/16 v0, 0x80

    new-array v0, v0, [I

    sput-object v0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->prices:[I

    .line 28
    const/16 v0, 0x8

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x800

    if-ge v0, v1, :cond_2

    .line 30
    move v1, v0

    .line 31
    .local v1, "w":I
    const/4 v2, 0x0

    .line 33
    .local v2, "bitCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 34
    mul-int/2addr v1, v1

    .line 35
    shl-int/lit8 v2, v2, 0x1

    .line 37
    :goto_2
    const/high16 v4, -0x10000

    and-int/2addr v4, v1

    if-eqz v4, :cond_0

    .line 38
    ushr-int/lit8 v1, v1, 0x1

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 33
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 43
    .end local v3    # "j":I
    :cond_1
    sget-object v3, Lorg/tukaani/xz/rangecoder/RangeEncoder;->prices:[I

    shr-int/lit8 v4, v0, 0x4

    rsub-int v5, v2, 0xa1

    aput v5, v3, v4

    .line 29
    .end local v1    # "w":I
    .end local v2    # "bitCount":I
    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 47
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeCoder;-><init>()V

    return-void
.end method

.method public static getBitPrice(II)I
    .locals 2
    .param p0, "prob"    # I
    .param p1, "bit"    # I

    .line 118
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_1
    :goto_0
    sget-object v0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->prices:[I

    neg-int v1, p1

    and-int/lit16 v1, v1, 0x7ff

    xor-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public static getBitTreePrice([SI)I
    .locals 4
    .param p0, "probs"    # [S
    .param p1, "symbol"    # I

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "price":I
    array-length v1, p0

    or-int/2addr p1, v1

    .line 144
    :cond_0
    and-int/lit8 v1, p1, 0x1

    .line 145
    .local v1, "bit":I
    const/4 v2, 0x1

    ushr-int/2addr p1, v2

    .line 146
    aget-short v3, p0, p1

    invoke-static {v3, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 147
    .end local v1    # "bit":I
    if-ne p1, v2, :cond_0

    .line 149
    return v0
.end method

.method public static getDirectBitsPrice(I)I
    .locals 1
    .param p0, "count"    # I

    .line 193
    shl-int/lit8 v0, p0, 0x4

    return v0
.end method

.method public static getReverseBitTreePrice([SI)I
    .locals 5
    .param p0, "probs"    # [S
    .param p1, "symbol"    # I

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "price":I
    const/4 v1, 0x1

    .line 168
    .local v1, "index":I
    array-length v2, p0

    or-int/2addr p1, v2

    .line 171
    :cond_0
    and-int/lit8 v2, p1, 0x1

    .line 172
    .local v2, "bit":I
    const/4 v3, 0x1

    ushr-int/2addr p1, v3

    .line 173
    aget-short v4, p0, v1

    invoke-static {v4, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v4

    add-int/2addr v0, v4

    .line 174
    shl-int/lit8 v4, v1, 0x1

    or-int v1, v4, v2

    .line 175
    .end local v2    # "bit":I
    if-ne p1, v3, :cond_0

    .line 177
    return v0
.end method

.method private shiftLow()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    .line 79
    .local v0, "lowHi":I
    const-wide/16 v1, 0x1

    if-nez v0, :cond_0

    iget-wide v3, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    const-wide v5, 0xff000000L

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 80
    :cond_0
    iget-byte v3, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cache:B

    .line 83
    .local v3, "temp":I
    :cond_1
    add-int v4, v3, v0

    invoke-virtual {p0, v4}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->writeByte(I)V

    .line 84
    const/16 v3, 0xff

    .line 85
    iget-wide v4, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:J

    sub-long/2addr v4, v1

    iput-wide v4, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 87
    iget-wide v4, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    const/16 v6, 0x18

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    iput-byte v4, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cache:B

    .line 90
    .end local v3    # "temp":I
    :cond_2
    iget-wide v3, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:J

    .line 91
    iget-wide v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    const-wide/32 v3, 0xffffff

    and-long/2addr v1, v3

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    iput-wide v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    .line 92
    return-void
.end method


# virtual methods
.method public encodeBit([SII)V
    .locals 8
    .param p1, "probs"    # [S
    .param p2, "index"    # I
    .param p3, "bit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    aget-short v0, p1, p2

    .line 97
    .local v0, "prob":I
    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    ushr-int/lit8 v1, v1, 0xb

    mul-int/2addr v1, v0

    .line 100
    .local v1, "bound":I
    if-nez p3, :cond_0

    .line 101
    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    .line 102
    rsub-int v2, v0, 0x800

    ushr-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v0

    int-to-short v2, v2

    aput-short v2, p1, p2

    goto :goto_0

    .line 105
    :cond_0
    iget-wide v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    int-to-long v4, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    .line 106
    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    .line 107
    ushr-int/lit8 v2, v0, 0x5

    sub-int v2, v0, v2

    int-to-short v2, v2

    aput-short v2, p1, p2

    .line 110
    :goto_0
    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 111
    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    shl-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    .line 112
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->shiftLow()V

    .line 114
    :cond_1
    return-void
.end method

.method public encodeBitTree([SI)V
    .locals 4
    .param p1, "probs"    # [S
    .param p2, "symbol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x1

    .line 125
    .local v0, "index":I
    array-length v1, p1

    .line 128
    .local v1, "mask":I
    :cond_0
    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    .line 129
    and-int v3, p2, v1

    .line 130
    .local v3, "bit":I
    invoke-virtual {p0, p1, v0, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 132
    shl-int/2addr v0, v2

    .line 133
    if-eqz v3, :cond_1

    .line 134
    or-int/lit8 v0, v0, 0x1

    .line 136
    .end local v3    # "bit":I
    :cond_1
    if-ne v1, v2, :cond_0

    .line 137
    return-void
.end method

.method public encodeDirectBits(II)V
    .locals 4
    .param p1, "value"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    nop

    :cond_0
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    ushr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    .line 183
    iget-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    add-int/lit8 p2, p2, -0x1

    ushr-int v3, p1, p2

    and-int/lit8 v3, v3, 0x1

    rsub-int/lit8 v3, v3, 0x0

    and-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    .line 185
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 186
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    .line 187
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->shiftLow()V

    .line 189
    :cond_1
    if-nez p2, :cond_0

    .line 190
    return-void
.end method

.method public encodeReverseBitTree([SI)V
    .locals 4
    .param p1, "probs"    # [S
    .param p2, "symbol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x1

    .line 155
    .local v0, "index":I
    array-length v1, p1

    or-int/2addr p2, v1

    .line 158
    :cond_0
    and-int/lit8 v1, p2, 0x1

    .line 159
    .local v1, "bit":I
    const/4 v2, 0x1

    ushr-int/2addr p2, v2

    .line 160
    invoke-virtual {p0, p1, v0, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 161
    shl-int/lit8 v3, v0, 0x1

    or-int v0, v3, v1

    .line 162
    .end local v1    # "bit":I
    if-ne p2, v2, :cond_0

    .line 163
    return-void
.end method

.method public finish()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 65
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->shiftLow()V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "i":I
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getPendingSize()I
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 2

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->low:J

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->range:I

    .line 52
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cache:B

    .line 53
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoder;->cacheSize:J

    .line 54
    return-void
.end method

.method abstract writeByte(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
