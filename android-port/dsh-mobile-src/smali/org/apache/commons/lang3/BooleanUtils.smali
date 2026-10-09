.class public Lorg/apache/commons/lang3/BooleanUtils;
.super Ljava/lang/Object;
.source "BooleanUtils.java"


# static fields
.field private static final BOOLEAN_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final NO:Ljava/lang/String; = "no"

.field public static final OFF:Ljava/lang/String; = "off"

.field public static final ON:Ljava/lang/String; = "on"

.field public static final TRUE:Ljava/lang/String; = "true"

.field public static final YES:Ljava/lang/String; = "yes"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/BooleanUtils;->BOOLEAN_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1222
    return-void
.end method

.method public static varargs and([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Boolean;

    .line 133
    const-string v0, "array"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ObjectUtils;->requireNonEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/BooleanUtils;->and([Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0
.end method

.method public static varargs and([Z)Z
    .locals 4
    .param p0, "array"    # [Z

    .line 101
    const-string v0, "array"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ObjectUtils;->requireNonEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-boolean v3, p0, v2

    .line 103
    .local v3, "element":Z
    if-nez v3, :cond_0

    .line 104
    return v1

    .line 102
    .end local v3    # "element":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static booleanValues()[Ljava/lang/Boolean;
    .locals 3

    .line 144
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static compare(ZZ)I
    .locals 1
    .param p0, "x"    # Z
    .param p1, "y"    # Z

    .line 158
    if-ne p0, p1, :cond_0

    .line 159
    const/4 v0, 0x0

    return v0

    .line 161
    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 171
    .local p0, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    invoke-static {}, Lorg/apache/commons/lang3/BooleanUtils;->values()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 172
    return-void
.end method

.method public static isFalse(Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;

    .line 189
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNotFalse(Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;

    .line 207
    invoke-static {p0}, Lorg/apache/commons/lang3/BooleanUtils;->isFalse(Ljava/lang/Boolean;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotTrue(Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;

    .line 225
    invoke-static {p0}, Lorg/apache/commons/lang3/BooleanUtils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isTrue(Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;

    .line 243
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static negate(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;

    .line 263
    if-nez p0, :cond_0

    .line 264
    const/4 v0, 0x0

    return-object v0

    .line 266
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0
.end method

.method public static varargs oneHot([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Boolean;

    .line 314
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/BooleanUtils;->oneHot([Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static varargs oneHot([Z)Z
    .locals 5
    .param p0, "array"    # [Z

    .line 283
    const-string v0, "array"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ObjectUtils;->requireNonEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "result":Z
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-boolean v4, p0, v3

    .line 286
    .local v4, "element":Z
    if-eqz v4, :cond_1

    .line 287
    if-eqz v0, :cond_0

    .line 288
    return v2

    .line 290
    :cond_0
    const/4 v0, 0x1

    .line 285
    .end local v4    # "element":Z
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 293
    :cond_2
    return v0
.end method

.method public static varargs or([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Boolean;

    .line 369
    const-string v0, "array"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ObjectUtils;->requireNonEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 370
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/BooleanUtils;->or([Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0
.end method

.method public static varargs or([Z)Z
    .locals 4
    .param p0, "array"    # [Z

    .line 336
    const-string v0, "array"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ObjectUtils;->requireNonEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 337
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-boolean v3, p0, v2

    .line 338
    .local v3, "element":Z
    if-eqz v3, :cond_0

    .line 339
    const/4 v0, 0x1

    return v0

    .line 337
    .end local v3    # "element":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_1
    return v1
.end method

.method public static primitiveValues()[Z
    .locals 1

    .line 379
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method

.method public static toBoolean(I)Z
    .locals 1
    .param p0, "value"    # I

    .line 414
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static toBoolean(III)Z
    .locals 2
    .param p0, "value"    # I
    .param p1, "trueValue"    # I
    .param p2, "falseValue"    # I

    .line 439
    if-ne p0, p1, :cond_0

    .line 440
    const/4 v0, 0x1

    return v0

    .line 442
    :cond_0
    if-ne p0, p2, :cond_1

    .line 443
    const/4 v0, 0x0

    return v0

    .line 445
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBoolean(Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;

    .line 396
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static toBoolean(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 3
    .param p0, "value"    # Ljava/lang/Integer;
    .param p1, "trueValue"    # Ljava/lang/Integer;
    .param p2, "falseValue"    # Ljava/lang/Integer;

    .line 466
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    .line 467
    if-nez p1, :cond_0

    .line 468
    return v1

    .line 470
    :cond_0
    if-nez p2, :cond_3

    .line 471
    return v0

    .line 473
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 474
    return v1

    .line 475
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 476
    return v0

    .line 478
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 511
    invoke-static {p0}, Lorg/apache/commons/lang3/BooleanUtils;->toBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static toBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "trueString"    # Ljava/lang/String;
    .param p2, "falseString"    # Ljava/lang/String;

    .line 529
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 530
    return v0

    .line 532
    :cond_0
    const/4 v1, 0x0

    if-ne p0, p2, :cond_1

    .line 533
    return v1

    .line 535
    :cond_1
    if-eqz p0, :cond_3

    .line 536
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 537
    return v0

    .line 539
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 540
    return v1

    .line 543
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The String did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBooleanDefaultIfNull(Ljava/lang/Boolean;Z)Z
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;
    .param p1, "valueIfNull"    # Z

    .line 563
    if-nez p0, :cond_0

    .line 564
    return p1

    .line 566
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static toBooleanObject(I)Ljava/lang/Boolean;
    .locals 1
    .param p0, "value"    # I

    .line 584
    if-nez p0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0
.end method

.method public static toBooleanObject(IIII)Ljava/lang/Boolean;
    .locals 2
    .param p0, "value"    # I
    .param p1, "trueValue"    # I
    .param p2, "falseValue"    # I
    .param p3, "nullValue"    # I

    .line 613
    if-ne p0, p1, :cond_0

    .line 614
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 616
    :cond_0
    if-ne p0, p2, :cond_1

    .line 617
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 619
    :cond_1
    if-ne p0, p3, :cond_2

    .line 620
    const/4 v0, 0x0

    return-object v0

    .line 622
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBooleanObject(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "value"    # Ljava/lang/Integer;

    .line 645
    if-nez p0, :cond_0

    .line 646
    const/4 v0, 0x0

    return-object v0

    .line 648
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0
.end method

.method public static toBooleanObject(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;
    .param p1, "trueValue"    # Ljava/lang/Integer;
    .param p2, "falseValue"    # Ljava/lang/Integer;
    .param p3, "nullValue"    # Ljava/lang/Integer;

    .line 677
    const/4 v0, 0x0

    if-nez p0, :cond_2

    .line 678
    if-nez p1, :cond_0

    .line 679
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 681
    :cond_0
    if-nez p2, :cond_1

    .line 682
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 684
    :cond_1
    if-nez p3, :cond_5

    .line 685
    return-object v0

    .line 687
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 688
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 689
    :cond_3
    invoke-virtual {p0, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 690
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 691
    :cond_4
    invoke-virtual {p0, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 692
    return-object v0

    .line 694
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 16
    .param p0, "str"    # Ljava/lang/String;

    .line 741
    move-object/from16 v0, p0

    const-string v1, "true"

    if-ne v0, v1, :cond_0

    .line 742
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    .line 744
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 745
    return-object v1

    .line 747
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x53

    const/16 v4, 0x73

    const/16 v5, 0x54

    const/16 v6, 0x59

    const/16 v7, 0x74

    const/4 v8, 0x3

    const/16 v9, 0x79

    const/16 v10, 0x45

    const/16 v12, 0x65

    const/4 v15, 0x2

    const/16 v11, 0x46

    const/16 v14, 0x66

    const/4 v13, 0x1

    const/4 v1, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    .line 805
    :pswitch_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 806
    .local v1, "ch0":C
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 807
    .local v2, "ch1":C
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 808
    .local v5, "ch2":C
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 809
    .local v6, "ch3":C
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 810
    .local v7, "ch4":C
    if-eq v1, v14, :cond_2

    if-ne v1, v11, :cond_1b

    :cond_2
    const/16 v8, 0x61

    if-eq v2, v8, :cond_3

    const/16 v8, 0x41

    if-ne v2, v8, :cond_1b

    :cond_3
    const/16 v8, 0x6c

    if-eq v5, v8, :cond_4

    const/16 v8, 0x4c

    if-ne v5, v8, :cond_1b

    :cond_4
    if-eq v6, v4, :cond_5

    if-ne v6, v3, :cond_1b

    :cond_5
    if-eq v7, v12, :cond_6

    if-ne v7, v10, :cond_1b

    .line 815
    :cond_6
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v3

    .line 792
    .end local v1    # "ch0":C
    .end local v2    # "ch1":C
    .end local v5    # "ch2":C
    .end local v6    # "ch3":C
    .end local v7    # "ch4":C
    :pswitch_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 793
    .restart local v1    # "ch0":C
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 794
    .restart local v2    # "ch1":C
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 795
    .local v3, "ch2":C
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 796
    .local v4, "ch3":C
    if-eq v1, v7, :cond_7

    if-ne v1, v5, :cond_1b

    :cond_7
    const/16 v5, 0x72

    if-eq v2, v5, :cond_8

    const/16 v5, 0x52

    if-ne v2, v5, :cond_1b

    :cond_8
    const/16 v5, 0x75

    if-eq v3, v5, :cond_9

    const/16 v5, 0x55

    if-ne v3, v5, :cond_1b

    :cond_9
    if-eq v4, v12, :cond_a

    if-ne v4, v10, :cond_1b

    .line 800
    :cond_a
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v5

    .line 776
    .end local v1    # "ch0":C
    .end local v2    # "ch1":C
    .end local v3    # "ch2":C
    .end local v4    # "ch3":C
    :pswitch_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 777
    .restart local v1    # "ch0":C
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 778
    .restart local v2    # "ch1":C
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 779
    .restart local v5    # "ch2":C
    if-eq v1, v9, :cond_b

    if-ne v1, v6, :cond_d

    :cond_b
    if-eq v2, v12, :cond_c

    if-ne v2, v10, :cond_d

    :cond_c
    if-eq v5, v4, :cond_11

    if-ne v5, v3, :cond_d

    goto :goto_0

    .line 784
    :cond_d
    const/16 v3, 0x6f

    if-eq v1, v3, :cond_e

    const/16 v3, 0x4f

    if-ne v1, v3, :cond_1b

    :cond_e
    if-eq v2, v14, :cond_f

    if-ne v2, v11, :cond_1b

    :cond_f
    if-eq v5, v14, :cond_10

    if-ne v5, v11, :cond_1b

    .line 787
    :cond_10
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v3

    .line 782
    :cond_11
    :goto_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v3

    .line 763
    .end local v1    # "ch0":C
    .end local v2    # "ch1":C
    .end local v5    # "ch2":C
    :pswitch_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 764
    .restart local v1    # "ch0":C
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 765
    .restart local v2    # "ch1":C
    const/16 v3, 0x6f

    if-eq v1, v3, :cond_13

    const/16 v3, 0x4f

    if-ne v1, v3, :cond_12

    goto :goto_1

    :cond_12
    const/16 v3, 0x6e

    const/16 v4, 0x4e

    goto :goto_2

    :cond_13
    :goto_1
    const/16 v3, 0x6e

    if-eq v2, v3, :cond_17

    const/16 v4, 0x4e

    if-ne v2, v4, :cond_14

    goto :goto_3

    .line 769
    :cond_14
    :goto_2
    if-eq v1, v3, :cond_15

    if-ne v1, v4, :cond_1b

    :cond_15
    const/16 v3, 0x6f

    if-eq v2, v3, :cond_16

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_1b

    .line 771
    :cond_16
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v3

    .line 767
    :cond_17
    :goto_3
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v3

    .line 749
    .end local v1    # "ch0":C
    .end local v2    # "ch1":C
    :pswitch_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 750
    .restart local v1    # "ch0":C
    if-eq v1, v9, :cond_1a

    if-eq v1, v6, :cond_1a

    if-eq v1, v7, :cond_1a

    if-eq v1, v5, :cond_1a

    const/16 v2, 0x31

    if-ne v1, v2, :cond_18

    goto :goto_4

    .line 755
    :cond_18
    const/16 v2, 0x6e

    if-eq v1, v2, :cond_19

    const/16 v2, 0x4e

    if-eq v1, v2, :cond_19

    if-eq v1, v14, :cond_19

    if-eq v1, v11, :cond_19

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1b

    .line 758
    :cond_19
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v2

    .line 753
    :cond_1a
    :goto_4
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v2

    .line 823
    .end local v1    # "ch0":C
    :cond_1b
    :goto_5
    const/4 v1, 0x0

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toBooleanObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "trueString"    # Ljava/lang/String;
    .param p2, "falseString"    # Ljava/lang/String;
    .param p3, "nullString"    # Ljava/lang/String;

    .line 853
    const/4 v0, 0x0

    if-nez p0, :cond_2

    .line 854
    if-nez p1, :cond_0

    .line 855
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 857
    :cond_0
    if-nez p2, :cond_1

    .line 858
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 860
    :cond_1
    if-nez p3, :cond_5

    .line 861
    return-object v0

    .line 863
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 864
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 865
    :cond_3
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 866
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 867
    :cond_4
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 868
    return-object v0

    .line 871
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The String did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toInteger(Ljava/lang/Boolean;III)I
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;
    .param p1, "trueValue"    # I
    .param p2, "falseValue"    # I
    .param p3, "nullValue"    # I

    .line 923
    if-nez p0, :cond_0

    .line 924
    return p3

    .line 926
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    return v0
.end method

.method public static toInteger(Z)I
    .locals 0
    .param p0, "bool"    # Z

    .line 887
    return p0
.end method

.method public static toInteger(ZII)I
    .locals 1
    .param p0, "bool"    # Z
    .param p1, "trueValue"    # I
    .param p2, "falseValue"    # I

    .line 904
    if-eqz p0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method public static toIntegerObject(Ljava/lang/Boolean;)Ljava/lang/Integer;
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;

    .line 977
    if-nez p0, :cond_0

    .line 978
    const/4 v0, 0x0

    return-object v0

    .line 980
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    :goto_0
    return-object v0
.end method

.method public static toIntegerObject(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;
    .param p1, "trueValue"    # Ljava/lang/Integer;
    .param p2, "falseValue"    # Ljava/lang/Integer;
    .param p3, "nullValue"    # Ljava/lang/Integer;

    .line 999
    if-nez p0, :cond_0

    .line 1000
    return-object p3

    .line 1002
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method public static toIntegerObject(Z)Ljava/lang/Integer;
    .locals 1
    .param p0, "bool"    # Z

    .line 942
    if-eqz p0, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    :goto_0
    return-object v0
.end method

.method public static toIntegerObject(ZLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .param p0, "bool"    # Z
    .param p1, "trueValue"    # Ljava/lang/Integer;
    .param p2, "falseValue"    # Ljava/lang/Integer;

    .line 959
    if-eqz p0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method public static toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "bool"    # Ljava/lang/Boolean;
    .param p1, "trueString"    # Ljava/lang/String;
    .param p2, "falseString"    # Ljava/lang/String;
    .param p3, "nullString"    # Ljava/lang/String;

    .line 1038
    if-nez p0, :cond_0

    .line 1039
    return-object p3

    .line 1041
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method public static toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "bool"    # Z
    .param p1, "trueString"    # Ljava/lang/String;
    .param p2, "falseString"    # Ljava/lang/String;

    .line 1019
    if-eqz p0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method public static toStringOnOff(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3
    .param p0, "bool"    # Ljava/lang/Boolean;

    .line 1074
    const-string v0, "off"

    const/4 v1, 0x0

    const-string v2, "on"

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringOnOff(Z)Ljava/lang/String;
    .locals 2
    .param p0, "bool"    # Z

    .line 1057
    const-string v0, "on"

    const-string v1, "off"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringTrueFalse(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3
    .param p0, "bool"    # Ljava/lang/Boolean;

    .line 1107
    const-string v0, "false"

    const/4 v1, 0x0

    const-string v2, "true"

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringTrueFalse(Z)Ljava/lang/String;
    .locals 2
    .param p0, "bool"    # Z

    .line 1090
    const-string v0, "true"

    const-string v1, "false"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringYesNo(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3
    .param p0, "bool"    # Ljava/lang/Boolean;

    .line 1140
    const-string v0, "no"

    const/4 v1, 0x0

    const-string v2, "yes"

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringYesNo(Z)Ljava/lang/String;
    .locals 2
    .param p0, "bool"    # Z

    .line 1123
    const-string v0, "yes"

    const-string v1, "no"

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static values()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1150
    sget-object v0, Lorg/apache/commons/lang3/BooleanUtils;->BOOLEAN_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static varargs xor([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Boolean;

    .line 1206
    const-string v0, "array"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ObjectUtils;->requireNonEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1207
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/BooleanUtils;->xor([Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0
.end method

.method public static varargs xor([Z)Z
    .locals 4
    .param p0, "array"    # [Z

    .line 1176
    const-string v0, "array"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ObjectUtils;->requireNonEmpty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1178
    const/4 v0, 0x0

    .line 1179
    .local v0, "result":Z
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-boolean v3, p0, v2

    .line 1180
    .local v3, "element":Z
    xor-int/2addr v0, v3

    .line 1179
    .end local v3    # "element":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1183
    :cond_0
    return v0
.end method
