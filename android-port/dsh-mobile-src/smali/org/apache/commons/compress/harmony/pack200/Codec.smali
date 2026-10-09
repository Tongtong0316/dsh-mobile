.class public abstract Lorg/apache/commons/compress/harmony/pack200/Codec;
.super Ljava/lang/Object;
.source "Codec.java"


# static fields
.field public static final BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static final BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static final BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static final CHAR3:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static final DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static final MDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static final SIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static final UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field public static final UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;


# instance fields
.field public lastBandLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 38
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 43
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 48
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v2, 0x100

    const/4 v4, 0x1

    invoke-direct {v0, v4, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 54
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v2, 0x3

    const/16 v5, 0x80

    invoke-direct {v0, v2, v5}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->CHAR3:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 59
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, v4, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 65
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->MDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 70
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->SIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 75
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 80
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method check(ILjava/io/InputStream;)I
    .locals 16
    .param p1, "n"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 85
    move/from16 v0, p1

    move-object/from16 v1, p2

    instance-of v2, v1, Lorg/apache/commons/io/input/BoundedInputStream;

    if-eqz v2, :cond_2

    .line 86
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/io/input/BoundedInputStream;

    .line 87
    .local v2, "bin":Lorg/apache/commons/io/input/BoundedInputStream;
    invoke-virtual {v2}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v3

    .line 88
    .local v3, "count":J
    invoke-virtual {v2}, Lorg/apache/commons/io/input/BoundedInputStream;->getMaxCount()J

    move-result-wide v5

    .line 89
    .local v5, "maxLength":J
    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    .line 90
    sub-long v9, v5, v3

    .line 91
    .local v9, "remaining":J
    const-string v11, "Can\'t read beyond end of stream (n = %,d, count = %,d, maxLength = %,d, remaining = %,d)"

    .line 92
    .local v11, "format":Ljava/lang/String;
    cmp-long v7, v3, v7

    const-string v8, "Can\'t read beyond end of stream (n = %,d, count = %,d, maxLength = %,d, remaining = %,d)"

    if-ltz v7, :cond_1

    .line 95
    int-to-long v12, v0

    cmp-long v7, v12, v9

    if-gtz v7, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v7, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    filled-new-array {v12, v13, v14, v15}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 93
    :cond_1
    new-instance v7, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    filled-new-array {v12, v13, v14, v15}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v7

    .line 100
    .end local v2    # "bin":Lorg/apache/commons/io/input/BoundedInputStream;
    .end local v3    # "count":J
    .end local v5    # "maxLength":J
    .end local v9    # "remaining":J
    .end local v11    # "format":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0
.end method

.method public abstract decode(Ljava/io/InputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation
.end method

.method public abstract decode(Ljava/io/InputStream;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation
.end method

.method public decodeInts(ILjava/io/InputStream;)[I
    .locals 5
    .param p1, "n"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/Codec;->lastBandLength:I

    .line 147
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/Codec;->check(ILjava/io/InputStream;)I

    move-result v0

    new-array v0, v0, [I

    .line 148
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 149
    .local v1, "last":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 150
    int-to-long v3, v1

    invoke-virtual {p0, p2, v3, v4}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decode(Ljava/io/InputStream;J)I

    move-result v3

    move v1, v3

    aput v3, v0, v2

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public decodeInts(ILjava/io/InputStream;I)[I
    .locals 5
    .param p1, "n"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "firstValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 166
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/Codec;->check(ILjava/io/InputStream;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 167
    .local v0, "result":[I
    const/4 v1, 0x0

    aput p3, v0, v1

    .line 168
    move v1, p3

    .line 169
    .local v1, "last":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, p1, 0x1

    if-ge v2, v3, :cond_0

    .line 170
    int-to-long v3, v1

    invoke-virtual {p0, p2, v3, v4}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decode(Ljava/io/InputStream;J)I

    move-result v3

    move v1, v3

    aput v3, v0, v2

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public abstract encode(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation
.end method

.method public abstract encode(II)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation
.end method

.method public encode([I)[B
    .locals 9
    .param p1, "ints"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "total":I
    array-length v1, p1

    new-array v1, v1, [[B

    .line 204
    .local v1, "bytes":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    .line 205
    aget v3, p1, v2

    if-lez v2, :cond_0

    add-int/lit8 v4, v2, -0x1

    aget v4, p1, v4

    :cond_0
    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/compress/harmony/pack200/Codec;->encode(II)[B

    move-result-object v3

    aput-object v3, v1, v2

    .line 206
    aget-object v3, v1, v2

    array-length v3, v3

    add-int/2addr v0, v3

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v2    # "i":I
    :cond_1
    new-array v2, v0, [B

    .line 209
    .local v2, "encoded":[B
    const/4 v3, 0x0

    .line 210
    .local v3, "index":I
    array-length v5, v1

    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v1, v6

    .line 211
    .local v7, "element":[B
    array-length v8, v7

    invoke-static {v7, v4, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    array-length v8, v7

    add-int/2addr v3, v8

    .line 210
    .end local v7    # "element":[B
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 214
    :cond_2
    return-object v2
.end method
