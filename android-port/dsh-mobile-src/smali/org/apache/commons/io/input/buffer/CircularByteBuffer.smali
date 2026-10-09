.class public Lorg/apache/commons/io/input/buffer/CircularByteBuffer;
.super Ljava/lang/Object;
.source "CircularByteBuffer.java"


# instance fields
.field private final buffer:[B

.field private currentNumberOfBytes:I

.field private endOffset:I

.field private startOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;-><init>(I)V

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->byteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    .line 51
    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    .line 52
    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 53
    return-void
.end method


# virtual methods
.method public add(B)V
    .locals 2
    .param p1, "value"    # B

    .line 64
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    iget-object v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 67
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    iget v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    aput-byte p1, v0, v1

    .line 68
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 69
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    iget-object v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    .line 72
    :cond_0
    return-void

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No space available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add([BII)V
    .locals 4
    .param p1, "targetBuffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 88
    const-string v0, "Buffer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    if-ltz p2, :cond_4

    array-length v0, p1

    if-ge p2, v0, :cond_4

    .line 92
    if-ltz p3, :cond_3

    .line 95
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v1, v1

    if-gt v0, v1, :cond_2

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 99
    iget-object v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 100
    iget v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    iget-object v2, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 101
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    .line 98
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "i":I
    :cond_1
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 105
    return-void

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No space available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    .line 112
    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->endOffset:I

    .line 113
    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 114
    return-void
.end method

.method public getCurrentNumberOfBytes()I
    .locals 1

    .line 122
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    return v0
.end method

.method public getSpace()I
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hasBytes()Z
    .locals 1

    .line 140
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

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

    .line 152
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    iget-object v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSpace(I)Z
    .locals 2
    .param p1, "count"    # I

    .line 164
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peek([BII)Z
    .locals 5
    .param p1, "sourceBuffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 183
    const-string v0, "Buffer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    if-ltz p2, :cond_5

    array-length v0, p1

    if-ge p2, v0, :cond_5

    .line 187
    if-ltz p3, :cond_4

    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v0, v0

    if-gt p3, v0, :cond_4

    .line 190
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    const/4 v1, 0x0

    if-ge p3, v0, :cond_0

    .line 191
    return v1

    .line 193
    :cond_0
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    .line 194
    .local v0, "localOffset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_3

    .line 195
    iget-object v3, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    aget-byte v3, v3, v0

    add-int v4, v2, p2

    aget-byte v4, p1, v4

    if-eq v3, v4, :cond_1

    .line 196
    return v1

    .line 198
    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v3, v3

    if-ne v0, v3, :cond_2

    .line 199
    const/4 v0, 0x0

    .line 194
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .end local v2    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 188
    .end local v0    # "localOffset":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()B
    .locals 3

    .line 214
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    if-lez v0, :cond_1

    .line 217
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    iget v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    aget-byte v0, v0, v1

    .line 218
    .local v0, "b":B
    iget v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 219
    iget v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    iget-object v2, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 220
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    .line 222
    :cond_0
    return v0

    .line 215
    .end local v0    # "b":B
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No bytes available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)V
    .locals 5
    .param p1, "targetBuffer"    # [B
    .param p2, "targetOffset"    # I
    .param p3, "length"    # I

    .line 240
    const-string v0, "targetBuffer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 241
    if-ltz p2, :cond_5

    array-length v0, p1

    if-ge p2, v0, :cond_5

    .line 244
    if-ltz p3, :cond_4

    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v0, v0

    if-gt p3, v0, :cond_4

    .line 247
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 252
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    if-lt v0, p3, :cond_2

    .line 256
    move v0, p2

    .line 257
    .local v0, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 258
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "offset":I
    .local v2, "offset":I
    iget-object v3, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    iget v4, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    aget-byte v3, v3, v4

    aput-byte v3, p1, v0

    .line 259
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    .line 260
    iget v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    iget-object v3, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->buffer:[B

    array-length v3, v3

    if-ne v0, v3, :cond_0

    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->startOffset:I

    .line 257
    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_0

    .line 264
    .end local v1    # "i":I
    .end local v2    # "offset":I
    .restart local v0    # "offset":I
    :cond_1
    return-void

    .line 253
    .end local v0    # "offset":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Currently, there are only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->currentNumberOfBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "in the buffer, not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The supplied byte array contains only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, but offset, and length would require "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
