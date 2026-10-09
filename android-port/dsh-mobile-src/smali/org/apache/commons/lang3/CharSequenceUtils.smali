.class public Lorg/apache/commons/lang3/CharSequenceUtils;
.super Ljava/lang/Object;
.source "CharSequenceUtils.java"


# static fields
.field private static final NOT_FOUND:I = -0x1

.field static final TO_STRING_LIMIT:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    return-void
.end method

.method private static checkLaterThan1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # Ljava/lang/CharSequence;
    .param p2, "len2"    # I
    .param p3, "start1"    # I

    .line 33
    const/4 v0, 0x1

    .local v0, "i":I
    add-int/lit8 v1, p2, -0x1

    .local v1, "j":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 34
    add-int v2, p3, v0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_1

    add-int v2, p3, v1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    const/4 v2, 0x0

    return v2

    .line 38
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static indexOf(Ljava/lang/CharSequence;II)I
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "start"    # I

    .line 113
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 114
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0

    .line 116
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 117
    .local v0, "sz":I
    if-gez p2, :cond_1

    .line 118
    const/4 p2, 0x0

    .line 120
    :cond_1
    const/high16 v1, 0x10000

    const/4 v2, -0x1

    if-ge p1, v1, :cond_4

    .line 121
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 122
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_2

    .line 123
    return v1

    .line 121
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "i":I
    :cond_3
    return v2

    .line 129
    :cond_4
    const v1, 0x10ffff

    if-gt p1, v1, :cond_6

    .line 130
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    .line 131
    .local v1, "chars":[C
    move v3, p2

    .local v3, "i":I
    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_6

    .line 132
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 133
    .local v4, "high":C
    add-int/lit8 v5, v3, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 134
    .local v5, "low":C
    const/4 v6, 0x0

    aget-char v6, v1, v6

    if-ne v4, v6, :cond_5

    const/4 v6, 0x1

    aget-char v6, v1, v6

    if-ne v5, v6, :cond_5

    .line 135
    return v3

    .line 131
    .end local v4    # "high":C
    .end local v5    # "low":C
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 139
    .end local v1    # "chars":[C
    .end local v3    # "i":I
    :cond_6
    return v2
.end method

.method static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .line 50
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 51
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 53
    :cond_0
    instance-of v0, p0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 54
    move-object v0, p0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 56
    :cond_1
    instance-of v0, p0, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    .line 57
    move-object v0, p0

    check-cast v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 59
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static lastIndexOf(Ljava/lang/CharSequence;II)I
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "start"    # I

    .line 246
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 247
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    return v0

    .line 249
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 250
    .local v0, "sz":I
    const/4 v1, -0x1

    if-gez p2, :cond_1

    .line 251
    return v1

    .line 253
    :cond_1
    if-lt p2, v0, :cond_2

    .line 254
    add-int/lit8 p2, v0, -0x1

    .line 256
    :cond_2
    const/high16 v2, 0x10000

    if-ge p1, v2, :cond_5

    .line 257
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 258
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_3

    .line 259
    return v2

    .line 257
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 262
    .end local v2    # "i":I
    :cond_4
    return v1

    .line 266
    :cond_5
    const v2, 0x10ffff

    if-gt p1, v2, :cond_8

    .line 267
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    .line 269
    .local v2, "chars":[C
    add-int/lit8 v3, v0, -0x1

    if-ne p2, v3, :cond_6

    .line 270
    return v1

    .line 272
    :cond_6
    move v3, p2

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_8

    .line 273
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 274
    .local v4, "high":C
    add-int/lit8 v5, v3, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 275
    .local v5, "low":C
    const/4 v6, 0x0

    aget-char v6, v2, v6

    if-ne v6, v4, :cond_7

    const/4 v6, 0x1

    aget-char v6, v2, v6

    if-ne v6, v5, :cond_7

    .line 276
    return v3

    .line 272
    .end local v4    # "high":C
    .end local v5    # "low":C
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 280
    .end local v2    # "chars":[C
    .end local v3    # "i":I
    :cond_8
    return v1
.end method

.method static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 6
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .line 151
    const/4 v0, -0x1

    if-eqz p1, :cond_f

    if-nez p0, :cond_0

    goto/16 :goto_2

    .line 154
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 155
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 156
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 158
    :cond_1
    instance-of v1, p0, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    .line 159
    move-object v0, p0

    check-cast v0, Ljava/lang/StringBuilder;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 161
    :cond_2
    instance-of v1, p0, Ljava/lang/StringBuffer;

    if-eqz v1, :cond_3

    .line 162
    move-object v0, p0

    check-cast v0, Ljava/lang/StringBuffer;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 166
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 167
    .local v1, "len1":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 169
    .local v2, "len2":I
    if-le p2, v1, :cond_4

    .line 170
    move p2, v1

    .line 173
    :cond_4
    if-ltz p2, :cond_e

    if-le v2, v1, :cond_5

    goto :goto_1

    .line 177
    :cond_5
    if-nez v2, :cond_6

    .line 178
    return p2

    .line 181
    :cond_6
    const/16 v3, 0x10

    if-gt v2, v3, :cond_9

    .line 182
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 183
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 185
    :cond_7
    instance-of v3, p0, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_8

    .line 186
    move-object v0, p0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 188
    :cond_8
    instance-of v3, p0, Ljava/lang/StringBuffer;

    if-eqz v3, :cond_9

    .line 189
    move-object v0, p0

    check-cast v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 193
    :cond_9
    add-int v3, p2, v2

    if-le v3, v1, :cond_a

    .line 194
    sub-int p2, v1, v2

    move v3, p2

    goto :goto_0

    .line 193
    :cond_a
    move v3, p2

    .line 197
    .end local p2    # "start":I
    .local v3, "start":I
    :goto_0
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 199
    .local v4, "char0":C
    move p2, v3

    .line 201
    .local p2, "i":I
    :cond_b
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_c

    .line 202
    add-int/lit8 p2, p2, -0x1

    .line 203
    if-gez p2, :cond_b

    .line 204
    return v0

    .line 207
    :cond_c
    invoke-static {p0, p1, v2, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->checkLaterThan1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 208
    return p2

    .line 210
    :cond_d
    add-int/lit8 p2, p2, -0x1

    .line 211
    if-gez p2, :cond_b

    .line 212
    return v0

    .line 174
    .end local v3    # "start":I
    .end local v4    # "char0":C
    .local p2, "start":I
    :cond_e
    :goto_1
    return v0

    .line 152
    .end local v1    # "len1":I
    .end local v2    # "len2":I
    :cond_f
    :goto_2
    return v0
.end method

.method static regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z
    .locals 15
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "ignoreCase"    # Z
    .param p2, "thisStart"    # I
    .param p3, "substring"    # Ljava/lang/CharSequence;
    .param p4, "start"    # I
    .param p5, "length"    # I

    .line 296
    move-object v0, p0

    move-object/from16 v1, p3

    move/from16 v8, p5

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 297
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    return v2

    .line 299
    :cond_0
    move/from16 v2, p2

    .line 300
    .local v2, "index1":I
    move/from16 v3, p4

    .line 301
    .local v3, "index2":I
    move/from16 v4, p5

    .line 304
    .local v4, "tmpLen":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int v5, v5, p2

    .line 305
    .local v5, "srcLen":I
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int v6, v6, p4

    .line 308
    .local v6, "otherLen":I
    const/4 v7, 0x0

    if-ltz p2, :cond_8

    if-ltz p4, :cond_8

    if-gez v8, :cond_1

    goto :goto_3

    .line 313
    :cond_1
    if-lt v5, v8, :cond_7

    if-ge v6, v8, :cond_2

    goto :goto_2

    .line 317
    :cond_2
    :goto_0
    add-int/lit8 v9, v4, -0x1

    .end local v4    # "tmpLen":I
    .local v9, "tmpLen":I
    if-lez v4, :cond_6

    .line 318
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "index1":I
    .local v4, "index1":I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 319
    .local v2, "c1":C
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "index2":I
    .local v10, "index2":I
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 321
    .local v3, "c2":C
    if-ne v2, v3, :cond_3

    .line 322
    goto :goto_1

    .line 325
    :cond_3
    if-nez p1, :cond_4

    .line 326
    return v7

    .line 330
    :cond_4
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    .line 331
    .local v11, "u1":C
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v12

    .line 332
    .local v12, "u2":C
    if-eq v11, v12, :cond_5

    invoke-static {v11}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v13

    invoke-static {v12}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v14

    if-eq v13, v14, :cond_5

    .line 333
    return v7

    .line 335
    .end local v2    # "c1":C
    .end local v3    # "c2":C
    .end local v11    # "u1":C
    .end local v12    # "u2":C
    :cond_5
    nop

    .line 317
    :goto_1
    move v2, v4

    move v4, v9

    move v3, v10

    goto :goto_0

    .line 337
    .end local v4    # "index1":I
    .end local v10    # "index2":I
    .local v2, "index1":I
    .local v3, "index2":I
    :cond_6
    const/4 v4, 0x1

    return v4

    .line 314
    .end local v9    # "tmpLen":I
    .local v4, "tmpLen":I
    :cond_7
    :goto_2
    return v7

    .line 309
    :cond_8
    :goto_3
    return v7
.end method

.method public static subSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .line 355
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static toCharArray(Ljava/lang/CharSequence;)[C
    .locals 4
    .param p0, "source"    # Ljava/lang/CharSequence;

    .line 366
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 367
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 368
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v1

    .line 370
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 371
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    return-object v1

    .line 373
    :cond_1
    new-array v1, v0, [C

    .line 374
    .local v1, "array":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 375
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    .line 374
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method
