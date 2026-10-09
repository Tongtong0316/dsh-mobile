.class public Lorg/apache/commons/codec/language/Metaphone;
.super Ljava/lang/Object;
.source "Metaphone.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# static fields
.field private static final FRONTV:Ljava/lang/String; = "EIY"

.field private static final VARSON:Ljava/lang/String; = "CSPTG"

.field private static final VOWELS:Ljava/lang/String; = "AEIOU"


# instance fields
.field private maxCodeLen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return-void
.end method

.method private isLastChar(II)Z
    .locals 1
    .param p1, "wdsz"    # I
    .param p2, "n"    # I

    .line 115
    add-int/lit8 v0, p2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNextChar(Ljava/lang/StringBuilder;IC)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I
    .param p3, "c"    # C

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "matches":Z
    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    .line 133
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 135
    :cond_1
    return v0
.end method

.method private isPreviousChar(Ljava/lang/StringBuilder;IC)Z
    .locals 2
    .param p1, "string"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I
    .param p3, "c"    # C

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "matches":Z
    if-lez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 141
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 143
    :cond_1
    return v0
.end method

.method private isVowel(Ljava/lang/StringBuilder;I)Z
    .locals 2
    .param p1, "string"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I

    .line 147
    const-string v0, "AEIOU"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I
    .param p3, "test"    # Ljava/lang/String;

    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "matches":Z
    if-ltz p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 380
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, p2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "substring":Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 383
    .end local v1    # "substring":Ljava/lang/String;
    :cond_0
    return v0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 91
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 94
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Metaphone encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 105
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .locals 1

    .line 112
    iget v0, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return v0
.end method

