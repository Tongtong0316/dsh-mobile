.class public Lorg/apache/commons/io/EndianUtils;
.super Ljava/lang/Object;
.source "EndianUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    return-void
.end method

.method private static read(Ljava/io/InputStream;)I
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 59
    .local v0, "value":I
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 62
    return v0

    .line 60
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "Unexpected EOF reached"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readSwappedDouble(Ljava/io/InputStream;)D
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->readSwappedLong(Ljava/io/InputStream;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static readSwappedDouble([BI)D
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 74
    invoke-static {p0, p1}, Lorg/apache/commons/io/EndianUtils;->readSwappedLong([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static readSwappedFloat(Ljava/io/InputStream;)F
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->readSwappedInteger(Ljava/io/InputStream;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static readSwappedFloat([BI)F
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 97
    invoke-static {p0, p1}, Lorg/apache/commons/io/EndianUtils;->readSwappedInteger([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static readSwappedInteger(Ljava/io/InputStream;)I
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v0

    .line 136
    .local v0, "value1":I
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v1

    .line 137
    .local v1, "value2":I
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v2

    .line 138
    .local v2, "value3":I
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v3

    .line 139
    .local v3, "value4":I
    and-int/lit16 v4, v0, 0xff

    shl-int/lit8 v4, v4, 0x0

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/2addr v4, v5

    return v4
.end method

.method public static readSwappedInteger([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 120
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/EndianUtils;->validateByteArrayOffset([BII)V

    .line 121
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    return v0
.end method

.method public static readSwappedLong(Ljava/io/InputStream;)J
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 166
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 167
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    .end local v2    # "i":I
    :cond_0
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/apache/commons/io/EndianUtils;->readSwappedLong([BI)J

    move-result-wide v2

    return-wide v2
.end method

.method public static readSwappedLong([BI)J
    .locals 8
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 151
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/EndianUtils;->validateByteArrayOffset([BII)V

    .line 152
    invoke-static {p0, p1}, Lorg/apache/commons/io/EndianUtils;->readSwappedInteger([BI)I

    move-result v0

    int-to-long v0, v0

    .line 153
    .local v0, "low":J
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lorg/apache/commons/io/EndianUtils;->readSwappedInteger([BI)I

    move-result v2

    int-to-long v2, v2

    .line 154
    .local v2, "high":J
    const/16 v4, 0x20

    shl-long v4, v2, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v6, v0

    add-long/2addr v4, v6

    return-wide v4
.end method

.method public static readSwappedShort(Ljava/io/InputStream;)S
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static readSwappedShort([BI)S
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 181
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/EndianUtils;->validateByteArrayOffset([BII)V

    .line 182
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static readSwappedUnsignedInteger(Ljava/io/InputStream;)J
    .locals 12
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v0

    .line 223
    .local v0, "value1":I
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v1

    .line 224
    .local v1, "value2":I
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v2

    .line 225
    .local v2, "value3":I
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v3

    .line 226
    .local v3, "value4":I
    and-int/lit16 v4, v0, 0xff

    shl-int/lit8 v4, v4, 0x0

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    int-to-long v4, v4

    .line 227
    .local v4, "low":J
    and-int/lit16 v6, v3, 0xff

    int-to-long v6, v6

    .line 228
    .local v6, "high":J
    const/16 v8, 0x18

    shl-long v8, v6, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    return-wide v8
.end method

.method public static readSwappedUnsignedInteger([BI)J
    .locals 8
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 206
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/EndianUtils;->validateByteArrayOffset([BII)V

    .line 207
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 210
    .local v0, "low":J
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    .line 211
    .local v2, "high":J
    const/16 v4, 0x18

    shl-long v4, v2, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v6, v0

    add-long/2addr v4, v6

    return-wide v4
.end method

.method public static readSwappedUnsignedShort(Ljava/io/InputStream;)I
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v0

    .line 254
    .local v0, "value1":I
    invoke-static {p0}, Lorg/apache/commons/io/EndianUtils;->read(Ljava/io/InputStream;)I

    move-result v1

    .line 256
    .local v1, "value2":I
    and-int/lit16 v2, v0, 0xff

    shl-int/lit8 v2, v2, 0x0

    and-int/lit16 v3, v1, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    return v2
.end method

.method public static readSwappedUnsignedShort([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 241
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/EndianUtils;->validateByteArrayOffset([BII)V

    .line 242
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public static swapDouble(D)D
    .locals 2
    .param p0, "value"    # D

    .line 270
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/io/EndianUtils;->swapLong(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static swapFloat(F)F
    .locals 1
    .param p0, "value"    # F

    .line 280
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/io/EndianUtils;->swapInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static swapInteger(I)I
    .locals 2
    .param p0, "value"    # I

    .line 290
    shr-int/lit8 v0, p0, 0x0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    return v0
.end method

.method public static swapLong(J)J
    .locals 14
    .param p0, "value"    # J

    .line 304
    const/4 v0, 0x0

    shr-long v1, p0, v0

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    const/16 v5, 0x38

    shl-long/2addr v1, v5

    const/16 v6, 0x8

    shr-long v7, p0, v6

    and-long/2addr v7, v3

    const/16 v9, 0x30

    shl-long/2addr v7, v9

    add-long/2addr v1, v7

    const/16 v7, 0x10

    shr-long v10, p0, v7

    and-long/2addr v10, v3

    const/16 v8, 0x28

    shl-long/2addr v10, v8

    add-long/2addr v1, v10

    const/16 v10, 0x18

    shr-long v11, p0, v10

    and-long/2addr v11, v3

    const/16 v13, 0x20

    shl-long/2addr v11, v13

    add-long/2addr v1, v11

    shr-long v11, p0, v13

    and-long/2addr v11, v3

    shl-long v10, v11, v10

    add-long/2addr v1, v10

    shr-long v10, p0, v8

    and-long/2addr v10, v3

    shl-long v7, v10, v7

    add-long/2addr v1, v7

    shr-long v7, p0, v9

    and-long/2addr v7, v3

    shl-long v6, v7, v6

    add-long/2addr v1, v6

    shr-long v5, p0, v5

    and-long/2addr v3, v5

    shl-long/2addr v3, v0

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public static swapShort(S)S
    .locals 2
    .param p0, "value"    # S

    .line 322
    shr-int/lit8 v0, p0, 0x0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private static validateByteArrayOffset([BII)V
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "byteNeeded"    # I

    .line 335
    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    .line 338
    return-void

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data only has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bytes, needed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static writeSwappedDouble(Ljava/io/OutputStream;D)V
    .locals 2
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/EndianUtils;->writeSwappedLong(Ljava/io/OutputStream;J)V

    .line 361
    return-void
.end method

.method public static writeSwappedDouble([BID)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # D

    .line 349
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/EndianUtils;->writeSwappedLong([BIJ)V

    .line 350
    return-void
.end method

.method public static writeSwappedFloat(Ljava/io/OutputStream;F)V
    .locals 1
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/EndianUtils;->writeSwappedInteger(Ljava/io/OutputStream;I)V

    .line 384
    return-void
.end method

.method public static writeSwappedFloat([BIF)V
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # F

    .line 372
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/EndianUtils;->writeSwappedInteger([BII)V

    .line 373
    return-void
.end method

.method public static writeSwappedInteger(Ljava/io/OutputStream;I)V
    .locals 1
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 411
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 412
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 413
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 414
    return-void
.end method

.method public static writeSwappedInteger([BII)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .line 395
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/EndianUtils;->validateByteArrayOffset([BII)V

    .line 396
    add-int/lit8 v0, p1, 0x0

    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 397
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 398
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 399
    add-int/lit8 v0, p1, 0x3

    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 400
    return-void
.end method

.method public static writeSwappedLong(Ljava/io/OutputStream;J)V
    .locals 4
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    const/4 v0, 0x0

    shr-long v0, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 445
    const/16 v0, 0x8

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 446
    const/16 v0, 0x10

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 447
    const/16 v0, 0x18

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 448
    const/16 v0, 0x20

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 449
    const/16 v0, 0x28

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 450
    const/16 v0, 0x30

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 451
    const/16 v0, 0x38

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 452
    return-void
.end method

.method public static writeSwappedLong([BIJ)V
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # J

    .line 425
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/EndianUtils;->validateByteArrayOffset([BII)V

    .line 426
    add-int/lit8 v1, p1, 0x0

    const/4 v2, 0x0

    shr-long v2, p2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 427
    add-int/lit8 v1, p1, 0x1

    shr-long v2, p2, v0

    and-long/2addr v2, v4

    long-to-int v0, v2

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    .line 428
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x10

    shr-long v1, p2, v1

    and-long/2addr v1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 429
    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x18

    shr-long v1, p2, v1

    and-long/2addr v1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 430
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x20

    shr-long v1, p2, v1

    and-long/2addr v1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 431
    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x28

    shr-long v1, p2, v1

    and-long/2addr v1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 432
    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x30

    shr-long v1, p2, v1

    and-long/2addr v1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 433
    add-int/lit8 v0, p1, 0x7

    const/16 v1, 0x38

    shr-long v1, p2, v1

    and-long/2addr v1, v4

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 434
    return-void
.end method

.method public static writeSwappedShort(Ljava/io/OutputStream;S)V
    .locals 1
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 477
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 478
    return-void
.end method

.method public static writeSwappedShort([BIS)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # S

    .line 463
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/EndianUtils;->validateByteArrayOffset([BII)V

    .line 464
    add-int/lit8 v0, p1, 0x0

    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 465
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 466
    return-void
.end method
