.class public Lorg/apache/commons/lang3/math/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_TWO:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_INT_MAX_VALUE:Ljava/lang/Long;

.field public static final LONG_INT_MIN_VALUE:Ljava/lang/Long;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    .line 38
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    .line 40
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    .line 42
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    .line 44
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    .line 46
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    .line 48
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    .line 50
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    .line 52
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    .line 54
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    .line 56
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    .line 58
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    .line 60
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    .line 62
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    .line 64
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    .line 66
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    .line 68
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    .line 72
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    .line 79
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_INT_MAX_VALUE:Ljava/lang/Long;

    .line 86
    const-wide/32 v0, -0x80000000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_INT_MIN_VALUE:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1862
    return-void
.end method

.method public static compare(BB)I
    .locals 1
    .param p0, "x"    # B
    .param p1, "y"    # B

    .line 99
    sub-int v0, p0, p1

    return v0
.end method

.method public static compare(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 113
    if-ne p0, p1, :cond_0

    .line 114
    const/4 v0, 0x0

    return v0

    .line 116
    :cond_0
    if-ge p0, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static compare(JJ)I
    .locals 1
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 130
    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    return v0

    .line 133
    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static compare(SS)I
    .locals 1
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 147
    if-ne p0, p1, :cond_0

    .line 148
    const/4 v0, 0x0

    return v0

    .line 150
    :cond_0
    if-ge p0, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 163
    if-nez p0, :cond_0

    .line 164
    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 168
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 186
    if-nez p0, :cond_0

    .line 187
    const/4 v0, 0x0

    return-object v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "pos":I
    const/16 v1, 0xa

    .line 194
    .local v1, "radix":I
    const/4 v2, 0x0

    .line 195
    .local v2, "negate":Z
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 196
    .local v3, "char0":C
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1

    .line 197
    const/4 v2, 0x1

    .line 198
    const/4 v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_2

    .line 200
    const/4 v0, 0x1

    .line 202
    :cond_2
    :goto_0
    const-string v4, "0x"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "0X"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 205
    :cond_3
    const-string v4, "#"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 206
    const/16 v1, 0x10

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 208
    :cond_4
    const-string v4, "0"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    if-le v4, v5, :cond_6

    .line 209
    const/16 v1, 0x8

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 203
    :cond_5
    :goto_1
    const/16 v1, 0x10

    .line 204
    add-int/lit8 v0, v0, 0x2

    .line 213
    :cond_6
    :goto_2
    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 214
    .local v4, "value":Ljava/math/BigInteger;
    if-eqz v2, :cond_7

    invoke-virtual {v4}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_3

    :cond_7
    move-object v5, v4

    :goto_3
    return-object v5

    .line 190
    .end local v0    # "pos":I
    .end local v1    # "radix":I
    .end local v2    # "negate":Z
    .end local v3    # "char0":C
    .end local v4    # "value":Ljava/math/BigInteger;
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "An empty string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 227
    if-nez p0, :cond_0

    .line 228
    const/4 v0, 0x0

    return-object v0

    .line 230
    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 243
    if-nez p0, :cond_0

    .line 244
    const/4 v0, 0x0

    return-object v0

    .line 246
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 262
    if-nez p0, :cond_0

    .line 263
    const/4 v0, 0x0

    return-object v0

    .line 266
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 283
    if-nez p0, :cond_0

    .line 284
    const/4 v0, 0x0

    return-object v0

    .line 286
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 21
    .param p0, "str"    # Ljava/lang/String;

    .line 321
    move-object/from16 v1, p0

    if-nez v1, :cond_0

    .line 322
    const/4 v0, 0x0

    return-object v0

    .line 324
    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 328
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "0x"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "0X"

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/4 v2, 0x2

    const-string v5, "#"

    aput-object v5, v0, v2

    move-object v2, v0

    .line 329
    .local v2, "hexPrefixes":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 330
    .local v5, "length":I
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x2b

    const/16 v7, 0x2d

    if-eq v0, v6, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v4

    :goto_1
    move v6, v0

    .line 331
    .local v6, "offset":I
    const/4 v0, 0x0

    .line 332
    .local v0, "pfxLen":I
    array-length v8, v2

    move v9, v3

    :goto_2
    if-ge v9, v8, :cond_4

    aget-object v10, v2, v9

    .line 333
    .local v10, "pfx":Ljava/lang/String;
    invoke-virtual {v1, v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 334
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v6

    add-int/2addr v0, v8

    .line 335
    move v8, v0

    goto :goto_3

    .line 332
    .end local v10    # "pfx":Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    move v8, v0

    .line 338
    .end local v0    # "pfxLen":I
    .local v8, "pfxLen":I
    :goto_3
    if-lez v8, :cond_b

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "firstSigDigit":C
    move v3, v8

    .local v3, "i":I
    :goto_4
    if-ge v3, v5, :cond_6

    .line 341
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 342
    const/16 v4, 0x30

    if-eq v0, v4, :cond_5

    .line 343
    goto :goto_5

    .line 345
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 340
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 347
    .end local v3    # "i":I
    :cond_6
    :goto_5
    sub-int v3, v5, v8

    .line 348
    .local v3, "hexDigits":I
    const/16 v4, 0x10

    if-gt v3, v4, :cond_a

    const/16 v7, 0x37

    if-ne v3, v4, :cond_7

    if-le v0, v7, :cond_7

    goto :goto_7

    .line 351
    :cond_7
    const/16 v4, 0x8

    if-gt v3, v4, :cond_9

    if-ne v3, v4, :cond_8

    if-le v0, v7, :cond_8

    goto :goto_6

    .line 354
    :cond_8
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    return-object v4

    .line 352
    :cond_9
    :goto_6
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    .line 349
    :cond_a
    :goto_7
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    return-object v4

    .line 356
    .end local v0    # "firstSigDigit":C
    .end local v3    # "hexDigits":I
    :cond_b
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 360
    .local v9, "lastChar":C
    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 361
    .local v10, "decPos":I
    const/16 v11, 0x65

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/16 v12, 0x45

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v11, v4

    .line 366
    .local v11, "expPos":I
    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-nez v12, :cond_c

    if-eq v9, v0, :cond_c

    move v0, v4

    goto :goto_8

    :cond_c
    move v0, v3

    :goto_8
    move v12, v0

    .line 367
    .local v12, "requestType":Z
    const-string v13, " is not a valid number."

    const/4 v0, -0x1

    if-le v10, v0, :cond_10

    .line 368
    if-le v11, v0, :cond_e

    .line 369
    if-le v11, v10, :cond_d

    if-gt v11, v5, :cond_d

    .line 372
    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v1, v14, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .local v14, "dec":Ljava/lang/String;
    goto :goto_a

    .line 370
    .end local v14    # "dec":Ljava/lang/String;
    :cond_d
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_e
    add-int/lit8 v14, v10, 0x1

    if-eqz v12, :cond_f

    add-int/lit8 v15, v5, -0x1

    goto :goto_9

    :cond_f
    move v15, v5

    :goto_9
    invoke-virtual {v1, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 377
    .restart local v14    # "dec":Ljava/lang/String;
    :goto_a
    invoke-static {v1, v10}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .local v15, "mant":Ljava/lang/String;
    goto :goto_d

    .line 379
    .end local v14    # "dec":Ljava/lang/String;
    .end local v15    # "mant":Ljava/lang/String;
    :cond_10
    if-le v11, v0, :cond_12

    .line 380
    if-gt v11, v5, :cond_11

    .line 383
    invoke-static {v1, v11}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    move-object v15, v14

    .local v14, "mant":Ljava/lang/String;
    goto :goto_c

    .line 381
    .end local v14    # "mant":Ljava/lang/String;
    :cond_11
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_12
    if-eqz v12, :cond_13

    add-int/lit8 v14, v5, -0x1

    goto :goto_b

    :cond_13
    move v14, v5

    :goto_b
    invoke-static {v1, v14}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    move-object v15, v14

    .line 388
    .restart local v15    # "mant":Ljava/lang/String;
    :goto_c
    const/4 v14, 0x0

    .line 390
    .local v14, "dec":Ljava/lang/String;
    :goto_d
    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    if-eqz v12, :cond_1c

    .line 391
    if-le v11, v0, :cond_14

    add-int/lit8 v0, v5, -0x1

    if-ge v11, v0, :cond_14

    .line 392
    add-int/lit8 v0, v11, 0x1

    add-int/lit8 v4, v5, -0x1

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .local v0, "exp":Ljava/lang/String;
    goto :goto_e

    .line 394
    .end local v0    # "exp":Ljava/lang/String;
    :cond_14
    const/4 v0, 0x0

    move-object v4, v0

    .line 397
    .local v4, "exp":Ljava/lang/String;
    :goto_e
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 398
    .local v7, "numeric":Ljava/lang/String;
    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_11

    .line 401
    :sswitch_0
    if-nez v14, :cond_17

    if-nez v4, :cond_17

    .line 403
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_15

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_15
    invoke-static {v7}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 405
    :cond_16
    :try_start_0
    invoke-static {v7}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 406
    :catch_0
    move-exception v0

    .line 409
    invoke-static {v7}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 412
    :cond_17
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :sswitch_1
    :try_start_1
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 417
    .local v0, "f":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v16

    if-nez v3, :cond_18

    invoke-static {v15, v14}, Lorg/apache/commons/lang3/math/NumberUtils;->isZero(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_19

    .line 420
    :cond_18
    return-object v0

    .line 425
    .end local v0    # "f":Ljava/lang/Float;
    :cond_19
    goto :goto_f

    .line 423
    :catch_1
    move-exception v0

    .line 430
    :goto_f
    :sswitch_2
    :try_start_2
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 431
    .local v0, "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    cmpl-double v3, v19, v17

    if-nez v3, :cond_1a

    invoke-static {v15, v14}, Lorg/apache/commons/lang3/math/NumberUtils;->isZero(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v3, :cond_1b

    .line 432
    :cond_1a
    return-object v0

    .line 436
    .end local v0    # "d":Ljava/lang/Double;
    :cond_1b
    goto :goto_10

    .line 434
    :catch_2
    move-exception v0

    .line 438
    :goto_10
    :try_start_3
    invoke-static {v7}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    .line 439
    :catch_3
    move-exception v0

    .line 444
    :goto_11
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    .end local v4    # "exp":Ljava/lang/String;
    .end local v7    # "numeric":Ljava/lang/String;
    :cond_1c
    if-le v11, v0, :cond_1d

    add-int/lit8 v0, v5, -0x1

    if-ge v11, v0, :cond_1d

    .line 451
    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .local v0, "exp":Ljava/lang/String;
    goto :goto_12

    .line 453
    .end local v0    # "exp":Ljava/lang/String;
    :cond_1d
    const/4 v0, 0x0

    move-object v3, v0

    .line 455
    .local v3, "exp":Ljava/lang/String;
    :goto_12
    if-nez v14, :cond_1e

    if-nez v3, :cond_1e

    .line 458
    :try_start_4
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    return-object v0

    .line 459
    :catch_4
    move-exception v0

    .line 463
    :try_start_5
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    return-object v0

    .line 464
    :catch_5
    move-exception v0

    .line 467
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 472
    :cond_1e
    :try_start_6
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 473
    .local v0, "f":Ljava/lang/Float;
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    .line 474
    .local v4, "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v7

    if-nez v7, :cond_20

    .line 475
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v7, v7, v16

    if-nez v7, :cond_1f

    invoke-static {v15, v14}, Lorg/apache/commons/lang3/math/NumberUtils;->isZero(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 476
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 477
    return-object v0

    .line 479
    :cond_20
    invoke-virtual {v4}, Ljava/lang/Double;->isInfinite()Z

    move-result v7

    if-nez v7, :cond_23

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    cmpl-double v7, v19, v17

    if-nez v7, :cond_21

    invoke-static {v15, v14}, Lorg/apache/commons/lang3/math/NumberUtils;->isZero(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 480
    :cond_21
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v7

    .line 481
    .local v7, "b":Ljava/math/BigDecimal;
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v13
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    if-nez v13, :cond_22

    .line 482
    return-object v4

    .line 484
    :cond_22
    return-object v7

    .line 488
    .end local v0    # "f":Ljava/lang/Float;
    .end local v4    # "d":Ljava/lang/Double;
    .end local v7    # "b":Ljava/math/BigDecimal;
    :cond_23
    goto :goto_13

    .line 486
    :catch_6
    move-exception v0

    .line 489
    :goto_13
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 325
    .end local v2    # "hexPrefixes":[Ljava/lang/String;
    .end local v3    # "exp":Ljava/lang/String;
    .end local v5    # "length":I
    .end local v6    # "offset":I
    .end local v8    # "pfxLen":I
    .end local v9    # "lastChar":C
    .end local v10    # "decPos":I
    .end local v11    # "expPos":I
    .end local v12    # "requestType":Z
    .end local v14    # "dec":Ljava/lang/String;
    .end local v15    # "mant":Ljava/lang/String;
    :cond_24
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v2, "A blank string is not a valid number"

    invoke-direct {v0, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x46 -> :sswitch_1
        0x4c -> :sswitch_0
        0x64 -> :sswitch_2
        0x66 -> :sswitch_1
        0x6c -> :sswitch_0
    .end sparse-switch
.end method

.method private static getMantissa(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stopPos"    # I

    .line 503
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 504
    .local v1, "firstChar":C
    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    .line 505
    .local v2, "hasSign":Z
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 506
    .local v4, "length":I
    if-eqz v2, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    if-le v4, v5, :cond_4

    if-lt v4, p1, :cond_4

    .line 509
    if-eqz v2, :cond_3

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    .line 507
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is not a valid number."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 521
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 522
    return v0

    .line 524
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 525
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    .line 526
    const/4 v0, 0x0

    return v0

    .line 524
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 529
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static isCreatable(Ljava/lang/String;)Z
    .locals 17
    .param p0, "str"    # Ljava/lang/String;

    .line 555
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 556
    return v1

    .line 558
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 559
    .local v0, "chars":[C
    array-length v2, v0

    .line 560
    .local v2, "sz":I
    const/4 v3, 0x0

    .line 561
    .local v3, "hasExp":Z
    const/4 v4, 0x0

    .line 562
    .local v4, "hasDecPoint":Z
    const/4 v5, 0x0

    .line 563
    .local v5, "allowSigns":Z
    const/4 v6, 0x0

    .line 565
    .local v6, "foundDigit":Z
    aget-char v7, v0, v1

    const/16 v8, 0x2b

    const/16 v9, 0x2d

    const/4 v10, 0x1

    if-eq v7, v9, :cond_2

    aget-char v7, v0, v1

    if-ne v7, v8, :cond_1

    goto :goto_0

    :cond_1
    move v7, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v7, v10

    .line 566
    .local v7, "start":I
    :goto_1
    add-int/lit8 v11, v7, 0x1

    const/16 v12, 0x46

    const/16 v13, 0x66

    const/16 v14, 0x39

    const/16 v15, 0x2e

    const/16 v9, 0x30

    if-le v2, v11, :cond_e

    aget-char v11, v0, v7

    if-ne v11, v9, :cond_e

    move-object/from16 v11, p0

    invoke-static {v11, v15}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;I)Z

    move-result v16

    if-nez v16, :cond_f

    .line 567
    add-int/lit8 v16, v7, 0x1

    aget-char v8, v0, v16

    const/16 v15, 0x78

    if-eq v8, v15, :cond_7

    add-int/lit8 v8, v7, 0x1

    aget-char v8, v0, v8

    const/16 v15, 0x58

    if-ne v8, v15, :cond_3

    goto :goto_4

    .line 582
    :cond_3
    add-int/lit8 v8, v7, 0x1

    aget-char v8, v0, v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 584
    add-int/lit8 v8, v7, 0x1

    .line 585
    .local v8, "i":I
    :goto_2
    array-length v12, v0

    if-ge v8, v12, :cond_6

    .line 586
    aget-char v12, v0, v8

    if-lt v12, v9, :cond_5

    aget-char v12, v0, v8

    const/16 v13, 0x37

    if-le v12, v13, :cond_4

    goto :goto_3

    .line 585
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 587
    :cond_5
    :goto_3
    return v1

    .line 590
    :cond_6
    return v10

    .line 568
    .end local v8    # "i":I
    :cond_7
    :goto_4
    add-int/lit8 v8, v7, 0x2

    .line 569
    .restart local v8    # "i":I
    if-ne v8, v2, :cond_8

    .line 570
    return v1

    .line 573
    :cond_8
    :goto_5
    array-length v15, v0

    if-ge v8, v15, :cond_d

    .line 574
    aget-char v15, v0, v8

    if-lt v15, v9, :cond_9

    aget-char v15, v0, v8

    if-le v15, v14, :cond_b

    :cond_9
    aget-char v15, v0, v8

    const/16 v14, 0x61

    if-lt v15, v14, :cond_a

    aget-char v14, v0, v8

    if-le v14, v13, :cond_b

    :cond_a
    aget-char v14, v0, v8

    const/16 v15, 0x41

    if-lt v14, v15, :cond_c

    aget-char v14, v0, v8

    if-le v14, v12, :cond_b

    goto :goto_6

    .line 573
    :cond_b
    add-int/lit8 v8, v8, 0x1

    const/16 v14, 0x39

    goto :goto_5

    .line 577
    :cond_c
    :goto_6
    return v1

    .line 580
    :cond_d
    return v10

    .line 566
    .end local v8    # "i":I
    :cond_e
    move-object/from16 v11, p0

    .line 593
    :cond_f
    add-int/lit8 v2, v2, -0x1

    .line 595
    move v8, v7

    .line 598
    .restart local v8    # "i":I
    :goto_7
    const/16 v14, 0x45

    const/16 v15, 0x65

    if-lt v8, v2, :cond_1e

    add-int/lit8 v12, v2, 0x1

    if-ge v8, v12, :cond_10

    if-eqz v5, :cond_10

    if-nez v6, :cond_10

    const/16 v12, 0x46

    goto :goto_b

    .line 631
    :cond_10
    array-length v12, v0

    if-ge v8, v12, :cond_1c

    .line 632
    aget-char v12, v0, v8

    if-lt v12, v9, :cond_11

    aget-char v9, v0, v8

    const/16 v12, 0x39

    if-gt v9, v12, :cond_11

    .line 634
    return v10

    .line 636
    :cond_11
    aget-char v9, v0, v8

    if-eq v9, v15, :cond_1b

    aget-char v9, v0, v8

    if-ne v9, v14, :cond_12

    goto :goto_a

    .line 640
    :cond_12
    aget-char v9, v0, v8

    const/16 v12, 0x2e

    if-ne v9, v12, :cond_15

    .line 641
    if-nez v4, :cond_14

    if-eqz v3, :cond_13

    goto :goto_8

    .line 646
    :cond_13
    return v6

    .line 643
    :cond_14
    :goto_8
    return v1

    .line 648
    :cond_15
    if-nez v5, :cond_17

    aget-char v9, v0, v8

    const/16 v12, 0x64

    if-eq v9, v12, :cond_16

    aget-char v9, v0, v8

    const/16 v12, 0x44

    if-eq v9, v12, :cond_16

    aget-char v9, v0, v8

    if-eq v9, v13, :cond_16

    aget-char v9, v0, v8

    const/16 v12, 0x46

    if-ne v9, v12, :cond_17

    .line 653
    :cond_16
    return v6

    .line 655
    :cond_17
    aget-char v9, v0, v8

    const/16 v12, 0x6c

    if-eq v9, v12, :cond_19

    aget-char v9, v0, v8

    const/16 v12, 0x4c

    if-ne v9, v12, :cond_18

    goto :goto_9

    .line 661
    :cond_18
    return v1

    .line 658
    :cond_19
    :goto_9
    if-eqz v6, :cond_1a

    if-nez v3, :cond_1a

    if-nez v4, :cond_1a

    move v1, v10

    :cond_1a
    return v1

    .line 638
    :cond_1b
    :goto_a
    return v1

    .line 665
    :cond_1c
    if-nez v5, :cond_1d

    if-eqz v6, :cond_1d

    move v1, v10

    :cond_1d
    return v1

    .line 599
    :cond_1e
    :goto_b
    aget-char v10, v0, v8

    if-lt v10, v9, :cond_1f

    aget-char v10, v0, v8

    const/16 v9, 0x39

    if-gt v10, v9, :cond_20

    .line 600
    const/4 v6, 0x1

    .line 601
    const/4 v5, 0x0

    const/16 v9, 0x2e

    const/16 v14, 0x2b

    const/16 v15, 0x2d

    goto :goto_f

    .line 599
    :cond_1f
    const/16 v9, 0x39

    .line 603
    :cond_20
    aget-char v10, v0, v8

    const/16 v9, 0x2e

    if-ne v10, v9, :cond_23

    .line 604
    if-nez v4, :cond_22

    if-eqz v3, :cond_21

    goto :goto_c

    .line 608
    :cond_21
    const/4 v4, 0x1

    const/16 v14, 0x2b

    const/16 v15, 0x2d

    goto :goto_f

    .line 606
    :cond_22
    :goto_c
    return v1

    .line 609
    :cond_23
    aget-char v10, v0, v8

    if-eq v10, v15, :cond_28

    aget-char v10, v0, v8

    if-ne v10, v14, :cond_24

    const/16 v14, 0x2b

    const/16 v15, 0x2d

    goto :goto_e

    .line 620
    :cond_24
    aget-char v10, v0, v8

    const/16 v14, 0x2b

    if-eq v10, v14, :cond_26

    aget-char v10, v0, v8

    const/16 v15, 0x2d

    if-ne v10, v15, :cond_25

    goto :goto_d

    .line 627
    :cond_25
    return v1

    .line 620
    :cond_26
    const/16 v15, 0x2d

    .line 621
    :goto_d
    if-nez v5, :cond_27

    .line 622
    return v1

    .line 624
    :cond_27
    const/4 v5, 0x0

    .line 625
    const/4 v6, 0x0

    goto :goto_f

    .line 609
    :cond_28
    const/16 v14, 0x2b

    const/16 v15, 0x2d

    .line 611
    :goto_e
    if-eqz v3, :cond_29

    .line 613
    return v1

    .line 615
    :cond_29
    if-nez v6, :cond_2a

    .line 616
    return v1

    .line 618
    :cond_2a
    const/4 v3, 0x1

    .line 619
    const/4 v5, 0x1

    .line 629
    :goto_f
    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x30

    const/4 v10, 0x1

    goto/16 :goto_7
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 679
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 709
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->isCreatable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isParsable(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 730
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 731
    return v1

    .line 733
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_1

    .line 734
    return v1

    .line 736
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_3

    .line 737
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 738
    return v1

    .line 740
    :cond_2
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 742
    :cond_3
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static isZero(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "mant"    # Ljava/lang/String;
    .param p1, "dec"    # Ljava/lang/String;

    .line 772
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static max(BBB)B
    .locals 0
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .line 808
    if-le p1, p0, :cond_0

    .line 809
    move p0, p1

    .line 811
    :cond_0
    if-le p2, p0, :cond_1

    .line 812
    move p0, p2

    .line 814
    :cond_1
    return p0
.end method

.method public static varargs max([B)B
    .locals 3
    .param p0, "array"    # [B

    .line 786
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 789
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    .line 790
    .local v0, "max":B
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 791
    aget-byte v2, p0, v1

    if-le v2, v0, :cond_0

    .line 792
    aget-byte v0, p0, v1

    .line 790
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 796
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static max(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 858
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs max([D)D
    .locals 5
    .param p0, "array"    # [D

    .line 829
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 832
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 833
    .local v0, "max":D
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 834
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 835
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    return-wide v3

    .line 837
    :cond_0
    aget-wide v3, p0, v2

    cmpl-double v3, v3, v0

    if-lez v3, :cond_1

    .line 838
    aget-wide v0, p0, v2

    .line 833
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 842
    .end local v2    # "j":I
    :cond_2
    return-wide v0
.end method

.method public static max(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 937
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static varargs max([F)F
    .locals 3
    .param p0, "array"    # [F

    .line 873
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 876
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 877
    .local v0, "max":F
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 878
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 879
    const/high16 v2, 0x7fc00000    # Float.NaN

    return v2

    .line 881
    :cond_0
    aget v2, p0, v1

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 882
    aget v0, p0, v1

    .line 877
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 886
    .end local v1    # "j":I
    :cond_2
    return v0
.end method

.method public static max(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 973
    if-le p1, p0, :cond_0

    .line 974
    move p0, p1

    .line 976
    :cond_0
    if-le p2, p0, :cond_1

    .line 977
    move p0, p2

    .line 979
    :cond_1
    return p0
.end method

.method public static varargs max([I)I
    .locals 3
    .param p0, "array"    # [I

    .line 951
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 954
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 955
    .local v0, "max":I
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 956
    aget v2, p0, v1

    if-le v2, v0, :cond_0

    .line 957
    aget v0, p0, v1

    .line 955
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 961
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method public static max(JJJ)J
    .locals 1
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .line 1016
    cmp-long v0, p2, p0

    if-lez v0, :cond_0

    .line 1017
    move-wide p0, p2

    .line 1019
    :cond_0
    cmp-long v0, p4, p0

    if-lez v0, :cond_1

    .line 1020
    move-wide p0, p4

    .line 1022
    :cond_1
    return-wide p0
.end method

.method public static varargs max([J)J
    .locals 5
    .param p0, "array"    # [J

    .line 993
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 996
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 997
    .local v0, "max":J
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 998
    aget-wide v3, p0, v2

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    .line 999
    aget-wide v0, p0, v2

    .line 997
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1003
    .end local v2    # "j":I
    :cond_1
    return-wide v0
.end method

.method public static max(SSS)S
    .locals 0
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .line 1058
    if-le p1, p0, :cond_0

    .line 1059
    move p0, p1

    .line 1061
    :cond_0
    if-le p2, p0, :cond_1

    .line 1062
    move p0, p2

    .line 1064
    :cond_1
    return p0
.end method

.method public static varargs max([S)S
    .locals 3
    .param p0, "array"    # [S

    .line 1036
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1039
    const/4 v0, 0x0

    aget-short v0, p0, v0

    .line 1040
    .local v0, "max":S
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1041
    aget-short v2, p0, v1

    if-le v2, v0, :cond_0

    .line 1042
    aget-short v0, p0, v1

    .line 1040
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1046
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static min(BBB)B
    .locals 0
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .line 1100
    if-ge p1, p0, :cond_0

    .line 1101
    move p0, p1

    .line 1103
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1104
    move p0, p2

    .line 1106
    :cond_1
    return p0
.end method

.method public static varargs min([B)B
    .locals 3
    .param p0, "array"    # [B

    .line 1078
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1081
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    .line 1082
    .local v0, "min":B
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1083
    aget-byte v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 1084
    aget-byte v0, p0, v1

    .line 1082
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1088
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static min(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 1150
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs min([D)D
    .locals 5
    .param p0, "array"    # [D

    .line 1121
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1124
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 1125
    .local v0, "min":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 1126
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1127
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    return-wide v3

    .line 1129
    :cond_0
    aget-wide v3, p0, v2

    cmpg-double v3, v3, v0

    if-gez v3, :cond_1

    .line 1130
    aget-wide v0, p0, v2

    .line 1125
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1134
    .end local v2    # "i":I
    :cond_2
    return-wide v0
.end method

.method public static min(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 1194
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static varargs min([F)F
    .locals 3
    .param p0, "array"    # [F

    .line 1165
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1168
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 1169
    .local v0, "min":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 1170
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1171
    const/high16 v2, 0x7fc00000    # Float.NaN

    return v2

    .line 1173
    :cond_0
    aget v2, p0, v1

    cmpg-float v2, v2, v0

    if-gez v2, :cond_1

    .line 1174
    aget v0, p0, v1

    .line 1169
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1178
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static min(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 1230
    if-ge p1, p0, :cond_0

    .line 1231
    move p0, p1

    .line 1233
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1234
    move p0, p2

    .line 1236
    :cond_1
    return p0
.end method

.method public static varargs min([I)I
    .locals 3
    .param p0, "array"    # [I

    .line 1208
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1211
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 1212
    .local v0, "min":I
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1213
    aget v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 1214
    aget v0, p0, v1

    .line 1212
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1218
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method public static min(JJJ)J
    .locals 1
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .line 1273
    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    .line 1274
    move-wide p0, p2

    .line 1276
    :cond_0
    cmp-long v0, p4, p0

    if-gez v0, :cond_1

    .line 1277
    move-wide p0, p4

    .line 1279
    :cond_1
    return-wide p0
.end method

.method public static varargs min([J)J
    .locals 5
    .param p0, "array"    # [J

    .line 1250
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1253
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 1254
    .local v0, "min":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1255
    aget-wide v3, p0, v2

    cmp-long v3, v3, v0

    if-gez v3, :cond_0

    .line 1256
    aget-wide v0, p0, v2

    .line 1254
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1260
    .end local v2    # "i":I
    :cond_1
    return-wide v0
.end method

.method public static min(SSS)S
    .locals 0
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .line 1315
    if-ge p1, p0, :cond_0

    .line 1316
    move p0, p1

    .line 1318
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1319
    move p0, p2

    .line 1321
    :cond_1
    return p0
.end method

.method public static varargs min([S)S
    .locals 3
    .param p0, "array"    # [S

    .line 1293
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1296
    const/4 v0, 0x0

    aget-short v0, p0, v0

    .line 1297
    .local v0, "min":S
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1298
    aget-short v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 1299
    aget-short v0, p0, v1

    .line 1297
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1303
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static toByte(Ljava/lang/String;)B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 1342
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toByte(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public static toByte(Ljava/lang/String;B)B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # B

    .line 1363
    if-nez p0, :cond_0

    .line 1364
    return p1

    .line 1367
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1368
    :catch_0
    move-exception v0

    .line 1369
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public static toDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 1433
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .line 1456
    if-nez p0, :cond_0

    .line 1457
    return-wide p1

    .line 1460
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1461
    :catch_0
    move-exception v0

    .line 1462
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return-wide p1
.end method

.method public static toDouble(Ljava/math/BigDecimal;)D
    .locals 2
    .param p0, "value"    # Ljava/math/BigDecimal;

    .line 1390
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/math/BigDecimal;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/math/BigDecimal;D)D
    .locals 2
    .param p0, "value"    # Ljava/math/BigDecimal;
    .param p1, "defaultValue"    # D

    .line 1411
    if-nez p0, :cond_0

    move-wide v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static toFloat(Ljava/lang/String;)F
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 1485
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .line 1508
    if-nez p0, :cond_0

    .line 1509
    return p1

    .line 1512
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1513
    :catch_0
    move-exception v0

    .line 1514
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public static toInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 1536
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 1557
    if-nez p0, :cond_0

    .line 1558
    return p1

    .line 1561
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1562
    :catch_0
    move-exception v0

    .line 1563
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public static toLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 1585
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .line 1606
    if-nez p0, :cond_0

    .line 1607
    return-wide p1

    .line 1610
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1611
    :catch_0
    move-exception v0

    .line 1612
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return-wide p1
.end method

.method public static toScaledBigDecimal(Ljava/lang/Double;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/Double;

    .line 1667
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/Double;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Double;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/Double;
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .line 1683
    if-nez p0, :cond_0

    .line 1684
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    .line 1686
    :cond_0
    nop

    .line 1687
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1686
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Float;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/Float;

    .line 1706
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/Float;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Float;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/Float;
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .line 1722
    if-nez p0, :cond_0

    .line 1723
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    .line 1725
    :cond_0
    nop

    .line 1726
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1725
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 1745
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/String;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/String;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .line 1761
    if-nez p0, :cond_0

    .line 1762
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    .line 1764
    :cond_0
    nop

    .line 1765
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1764
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/math/BigDecimal;

    .line 1629
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "value"    # Ljava/math/BigDecimal;
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .line 1645
    if-nez p0, :cond_0

    .line 1646
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    .line 1648
    :cond_0
    nop

    .line 1650
    if-nez p2, :cond_1

    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 1648
    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toShort(Ljava/lang/String;)S
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 1789
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public static toShort(Ljava/lang/String;S)S
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # S

    .line 1810
    if-nez p0, :cond_0

    .line 1811
    return p1

    .line 1814
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1815
    :catch_0
    move-exception v0

    .line 1816
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p1
.end method

.method private static validateArray(Ljava/lang/Object;)V
    .locals 3
    .param p0, "array"    # Ljava/lang/Object;

    .line 1828
    const-string v0, "array"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1829
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "Array cannot be empty."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1830
    return-void
.end method

.method private static withDecimalsParsing(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "beginIdx"    # I

    .line 1833
    const/4 v0, 0x0

    .line 1834
    .local v0, "decimalPoints":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    .line 1835
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1836
    .local v2, "ch":C
    const/16 v4, 0x2e

    const/4 v5, 0x0

    if-ne v2, v4, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v5

    .line 1837
    .local v4, "isDecimalPoint":Z
    :goto_1
    if-eqz v4, :cond_1

    .line 1838
    add-int/lit8 v0, v0, 0x1

    .line 1840
    :cond_1
    if-le v0, v3, :cond_2

    .line 1841
    return v5

    .line 1843
    :cond_2
    if-nez v4, :cond_3

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1844
    return v5

    .line 1834
    .end local v2    # "ch":C
    .end local v4    # "isDecimalPoint":Z
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1847
    .end local v1    # "i":I
    :cond_4
    return v3
.end method
