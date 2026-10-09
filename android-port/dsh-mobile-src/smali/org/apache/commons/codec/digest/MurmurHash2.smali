.class public final Lorg/apache/commons/codec/digest/MurmurHash2;
.super Ljava/lang/Object;
.source "MurmurHash2.java"


# static fields
.field private static final M32:I = 0x5bd1e995

.field private static final M64:J = -0x395b586ca42e166bL

.field private static final R32:I = 0x18

.field private static final R64:I = 0x2f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    return-void
.end method

.method private static getLittleEndianInt([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 69
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

.method private static getLittleEndianLong([BI)J
    .locals 7
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 83
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x7

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static hash32(Ljava/lang/String;)I
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .line 177
    invoke-static {p0}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 178
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-static {v0, v1}, Lorg/apache/commons/codec/digest/MurmurHash2;->hash32([BI)I

    move-result v1

    return v1
.end method

.method public static hash32(Ljava/lang/String;II)I
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "length"    # I

    .line 199
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/digest/MurmurHash2;->hash32(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static hash32([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .line 108
    const v0, -0x68b84d74

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/digest/MurmurHash2;->hash32([BII)I

    move-result v0

    return v0
.end method

.method public static hash32([BII)I
    .locals 7
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "seed"    # I

    .line 121
    xor-int v0, p2, p1

    .line 124
    .local v0, "h":I
    shr-int/lit8 v1, p1, 0x2

    .line 127
    .local v1, "nblocks":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const v3, 0x5bd1e995

    if-ge v2, v1, :cond_0

    .line 128
    shl-int/lit8 v4, v2, 0x2

    .line 129
    .local v4, "index":I
    invoke-static {p0, v4}, Lorg/apache/commons/codec/digest/MurmurHash2;->getLittleEndianInt([BI)I

    move-result v5

    .line 130
    .local v5, "k":I
    mul-int/2addr v5, v3

    .line 131
    ushr-int/lit8 v6, v5, 0x18

    xor-int/2addr v5, v6

    .line 132
    mul-int/2addr v5, v3

    .line 133
    mul-int/2addr v0, v3

    .line 134
    xor-int/2addr v0, v5

    .line 127
    .end local v4    # "index":I
    .end local v5    # "k":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v2    # "i":I
    :cond_0
    shl-int/lit8 v2, v1, 0x2

    .line 139
    .local v2, "index":I
    sub-int v4, p1, v2

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 141
    :pswitch_0
    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr v0, v4

    .line 143
    :pswitch_1
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    xor-int/2addr v0, v4

    .line 145
    :pswitch_2
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v0, v4

    .line 146
    mul-int/2addr v0, v3

    .line 151
    :goto_1
    ushr-int/lit8 v4, v0, 0xd

    xor-int/2addr v0, v4

    .line 152
    mul-int/2addr v0, v3

    .line 153
    ushr-int/lit8 v3, v0, 0xf

    xor-int/2addr v0, v3

    .line 155
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hash64(Ljava/lang/String;)J
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .line 293
    invoke-static {p0}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 294
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-static {v0, v1}, Lorg/apache/commons/codec/digest/MurmurHash2;->hash64([BI)J

    move-result-wide v1

    return-wide v1
.end method

.method public static hash64(Ljava/lang/String;II)J
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "length"    # I

    .line 315
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/digest/MurmurHash2;->hash64(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hash64([BI)J
    .locals 2
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .line 217
    const v0, -0x1e85eb9b

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/digest/MurmurHash2;->hash64([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hash64([BII)J
    .locals 12
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "seed"    # I

    .line 229
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v2, p1

    const-wide v4, -0x395b586ca42e166bL    # -2.0946245025644615E32

    mul-long/2addr v2, v4

    xor-long/2addr v0, v2

    .line 231
    .local v0, "h":J
    shr-int/lit8 v2, p1, 0x3

    .line 234
    .local v2, "nblocks":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v6, 0x2f

    if-ge v3, v2, :cond_0

    .line 235
    shl-int/lit8 v7, v3, 0x3

    .line 236
    .local v7, "index":I
    invoke-static {p0, v7}, Lorg/apache/commons/codec/digest/MurmurHash2;->getLittleEndianLong([BI)J

    move-result-wide v8

    .line 238
    .local v8, "k":J
    mul-long/2addr v8, v4

    .line 239
    ushr-long v10, v8, v6

    xor-long/2addr v8, v10

    .line 240
    mul-long/2addr v8, v4

    .line 242
    xor-long/2addr v0, v8

    .line 243
    mul-long/2addr v0, v4

    .line 234
    .end local v7    # "index":I
    .end local v8    # "k":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    .end local v3    # "i":I
    :cond_0
    shl-int/lit8 v3, v2, 0x3

    .line 247
    .local v3, "index":I
    sub-int v7, p1, v3

    const-wide/16 v8, 0xff

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 249
    :pswitch_0
    add-int/lit8 v7, v3, 0x6

    aget-byte v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v8

    const/16 v7, 0x30

    shl-long/2addr v10, v7

    xor-long/2addr v0, v10

    .line 251
    :pswitch_1
    add-int/lit8 v7, v3, 0x5

    aget-byte v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v8

    const/16 v7, 0x28

    shl-long/2addr v10, v7

    xor-long/2addr v0, v10

    .line 253
    :pswitch_2
    add-int/lit8 v7, v3, 0x4

    aget-byte v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v8

    const/16 v7, 0x20

    shl-long/2addr v10, v7

    xor-long/2addr v0, v10

    .line 255
    :pswitch_3
    add-int/lit8 v7, v3, 0x3

    aget-byte v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v8

    const/16 v7, 0x18

    shl-long/2addr v10, v7

    xor-long/2addr v0, v10

    .line 257
    :pswitch_4
    add-int/lit8 v7, v3, 0x2

    aget-byte v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v8

    const/16 v7, 0x10

    shl-long/2addr v10, v7

    xor-long/2addr v0, v10

    .line 259
    :pswitch_5
    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v8

    const/16 v7, 0x8

    shl-long/2addr v10, v7

    xor-long/2addr v0, v10

    .line 261
    :pswitch_6
    aget-byte v7, p0, v3

    int-to-long v10, v7

    and-long v7, v10, v8

    xor-long/2addr v0, v7

    .line 262
    mul-long/2addr v0, v4

    .line 265
    :goto_1
    ushr-long v7, v0, v6

    xor-long/2addr v0, v7

    .line 266
    mul-long/2addr v0, v4

    .line 267
    ushr-long v4, v0, v6

    xor-long/2addr v0, v4

    .line 269
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
