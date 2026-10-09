.class public final Lorg/tukaani/xz/lz/LZDecoder;
.super Ljava/lang/Object;
.source "LZDecoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final buf:[B

.field private final bufSize:I

.field private full:I

.field private limit:I

.field private pendingDist:I

.field private pendingLen:I

.field private pos:I

.field private start:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 13
    return-void
.end method

.method public constructor <init>(I[BLorg/tukaani/xz/ArrayCache;)V
    .locals 4
    .param p1, "dictSize"    # I
    .param p2, "presetDict"    # [B
    .param p3, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    .line 17
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 18
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 19
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    .line 20
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    .line 21
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    .line 24
    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    .line 25
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    invoke-virtual {p3, v1, v0}, Lorg/tukaani/xz/ArrayCache;->getByteArray(IZ)[B

    move-result-object v1

    iput-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    .line 27
    if-eqz p2, :cond_0

    .line 28
    array-length v1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 29
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 30
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    .line 31
    array-length v1, p2

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    invoke-static {p2, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public copyUncompressed(Ljava/io/DataInputStream;I)V
    .locals 3
    .param p1, "inData"    # Ljava/io/DataInputStream;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 140
    .local v0, "copySize":I
    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 141
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 143
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    if-ge v1, v2, :cond_0

    .line 144
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 145
    :cond_0
    return-void
.end method

.method public flush([BI)I
    .locals 3
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .line 148
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    sub-int/2addr v0, v1

    .line 149
    .local v0, "copySize":I
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    if-ne v1, v2, :cond_0

    .line 150
    const/4 v1, 0x0

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 152
    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    .line 155
    return v0
.end method

.method public getByte(I)I
    .locals 2
    .param p1, "dist"    # I

    .line 67
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 68
    .local v0, "offset":I
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    if-lt p1, v1, :cond_0

    .line 69
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    add-int/2addr v0, v1

    .line 71
    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public getPos()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    return v0
.end method

.method public hasPending()Z
    .locals 1

    .line 59
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSpace()Z
    .locals 2

    .line 55
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 36
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    invoke-virtual {p1, v0}, Lorg/tukaani/xz/ArrayCache;->putArray([B)V

    .line 37
    return-void
.end method

.method public putByte(B)V
    .locals 3
    .param p1, "b"    # B

    .line 75
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    aput-byte p1, v0, v1

    .line 77
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    if-ge v0, v1, :cond_0

    .line 78
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 79
    :cond_0
    return-void
.end method

.method public repeat(II)V
    .locals 6
    .param p1, "dist"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    if-ltz p1, :cond_7

    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    if-ge p1, v0, :cond_7

    .line 85
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 86
    .local v0, "left":I
    sub-int v1, p2, v0

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    .line 87
    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    .line 89
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 90
    .local v1, "back":I
    if-gez v1, :cond_2

    .line 93
    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    if-ne v2, v3, :cond_1

    .line 94
    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    add-int/2addr v1, v2

    .line 99
    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    sub-int/2addr v2, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 100
    .local v2, "copySize":I
    add-int/lit8 v3, p1, 0x1

    if-gt v2, v3, :cond_0

    .line 102
    iget-object v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget-object v4, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v5, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    invoke-static {v3, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 104
    const/4 v1, 0x0

    .line 105
    sub-int/2addr v0, v2

    .line 107
    if-nez v0, :cond_2

    .line 108
    return-void

    .line 100
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 93
    .end local v2    # "copySize":I
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 111
    :cond_2
    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    if-ge v1, v2, :cond_6

    .line 112
    if-lez v0, :cond_5

    .line 122
    :cond_3
    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 123
    .restart local v2    # "copySize":I
    iget-object v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget-object v4, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v5, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    invoke-static {v3, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 125
    sub-int/2addr v0, v2

    .line 126
    .end local v2    # "copySize":I
    if-gtz v0, :cond_3

    .line 128
    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    if-ge v2, v3, :cond_4

    .line 129
    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 130
    :cond_4
    return-void

    .line 112
    :cond_5
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 111
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 83
    .end local v0    # "left":I
    .end local v1    # "back":I
    :cond_7
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0
.end method

.method public repeatPending()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    if-lez v0, :cond_0

    .line 134
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    invoke-virtual {p0, v0, v1}, Lorg/tukaani/xz/lz/LZDecoder;->repeat(II)V

    .line 135
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    .line 41
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 42
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 43
    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    .line 44
    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    add-int/lit8 v2, v2, -0x1

    aput-byte v0, v1, v2

    .line 45
    return-void
.end method

.method public setLimit(I)V
    .locals 2
    .param p1, "outMax"    # I

    .line 48
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt v0, p1, :cond_0

    .line 49
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->bufSize:I

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    goto :goto_0

    .line 51
    :cond_0
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    .line 52
    :goto_0
    return-void
.end method