.method public isMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .line 127
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public metaphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "txt"    # Ljava/lang/String;

    .line 161
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 163
    .local v2, "hard":Z
    if-eqz v1, :cond_25

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move v4, v3

    .local v4, "txtLength":I
    if-nez v3, :cond_0

    goto/16 :goto_7

    .line 167
    :cond_0
    const/4 v3, 0x1

    if-ne v4, v3, :cond_1

    .line 168
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 171
    :cond_1
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 173
    .local v5, "inwd":[C
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x28

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 174
    .local v6, "local":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 176
    .local v7, "code":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    aget-char v9, v5, v8

    const/16 v10, 0x48

    const/16 v11, 0x53

    sparse-switch v9, :sswitch_data_0

    .line 210
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 206
    :sswitch_0
    aput-char v11, v5, v8

    .line 207
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 208
    goto :goto_0

    .line 194
    :sswitch_1
    aget-char v9, v5, v3

    const/16 v12, 0x52

    if-ne v9, v12, :cond_2

    .line 195
    array-length v8, v5

    sub-int/2addr v8, v3

    invoke-virtual {v6, v5, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 196
    goto :goto_0

    .line 198
    :cond_2
    aget-char v9, v5, v3

    if-ne v9, v10, :cond_3

    .line 199
    array-length v9, v5

    sub-int/2addr v9, v3

    invoke-virtual {v6, v5, v3, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 200
    const/16 v9, 0x57

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_0

    .line 202
    :cond_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 204
    goto :goto_0

    .line 180
    :sswitch_2
    aget-char v8, v5, v3

    const/16 v9, 0x4e

    if-ne v8, v9, :cond_4

    .line 181
    array-length v8, v5

    sub-int/2addr v8, v3

    invoke-virtual {v6, v5, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 183
    :cond_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 185
    goto :goto_0

    .line 187
    :sswitch_3
    aget-char v8, v5, v3

    const/16 v9, 0x45

    if-ne v8, v9, :cond_5

    .line 188
    array-length v8, v5

    sub-int/2addr v8, v3

    invoke-virtual {v6, v5, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 190
    :cond_5
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 192
    nop

    .line 213
    :goto_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 214
    .local v8, "wdsz":I
    const/4 v9, 0x0

    .line 216
    .local v9, "n":I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v13

    if-ge v12, v13, :cond_24

    if-ge v9, v8, :cond_24

    .line 217
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    .line 219
    .local v12, "symb":C
    const/16 v13, 0x43

    if-eq v12, v13, :cond_6

    invoke-direct {v0, v6, v9, v12}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v14

    if-eqz v14, :cond_6

    move v3, v10

    goto/16 :goto_6

    .line 221
    :cond_6
    const/16 v3, 0x54

    const/16 v14, 0x46

    const-string v15, "EIY"

    const/16 v13, 0x58

    const/16 v10, 0x4b

    packed-switch v12, :pswitch_data_0

    const/16 v3, 0x48

    goto/16 :goto_6

    .line 362
    :pswitch_0
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 358
    :pswitch_1
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 353
    :pswitch_2
    invoke-direct {v0, v8, v9}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_7

    add-int/lit8 v3, v9, 0x1

    invoke-direct {v0, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuilder;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 354
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x48

    goto/16 :goto_6

    .line 353
    :cond_7
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 349
    :pswitch_3
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 333
    :pswitch_4
    const-string v10, "TIA"

    invoke-direct {v0, v6, v9, v10}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "TIO"

    invoke-direct {v0, v6, v9, v10}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_2

    .line 337
    :cond_8
    const-string v10, "TCH"

    invoke-direct {v0, v6, v9, v10}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 339
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 342
    :cond_9
    const-string v10, "TH"

    invoke-direct {v0, v6, v9, v10}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 343
    const/16 v3, 0x30

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x48

    goto/16 :goto_6

    .line 345
    :cond_a
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 334
    :cond_b
    :goto_2
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 326
    :pswitch_5
    const-string v3, "SH"

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "SIO"

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "SIA"

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_3

    .line 329
    :cond_c
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 327
    :cond_d
    :goto_3
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x48

    goto/16 :goto_6

    .line 323
    :pswitch_6
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 324
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 315
    :pswitch_7
    const/16 v3, 0x48

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 317
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x48

    goto/16 :goto_6

    .line 319
    :cond_e
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 306
    :pswitch_8
    if-lez v9, :cond_10

    .line 307
    const/16 v3, 0x43

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v3

    if-nez v3, :cond_f

    .line 308
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x48

    goto/16 :goto_6

    .line 307
    :cond_f
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 311
    :cond_10
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 313
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 287
    :pswitch_9
    invoke-direct {v0, v8, v9}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 288
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 290
    :cond_11
    if-lez v9, :cond_12

    add-int/lit8 v3, v9, -0x1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const-string v10, "CSPTG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_12

    .line 291
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 293
    :cond_12
    add-int/lit8 v3, v9, 0x1

    invoke-direct {v0, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuilder;I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 294
    const/16 v3, 0x48

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 293
    :cond_13
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 269
    :pswitch_a
    const/16 v3, 0x48

    add-int/lit8 v13, v9, 0x1

    invoke-direct {v0, v8, v13}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 270
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 272
    :cond_14
    add-int/lit8 v3, v9, 0x1

    invoke-direct {v0, v8, v3}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_15

    const/16 v3, 0x48

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v13

    if-eqz v13, :cond_15

    add-int/lit8 v3, v9, 0x2

    invoke-direct {v0, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuilder;I)Z

    move-result v3

    if-nez v3, :cond_15

    .line 273
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 275
    :cond_15
    if-lez v9, :cond_17

    const-string v3, "GN"

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "GNED"

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 276
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 275
    :cond_16
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 279
    :cond_17
    const/16 v3, 0x47

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v2

    .line 280
    invoke-direct {v0, v8, v9}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_18

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_18

    if-nez v2, :cond_18

    .line 281
    const/16 v3, 0x4a

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 283
    :cond_18
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    nop

    .line 369
    :goto_4
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 303
    :pswitch_b
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 261
    :pswitch_c
    add-int/lit8 v10, v9, 0x1

    invoke-direct {v0, v8, v10}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v10

    if-nez v10, :cond_19

    const/16 v10, 0x47

    invoke-direct {v0, v6, v9, v10}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v10

    if-eqz v10, :cond_19

    add-int/lit8 v10, v9, 0x2

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    invoke-virtual {v15, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_19

    .line 262
    const/16 v3, 0x4a

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    add-int/lit8 v9, v9, 0x2

    const/16 v3, 0x48

    goto/16 :goto_6

    .line 265
    :cond_19
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 239
    :pswitch_d
    invoke-direct {v0, v6, v9, v11}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-direct {v0, v8, v9}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_1a

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1a

    .line 240
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 242
    :cond_1a
    const-string v3, "CIA"

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 243
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    const/16 v3, 0x48

    goto :goto_6

    .line 246
    :cond_1b
    invoke-direct {v0, v8, v9}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_1c

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1c

    .line 247
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    const/16 v3, 0x48

    goto :goto_6

    .line 250
    :cond_1c
    invoke-direct {v0, v6, v9, v11}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v3, 0x48

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 251
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    goto :goto_6

    .line 250
    :cond_1d
    const/16 v3, 0x48

    .line 254
    :cond_1e
    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v14

    if-eqz v14, :cond_20

    if-nez v9, :cond_1f

    const/4 v14, 0x3

    if-lt v8, v14, :cond_1f

    const/4 v14, 0x2

    invoke-direct {v0, v6, v14}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuilder;I)Z

    move-result v14

    if-eqz v14, :cond_1f

    goto :goto_5

    .line 257
    :cond_1f
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    goto :goto_6

    .line 255
    :cond_20
    :goto_5
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 232
    :pswitch_e
    const/16 v3, 0x48

    const/16 v10, 0x4d

    invoke-direct {v0, v6, v9, v10}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-direct {v0, v8, v9}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 233
    goto :goto_6

    .line 235
    :cond_21
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    goto :goto_6

    .line 227
    :pswitch_f
    const/16 v3, 0x48

    if-nez v9, :cond_22

    .line 228
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    :cond_22
    :goto_6
    const/4 v10, 0x1

    add-int/2addr v9, v10

    .line 370
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v14

    if-le v13, v14, :cond_23

    .line 371
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 373
    .end local v12    # "symb":C
    :cond_23
    move/from16 v16, v10

    move v10, v3

    move/from16 v3, v16

    goto/16 :goto_1

    .line 374
    :cond_24
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 164
    .end local v4    # "txtLength":I
    .end local v5    # "inwd":[C
    .end local v6    # "local":Ljava/lang/StringBuilder;
    .end local v7    # "code":Ljava/lang/StringBuilder;
    .end local v8    # "wdsz":I
    .end local v9    # "n":I
    :cond_25
    :goto_7
    const-string v3, ""

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_3
        0x47 -> :sswitch_2
        0x4b -> :sswitch_2
        0x50 -> :sswitch_2
        0x57 -> :sswitch_1
        0x58 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_5
        :pswitch_4
        :pswitch_f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setMaxCodeLen(I)V
    .locals 0
    .param p1, "maxCodeLen"    # I

    .line 390
    iput p1, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return-void
.end method
