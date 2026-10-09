.class public Lorg/apache/commons/codec/digest/XXHash32;
.super Ljava/lang/Object;
.source "XXHash32.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# static fields
.field private static final BUF_SIZE:I = 0x10

.field private static final PRIME1:I = -0x61c8864f

.field private static final PRIME2:I = -0x7a143589

.field private static final PRIME3:I = -0x3d4d51c3

.field private static final PRIME4:I = 0x27d4eb2f

.field private static final PRIME5:I = 0x165667b1

.field private static final ROTATE_BITS:I = 0xd


# instance fields
.field private final buffer:[B

.field private final oneByte:[B

.field private pos:I

.field private final seed:I

.field private final state:[I

.field private stateUpdated:Z

.field private totalLen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/digest/XXHash32;-><init>(I)V

    .line 81
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "seed"    # I

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->oneByte:[B

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    .line 66
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->buffer:[B

    .line 88
    iput p1, p0, Lorg/apache/commons/codec/digest/XXHash32;->seed:I

    .line 89
    invoke-direct {p0}, Lorg/apache/commons/codec/digest/XXHash32;->initializeState()V

    .line 90
    return-void
.end method

.method private static getInt([BI)I
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "idx"    # I

    .line 57
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private initializeState()V
    .locals 5

    .line 126
    iget-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    iget v1, p0, Lorg/apache/commons/codec/digest/XXHash32;->seed:I

    const v2, -0x61c8864f

    add-int/2addr v1, v2

    const v3, -0x7a143589

    add-int/2addr v1, v3

    const/4 v4, 0x0

    aput v1, v0, v4

    .line 127
    iget-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    iget v1, p0, Lorg/apache/commons/codec/digest/XXHash32;->seed:I

    add-int/2addr v1, v3

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 128
    iget-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    const/4 v1, 0x2

    iget v3, p0, Lorg/apache/commons/codec/digest/XXHash32;->seed:I

    aput v3, v0, v1

    .line 129
    iget-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    iget v1, p0, Lorg/apache/commons/codec/digest/XXHash32;->seed:I

    sub-int/2addr v1, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 130
    return-void
.end method

.method private process([BI)V
    .locals 12
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .line 134
    iget-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 135
    .local v0, "s0":I
    iget-object v2, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 136
    .local v2, "s1":I
    iget-object v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    .line 137
    .local v4, "s2":I
    iget-object v6, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    .line 139
    .local v6, "s3":I
    invoke-static {p1, p2}, Lorg/apache/commons/codec/digest/XXHash32;->getInt([BI)I

    move-result v8

    const v9, -0x7a143589

    mul-int/2addr v8, v9

    add-int/2addr v8, v0

    const/16 v10, 0xd

    invoke-static {v8, v10}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v8

    const v11, -0x61c8864f

    mul-int/2addr v8, v11

    .line 140
    .end local v0    # "s0":I
    .local v8, "s0":I
    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lorg/apache/commons/codec/digest/XXHash32;->getInt([BI)I

    move-result v0

    mul-int/2addr v0, v9

    add-int/2addr v0, v2

    invoke-static {v0, v10}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    mul-int/2addr v0, v11

    .line 141
    .end local v2    # "s1":I
    .local v0, "s1":I
    add-int/lit8 v2, p2, 0x8

    invoke-static {p1, v2}, Lorg/apache/commons/codec/digest/XXHash32;->getInt([BI)I

    move-result v2

    mul-int/2addr v2, v9

    add-int/2addr v2, v4

    invoke-static {v2, v10}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    mul-int/2addr v2, v11

    .line 142
    .end local v4    # "s2":I
    .local v2, "s2":I
    add-int/lit8 v4, p2, 0xc

    invoke-static {p1, v4}, Lorg/apache/commons/codec/digest/XXHash32;->getInt([BI)I

    move-result v4

    mul-int/2addr v4, v9

    add-int/2addr v4, v6

    invoke-static {v4, v10}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v4

    mul-int/2addr v4, v11

    .line 144
    .end local v6    # "s3":I
    .local v4, "s3":I
    iget-object v6, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    aput v8, v6, v1

    .line 145
    iget-object v1, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    aput v0, v1, v3

    .line 146
    iget-object v1, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    aput v2, v1, v5

    .line 147
    iget-object v1, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    aput v4, v1, v7

    .line 149
    iput-boolean v3, p0, Lorg/apache/commons/codec/digest/XXHash32;->stateUpdated:Z

    .line 150
    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 8

    .line 95
    iget-boolean v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->stateUpdated:Z

    const v1, 0x165667b1

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    .line 98
    const/4 v3, 0x1

    invoke-static {v0, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    iget-object v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    aget v3, v4, v3

    .line 99
    const/4 v4, 0x7

    invoke-static {v3, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    aget v2, v3, v2

    .line 100
    const/16 v3, 0xc

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    .line 101
    const/16 v3, 0x12

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int/2addr v0, v2

    .local v0, "hash":I
    goto :goto_0

    .line 104
    .end local v0    # "hash":I
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->state:[I

    aget v0, v0, v2

    add-int/2addr v0, v1

    .line 106
    .restart local v0    # "hash":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/codec/digest/XXHash32;->totalLen:I

    add-int/2addr v0, v2

    .line 108
    const/4 v2, 0x0

    .line 109
    .local v2, "idx":I
    iget v3, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    add-int/lit8 v3, v3, -0x4

    .line 110
    .local v3, "limit":I
    :goto_1
    const v4, -0x3d4d51c3

    if-gt v2, v3, :cond_1

    .line 111
    iget-object v5, p0, Lorg/apache/commons/codec/digest/XXHash32;->buffer:[B

    invoke-static {v5, v2}, Lorg/apache/commons/codec/digest/XXHash32;->getInt([BI)I

    move-result v5

    mul-int/2addr v5, v4

    add-int/2addr v5, v0

    const/16 v4, 0x11

    invoke-static {v5, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v4

    const v5, 0x27d4eb2f

    mul-int v0, v4, v5

    .line 110
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 113
    :cond_1
    :goto_2
    iget v5, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    if-ge v2, v5, :cond_2

    .line 114
    iget-object v5, p0, Lorg/apache/commons/codec/digest/XXHash32;->buffer:[B

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "idx":I
    .local v6, "idx":I
    aget-byte v2, v5, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    const/16 v5, 0xb

    invoke-static {v2, v5}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    const v5, -0x61c8864f

    mul-int v0, v2, v5

    move v2, v6

    goto :goto_2

    .line 117
    .end local v6    # "idx":I
    .restart local v2    # "idx":I
    :cond_2
    ushr-int/lit8 v1, v0, 0xf

    xor-int/2addr v0, v1

    .line 118
    const v1, -0x7a143589

    mul-int/2addr v0, v1

    .line 119
    ushr-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    .line 120
    mul-int/2addr v0, v4

    .line 121
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 122
    int-to-long v4, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    return-wide v4
.end method

.method public reset()V
    .locals 1

    .line 154
    invoke-direct {p0}, Lorg/apache/commons/codec/digest/XXHash32;->initializeState()V

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->totalLen:I

    .line 156
    iput v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    .line 157
    iput-boolean v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->stateUpdated:Z

    .line 158
    return-void
.end method

.method public update(I)V
    .locals 3
    .param p1, "b"    # I

    .line 203
    iget-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->oneByte:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 204
    iget-object v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->oneByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/codec/digest/XXHash32;->update([BII)V

    .line 205
    return-void
.end method

.method public update([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 162
    if-gtz p3, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    iget v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->totalLen:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/codec/digest/XXHash32;->totalLen:I

    .line 167
    add-int v0, p2, p3

    .line 172
    .local v0, "end":I
    iget v1, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x10

    if-gez v1, :cond_1

    .line 173
    iget-object v1, p0, Lorg/apache/commons/codec/digest/XXHash32;->buffer:[B

    iget v2, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget v1, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    .line 175
    return-void

    .line 179
    :cond_1
    iget v1, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 180
    iget v1, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    rsub-int/lit8 v1, v1, 0x10

    .line 181
    .local v1, "size":I
    iget-object v3, p0, Lorg/apache/commons/codec/digest/XXHash32;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget-object v3, p0, Lorg/apache/commons/codec/digest/XXHash32;->buffer:[B

    invoke-direct {p0, v3, v2}, Lorg/apache/commons/codec/digest/XXHash32;->process([BI)V

    .line 183
    add-int/2addr p2, v1

    .line 186
    .end local v1    # "size":I
    :cond_2
    add-int/lit8 v1, v0, -0x10

    .line 187
    .local v1, "limit":I
    :goto_0
    if-gt p2, v1, :cond_3

    .line 188
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/codec/digest/XXHash32;->process([BI)V

    .line 189
    add-int/lit8 p2, p2, 0x10

    goto :goto_0

    .line 193
    :cond_3
    if-ge p2, v0, :cond_4

    .line 194
    sub-int v3, v0, p2

    iput v3, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    .line 195
    iget-object v3, p0, Lorg/apache/commons/codec/digest/XXHash32;->buffer:[B

    iget v4, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    invoke-static {p1, p2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 197
    :cond_4
    iput v2, p0, Lorg/apache/commons/codec/digest/XXHash32;->pos:I

    .line 199
    :goto_1
    return-void
.end method
