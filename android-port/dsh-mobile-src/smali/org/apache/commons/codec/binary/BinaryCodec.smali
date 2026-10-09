.class public Lorg/apache/commons/codec/binary/BinaryCodec;
.super Ljava/lang/Object;
.source "BinaryCodec.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryDecoder;
.implements Lorg/apache/commons/codec/BinaryEncoder;


# static fields
.field private static final BITS:[I

.field private static final BIT_0:I = 0x1

.field private static final BIT_1:I = 0x2

.field private static final BIT_2:I = 0x4

.field private static final BIT_3:I = 0x8

.field private static final BIT_4:I = 0x10

.field private static final BIT_5:I = 0x20

.field private static final BIT_6:I = 0x40

.field private static final BIT_7:I = 0x80

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final EMPTY_CHAR_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const/4 v0, 0x0

    new-array v1, v0, [C

    sput-object v1, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    .line 44
    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromAscii([B)[B
    .locals 7
    .param p0, "ascii"    # [B

    .line 80
    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 83
    :cond_0
    array-length v0, p0

    .line 85
    .local v0, "asciiLength":I
    shr-int/lit8 v1, v0, 0x3

    new-array v1, v1, [B

    .line 90
    .local v1, "raw":[B
    const/4 v2, 0x0

    .local v2, "ii":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "jj":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 91
    const/4 v4, 0x0

    .local v4, "bits":I
    :goto_1
    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 92
    sub-int v5, v3, v4

    aget-byte v5, p0, v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_1

    .line 93
    aget-byte v5, v1, v2

    sget-object v6, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v6, v6, v4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 91
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 90
    .end local v4    # "bits":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x8

    goto :goto_0

    .line 97
    .end local v2    # "ii":I
    .end local v3    # "jj":I
    :cond_3
    return-object v1
.end method

.method public static fromAscii([C)[B
    .locals 7
    .param p0, "ascii"    # [C

    .line 108
    if-eqz p0, :cond_4

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 111
    :cond_0
    array-length v0, p0

    .line 113
    .local v0, "asciiLength":I
    shr-int/lit8 v1, v0, 0x3

    new-array v1, v1, [B

    .line 118
    .local v1, "raw":[B
    const/4 v2, 0x0

    .local v2, "ii":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "jj":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 119
    const/4 v4, 0x0

    .local v4, "bits":I
    :goto_1
    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 120
    sub-int v5, v3, v4

    aget-char v5, p0, v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_1

    .line 121
    aget-byte v5, v1, v2

    sget-object v6, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v6, v6, v4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 119
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 118
    .end local v4    # "bits":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x8

    goto :goto_0

    .line 125
    .end local v2    # "ii":I
    .end local v3    # "jj":I
    :cond_3
    return-object v1

    .line 109
    .end local v0    # "asciiLength":I
    .end local v1    # "raw":[B
    :cond_4
    :goto_2
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method static isEmpty([B)Z
    .locals 1
    .param p0, "array"    # [B

    .line 136
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static toAsciiBytes([B)[B
    .locals 7
    .param p0, "raw"    # [B

    .line 149
    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 152
    :cond_0
    array-length v0, p0

    .line 154
    .local v0, "rawLength":I
    shl-int/lit8 v1, v0, 0x3

    new-array v1, v1, [B

    .line 159
    .local v1, "l_ascii":[B
    const/4 v2, 0x0

    .local v2, "ii":I
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    .local v3, "jj":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 160
    const/4 v4, 0x0

    .local v4, "bits":I
    :goto_1
    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 161
    aget-byte v5, p0, v2

    sget-object v6, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v6, v6, v4

    and-int/2addr v5, v6

    if-nez v5, :cond_1

    .line 162
    sub-int v5, v3, v4

    const/16 v6, 0x30

    aput-byte v6, v1, v5

    goto :goto_2

    .line 164
    :cond_1
    sub-int v5, v3, v4

    const/16 v6, 0x31

    aput-byte v6, v1, v5

    .line 160
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 159
    .end local v4    # "bits":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x8

    goto :goto_0

    .line 168
    .end local v2    # "ii":I
    .end local v3    # "jj":I
    :cond_3
    return-object v1
.end method

.method public static toAsciiChars([B)[C
    .locals 7
    .param p0, "raw"    # [B

    .line 180
    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    return-object v0

    .line 183
    :cond_0
    array-length v0, p0

    .line 185
    .local v0, "rawLength":I
    shl-int/lit8 v1, v0, 0x3

    new-array v1, v1, [C

    .line 190
    .local v1, "l_ascii":[C
    const/4 v2, 0x0

    .local v2, "ii":I
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    .local v3, "jj":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 191
    const/4 v4, 0x0

    .local v4, "bits":I
    :goto_1
    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 192
    aget-byte v5, p0, v2

    sget-object v6, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v6, v6, v4

    and-int/2addr v5, v6

    if-nez v5, :cond_1

    .line 193
    sub-int v5, v3, v4

    const/16 v6, 0x30

    aput-char v6, v1, v5

    goto :goto_2

    .line 195
    :cond_1
    sub-int v5, v3, v4

    const/16 v6, 0x31

    aput-char v6, v1, v5

    .line 191
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 190
    .end local v4    # "bits":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x8

    goto :goto_0

    .line 199
    .end local v2    # "ii":I
    .end local v3    # "jj":I
    :cond_3
    return-object v1
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .locals 2
    .param p0, "raw"    # [B

    .line 211
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiChars([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "ascii"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 239
    if-nez p1, :cond_0

    .line 240
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 242
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 243
    move-object v0, p1

    check-cast v0, [B

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object v0

    return-object v0

    .line 245
    :cond_1
    instance-of v0, p1, [C

    if-eqz v0, :cond_2

    .line 246
    move-object v0, p1

    check-cast v0, [C

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    return-object v0

    .line 248
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 249
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    return-object v0

    .line 251
    :cond_3
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode([B)[B
    .locals 1
    .param p1, "ascii"    # [B

    .line 224
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "raw"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 279
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 282
    move-object v0, p1

    check-cast v0, [B

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiChars([B)[C

    move-result-object v0

    return-object v0

    .line 280
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode([B)[B
    .locals 1
    .param p1, "raw"    # [B

    .line 264
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiBytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "ascii"    # Ljava/lang/String;

    .line 294
    if-nez p1, :cond_0

    .line 295
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 297
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    return-object v0
.end method
