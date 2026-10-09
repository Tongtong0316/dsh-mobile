.class public Lorg/apache/commons/lang3/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

.field public static final EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

.field public static final EMPTY_CHAR_ARRAY:[C

.field public static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

.field public static final EMPTY_FIELD_ARRAY:[Ljava/lang/reflect/Field;

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

.field public static final EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

.field public static final EMPTY_METHOD_ARRAY:[Ljava/lang/reflect/Method;

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field public static final EMPTY_SHORT_ARRAY:[S

.field public static final EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

.field public static final EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    const/4 v0, 0x0

    new-array v1, v0, [Z

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 68
    new-array v1, v0, [Ljava/lang/Boolean;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    .line 73
    new-array v1, v0, [B

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    .line 78
    new-array v1, v0, [Ljava/lang/Byte;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    .line 83
    new-array v1, v0, [C

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 88
    new-array v1, v0, [Ljava/lang/Character;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    .line 93
    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 98
    new-array v1, v0, [D

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    .line 103
    new-array v1, v0, [Ljava/lang/Double;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    .line 110
    new-array v1, v0, [Ljava/lang/reflect/Field;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FIELD_ARRAY:[Ljava/lang/reflect/Field;

    .line 115
    new-array v1, v0, [F

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    .line 120
    new-array v1, v0, [Ljava/lang/Float;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    .line 125
    new-array v1, v0, [I

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    .line 130
    new-array v1, v0, [Ljava/lang/Integer;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    .line 135
    new-array v1, v0, [J

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    .line 140
    new-array v1, v0, [Ljava/lang/Long;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    .line 147
    new-array v1, v0, [Ljava/lang/reflect/Method;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_METHOD_ARRAY:[Ljava/lang/reflect/Method;

    .line 152
    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 157
    new-array v1, v0, [S

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    .line 162
    new-array v1, v0, [Ljava/lang/Short;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    .line 167
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 174
    new-array v1, v0, [Ljava/lang/Throwable;

    sput-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    .line 181
    new-array v0, v0, [Ljava/lang/reflect/Type;

    sput-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9466
    return-void
.end method

.method private static add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 651
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "Index: "

    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 652
    if-nez p1, :cond_0

    .line 655
    const/4 v0, 0x1

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 656
    .local v0, "joinedArray":Ljava/lang/Object;
    invoke-static {v0, v1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 657
    return-object v0

    .line 653
    .end local v0    # "joinedArray":Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Length: 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 659
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 660
    .local v2, "length":I
    if-gt p1, v2, :cond_3

    if-ltz p1, :cond_3

    .line 663
    new-instance v0, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda14;

    invoke-direct {v0, p3, v2}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Class;I)V

    invoke-static {p0, v1, v1, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->arraycopy(Ljava/lang/Object;IIILjava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    .line 664
    .local v0, "result":Ljava/lang/Object;
    invoke-static {v0, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 665
    if-ge p1, v2, :cond_2

    .line 666
    add-int/lit8 v1, p1, 0x1

    sub-int v3, v2, p1

    invoke-static {p0, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 668
    :cond_2
    return-object v0

    .line 661
    .end local v0    # "result":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", Length: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static add([BB)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "element"    # B

    .line 276
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 277
    .local v0, "newArray":[B
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte p1, v0, v1

    .line 278
    return-object v0
.end method

.method public static add([BIB)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "index"    # I
    .param p2, "element"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 314
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static add([CC)[C
    .locals 2
    .param p0, "array"    # [C
    .param p1, "element"    # C

    .line 340
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 341
    .local v0, "newArray":[C
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-char p1, v0, v1

    .line 342
    return-object v0
.end method

.method public static add([CIC)[C
    .locals 2
    .param p0, "array"    # [C
    .param p1, "index"    # I
    .param p2, "element"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 379
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static add([DD)[D
    .locals 2
    .param p0, "array"    # [D
    .param p1, "element"    # D

    .line 406
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 407
    .local v0, "newArray":[D
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 408
    return-object v0
.end method

.method public static add([DID)[D
    .locals 2
    .param p0, "array"    # [D
    .param p1, "index"    # I
    .param p2, "element"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 444
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static add([FF)[F
    .locals 2
    .param p0, "array"    # [F
    .param p1, "element"    # F

    .line 470
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 471
    .local v0, "newArray":[F
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 472
    return-object v0
.end method

.method public static add([FIF)[F
    .locals 2
    .param p0, "array"    # [F
    .param p1, "index"    # I
    .param p2, "element"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 508
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static add([II)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "element"    # I

    .line 534
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 535
    .local v0, "newArray":[I
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 536
    return-object v0
.end method

.method public static add([III)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "index"    # I
    .param p2, "element"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 572
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static add([JIJ)[J
    .locals 2
    .param p0, "array"    # [J
    .param p1, "index"    # I
    .param p2, "element"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 608
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static add([JJ)[J
    .locals 2
    .param p0, "array"    # [J
    .param p1, "element"    # J

    .line 634
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 635
    .local v0, "newArray":[J
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 636
    return-object v0
.end method

.method public static add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 771
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "element":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 772
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getComponentType([Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    goto :goto_0

    .line 773
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_0
    if-eqz p2, :cond_1

    .line 774
    invoke-static {p2}, Lorg/apache/commons/lang3/ObjectUtils;->getClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 778
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    return-object v1

    .line 776
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array and element cannot both be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .line 813
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 814
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 815
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    if-eqz p1, :cond_1

    .line 816
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 822
    .restart local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 823
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-object p1, v1, v2

    .line 824
    return-object v1

    .line 818
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments cannot both be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static add([SIS)[S
    .locals 2
    .param p0, "array"    # [S
    .param p1, "index"    # I
    .param p2, "element"    # S
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 704
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static add([SS)[S
    .locals 2
    .param p0, "array"    # [S
    .param p1, "element"    # S

    .line 730
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    .line 731
    .local v0, "newArray":[S
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-short p1, v0, v1

    .line 732
    return-object v0
.end method

.method public static add([ZIZ)[Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "index"    # I
    .param p2, "element"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 250
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static add([ZZ)[Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "element"    # Z

    .line 213
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 214
    .local v0, "newArray":[Z
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-boolean p1, v0, v1

    .line 215
    return-object v0
.end method

.method public static varargs addAll([B[B)[B
    .locals 4
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .line 879
    if-nez p0, :cond_0

    .line 880
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 882
    :cond_0
    if-nez p1, :cond_1

    .line 883
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 885
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 886
    .local v0, "joinedArray":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 887
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 888
    return-object v0
.end method

.method public static varargs addAll([C[C)[C
    .locals 4
    .param p0, "array1"    # [C
    .param p1, "array2"    # [C

    .line 911
    if-nez p0, :cond_0

    .line 912
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    return-object v0

    .line 914
    :cond_0
    if-nez p1, :cond_1

    .line 915
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    return-object v0

    .line 917
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    .line 918
    .local v0, "joinedArray":[C
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 919
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    return-object v0
.end method

.method public static varargs addAll([D[D)[D
    .locals 4
    .param p0, "array1"    # [D
    .param p1, "array2"    # [D

    .line 943
    if-nez p0, :cond_0

    .line 944
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    return-object v0

    .line 946
    :cond_0
    if-nez p1, :cond_1

    .line 947
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    return-object v0

    .line 949
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [D

    .line 950
    .local v0, "joinedArray":[D
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 951
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 952
    return-object v0
.end method

.method public static varargs addAll([F[F)[F
    .locals 4
    .param p0, "array1"    # [F
    .param p1, "array2"    # [F

    .line 975
    if-nez p0, :cond_0

    .line 976
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    return-object v0

    .line 978
    :cond_0
    if-nez p1, :cond_1

    .line 979
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    return-object v0

    .line 981
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [F

    .line 982
    .local v0, "joinedArray":[F
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 983
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 984
    return-object v0
.end method

.method public static varargs addAll([I[I)[I
    .locals 4
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .line 1007
    if-nez p0, :cond_0

    .line 1008
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    return-object v0

    .line 1010
    :cond_0
    if-nez p1, :cond_1

    .line 1011
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    return-object v0

    .line 1013
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 1014
    .local v0, "joinedArray":[I
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1015
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1016
    return-object v0
.end method

.method public static varargs addAll([J[J)[J
    .locals 4
    .param p0, "array1"    # [J
    .param p1, "array2"    # [J

    .line 1039
    if-nez p0, :cond_0

    .line 1040
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    return-object v0

    .line 1042
    :cond_0
    if-nez p1, :cond_1

    .line 1043
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    return-object v0

    .line 1045
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 1046
    .local v0, "joinedArray":[J
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1047
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1048
    return-object v0
.end method

.method public static varargs addAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 1110
    .local p0, "array1":[Ljava/lang/Object;, "[TT;"
    .local p1, "array2":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_0

    .line 1111
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1113
    :cond_0
    if-nez p1, :cond_1

    .line 1114
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1116
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getComponentType([Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 1117
    .local v0, "type1":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    array-length v1, p0

    new-instance v2, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p0, p1}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-static {p0, v3, v3, v1, v2}, Lorg/apache/commons/lang3/ArrayUtils;->arraycopy(Ljava/lang/Object;IIILjava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 1119
    .local v1, "joinedArray":[Ljava/lang/Object;, "[TT;"
    :try_start_0
    array-length v2, p0

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    nop

    .line 1132
    return-object v1

    .line 1120
    :catch_0
    move-exception v2

    .line 1126
    .local v2, "ase":Ljava/lang/ArrayStoreException;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 1127
    .local v3, "type2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1128
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot store "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in an array of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1130
    :cond_2
    throw v2
.end method

.method public static varargs addAll([S[S)[S
    .locals 4
    .param p0, "array1"    # [S
    .param p1, "array2"    # [S

    .line 1071
    if-nez p0, :cond_0

    .line 1072
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    return-object v0

    .line 1074
    :cond_0
    if-nez p1, :cond_1

    .line 1075
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    return-object v0

    .line 1077
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [S

    .line 1078
    .local v0, "joinedArray":[S
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1079
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1080
    return-object v0
.end method

.method public static varargs addAll([Z[Z)[Z
    .locals 4
    .param p0, "array1"    # [Z
    .param p1, "array2"    # [Z

    .line 847
    if-nez p0, :cond_0

    .line 848
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    return-object v0

    .line 850
    :cond_0
    if-nez p1, :cond_1

    .line 851
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    return-object v0

    .line 853
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    .line 854
    .local v0, "joinedArray":[Z
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 855
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 856
    return-object v0
.end method

.method public static addFirst([BB)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "element"    # B

    .line 1184
    if-nez p0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->add([BB)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-static {v1, p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->insert(I[B[B)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static addFirst([CC)[C
    .locals 2
    .param p0, "array"    # [C
    .param p1, "element"    # C

    .line 1210
    if-nez p0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->add([CC)[C

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-static {v1, p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->insert(I[C[C)[C

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static addFirst([DD)[D
    .locals 2
    .param p0, "array"    # [D
    .param p1, "element"    # D

    .line 1236
    if-nez p0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->add([DD)[D

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-static {v1, p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->insert(I[D[D)[D

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static addFirst([FF)[F
    .locals 2
    .param p0, "array"    # [F
    .param p1, "element"    # F

    .line 1262
    if-nez p0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->add([FF)[F

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-static {v1, p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->insert(I[F[F)[F

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static addFirst([II)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "element"    # I

    .line 1288
    if-nez p0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->add([II)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    filled-new-array {p1}, [I

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->insert(I[I[I)[I

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static addFirst([JJ)[J
    .locals 2
    .param p0, "array"    # [J
    .param p1, "element"    # J

    .line 1314
    if-nez p0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->add([JJ)[J

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-static {v1, p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->insert(I[J[J)[J

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static addFirst([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .line 1371
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->insert(I[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static addFirst([SS)[S
    .locals 2
    .param p0, "array"    # [S
    .param p1, "element"    # S

    .line 1340
    if-nez p0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->add([SS)[S

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [S

    const/4 v1, 0x0

    aput-short p1, v0, v1

    invoke-static {v1, p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->insert(I[S[S)[S

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static addFirst([ZZ)[Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "element"    # Z

    .line 1158
    if-nez p0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->add([ZZ)[Z

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    invoke-static {v1, p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->insert(I[Z[Z)[Z

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static arraycopy(Ljava/lang/Object;IIILjava/util/function/Function;)Ljava/lang/Object;
    .locals 1
    .param p1, "sourcePos"    # I
    .param p2, "destPos"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;III",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1391
    .local p0, "source":Ljava/lang/Object;, "TT;"
    .local p4, "allocator":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Integer;TT;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static arraycopy(Ljava/lang/Object;IIILjava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .param p1, "sourcePos"    # I
    .param p2, "destPos"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;III",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1411
    .local p0, "source":Ljava/lang/Object;, "TT;"
    .local p4, "allocator":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .param p1, "sourcePos"    # I
    .param p3, "destPos"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;ITT;II)TT;"
        }
    .end annotation

    .line 1431
    .local p0, "source":Ljava/lang/Object;, "TT;"
    .local p2, "dest":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1432
    return-object p2
.end method

.method public static clone([B)[B
    .locals 1
    .param p0, "array"    # [B

    .line 1458
    if-eqz p0, :cond_0

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static clone([C)[C
    .locals 1
    .param p0, "array"    # [C

    .line 1471
    if-eqz p0, :cond_0

    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static clone([D)[D
    .locals 1
    .param p0, "array"    # [D

    .line 1484
    if-eqz p0, :cond_0

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static clone([F)[F
    .locals 1
    .param p0, "array"    # [F

    .line 1497
    if-eqz p0, :cond_0

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static clone([I)[I
    .locals 1
    .param p0, "array"    # [I

    .line 1510
    if-eqz p0, :cond_0

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static clone([J)[J
    .locals 1
    .param p0, "array"    # [J

    .line 1523
    if-eqz p0, :cond_0

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1553
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static clone([S)[S
    .locals 1
    .param p0, "array"    # [S

    .line 1536
    if-eqz p0, :cond_0

    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static clone([Z)[Z
    .locals 1
    .param p0, "array"    # [Z

    .line 1445
    if-eqz p0, :cond_0

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static contains([BB)Z
    .locals 2
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .line 1581
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([CC)Z
    .locals 2
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .line 1596
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([DD)Z
    .locals 2
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .line 1610
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([DDD)Z
    .locals 6
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .line 1628
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([FF)Z
    .locals 2
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .line 1642
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([II)Z
    .locals 2
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .line 1656
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([JJ)Z
    .locals 2
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .line 1670
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .line 1684
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([SS)Z
    .locals 2
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .line 1698
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static contains([ZZ)Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .line 1567
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static varargs containsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectsToFind"    # [Ljava/lang/Object;

    .line 1713
    invoke-static {p1}, Lorg/apache/commons/lang3/stream/Streams;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda0;-><init>([Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method private static copyArrayGrow1(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1726
    .local p1, "newArrayComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    .line 1727
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 1728
    .local v0, "arrayLength":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 1729
    .local v1, "newArray":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1730
    return-object v1

    .line 1732
    .end local v0    # "arrayLength":I
    .end local v1    # "newArray":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)TT;"
        }
    .end annotation

    .line 1745
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->get([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)TT;"
        }
    .end annotation

    .line 1759
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->isArrayIndexValid([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p0, p1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method public static getComponentType([Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 1771
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/ObjectUtils;->getClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->getComponentType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static getLength(Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .line 1795
    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .line 1808
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([BB)I
    .locals 1
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .line 2345
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static indexOf([BBI)I
    .locals 3
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B
    .param p2, "startIndex"    # I

    .line 2365
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 2366
    return v0

    .line 2368
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result v1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2369
    aget-byte v2, p0, v1

    if-ne p1, v2, :cond_1

    .line 2370
    return v1

    .line 2368
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2373
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static indexOf([CC)I
    .locals 1
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .line 2389
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static indexOf([CCI)I
    .locals 3
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C
    .param p2, "startIndex"    # I

    .line 2410
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 2411
    return v0

    .line 2413
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result v1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2414
    aget-char v2, p0, v1

    if-ne p1, v2, :cond_1

    .line 2415
    return v1

    .line 2413
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2418
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static indexOf([DD)I
    .locals 1
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .line 2433
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDD)I
    .locals 6
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .line 2451
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDI)I
    .locals 6
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I

    .line 2471
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2472
    return v1

    .line 2474
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    .line 2475
    .local v0, "searchNaN":Z
    invoke-static {p3}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result v2

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 2476
    aget-wide v3, p0, v2

    .line 2477
    .local v3, "element":D
    cmpl-double v5, p1, v3

    if-eqz v5, :cond_2

    if-eqz v0, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 2475
    .end local v3    # "element":D
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2478
    .restart local v3    # "element":D
    :cond_2
    :goto_1
    return v2

    .line 2481
    .end local v2    # "i":I
    .end local v3    # "element":D
    :cond_3
    return v1
.end method

.method public static indexOf([DDID)I
    .locals 8
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I
    .param p4, "tolerance"    # D

    .line 2504
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2505
    return v1

    .line 2507
    :cond_0
    sub-double v2, p1, p4

    .line 2508
    .local v2, "min":D
    add-double v4, p1, p4

    .line 2509
    .local v4, "max":D
    invoke-static {p3}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result v0

    .local v0, "i":I
    :goto_0
    array-length v6, p0

    if-ge v0, v6, :cond_2

    .line 2510
    aget-wide v6, p0, v0

    cmpl-double v6, v6, v2

    if-ltz v6, :cond_1

    aget-wide v6, p0, v0

    cmpg-double v6, v6, v4

    if-gtz v6, :cond_1

    .line 2511
    return v0

    .line 2509
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2514
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public static indexOf([FF)I
    .locals 1
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .line 2529
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static indexOf([FFI)I
    .locals 5
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F
    .param p2, "startIndex"    # I

    .line 2549
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2550
    return v1

    .line 2552
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    .line 2553
    .local v0, "searchNaN":Z
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result v2

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 2554
    aget v3, p0, v2

    .line 2555
    .local v3, "element":F
    cmpl-float v4, p1, v3

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2553
    .end local v3    # "element":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2556
    .restart local v3    # "element":F
    :cond_2
    :goto_1
    return v2

    .line 2559
    .end local v2    # "i":I
    .end local v3    # "element":F
    :cond_3
    return v1
.end method

.method public static indexOf([II)I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .line 2574
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result v0

    return v0
.end method

.method public static indexOf([III)I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I
    .param p2, "startIndex"    # I

    .line 2594
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 2595
    return v0

    .line 2597
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result v1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2598
    aget v2, p0, v1

    if-ne p1, v2, :cond_1

    .line 2599
    return v1

    .line 2597
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2602
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static indexOf([JJ)I
    .locals 1
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .line 2617
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static indexOf([JJI)I
    .locals 4
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J
    .param p3, "startIndex"    # I

    .line 2637
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 2638
    return v0

    .line 2640
    :cond_0
    invoke-static {p3}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result v1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2641
    aget-wide v2, p0, v1

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 2642
    return v1

    .line 2640
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2645
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .line 2660
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I

    .line 2680
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 2681
    return v0

    .line 2683
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p2

    .line 2684
    if-nez p1, :cond_3

    .line 2685
    move v1, p2

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2686
    aget-object v2, p0, v1

    if-nez v2, :cond_1

    .line 2687
    return v1

    .line 2685
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    goto :goto_2

    .line 2691
    :cond_3
    move v1, p2

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_5

    .line 2692
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2693
    return v1

    .line 2691
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2697
    .end local v1    # "i":I
    :cond_5
    :goto_2
    return v0
.end method

.method public static indexOf([SS)I
    .locals 1
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .line 2712
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static indexOf([SSI)I
    .locals 3
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S
    .param p2, "startIndex"    # I

    .line 2732
    const/4 v0, -0x1

    if-nez p0, :cond_0

    .line 2733
    return v0

    .line 2735
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result v1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2736
    aget-short v2, p0, v1

    if-ne p1, v2, :cond_1

    .line 2737
    return v1

    .line 2735
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2740
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static indexOf([ZZ)I
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .line 2301
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static indexOf([ZZI)I
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z
    .param p2, "startIndex"    # I

    .line 2322
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 2323
    return v1

    .line 2325
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result v0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 2326
    aget-boolean v2, p0, v0

    if-ne p1, v2, :cond_1

    .line 2327
    return v0

    .line 2325
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2330
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public static indexesOf([BB)Ljava/util/BitSet;
    .locals 1
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .line 1873
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([BBI)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static indexesOf([BBI)Ljava/util/BitSet;
    .locals 2
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B
    .param p2, "startIndex"    # I

    .line 1892
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1893
    .local v0, "bitSet":Ljava/util/BitSet;
    if-nez p0, :cond_0

    .line 1894
    return-object v0

    .line 1896
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_2

    .line 1897
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BBI)I

    move-result p2

    .line 1898
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1899
    goto :goto_1

    .line 1901
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    .line 1902
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1905
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static indexesOf([CC)Ljava/util/BitSet;
    .locals 1
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .line 1920
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([CCI)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static indexesOf([CCI)Ljava/util/BitSet;
    .locals 2
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C
    .param p2, "startIndex"    # I

    .line 1939
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1940
    .local v0, "bitSet":Ljava/util/BitSet;
    if-nez p0, :cond_0

    .line 1941
    return-object v0

    .line 1943
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_2

    .line 1944
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CCI)I

    move-result p2

    .line 1945
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1946
    goto :goto_1

    .line 1948
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    .line 1949
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1951
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static indexesOf([DD)Ljava/util/BitSet;
    .locals 1
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .line 1966
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([DDI)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static indexesOf([DDD)Ljava/util/BitSet;
    .locals 6
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .line 1987
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([DDID)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static indexesOf([DDI)Ljava/util/BitSet;
    .locals 2
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I

    .line 2006
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2007
    .local v0, "bitSet":Ljava/util/BitSet;
    if-nez p0, :cond_0

    .line 2008
    return-object v0

    .line 2010
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge p3, v1, :cond_2

    .line 2011
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDI)I

    move-result p3

    .line 2012
    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    .line 2013
    goto :goto_1

    .line 2015
    :cond_1
    invoke-virtual {v0, p3}, Ljava/util/BitSet;->set(I)V

    .line 2016
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 2018
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static indexesOf([DDID)Ljava/util/BitSet;
    .locals 7
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I
    .param p4, "tolerance"    # D

    .line 2043
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2044
    .local v0, "bitSet":Ljava/util/BitSet;
    if-nez p0, :cond_0

    .line 2045
    return-object v0

    .line 2047
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge p3, v1, :cond_2

    .line 2048
    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DDID)I

    move-result p3

    .line 2049
    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    .line 2050
    goto :goto_1

    .line 2052
    :cond_1
    invoke-virtual {v0, p3}, Ljava/util/BitSet;->set(I)V

    .line 2053
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 2055
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static indexesOf([FF)Ljava/util/BitSet;
    .locals 1
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .line 2070
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([FFI)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static indexesOf([FFI)Ljava/util/BitSet;
    .locals 2
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F
    .param p2, "startIndex"    # I

    .line 2089
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2090
    .local v0, "bitSet":Ljava/util/BitSet;
    if-nez p0, :cond_0

    .line 2091
    return-object v0

    .line 2093
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_2

    .line 2094
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FFI)I

    move-result p2

    .line 2095
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 2096
    goto :goto_1

    .line 2098
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    .line 2099
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2101
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static indexesOf([II)Ljava/util/BitSet;
    .locals 1
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .line 2116
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([III)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static indexesOf([III)Ljava/util/BitSet;
    .locals 2
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I
    .param p2, "startIndex"    # I

    .line 2135
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2136
    .local v0, "bitSet":Ljava/util/BitSet;
    if-nez p0, :cond_0

    .line 2137
    return-object v0

    .line 2139
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_2

    .line 2140
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([III)I

    move-result p2

    .line 2142
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 2143
    goto :goto_1

    .line 2145
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    .line 2146
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2148
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static indexesOf([JJ)Ljava/util/BitSet;
    .locals 1
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .line 2163
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([JJI)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static indexesOf([JJI)Ljava/util/BitSet;
    .locals 2
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J
    .param p3, "startIndex"    # I

    .line 2182
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2183
    .local v0, "bitSet":Ljava/util/BitSet;
    if-nez p0, :cond_0

    .line 2184
    return-object v0

    .line 2186
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge p3, v1, :cond_2

    .line 2187
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJI)I

    move-result p3

    .line 2188
    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    .line 2189
    goto :goto_1

    .line 2191
    :cond_1
    invoke-virtual {v0, p3}, Ljava/util/BitSet;->set(I)V

    .line 2192
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 2194
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static indexesOf([Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/BitSet;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .line 2209
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([Ljava/lang/Object;Ljava/lang/Object;I)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static indexesOf([Ljava/lang/Object;Ljava/lang/Object;I)Ljava/util/BitSet;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I

    .line 2228
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2229
    .local v0, "bitSet":Ljava/util/BitSet;
    if-nez p0, :cond_0

    .line 2230
    return-object v0

    .line 2232
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_2

    .line 2233
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result p2

    .line 2234
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 2235
    goto :goto_1

    .line 2237
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    .line 2238
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2240
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static indexesOf([SS)Ljava/util/BitSet;
    .locals 1
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .line 2255
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([SSI)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static indexesOf([SSI)Ljava/util/BitSet;
    .locals 2
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S
    .param p2, "startIndex"    # I

    .line 2274
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2275
    .local v0, "bitSet":Ljava/util/BitSet;
    if-nez p0, :cond_0

    .line 2276
    return-object v0

    .line 2278
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_2

    .line 2279
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SSI)I

    move-result p2

    .line 2280
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 2281
    goto :goto_1

    .line 2283
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    .line 2284
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2286
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static indexesOf([ZZ)Ljava/util/BitSet;
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .line 1824
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([ZZI)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public static indexesOf([ZZI)Ljava/util/BitSet;
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z
    .param p2, "startIndex"    # I

    .line 1846
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1847
    .local v0, "bitSet":Ljava/util/BitSet;
    if-nez p0, :cond_0

    .line 1848
    return-object v0

    .line 1850
    :cond_0
    :goto_0
    array-length v1, p0

    if-ge p2, v1, :cond_2

    .line 1851
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZI)I

    move-result p2

    .line 1852
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1853
    goto :goto_1

    .line 1855
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->set(I)V

    .line 1856
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1858
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static varargs insert(I[B[B)[B
    .locals 3
    .param p0, "index"    # I
    .param p1, "array"    # [B
    .param p2, "values"    # [B

    .line 2803
    if-nez p1, :cond_0

    .line 2804
    const/4 v0, 0x0

    return-object v0

    .line 2806
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2807
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 2809
    :cond_1
    if-ltz p0, :cond_4

    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 2812
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 2813
    .local v0, "result":[B
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2814
    if-lez p0, :cond_2

    .line 2815
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2817
    :cond_2
    array-length v1, p1

    if-ge p0, v1, :cond_3

    .line 2818
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2820
    :cond_3
    return-object v0

    .line 2810
    .end local v0    # "result":[B
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs insert(I[C[C)[C
    .locals 3
    .param p0, "index"    # I
    .param p1, "array"    # [C
    .param p2, "values"    # [C

    .line 2843
    if-nez p1, :cond_0

    .line 2844
    const/4 v0, 0x0

    return-object v0

    .line 2846
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2847
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    return-object v0

    .line 2849
    :cond_1
    if-ltz p0, :cond_4

    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 2852
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [C

    .line 2853
    .local v0, "result":[C
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2854
    if-lez p0, :cond_2

    .line 2855
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2857
    :cond_2
    array-length v1, p1

    if-ge p0, v1, :cond_3

    .line 2858
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2860
    :cond_3
    return-object v0

    .line 2850
    .end local v0    # "result":[C
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs insert(I[D[D)[D
    .locals 3
    .param p0, "index"    # I
    .param p1, "array"    # [D
    .param p2, "values"    # [D

    .line 2883
    if-nez p1, :cond_0

    .line 2884
    const/4 v0, 0x0

    return-object v0

    .line 2886
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2887
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    return-object v0

    .line 2889
    :cond_1
    if-ltz p0, :cond_4

    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 2892
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [D

    .line 2893
    .local v0, "result":[D
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2894
    if-lez p0, :cond_2

    .line 2895
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2897
    :cond_2
    array-length v1, p1

    if-ge p0, v1, :cond_3

    .line 2898
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2900
    :cond_3
    return-object v0

    .line 2890
    .end local v0    # "result":[D
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs insert(I[F[F)[F
    .locals 3
    .param p0, "index"    # I
    .param p1, "array"    # [F
    .param p2, "values"    # [F

    .line 2923
    if-nez p1, :cond_0

    .line 2924
    const/4 v0, 0x0

    return-object v0

    .line 2926
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2927
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    return-object v0

    .line 2929
    :cond_1
    if-ltz p0, :cond_4

    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 2932
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [F

    .line 2933
    .local v0, "result":[F
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2934
    if-lez p0, :cond_2

    .line 2935
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2937
    :cond_2
    array-length v1, p1

    if-ge p0, v1, :cond_3

    .line 2938
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2940
    :cond_3
    return-object v0

    .line 2930
    .end local v0    # "result":[F
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs insert(I[I[I)[I
    .locals 3
    .param p0, "index"    # I
    .param p1, "array"    # [I
    .param p2, "values"    # [I

    .line 2963
    if-nez p1, :cond_0

    .line 2964
    const/4 v0, 0x0

    return-object v0

    .line 2966
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2967
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    return-object v0

    .line 2969
    :cond_1
    if-ltz p0, :cond_4

    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 2972
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 2973
    .local v0, "result":[I
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2974
    if-lez p0, :cond_2

    .line 2975
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2977
    :cond_2
    array-length v1, p1

    if-ge p0, v1, :cond_3

    .line 2978
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2980
    :cond_3
    return-object v0

    .line 2970
    .end local v0    # "result":[I
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs insert(I[J[J)[J
    .locals 3
    .param p0, "index"    # I
    .param p1, "array"    # [J
    .param p2, "values"    # [J

    .line 3003
    if-nez p1, :cond_0

    .line 3004
    const/4 v0, 0x0

    return-object v0

    .line 3006
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3007
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    return-object v0

    .line 3009
    :cond_1
    if-ltz p0, :cond_4

    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 3012
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 3013
    .local v0, "result":[J
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3014
    if-lez p0, :cond_2

    .line 3015
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3017
    :cond_2
    array-length v1, p1

    if-ge p0, v1, :cond_3

    .line 3018
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3020
    :cond_3
    return-object v0

    .line 3010
    .end local v0    # "result":[J
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs insert(I[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .param p0, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[TT;[TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 3092
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    .local p2, "values":[Ljava/lang/Object;, "[TT;"
    if-nez p1, :cond_0

    .line 3093
    const/4 v0, 0x0

    return-object v0

    .line 3095
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3096
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3098
    :cond_1
    if-ltz p0, :cond_4

    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 3101
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getComponentType([Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 3102
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    .line 3103
    .local v1, "length":I
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->newInstance(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v2

    .line 3104
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    array-length v3, p2

    const/4 v4, 0x0

    invoke-static {p2, v4, v2, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3105
    if-lez p0, :cond_2

    .line 3106
    invoke-static {p1, v4, v2, v4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3108
    :cond_2
    array-length v3, p1

    if-ge p0, v3, :cond_3

    .line 3109
    array-length v3, p2

    add-int/2addr v3, p0

    array-length v4, p1

    sub-int/2addr v4, p0

    invoke-static {p1, p0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3111
    :cond_3
    return-object v2

    .line 3099
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local v1    # "length":I
    .end local v2    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs insert(I[S[S)[S
    .locals 3
    .param p0, "index"    # I
    .param p1, "array"    # [S
    .param p2, "values"    # [S

    .line 3043
    if-nez p1, :cond_0

    .line 3044
    const/4 v0, 0x0

    return-object v0

    .line 3046
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3047
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    return-object v0

    .line 3049
    :cond_1
    if-ltz p0, :cond_4

    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 3052
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [S

    .line 3053
    .local v0, "result":[S
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3054
    if-lez p0, :cond_2

    .line 3055
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3057
    :cond_2
    array-length v1, p1

    if-ge p0, v1, :cond_3

    .line 3058
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3060
    :cond_3
    return-object v0

    .line 3050
    .end local v0    # "result":[S
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs insert(I[Z[Z)[Z
    .locals 3
    .param p0, "index"    # I
    .param p1, "array"    # [Z
    .param p2, "values"    # [Z

    .line 2763
    if-nez p1, :cond_0

    .line 2764
    const/4 v0, 0x0

    return-object v0

    .line 2766
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2767
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    return-object v0

    .line 2769
    :cond_1
    if-ltz p0, :cond_4

    array-length v0, p1

    if-gt p0, v0, :cond_4

    .line 2772
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    .line 2773
    .local v0, "result":[Z
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2774
    if-lez p0, :cond_2

    .line 2775
    invoke-static {p1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2777
    :cond_2
    array-length v1, p1

    if-ge p0, v1, :cond_3

    .line 2778
    array-length v1, p2

    add-int/2addr v1, p0

    array-length v2, p1

    sub-int/2addr v2, p0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2780
    :cond_3
    return-object v0

    .line 2770
    .end local v0    # "result":[Z
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isArrayEmpty(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .line 3121
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isArrayIndexValid([Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)Z"
        }
    .end annotation

    .line 3140
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-ltz p1, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEmpty([B)Z
    .locals 1
    .param p0, "array"    # [B

    .line 3162
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isArrayEmpty(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEmpty([C)Z
    .locals 1
    .param p0, "array"    # [C

    .line 3173
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isArrayEmpty(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEmpty([D)Z
    .locals 1
    .param p0, "array"    # [D

    .line 3184
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isArrayEmpty(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEmpty([F)Z
    .locals 1
    .param p0, "array"    # [F

    .line 3195
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isArrayEmpty(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEmpty([I)Z
    .locals 1
    .param p0, "array"    # [I

    .line 3206
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isArrayEmpty(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEmpty([J)Z
    .locals 1
    .param p0, "array"    # [J

    .line 3217
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isArrayEmpty(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .line 3228
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isArrayEmpty(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEmpty([S)Z
    .locals 1
    .param p0, "array"    # [S

    .line 3239
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isArrayEmpty(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEmpty([Z)Z
    .locals 1
    .param p0, "array"    # [Z

    .line 3151
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isArrayEmpty(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "array1"    # Ljava/lang/Object;
    .param p1, "array2"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3257
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    return v0
.end method

.method public static isNotEmpty([B)Z
    .locals 1
    .param p0, "array"    # [B

    .line 3279
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty([C)Z
    .locals 1
    .param p0, "array"    # [C

    .line 3290
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty([D)Z
    .locals 1
    .param p0, "array"    # [D

    .line 3301
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty([F)Z
    .locals 1
    .param p0, "array"    # [F

    .line 3312
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty([I)Z
    .locals 1
    .param p0, "array"    # [I

    .line 3323
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty([J)Z
    .locals 1
    .param p0, "array"    # [J

    .line 3334
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 3357
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty([S)Z
    .locals 1
    .param p0, "array"    # [S

    .line 3345
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty([Z)Z
    .locals 1
    .param p0, "array"    # [Z

    .line 3268
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSameLength(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array1"    # Ljava/lang/Object;
    .param p1, "array2"    # Ljava/lang/Object;

    .line 3465
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSameLength([B[B)Z
    .locals 2
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B

    .line 3383
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSameLength([C[C)Z
    .locals 2
    .param p0, "array1"    # [C
    .param p1, "array2"    # [C

    .line 3396
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSameLength([D[D)Z
    .locals 2
    .param p0, "array1"    # [D
    .param p1, "array2"    # [D

    .line 3409
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSameLength([F[F)Z
    .locals 2
    .param p0, "array1"    # [F
    .param p1, "array2"    # [F

    .line 3422
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSameLength([I[I)Z
    .locals 2
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .line 3435
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSameLength([J[J)Z
    .locals 2
    .param p0, "array1"    # [J
    .param p1, "array2"    # [J

    .line 3448
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    .line 3481
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSameLength([S[S)Z
    .locals 2
    .param p0, "array1"    # [S
    .param p1, "array2"    # [S

    .line 3494
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSameLength([Z[Z)Z
    .locals 2
    .param p0, "array1"    # [Z
    .param p1, "array2"    # [Z

    .line 3370
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "array1"    # Ljava/lang/Object;
    .param p1, "array2"    # Ljava/lang/Object;

    .line 3507
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 3510
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 3508
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSorted([B)Z
    .locals 7
    .param p0, "array"    # [B

    .line 3545
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 3546
    return v2

    .line 3548
    :cond_0
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    .line 3549
    .local v1, "previous":B
    array-length v3, p0

    .line 3550
    .local v3, "n":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 3551
    aget-byte v5, p0, v4

    .line 3552
    .local v5, "current":B
    invoke-static {v1, v5}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(BB)I

    move-result v6

    if-lez v6, :cond_1

    .line 3553
    return v0

    .line 3555
    :cond_1
    move v1, v5

    .line 3550
    .end local v5    # "current":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3557
    .end local v4    # "i":I
    :cond_2
    return v2
.end method

.method public static isSorted([C)Z
    .locals 7
    .param p0, "array"    # [C

    .line 3568
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 3569
    return v2

    .line 3571
    :cond_0
    const/4 v0, 0x0

    aget-char v1, p0, v0

    .line 3572
    .local v1, "previous":C
    array-length v3, p0

    .line 3573
    .local v3, "n":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 3574
    aget-char v5, p0, v4

    .line 3575
    .local v5, "current":C
    invoke-static {v1, v5}, Lorg/apache/commons/lang3/CharUtils;->compare(CC)I

    move-result v6

    if-lez v6, :cond_1

    .line 3576
    return v0

    .line 3578
    :cond_1
    move v1, v5

    .line 3573
    .end local v5    # "current":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3580
    .end local v4    # "i":I
    :cond_2
    return v2
.end method

.method public static isSorted([D)Z
    .locals 9
    .param p0, "array"    # [D

    .line 3591
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 3592
    return v2

    .line 3594
    :cond_0
    const/4 v0, 0x0

    aget-wide v3, p0, v0

    .line 3595
    .local v3, "previous":D
    array-length v1, p0

    .line 3596
    .local v1, "n":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 3597
    aget-wide v6, p0, v5

    .line 3598
    .local v6, "current":D
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v8

    if-lez v8, :cond_1

    .line 3599
    return v0

    .line 3601
    :cond_1
    move-wide v3, v6

    .line 3596
    .end local v6    # "current":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3603
    .end local v5    # "i":I
    :cond_2
    return v2
.end method

.method public static isSorted([F)Z
    .locals 7
    .param p0, "array"    # [F

    .line 3614
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 3615
    return v2

    .line 3617
    :cond_0
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 3618
    .local v1, "previous":F
    array-length v3, p0

    .line 3619
    .local v3, "n":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 3620
    aget v5, p0, v4

    .line 3621
    .local v5, "current":F
    invoke-static {v1, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-lez v6, :cond_1

    .line 3622
    return v0

    .line 3624
    :cond_1
    move v1, v5

    .line 3619
    .end local v5    # "current":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3626
    .end local v4    # "i":I
    :cond_2
    return v2
.end method

.method public static isSorted([I)Z
    .locals 7
    .param p0, "array"    # [I

    .line 3637
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 3638
    return v2

    .line 3640
    :cond_0
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 3641
    .local v1, "previous":I
    array-length v3, p0

    .line 3642
    .local v3, "n":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 3643
    aget v5, p0, v4

    .line 3644
    .local v5, "current":I
    invoke-static {v1, v5}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(II)I

    move-result v6

    if-lez v6, :cond_1

    .line 3645
    return v0

    .line 3647
    :cond_1
    move v1, v5

    .line 3642
    .end local v5    # "current":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3649
    .end local v4    # "i":I
    :cond_2
    return v2
.end method

.method public static isSorted([J)Z
    .locals 9
    .param p0, "array"    # [J

    .line 3660
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 3661
    return v2

    .line 3663
    :cond_0
    const/4 v0, 0x0

    aget-wide v3, p0, v0

    .line 3664
    .local v3, "previous":J
    array-length v1, p0

    .line 3665
    .local v1, "n":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 3666
    aget-wide v6, p0, v5

    .line 3667
    .local v6, "current":J
    invoke-static {v3, v4, v6, v7}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(JJ)I

    move-result v8

    if-lez v8, :cond_1

    .line 3668
    return v0

    .line 3670
    :cond_1
    move-wide v3, v6

    .line 3665
    .end local v6    # "current":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3672
    .end local v5    # "i":I
    :cond_2
    return v2
.end method

.method public static isSorted([Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;)Z"
        }
    .end annotation

    .line 3708
    .local p0, "array":[Ljava/lang/Comparable;, "[TT;"
    new-instance v0, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->isSorted([Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v0

    return v0
.end method

.method public static isSorted([Ljava/lang/Object;Ljava/util/Comparator;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "TT;>;)Z"
        }
    .end annotation

    .line 3722
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    const-string v0, "comparator"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3723
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 3724
    return v2

    .line 3726
    :cond_0
    const/4 v0, 0x0

    aget-object v1, p0, v0

    .line 3727
    .local v1, "previous":Ljava/lang/Object;, "TT;"
    array-length v3, p0

    .line 3728
    .local v3, "n":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 3729
    aget-object v5, p0, v4

    .line 3730
    .local v5, "current":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-lez v6, :cond_1

    .line 3731
    return v0

    .line 3733
    :cond_1
    move-object v1, v5

    .line 3728
    .end local v5    # "current":Ljava/lang/Object;, "TT;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3735
    .end local v4    # "i":I
    :cond_2
    return v2
.end method

.method public static isSorted([S)Z
    .locals 7
    .param p0, "array"    # [S

    .line 3683
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 3684
    return v2

    .line 3686
    :cond_0
    const/4 v0, 0x0

    aget-short v1, p0, v0

    .line 3687
    .local v1, "previous":S
    array-length v3, p0

    .line 3688
    .local v3, "n":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 3689
    aget-short v5, p0, v4

    .line 3690
    .local v5, "current":S
    invoke-static {v1, v5}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(SS)I

    move-result v6

    if-lez v6, :cond_1

    .line 3691
    return v0

    .line 3693
    :cond_1
    move v1, v5

    .line 3688
    .end local v5    # "current":S
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3695
    .end local v4    # "i":I
    :cond_2
    return v2
.end method

.method public static isSorted([Z)Z
    .locals 7
    .param p0, "array"    # [Z

    .line 3522
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 3523
    return v2

    .line 3525
    :cond_0
    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    .line 3526
    .local v1, "previous":Z
    array-length v3, p0

    .line 3527
    .local v3, "n":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 3528
    aget-boolean v5, p0, v4

    .line 3529
    .local v5, "current":Z
    invoke-static {v1, v5}, Lorg/apache/commons/lang3/BooleanUtils;->compare(ZZ)I

    move-result v6

    if-lez v6, :cond_1

    .line 3530
    return v0

    .line 3532
    :cond_1
    move v1, v5

    .line 3527
    .end local v5    # "current":Z
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3534
    .end local v4    # "i":I
    :cond_2
    return v2
.end method

.method static synthetic lambda$add$0(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "length"    # I

    .line 663
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addAll$1(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p0, "type1"    # Ljava/lang/Class;
    .param p1, "array1"    # [Ljava/lang/Object;
    .param p2, "array2"    # [Ljava/lang/Object;

    .line 1117
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->newInstance(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$containsAny$2([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "e"    # Ljava/lang/Object;

    .line 1713
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$subarray$10(I)[S
    .locals 1
    .param p0, "x$0"    # I

    .line 8072
    new-array v0, p0, [S

    return-object v0
.end method

.method static synthetic lambda$subarray$11(Ljava/lang/Class;I)[Ljava/lang/Object;
    .locals 1
    .param p0, "type"    # Ljava/lang/Class;
    .param p1, "newSize"    # I

    .line 8116
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->newInstance(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$subarray$3(I)[Z
    .locals 1
    .param p0, "x$0"    # I

    .line 7834
    new-array v0, p0, [Z

    return-object v0
.end method

.method static synthetic lambda$subarray$4(I)[B
    .locals 1
    .param p0, "x$0"    # I

    .line 7868
    new-array v0, p0, [B

    return-object v0
.end method

.method static synthetic lambda$subarray$5(I)[C
    .locals 1
    .param p0, "x$0"    # I

    .line 7902
    new-array v0, p0, [C

    return-object v0
.end method

.method static synthetic lambda$subarray$6(I)[D
    .locals 1
    .param p0, "x$0"    # I

    .line 7936
    new-array v0, p0, [D

    return-object v0
.end method

.method static synthetic lambda$subarray$7(I)[F
    .locals 1
    .param p0, "x$0"    # I

    .line 7970
    new-array v0, p0, [F

    return-object v0
.end method

.method static synthetic lambda$subarray$8(I)[I
    .locals 1
    .param p0, "x$0"    # I

    .line 8004
    new-array v0, p0, [I

    return-object v0
.end method

.method static synthetic lambda$subarray$9(I)[J
    .locals 1
    .param p0, "x$0"    # I

    .line 8038
    new-array v0, p0, [J

    return-object v0
.end method

.method static synthetic lambda$toObject$12([ZI)Ljava/lang/Boolean;
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "i"    # I

    .line 8803
    aget-boolean v0, p0, p1

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$toObject$13([BI)Ljava/lang/Byte;
    .locals 1
    .param p0, "array"    # [B
    .param p1, "i"    # I

    .line 8821
    aget-byte v0, p0, p1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toObject$14([CI)Ljava/lang/Character;
    .locals 1
    .param p0, "array"    # [C
    .param p1, "i"    # I

    .line 8839
    aget-char v0, p0, p1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toObject$15([DI)Ljava/lang/Double;
    .locals 2
    .param p0, "array"    # [D
    .param p1, "i"    # I

    .line 8857
    aget-wide v0, p0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toObject$16([FI)Ljava/lang/Float;
    .locals 1
    .param p0, "array"    # [F
    .param p1, "i"    # I

    .line 8875
    aget v0, p0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toObject$17([II)Ljava/lang/Integer;
    .locals 1
    .param p0, "array"    # [I
    .param p1, "i"    # I

    .line 8893
    aget v0, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toObject$18([JI)Ljava/lang/Long;
    .locals 2
    .param p0, "array"    # [J
    .param p1, "i"    # I

    .line 8911
    aget-wide v0, p0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toObject$19([SI)Ljava/lang/Short;
    .locals 1
    .param p0, "array"    # [S
    .param p1, "i"    # I

    .line 8929
    aget-short v0, p0, p1

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public static lastIndexOf([BB)I
    .locals 1
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B

    .line 3797
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BBI)I
    .locals 3
    .param p0, "array"    # [B
    .param p1, "valueToFind"    # B
    .param p2, "startIndex"    # I

    .line 3817
    const/4 v0, -0x1

    if-eqz p0, :cond_4

    if-gez p2, :cond_0

    goto :goto_1

    .line 3820
    :cond_0
    array-length v1, p0

    if-lt p2, v1, :cond_1

    .line 3821
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 3823
    :cond_1
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 3824
    aget-byte v2, p0, v1

    if-ne p1, v2, :cond_2

    .line 3825
    return v1

    .line 3823
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3828
    .end local v1    # "i":I
    :cond_3
    return v0

    .line 3818
    :cond_4
    :goto_1
    return v0
.end method

.method public static lastIndexOf([CC)I
    .locals 1
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C

    .line 3844
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([CCI)I
    .locals 3
    .param p0, "array"    # [C
    .param p1, "valueToFind"    # C
    .param p2, "startIndex"    # I

    .line 3865
    const/4 v0, -0x1

    if-eqz p0, :cond_4

    if-gez p2, :cond_0

    goto :goto_1

    .line 3868
    :cond_0
    array-length v1, p0

    if-lt p2, v1, :cond_1

    .line 3869
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 3871
    :cond_1
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 3872
    aget-char v2, p0, v1

    if-ne p1, v2, :cond_2

    .line 3873
    return v1

    .line 3871
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3876
    .end local v1    # "i":I
    :cond_3
    return v0

    .line 3866
    :cond_4
    :goto_1
    return v0
.end method

.method public static lastIndexOf([DD)I
    .locals 1
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D

    .line 3891
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDD)I
    .locals 6
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "tolerance"    # D

    .line 3909
    const v3, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDI)I
    .locals 4
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I

    .line 3929
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_4

    if-gez p3, :cond_0

    goto :goto_1

    .line 3932
    :cond_0
    array-length v0, p0

    if-lt p3, v0, :cond_1

    .line 3933
    array-length v0, p0

    add-int/lit8 p3, v0, -0x1

    .line 3935
    :cond_1
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 3936
    aget-wide v2, p0, v0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_2

    .line 3937
    return v0

    .line 3935
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3940
    .end local v0    # "i":I
    :cond_3
    return v1

    .line 3930
    :cond_4
    :goto_1
    return v1
.end method

.method public static lastIndexOf([DDID)I
    .locals 8
    .param p0, "array"    # [D
    .param p1, "valueToFind"    # D
    .param p3, "startIndex"    # I
    .param p4, "tolerance"    # D

    .line 3963
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_4

    if-gez p3, :cond_0

    goto :goto_1

    .line 3966
    :cond_0
    array-length v0, p0

    if-lt p3, v0, :cond_1

    .line 3967
    array-length v0, p0

    add-int/lit8 p3, v0, -0x1

    .line 3969
    :cond_1
    sub-double v2, p1, p4

    .line 3970
    .local v2, "min":D
    add-double v4, p1, p4

    .line 3971
    .local v4, "max":D
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 3972
    aget-wide v6, p0, v0

    cmpl-double v6, v6, v2

    if-ltz v6, :cond_2

    aget-wide v6, p0, v0

    cmpg-double v6, v6, v4

    if-gtz v6, :cond_2

    .line 3973
    return v0

    .line 3971
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3976
    .end local v0    # "i":I
    :cond_3
    return v1

    .line 3964
    .end local v2    # "min":D
    .end local v4    # "max":D
    :cond_4
    :goto_1
    return v1
.end method

.method public static lastIndexOf([FF)I
    .locals 1
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F

    .line 3991
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([FFI)I
    .locals 3
    .param p0, "array"    # [F
    .param p1, "valueToFind"    # F
    .param p2, "startIndex"    # I

    .line 4011
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_4

    if-gez p2, :cond_0

    goto :goto_1

    .line 4014
    :cond_0
    array-length v0, p0

    if-lt p2, v0, :cond_1

    .line 4015
    array-length v0, p0

    add-int/lit8 p2, v0, -0x1

    .line 4017
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 4018
    aget v2, p0, v0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    .line 4019
    return v0

    .line 4017
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4022
    .end local v0    # "i":I
    :cond_3
    return v1

    .line 4012
    :cond_4
    :goto_1
    return v1
.end method

.method public static lastIndexOf([II)I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I

    .line 4037
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([III)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([III)I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "valueToFind"    # I
    .param p2, "startIndex"    # I

    .line 4057
    const/4 v0, -0x1

    if-eqz p0, :cond_4

    if-gez p2, :cond_0

    goto :goto_1

    .line 4060
    :cond_0
    array-length v1, p0

    if-lt p2, v1, :cond_1

    .line 4061
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 4063
    :cond_1
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 4064
    aget v2, p0, v1

    if-ne p1, v2, :cond_2

    .line 4065
    return v1

    .line 4063
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4068
    .end local v1    # "i":I
    :cond_3
    return v0

    .line 4058
    :cond_4
    :goto_1
    return v0
.end method

.method public static lastIndexOf([JJ)I
    .locals 1
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J

    .line 4083
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([JJI)I
    .locals 4
    .param p0, "array"    # [J
    .param p1, "valueToFind"    # J
    .param p3, "startIndex"    # I

    .line 4103
    const/4 v0, -0x1

    if-eqz p0, :cond_4

    if-gez p3, :cond_0

    goto :goto_1

    .line 4106
    :cond_0
    array-length v1, p0

    if-lt p3, v1, :cond_1

    .line 4107
    array-length v1, p0

    add-int/lit8 p3, v1, -0x1

    .line 4109
    :cond_1
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 4110
    aget-wide v2, p0, v1

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 4111
    return v1

    .line 4109
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4114
    .end local v1    # "i":I
    :cond_3
    return v0

    .line 4104
    :cond_4
    :goto_1
    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;

    .line 4129
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "objectToFind"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I

    .line 4149
    const/4 v0, -0x1

    if-eqz p0, :cond_7

    if-gez p2, :cond_0

    goto :goto_3

    .line 4152
    :cond_0
    array-length v1, p0

    if-lt p2, v1, :cond_1

    .line 4153
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 4155
    :cond_1
    if-nez p1, :cond_4

    .line 4156
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 4157
    aget-object v2, p0, v1

    if-nez v2, :cond_2

    .line 4158
    return v1

    .line 4156
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_3
    goto :goto_2

    .line 4161
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4162
    move v1, p2

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_6

    .line 4163
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4164
    return v1

    .line 4162
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 4168
    .end local v1    # "i":I
    :cond_6
    :goto_2
    return v0

    .line 4150
    :cond_7
    :goto_3
    return v0
.end method

.method public static lastIndexOf([SS)I
    .locals 1
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S

    .line 4183
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([SSI)I
    .locals 3
    .param p0, "array"    # [S
    .param p1, "valueToFind"    # S
    .param p2, "startIndex"    # I

    .line 4203
    const/4 v0, -0x1

    if-eqz p0, :cond_4

    if-gez p2, :cond_0

    goto :goto_1

    .line 4206
    :cond_0
    array-length v1, p0

    if-lt p2, v1, :cond_1

    .line 4207
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    .line 4209
    :cond_1
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 4210
    aget-short v2, p0, v1

    if-ne p1, v2, :cond_2

    .line 4211
    return v1

    .line 4209
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4214
    .end local v1    # "i":I
    :cond_3
    return v0

    .line 4204
    :cond_4
    :goto_1
    return v0
.end method

.method public static lastIndexOf([ZZ)I
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z

    .line 3751
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->lastIndexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([ZZI)I
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "valueToFind"    # Z
    .param p2, "startIndex"    # I

    .line 3771
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_4

    if-gez p2, :cond_0

    goto :goto_1

    .line 3774
    :cond_0
    array-length v0, p0

    if-lt p2, v0, :cond_1

    .line 3775
    array-length v0, p0

    add-int/lit8 p2, v0, -0x1

    .line 3777
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 3778
    aget-boolean v2, p0, v0

    if-ne p1, v2, :cond_2

    .line 3779
    return v0

    .line 3777
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3782
    .end local v0    # "i":I
    :cond_3
    return v1

    .line 3772
    :cond_4
    :goto_1
    return v1
.end method

.method private static max0(I)I
    .locals 1
    .param p0, "other"    # I

    .line 4218
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static newInstance(Ljava/lang/Class;I)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)[TT;"
        }
    .end annotation

    .line 4233
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static nullTo([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 4254
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "defaultArray":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static nullToEmpty([B)[B
    .locals 1
    .param p0, "array"    # [B

    .line 4311
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static nullToEmpty([C)[C
    .locals 1
    .param p0, "array"    # [C

    .line 4349
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static nullToEmpty([D)[D
    .locals 1
    .param p0, "array"    # [D

    .line 4406
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static nullToEmpty([F)[F
    .locals 1
    .param p0, "array"    # [F

    .line 4444
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static nullToEmpty([I)[I
    .locals 1
    .param p0, "array"    # [I

    .line 4482
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static nullToEmpty([J)[J
    .locals 1
    .param p0, "array"    # [J

    .line 4520
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Boolean;)[Ljava/lang/Boolean;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Boolean;

    .line 4292
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->nullTo([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Boolean;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Byte;)[Ljava/lang/Byte;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Byte;

    .line 4330
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->nullTo([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Byte;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Character;)[Ljava/lang/Character;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Character;

    .line 4368
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->nullTo([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Character;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 4387
    .local p0, "array":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->nullTo([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Double;)[Ljava/lang/Double;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Double;

    .line 4425
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->nullTo([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Float;)[Ljava/lang/Float;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Float;

    .line 4463
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->nullTo([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Float;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Integer;)[Ljava/lang/Integer;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Integer;

    .line 4501
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->nullTo([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Long;)[Ljava/lang/Long;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Long;

    .line 4539
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->nullTo([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .line 4558
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->nullTo([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Class<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 4633
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<[TT;>;"
    if-eqz p1, :cond_1

    .line 4636
    if-nez p0, :cond_0

    .line 4637
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0

    .line 4639
    :cond_0
    return-object p0

    .line 4634
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static nullToEmpty([Ljava/lang/Short;)[Ljava/lang/Short;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Short;

    .line 4596
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->nullTo([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Short;

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [Ljava/lang/String;

    .line 4615
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->nullTo([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static nullToEmpty([S)[S
    .locals 1
    .param p0, "array"    # [S

    .line 4577
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static nullToEmpty([Z)[Z
    .locals 1
    .param p0, "array"    # [Z

    .line 4273
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private static random()Ljava/util/concurrent/ThreadLocalRandom;
    .locals 1

    .line 4643
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    return-object v0
.end method

.method private static remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "index"    # I

    .line 4901
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 4902
    .local v0, "length":I
    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 4905
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 4906
    .local v1, "result":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4907
    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_0

    .line 4908
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v0, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4910
    :cond_0
    return-object v1

    .line 4903
    .end local v1    # "result":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static remove([BI)[B
    .locals 1
    .param p0, "array"    # [B
    .param p1, "index"    # I

    .line 4709
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static remove([CI)[C
    .locals 1
    .param p0, "array"    # [C
    .param p1, "index"    # I

    .line 4742
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static remove([DI)[D
    .locals 1
    .param p0, "array"    # [D
    .param p1, "index"    # I

    .line 4775
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static remove([FI)[F
    .locals 1
    .param p0, "array"    # [F
    .param p1, "index"    # I

    .line 4808
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static remove([II)[I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "index"    # I

    .line 4841
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static remove([JI)[J
    .locals 1
    .param p0, "array"    # [J
    .param p1, "index"    # I

    .line 4874
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static remove([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 4978
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static remove([SI)[S
    .locals 1
    .param p0, "array"    # [S
    .param p1, "index"    # I

    .line 4943
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static remove([ZI)[Z
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "index"    # I

    .line 4676
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method static removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;
    .locals 8
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "indices"    # Ljava/util/BitSet;

    .line 5225
    if-nez p0, :cond_0

    .line 5226
    const/4 v0, 0x0

    return-object v0

    .line 5228
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 5235
    .local v0, "srcLength":I
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    .line 5236
    .local v1, "removals":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sub-int v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 5237
    .local v2, "result":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 5238
    .local v3, "srcIndex":I
    const/4 v4, 0x0

    .line 5241
    .local v4, "destIndex":I
    :goto_0
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    move v6, v5

    .local v6, "set":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    .line 5242
    sub-int v5, v6, v3

    .line 5243
    .local v5, "count":I
    if-lez v5, :cond_1

    .line 5244
    invoke-static {p0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5245
    add-int/2addr v4, v5

    .line 5247
    :cond_1
    invoke-virtual {p1, v6}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v3

    goto :goto_0

    .line 5249
    .end local v5    # "count":I
    :cond_2
    sub-int v5, v0, v3

    .line 5250
    .restart local v5    # "count":I
    if-lez v5, :cond_3

    .line 5251
    invoke-static {p0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5253
    :cond_3
    return-object v2
.end method

.method static varargs removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;
    .locals 11
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "indices"    # [I

    .line 5265
    if-nez p0, :cond_0

    .line 5266
    const/4 v0, 0x0

    return-object v0

    .line 5268
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 5269
    .local v0, "length":I
    const/4 v1, 0x0

    .line 5270
    .local v1, "diff":I
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/ArraySorter;->sort([I)[I

    move-result-object v2

    .line 5272
    .local v2, "clonedIndices":[I
    invoke-static {v2}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5273
    array-length v3, v2

    .line 5274
    .local v3, "i":I
    move v4, v0

    .line 5275
    .local v4, "prevIndex":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3

    .line 5276
    aget v5, v2, v3

    .line 5277
    .local v5, "index":I
    if-ltz v5, :cond_2

    if-ge v5, v0, :cond_2

    .line 5280
    if-lt v5, v4, :cond_1

    .line 5281
    goto :goto_0

    .line 5283
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 5284
    move v4, v5

    .line 5285
    .end local v5    # "index":I
    goto :goto_0

    .line 5278
    .restart local v5    # "index":I
    :cond_2
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5288
    .end local v3    # "i":I
    .end local v4    # "prevIndex":I
    .end local v5    # "index":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    sub-int v4, v0, v1

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    .line 5289
    .local v3, "result":Ljava/lang/Object;
    if-ge v1, v0, :cond_6

    if-eqz v2, :cond_6

    .line 5290
    move v4, v0

    .line 5291
    .local v4, "end":I
    sub-int v5, v0, v1

    .line 5292
    .local v5, "dest":I
    array-length v6, v2

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_5

    .line 5293
    aget v8, v2, v6

    .line 5294
    .local v8, "index":I
    sub-int v9, v4, v8

    if-le v9, v7, :cond_4

    .line 5295
    sub-int v9, v4, v8

    sub-int/2addr v9, v7

    .line 5296
    .local v9, "cp":I
    sub-int/2addr v5, v9

    .line 5297
    add-int/lit8 v10, v8, 0x1

    invoke-static {p0, v10, v3, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5300
    .end local v9    # "cp":I
    :cond_4
    move v4, v8

    .line 5292
    .end local v8    # "index":I
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 5302
    .end local v6    # "i":I
    :cond_5
    if-lez v4, :cond_6

    .line 5303
    const/4 v6, 0x0

    invoke-static {p0, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5306
    .end local v4    # "end":I
    .end local v5    # "dest":I
    :cond_6
    return-object v3
.end method

.method public static varargs removeAll([B[I)[B
    .locals 1
    .param p0, "array"    # [B
    .param p1, "indices"    # [I

    .line 5042
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static varargs removeAll([C[I)[C
    .locals 1
    .param p0, "array"    # [C
    .param p1, "indices"    # [I

    .line 5076
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static varargs removeAll([D[I)[D
    .locals 1
    .param p0, "array"    # [D
    .param p1, "indices"    # [I

    .line 5110
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static varargs removeAll([F[I)[F
    .locals 1
    .param p0, "array"    # [F
    .param p1, "indices"    # [I

    .line 5144
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static varargs removeAll([I[I)[I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "indices"    # [I

    .line 5178
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static varargs removeAll([J[I)[J
    .locals 1
    .param p0, "array"    # [J
    .param p1, "indices"    # [I

    .line 5212
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static varargs removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .locals 1
    .param p1, "indices"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I)[TT;"
        }
    .end annotation

    .line 5372
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static varargs removeAll([S[I)[S
    .locals 1
    .param p0, "array"    # [S
    .param p1, "indices"    # [I

    .line 5340
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static varargs removeAll([Z[I)[Z
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "indices"    # [I

    .line 5008
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static removeAllOccurences([BB)[B
    .locals 1
    .param p0, "array"    # [B
    .param p1, "element"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5412
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([BB)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static removeAllOccurences([CC)[C
    .locals 1
    .param p0, "array"    # [C
    .param p1, "element"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5432
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([CC)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static removeAllOccurences([DD)[D
    .locals 1
    .param p0, "array"    # [D
    .param p1, "element"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5452
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([DD)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static removeAllOccurences([FF)[F
    .locals 1
    .param p0, "array"    # [F
    .param p1, "element"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5472
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([FF)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static removeAllOccurences([II)[I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "element"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5492
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([II)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static removeAllOccurences([JJ)[J
    .locals 1
    .param p0, "array"    # [J
    .param p1, "element"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5512
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([JJ)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static removeAllOccurences([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5553
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static removeAllOccurences([SS)[S
    .locals 1
    .param p0, "array"    # [S
    .param p1, "element"    # S
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5532
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([SS)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static removeAllOccurences([ZZ)[Z
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "element"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5392
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([ZZ)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static removeAllOccurrences([BB)[B
    .locals 1
    .param p0, "array"    # [B
    .param p1, "element"    # B

    .line 5589
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([BB)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public static removeAllOccurrences([CC)[C
    .locals 1
    .param p0, "array"    # [C
    .param p1, "element"    # C

    .line 5607
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([CC)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public static removeAllOccurrences([DD)[D
    .locals 1
    .param p0, "array"    # [D
    .param p1, "element"    # D

    .line 5625
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([DD)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public static removeAllOccurrences([FF)[F
    .locals 1
    .param p0, "array"    # [F
    .param p1, "element"    # F

    .line 5643
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([FF)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static removeAllOccurrences([II)[I
    .locals 1
    .param p0, "array"    # [I
    .param p1, "element"    # I

    .line 5661
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([II)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static removeAllOccurrences([JJ)[J
    .locals 1
    .param p0, "array"    # [J
    .param p1, "element"    # J

    .line 5679
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([JJ)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public static removeAllOccurrences([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .line 5716
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static removeAllOccurrences([SS)[S
    .locals 1
    .param p0, "array"    # [S
    .param p1, "element"    # S

    .line 5697
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([SS)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public static removeAllOccurrences([ZZ)[Z
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "element"    # Z

    .line 5571
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexesOf([ZZ)Ljava/util/BitSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public static removeElement([BB)[B
    .locals 2
    .param p0, "array"    # [B
    .param p1, "element"    # B

    .line 5775
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([BB)I

    move-result v0

    .line 5776
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([BI)[B

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static removeElement([CC)[C
    .locals 2
    .param p0, "array"    # [C
    .param p1, "element"    # C

    .line 5805
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([CC)I

    move-result v0

    .line 5806
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([CI)[C

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static removeElement([DD)[D
    .locals 2
    .param p0, "array"    # [D
    .param p1, "element"    # D

    .line 5835
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([DD)I

    move-result v0

    .line 5836
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([DI)[D

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static removeElement([FF)[F
    .locals 2
    .param p0, "array"    # [F
    .param p1, "element"    # F

    .line 5865
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([FF)I

    move-result v0

    .line 5866
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([FI)[F

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static removeElement([II)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "element"    # I

    .line 5895
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([II)I

    move-result v0

    .line 5896
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([II)[I

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static removeElement([JJ)[J
    .locals 2
    .param p0, "array"    # [J
    .param p1, "element"    # J

    .line 5925
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([JJ)I

    move-result v0

    .line 5926
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([JI)[J

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static removeElement([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .line 5986
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 5987
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static removeElement([SS)[S
    .locals 2
    .param p0, "array"    # [S
    .param p1, "element"    # S

    .line 5955
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([SS)I

    move-result v0

    .line 5956
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([SI)[S

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static removeElement([ZZ)[Z
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "element"    # Z

    .line 5745
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    .line 5746
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->remove([ZI)[Z

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static varargs removeElements([B[B)[B
    .locals 8
    .param p0, "array"    # [B
    .param p1, "values"    # [B

    .line 6073
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 6076
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6077
    .local v0, "occurrences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Byte;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v3, p1, v2

    .line 6078
    .local v3, "v":B
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    .line 6079
    .local v4, "boxed":Ljava/lang/Byte;
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6080
    .local v5, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v5, :cond_1

    .line 6081
    new-instance v6, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6083
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    .line 6077
    .end local v3    # "v":B
    .end local v4    # "boxed":Ljava/lang/Byte;
    .end local v5    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6086
    :cond_2
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 6087
    .local v1, "toRemove":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 6088
    aget-byte v3, p0, v2

    .line 6089
    .local v3, "key":B
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6090
    .local v4, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-eqz v4, :cond_4

    .line 6091
    invoke-virtual {v4}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v5

    if-nez v5, :cond_3

    .line 6092
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6094
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 6087
    .end local v3    # "key":B
    .end local v4    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6097
    .end local v2    # "i":I
    :cond_5
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    return-object v2

    .line 6074
    .end local v0    # "occurrences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Byte;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v1    # "toRemove":Ljava/util/BitSet;
    :cond_6
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([C[C)[C
    .locals 8
    .param p0, "array"    # [C
    .param p1, "values"    # [C

    .line 6128
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 6131
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6132
    .local v0, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-char v3, p1, v2

    .line 6133
    .local v3, "v":C
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 6134
    .local v4, "boxed":Ljava/lang/Character;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6135
    .local v5, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v5, :cond_1

    .line 6136
    new-instance v6, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6138
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    .line 6132
    .end local v3    # "v":C
    .end local v4    # "boxed":Ljava/lang/Character;
    .end local v5    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6141
    :cond_2
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 6142
    .local v1, "toRemove":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 6143
    aget-char v3, p0, v2

    .line 6144
    .local v3, "key":C
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6145
    .local v4, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-eqz v4, :cond_4

    .line 6146
    invoke-virtual {v4}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v5

    if-nez v5, :cond_3

    .line 6147
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6149
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 6142
    .end local v3    # "key":C
    .end local v4    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6152
    .end local v2    # "i":I
    :cond_5
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    return-object v2

    .line 6129
    .end local v0    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v1    # "toRemove":Ljava/util/BitSet;
    :cond_6
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([D[D)[D
    .locals 9
    .param p0, "array"    # [D
    .param p1, "values"    # [D

    .line 6183
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 6186
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6187
    .local v0, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Double;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-wide v3, p1, v2

    .line 6188
    .local v3, "v":D
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 6189
    .local v5, "boxed":Ljava/lang/Double;
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6190
    .local v6, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v6, :cond_1

    .line 6191
    new-instance v7, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6193
    :cond_1
    invoke-virtual {v6}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    .line 6187
    .end local v3    # "v":D
    .end local v5    # "boxed":Ljava/lang/Double;
    .end local v6    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6196
    :cond_2
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 6197
    .local v1, "toRemove":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 6198
    aget-wide v3, p0, v2

    .line 6199
    .local v3, "key":D
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6200
    .local v5, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-eqz v5, :cond_4

    .line 6201
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v6

    if-nez v6, :cond_3

    .line 6202
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6204
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 6197
    .end local v3    # "key":D
    .end local v5    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6207
    .end local v2    # "i":I
    :cond_5
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    return-object v2

    .line 6184
    .end local v0    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Double;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v1    # "toRemove":Ljava/util/BitSet;
    :cond_6
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([D)[D

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([F[F)[F
    .locals 8
    .param p0, "array"    # [F
    .param p1, "values"    # [F

    .line 6238
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 6241
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6242
    .local v0, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Float;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    .line 6243
    .local v3, "v":F
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 6244
    .local v4, "boxed":Ljava/lang/Float;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6245
    .local v5, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v5, :cond_1

    .line 6246
    new-instance v6, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6248
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    .line 6242
    .end local v3    # "v":F
    .end local v4    # "boxed":Ljava/lang/Float;
    .end local v5    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6251
    :cond_2
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 6252
    .local v1, "toRemove":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 6253
    aget v3, p0, v2

    .line 6254
    .local v3, "key":F
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6255
    .local v4, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-eqz v4, :cond_4

    .line 6256
    invoke-virtual {v4}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v5

    if-nez v5, :cond_3

    .line 6257
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6259
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 6252
    .end local v3    # "key":F
    .end local v4    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6262
    .end local v2    # "i":I
    :cond_5
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    return-object v2

    .line 6239
    .end local v0    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Float;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v1    # "toRemove":Ljava/util/BitSet;
    :cond_6
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([F)[F

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([I[I)[I
    .locals 8
    .param p0, "array"    # [I
    .param p1, "values"    # [I

    .line 6293
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 6296
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6297
    .local v0, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    .line 6298
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 6299
    .local v4, "boxed":Ljava/lang/Integer;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6300
    .local v5, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v5, :cond_1

    .line 6301
    new-instance v6, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6303
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    .line 6297
    .end local v3    # "v":I
    .end local v4    # "boxed":Ljava/lang/Integer;
    .end local v5    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6306
    :cond_2
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 6307
    .local v1, "toRemove":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 6308
    aget v3, p0, v2

    .line 6309
    .local v3, "key":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6310
    .local v4, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-eqz v4, :cond_4

    .line 6311
    invoke-virtual {v4}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v5

    if-nez v5, :cond_3

    .line 6312
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6314
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 6307
    .end local v3    # "key":I
    .end local v4    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6317
    .end local v2    # "i":I
    :cond_5
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    return-object v2

    .line 6294
    .end local v0    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v1    # "toRemove":Ljava/util/BitSet;
    :cond_6
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([J[J)[J
    .locals 9
    .param p0, "array"    # [J
    .param p1, "values"    # [J

    .line 6348
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 6351
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6352
    .local v0, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-wide v3, p1, v2

    .line 6353
    .local v3, "v":J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 6354
    .local v5, "boxed":Ljava/lang/Long;
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6355
    .local v6, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v6, :cond_1

    .line 6356
    new-instance v7, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6358
    :cond_1
    invoke-virtual {v6}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    .line 6352
    .end local v3    # "v":J
    .end local v5    # "boxed":Ljava/lang/Long;
    .end local v6    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6361
    :cond_2
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 6362
    .local v1, "toRemove":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 6363
    aget-wide v3, p0, v2

    .line 6364
    .local v3, "key":J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6365
    .local v5, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-eqz v5, :cond_4

    .line 6366
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v6

    if-nez v6, :cond_3

    .line 6367
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6369
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 6362
    .end local v3    # "key":J
    .end local v5    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6372
    .end local v2    # "i":I
    :cond_5
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    return-object v2

    .line 6349
    .end local v0    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v1    # "toRemove":Ljava/util/BitSet;
    :cond_6
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 6460
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 6463
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6464
    .local v0, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 6465
    .local v3, "v":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6466
    .local v4, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v4, :cond_1

    .line 6467
    new-instance v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6469
    :cond_1
    invoke-virtual {v4}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    .line 6464
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    .end local v4    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6472
    :cond_2
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 6473
    .local v1, "toRemove":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 6474
    aget-object v3, p0, v2

    .line 6475
    .local v3, "key":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6476
    .restart local v4    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-eqz v4, :cond_4

    .line 6477
    invoke-virtual {v4}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v5

    if-nez v5, :cond_3

    .line 6478
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6480
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 6473
    .end local v3    # "key":Ljava/lang/Object;, "TT;"
    .end local v4    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6484
    .end local v2    # "i":I
    :cond_5
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 6485
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    return-object v2

    .line 6461
    .end local v0    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v1    # "toRemove":Ljava/util/BitSet;
    .end local v2    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_6
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([S[S)[S
    .locals 8
    .param p0, "array"    # [S
    .param p1, "values"    # [S

    .line 6403
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 6406
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6407
    .local v0, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Short;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-short v3, p1, v2

    .line 6408
    .local v3, "v":S
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    .line 6409
    .local v4, "boxed":Ljava/lang/Short;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6410
    .local v5, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v5, :cond_1

    .line 6411
    new-instance v6, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6413
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    .line 6407
    .end local v3    # "v":S
    .end local v4    # "boxed":Ljava/lang/Short;
    .end local v5    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6416
    :cond_2
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 6417
    .local v1, "toRemove":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 6418
    aget-short v3, p0, v2

    .line 6419
    .local v3, "key":S
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6420
    .local v4, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-eqz v4, :cond_4

    .line 6421
    invoke-virtual {v4}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v5

    if-nez v5, :cond_3

    .line 6422
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6424
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 6417
    .end local v3    # "key":S
    .end local v4    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6427
    .end local v2    # "i":I
    :cond_5
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [S

    return-object v2

    .line 6404
    .end local v0    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Short;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v1    # "toRemove":Ljava/util/BitSet;
    :cond_6
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([S)[S

    move-result-object v0

    return-object v0
.end method

.method public static varargs removeElements([Z[Z)[Z
    .locals 8
    .param p0, "array"    # [Z
    .param p1, "values"    # [Z

    .line 6018
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 6021
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 6022
    .local v0, "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Boolean;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-boolean v3, p1, v2

    .line 6023
    .local v3, "v":Z
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 6024
    .local v4, "boxed":Ljava/lang/Boolean;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6025
    .local v5, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-nez v5, :cond_1

    .line 6026
    new-instance v6, Lorg/apache/commons/lang3/mutable/MutableInt;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lorg/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6028
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/lang3/mutable/MutableInt;->increment()V

    .line 6022
    .end local v3    # "v":Z
    .end local v4    # "boxed":Ljava/lang/Boolean;
    .end local v5    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6031
    :cond_2
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 6032
    .local v1, "toRemove":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 6033
    aget-boolean v3, p0, v2

    .line 6034
    .local v3, "key":Z
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/lang3/mutable/MutableInt;

    .line 6035
    .local v4, "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    if-eqz v4, :cond_4

    .line 6036
    invoke-virtual {v4}, Lorg/apache/commons/lang3/mutable/MutableInt;->decrementAndGet()I

    move-result v5

    if-nez v5, :cond_3

    .line 6037
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6039
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 6032
    .end local v3    # "key":Z
    .end local v4    # "count":Lorg/apache/commons/lang3/mutable/MutableInt;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6042
    .end local v2    # "i":I
    :cond_5
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->removeAll(Ljava/lang/Object;Ljava/util/BitSet;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    return-object v2

    .line 6019
    .end local v0    # "occurrences":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Boolean;Lorg/apache/commons/lang3/mutable/MutableInt;>;"
    .end local v1    # "toRemove":Ljava/util/BitSet;
    :cond_6
    :goto_3
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    return-object v0
.end method

.method public static reverse([B)V
    .locals 2
    .param p0, "array"    # [B

    .line 6544
    if-eqz p0, :cond_0

    .line 6545
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([BII)V

    .line 6547
    :cond_0
    return-void
.end method

.method public static reverse([BII)V
    .locals 4
    .param p0, "array"    # [B
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 6566
    if-nez p0, :cond_0

    .line 6567
    return-void

    .line 6569
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6570
    .local v0, "i":I
    array-length v1, p0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 6572
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 6573
    aget-byte v2, p0, v1

    .line 6574
    .local v2, "tmp":B
    aget-byte v3, p0, v0

    aput-byte v3, p0, v1

    .line 6575
    aput-byte v2, p0, v0

    .line 6576
    add-int/lit8 v1, v1, -0x1

    .line 6577
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6579
    .end local v2    # "tmp":B
    :cond_1
    return-void
.end method

.method public static reverse([C)V
    .locals 2
    .param p0, "array"    # [C

    .line 6590
    if-eqz p0, :cond_0

    .line 6591
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([CII)V

    .line 6593
    :cond_0
    return-void
.end method

.method public static reverse([CII)V
    .locals 4
    .param p0, "array"    # [C
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 6612
    if-nez p0, :cond_0

    .line 6613
    return-void

    .line 6615
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6616
    .local v0, "i":I
    array-length v1, p0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 6618
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 6619
    aget-char v2, p0, v1

    .line 6620
    .local v2, "tmp":C
    aget-char v3, p0, v0

    aput-char v3, p0, v1

    .line 6621
    aput-char v2, p0, v0

    .line 6622
    add-int/lit8 v1, v1, -0x1

    .line 6623
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6625
    .end local v2    # "tmp":C
    :cond_1
    return-void
.end method

.method public static reverse([D)V
    .locals 2
    .param p0, "array"    # [D

    .line 6636
    if-eqz p0, :cond_0

    .line 6637
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([DII)V

    .line 6639
    :cond_0
    return-void
.end method

.method public static reverse([DII)V
    .locals 6
    .param p0, "array"    # [D
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 6658
    if-nez p0, :cond_0

    .line 6659
    return-void

    .line 6661
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6662
    .local v0, "i":I
    array-length v1, p0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 6664
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 6665
    aget-wide v2, p0, v1

    .line 6666
    .local v2, "tmp":D
    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    .line 6667
    aput-wide v2, p0, v0

    .line 6668
    add-int/lit8 v1, v1, -0x1

    .line 6669
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6671
    .end local v2    # "tmp":D
    :cond_1
    return-void
.end method

.method public static reverse([F)V
    .locals 2
    .param p0, "array"    # [F

    .line 6682
    if-eqz p0, :cond_0

    .line 6683
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([FII)V

    .line 6685
    :cond_0
    return-void
.end method

.method public static reverse([FII)V
    .locals 4
    .param p0, "array"    # [F
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 6704
    if-nez p0, :cond_0

    .line 6705
    return-void

    .line 6707
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6708
    .local v0, "i":I
    array-length v1, p0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 6710
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 6711
    aget v2, p0, v1

    .line 6712
    .local v2, "tmp":F
    aget v3, p0, v0

    aput v3, p0, v1

    .line 6713
    aput v2, p0, v0

    .line 6714
    add-int/lit8 v1, v1, -0x1

    .line 6715
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6717
    .end local v2    # "tmp":F
    :cond_1
    return-void
.end method

.method public static reverse([I)V
    .locals 2
    .param p0, "array"    # [I

    .line 6728
    if-eqz p0, :cond_0

    .line 6729
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([III)V

    .line 6731
    :cond_0
    return-void
.end method

.method public static reverse([III)V
    .locals 4
    .param p0, "array"    # [I
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 6750
    if-nez p0, :cond_0

    .line 6751
    return-void

    .line 6753
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6754
    .local v0, "i":I
    array-length v1, p0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 6756
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 6757
    aget v2, p0, v1

    .line 6758
    .local v2, "tmp":I
    aget v3, p0, v0

    aput v3, p0, v1

    .line 6759
    aput v2, p0, v0

    .line 6760
    add-int/lit8 v1, v1, -0x1

    .line 6761
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6763
    .end local v2    # "tmp":I
    :cond_1
    return-void
.end method

.method public static reverse([J)V
    .locals 2
    .param p0, "array"    # [J

    .line 6774
    if-eqz p0, :cond_0

    .line 6775
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([JII)V

    .line 6777
    :cond_0
    return-void
.end method

.method public static reverse([JII)V
    .locals 6
    .param p0, "array"    # [J
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 6796
    if-nez p0, :cond_0

    .line 6797
    return-void

    .line 6799
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6800
    .local v0, "i":I
    array-length v1, p0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 6802
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 6803
    aget-wide v2, p0, v1

    .line 6804
    .local v2, "tmp":J
    aget-wide v4, p0, v0

    aput-wide v4, p0, v1

    .line 6805
    aput-wide v2, p0, v0

    .line 6806
    add-int/lit8 v1, v1, -0x1

    .line 6807
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6809
    .end local v2    # "tmp":J
    :cond_1
    return-void
.end method

.method public static reverse([Ljava/lang/Object;)V
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;

    .line 6823
    if-eqz p0, :cond_0

    .line 6824
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([Ljava/lang/Object;II)V

    .line 6826
    :cond_0
    return-void
.end method

.method public static reverse([Ljava/lang/Object;II)V
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 6845
    if-nez p0, :cond_0

    .line 6846
    return-void

    .line 6848
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6849
    .local v0, "i":I
    array-length v1, p0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 6851
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 6852
    aget-object v2, p0, v1

    .line 6853
    .local v2, "tmp":Ljava/lang/Object;
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 6854
    aput-object v2, p0, v0

    .line 6855
    add-int/lit8 v1, v1, -0x1

    .line 6856
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6858
    .end local v2    # "tmp":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public static reverse([S)V
    .locals 2
    .param p0, "array"    # [S

    .line 6869
    if-eqz p0, :cond_0

    .line 6870
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([SII)V

    .line 6872
    :cond_0
    return-void
.end method

.method public static reverse([SII)V
    .locals 4
    .param p0, "array"    # [S
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 6891
    if-nez p0, :cond_0

    .line 6892
    return-void

    .line 6894
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6895
    .local v0, "i":I
    array-length v1, p0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 6897
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 6898
    aget-short v2, p0, v1

    .line 6899
    .local v2, "tmp":S
    aget-short v3, p0, v0

    aput-short v3, p0, v1

    .line 6900
    aput-short v2, p0, v0

    .line 6901
    add-int/lit8 v1, v1, -0x1

    .line 6902
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6904
    .end local v2    # "tmp":S
    :cond_1
    return-void
.end method

.method public static reverse([Z)V
    .locals 2
    .param p0, "array"    # [Z

    .line 6497
    if-nez p0, :cond_0

    .line 6498
    return-void

    .line 6500
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([ZII)V

    .line 6501
    return-void
.end method

.method public static reverse([ZII)V
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 6520
    if-nez p0, :cond_0

    .line 6521
    return-void

    .line 6523
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6524
    .local v0, "i":I
    array-length v1, p0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 6526
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_1

    .line 6527
    aget-boolean v2, p0, v1

    .line 6528
    .local v2, "tmp":Z
    aget-boolean v3, p0, v0

    aput-boolean v3, p0, v1

    .line 6529
    aput-boolean v2, p0, v0

    .line 6530
    add-int/lit8 v1, v1, -0x1

    .line 6531
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6533
    .end local v2    # "tmp":Z
    :cond_1
    return-void
.end method

.method public static setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/IntFunction<",
            "+TT;>;)[TT;"
        }
    .end annotation

    .line 6920
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<+TT;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 6921
    invoke-static {p0, p1}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 6923
    :cond_0
    return-object p0
.end method

.method public static setAll([Ljava/lang/Object;Ljava/util/function/Supplier;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/function/Supplier<",
            "+TT;>;)[TT;"
        }
    .end annotation

    .line 6940
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "generator":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 6941
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 6942
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p0, v0

    .line 6941
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6945
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public static shift([BI)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "offset"    # I

    .line 7031
    if-eqz p0, :cond_0

    .line 7032
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([BIII)V

    .line 7034
    :cond_0
    return-void
.end method

.method public static shift([BIII)V
    .locals 4
    .param p0, "array"    # [B
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .param p3, "offset"    # I

    .line 7056
    if-eqz p0, :cond_6

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_6

    if-gtz p2, :cond_0

    goto :goto_2

    .line 7059
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 7060
    array-length v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 7061
    sub-int v0, p2, p1

    .line 7062
    .local v0, "n":I
    if-gt v0, v1, :cond_1

    .line 7063
    return-void

    .line 7065
    :cond_1
    rem-int/2addr p3, v0

    .line 7066
    if-gez p3, :cond_2

    .line 7067
    add-int/2addr p3, v0

    .line 7071
    :cond_2
    :goto_0
    if-le v0, v1, :cond_5

    if-lez p3, :cond_5

    .line 7072
    sub-int v2, v0, p3

    .line 7073
    .local v2, "nOffset":I
    if-le p3, v2, :cond_3

    .line 7074
    add-int v3, p1, v0

    sub-int/2addr v3, v2

    invoke-static {p0, p1, v3, v2}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    .line 7075
    move v0, p3

    .line 7076
    sub-int/2addr p3, v2

    goto :goto_1

    .line 7077
    :cond_3
    if-ge p3, v2, :cond_4

    .line 7078
    add-int v3, p1, v2

    invoke-static {p0, p1, v3, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    .line 7079
    add-int/2addr p1, p3

    .line 7080
    move v0, v2

    .line 7085
    .end local v2    # "nOffset":I
    :goto_1
    goto :goto_0

    .line 7082
    .restart local v2    # "nOffset":I
    :cond_4
    add-int v1, p1, v2

    invoke-static {p0, p1, v1, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    .line 7083
    nop

    .line 7086
    .end local v2    # "nOffset":I
    :cond_5
    return-void

    .line 7057
    .end local v0    # "n":I
    :cond_6
    :goto_2
    return-void
.end method

.method public static shift([CI)V
    .locals 2
    .param p0, "array"    # [C
    .param p1, "offset"    # I

    .line 7101
    if-eqz p0, :cond_0

    .line 7102
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([CIII)V

    .line 7104
    :cond_0
    return-void
.end method

.method public static shift([CIII)V
    .locals 4
    .param p0, "array"    # [C
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .param p3, "offset"    # I

    .line 7126
    if-eqz p0, :cond_6

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_6

    if-gtz p2, :cond_0

    goto :goto_2

    .line 7129
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 7130
    array-length v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 7131
    sub-int v0, p2, p1

    .line 7132
    .local v0, "n":I
    if-gt v0, v1, :cond_1

    .line 7133
    return-void

    .line 7135
    :cond_1
    rem-int/2addr p3, v0

    .line 7136
    if-gez p3, :cond_2

    .line 7137
    add-int/2addr p3, v0

    .line 7141
    :cond_2
    :goto_0
    if-le v0, v1, :cond_5

    if-lez p3, :cond_5

    .line 7142
    sub-int v2, v0, p3

    .line 7143
    .local v2, "nOffset":I
    if-le p3, v2, :cond_3

    .line 7144
    add-int v3, p1, v0

    sub-int/2addr v3, v2

    invoke-static {p0, p1, v3, v2}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    .line 7145
    move v0, p3

    .line 7146
    sub-int/2addr p3, v2

    goto :goto_1

    .line 7147
    :cond_3
    if-ge p3, v2, :cond_4

    .line 7148
    add-int v3, p1, v2

    invoke-static {p0, p1, v3, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    .line 7149
    add-int/2addr p1, p3

    .line 7150
    move v0, v2

    .line 7155
    .end local v2    # "nOffset":I
    :goto_1
    goto :goto_0

    .line 7152
    .restart local v2    # "nOffset":I
    :cond_4
    add-int v1, p1, v2

    invoke-static {p0, p1, v1, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    .line 7153
    nop

    .line 7156
    .end local v2    # "nOffset":I
    :cond_5
    return-void

    .line 7127
    .end local v0    # "n":I
    :cond_6
    :goto_2
    return-void
.end method

.method public static shift([DI)V
    .locals 2
    .param p0, "array"    # [D
    .param p1, "offset"    # I

    .line 7171
    if-eqz p0, :cond_0

    .line 7172
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([DIII)V

    .line 7174
    :cond_0
    return-void
.end method

.method public static shift([DIII)V
    .locals 4
    .param p0, "array"    # [D
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .param p3, "offset"    # I

    .line 7196
    if-eqz p0, :cond_6

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_6

    if-gtz p2, :cond_0

    goto :goto_2

    .line 7199
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 7200
    array-length v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 7201
    sub-int v0, p2, p1

    .line 7202
    .local v0, "n":I
    if-gt v0, v1, :cond_1

    .line 7203
    return-void

    .line 7205
    :cond_1
    rem-int/2addr p3, v0

    .line 7206
    if-gez p3, :cond_2

    .line 7207
    add-int/2addr p3, v0

    .line 7211
    :cond_2
    :goto_0
    if-le v0, v1, :cond_5

    if-lez p3, :cond_5

    .line 7212
    sub-int v2, v0, p3

    .line 7213
    .local v2, "nOffset":I
    if-le p3, v2, :cond_3

    .line 7214
    add-int v3, p1, v0

    sub-int/2addr v3, v2

    invoke-static {p0, p1, v3, v2}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    .line 7215
    move v0, p3

    .line 7216
    sub-int/2addr p3, v2

    goto :goto_1

    .line 7217
    :cond_3
    if-ge p3, v2, :cond_4

    .line 7218
    add-int v3, p1, v2

    invoke-static {p0, p1, v3, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    .line 7219
    add-int/2addr p1, p3

    .line 7220
    move v0, v2

    .line 7225
    .end local v2    # "nOffset":I
    :goto_1
    goto :goto_0

    .line 7222
    .restart local v2    # "nOffset":I
    :cond_4
    add-int v1, p1, v2

    invoke-static {p0, p1, v1, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    .line 7223
    nop

    .line 7226
    .end local v2    # "nOffset":I
    :cond_5
    return-void

    .line 7197
    .end local v0    # "n":I
    :cond_6
    :goto_2
    return-void
.end method

.method public static shift([FI)V
    .locals 2
    .param p0, "array"    # [F
    .param p1, "offset"    # I

    .line 7241
    if-eqz p0, :cond_0

    .line 7242
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([FIII)V

    .line 7244
    :cond_0
    return-void
.end method

.method public static shift([FIII)V
    .locals 4
    .param p0, "array"    # [F
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .param p3, "offset"    # I

    .line 7266
    if-eqz p0, :cond_6

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_6

    if-gtz p2, :cond_0

    goto :goto_2

    .line 7269
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 7270
    array-length v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 7271
    sub-int v0, p2, p1

    .line 7272
    .local v0, "n":I
    if-gt v0, v1, :cond_1

    .line 7273
    return-void

    .line 7275
    :cond_1
    rem-int/2addr p3, v0

    .line 7276
    if-gez p3, :cond_2

    .line 7277
    add-int/2addr p3, v0

    .line 7281
    :cond_2
    :goto_0
    if-le v0, v1, :cond_5

    if-lez p3, :cond_5

    .line 7282
    sub-int v2, v0, p3

    .line 7283
    .local v2, "nOffset":I
    if-le p3, v2, :cond_3

    .line 7284
    add-int v3, p1, v0

    sub-int/2addr v3, v2

    invoke-static {p0, p1, v3, v2}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    .line 7285
    move v0, p3

    .line 7286
    sub-int/2addr p3, v2

    goto :goto_1

    .line 7287
    :cond_3
    if-ge p3, v2, :cond_4

    .line 7288
    add-int v3, p1, v2

    invoke-static {p0, p1, v3, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    .line 7289
    add-int/2addr p1, p3

    .line 7290
    move v0, v2

    .line 7295
    .end local v2    # "nOffset":I
    :goto_1
    goto :goto_0

    .line 7292
    .restart local v2    # "nOffset":I
    :cond_4
    add-int v1, p1, v2

    invoke-static {p0, p1, v1, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    .line 7293
    nop

    .line 7296
    .end local v2    # "nOffset":I
    :cond_5
    return-void

    .line 7267
    .end local v0    # "n":I
    :cond_6
    :goto_2
    return-void
.end method

.method public static shift([II)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "offset"    # I

    .line 7311
    if-eqz p0, :cond_0

    .line 7312
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([IIII)V

    .line 7314
    :cond_0
    return-void
.end method

.method public static shift([IIII)V
    .locals 4
    .param p0, "array"    # [I
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .param p3, "offset"    # I

    .line 7336
    if-eqz p0, :cond_6

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_6

    if-gtz p2, :cond_0

    goto :goto_2

    .line 7339
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 7340
    array-length v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 7341
    sub-int v0, p2, p1

    .line 7342
    .local v0, "n":I
    if-gt v0, v1, :cond_1

    .line 7343
    return-void

    .line 7345
    :cond_1
    rem-int/2addr p3, v0

    .line 7346
    if-gez p3, :cond_2

    .line 7347
    add-int/2addr p3, v0

    .line 7351
    :cond_2
    :goto_0
    if-le v0, v1, :cond_5

    if-lez p3, :cond_5

    .line 7352
    sub-int v2, v0, p3

    .line 7353
    .local v2, "nOffset":I
    if-le p3, v2, :cond_3

    .line 7354
    add-int v3, p1, v0

    sub-int/2addr v3, v2

    invoke-static {p0, p1, v3, v2}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    .line 7355
    move v0, p3

    .line 7356
    sub-int/2addr p3, v2

    goto :goto_1

    .line 7357
    :cond_3
    if-ge p3, v2, :cond_4

    .line 7358
    add-int v3, p1, v2

    invoke-static {p0, p1, v3, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    .line 7359
    add-int/2addr p1, p3

    .line 7360
    move v0, v2

    .line 7365
    .end local v2    # "nOffset":I
    :goto_1
    goto :goto_0

    .line 7362
    .restart local v2    # "nOffset":I
    :cond_4
    add-int v1, p1, v2

    invoke-static {p0, p1, v1, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    .line 7363
    nop

    .line 7366
    .end local v2    # "nOffset":I
    :cond_5
    return-void

    .line 7337
    .end local v0    # "n":I
    :cond_6
    :goto_2
    return-void
.end method

.method public static shift([JI)V
    .locals 2
    .param p0, "array"    # [J
    .param p1, "offset"    # I

    .line 7381
    if-eqz p0, :cond_0

    .line 7382
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([JIII)V

    .line 7384
    :cond_0
    return-void
.end method

.method public static shift([JIII)V
    .locals 4
    .param p0, "array"    # [J
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .param p3, "offset"    # I

    .line 7406
    if-eqz p0, :cond_6

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_6

    if-gtz p2, :cond_0

    goto :goto_2

    .line 7409
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 7410
    array-length v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 7411
    sub-int v0, p2, p1

    .line 7412
    .local v0, "n":I
    if-gt v0, v1, :cond_1

    .line 7413
    return-void

    .line 7415
    :cond_1
    rem-int/2addr p3, v0

    .line 7416
    if-gez p3, :cond_2

    .line 7417
    add-int/2addr p3, v0

    .line 7421
    :cond_2
    :goto_0
    if-le v0, v1, :cond_5

    if-lez p3, :cond_5

    .line 7422
    sub-int v2, v0, p3

    .line 7423
    .local v2, "nOffset":I
    if-le p3, v2, :cond_3

    .line 7424
    add-int v3, p1, v0

    sub-int/2addr v3, v2

    invoke-static {p0, p1, v3, v2}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    .line 7425
    move v0, p3

    .line 7426
    sub-int/2addr p3, v2

    goto :goto_1

    .line 7427
    :cond_3
    if-ge p3, v2, :cond_4

    .line 7428
    add-int v3, p1, v2

    invoke-static {p0, p1, v3, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    .line 7429
    add-int/2addr p1, p3

    .line 7430
    move v0, v2

    .line 7435
    .end local v2    # "nOffset":I
    :goto_1
    goto :goto_0

    .line 7432
    .restart local v2    # "nOffset":I
    :cond_4
    add-int v1, p1, v2

    invoke-static {p0, p1, v1, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    .line 7433
    nop

    .line 7436
    .end local v2    # "nOffset":I
    :cond_5
    return-void

    .line 7407
    .end local v0    # "n":I
    :cond_6
    :goto_2
    return-void
.end method

.method public static shift([Ljava/lang/Object;I)V
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "offset"    # I

    .line 7451
    if-eqz p0, :cond_0

    .line 7452
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([Ljava/lang/Object;III)V

    .line 7454
    :cond_0
    return-void
.end method

.method public static shift([Ljava/lang/Object;III)V
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .param p3, "offset"    # I

    .line 7476
    if-eqz p0, :cond_6

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_6

    if-gtz p2, :cond_0

    goto :goto_2

    .line 7479
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 7480
    array-length v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 7481
    sub-int v0, p2, p1

    .line 7482
    .local v0, "n":I
    if-gt v0, v1, :cond_1

    .line 7483
    return-void

    .line 7485
    :cond_1
    rem-int/2addr p3, v0

    .line 7486
    if-gez p3, :cond_2

    .line 7487
    add-int/2addr p3, v0

    .line 7491
    :cond_2
    :goto_0
    if-le v0, v1, :cond_5

    if-lez p3, :cond_5

    .line 7492
    sub-int v2, v0, p3

    .line 7493
    .local v2, "nOffset":I
    if-le p3, v2, :cond_3

    .line 7494
    add-int v3, p1, v0

    sub-int/2addr v3, v2

    invoke-static {p0, p1, v3, v2}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    .line 7495
    move v0, p3

    .line 7496
    sub-int/2addr p3, v2

    goto :goto_1

    .line 7497
    :cond_3
    if-ge p3, v2, :cond_4

    .line 7498
    add-int v3, p1, v2

    invoke-static {p0, p1, v3, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    .line 7499
    add-int/2addr p1, p3

    .line 7500
    move v0, v2

    .line 7505
    .end local v2    # "nOffset":I
    :goto_1
    goto :goto_0

    .line 7502
    .restart local v2    # "nOffset":I
    :cond_4
    add-int v1, p1, v2

    invoke-static {p0, p1, v1, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    .line 7503
    nop

    .line 7506
    .end local v2    # "nOffset":I
    :cond_5
    return-void

    .line 7477
    .end local v0    # "n":I
    :cond_6
    :goto_2
    return-void
.end method

.method public static shift([SI)V
    .locals 2
    .param p0, "array"    # [S
    .param p1, "offset"    # I

    .line 7521
    if-eqz p0, :cond_0

    .line 7522
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([SIII)V

    .line 7524
    :cond_0
    return-void
.end method

.method public static shift([SIII)V
    .locals 4
    .param p0, "array"    # [S
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .param p3, "offset"    # I

    .line 7546
    if-eqz p0, :cond_6

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_6

    if-gtz p2, :cond_0

    goto :goto_2

    .line 7549
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 7550
    array-length v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 7551
    sub-int v0, p2, p1

    .line 7552
    .local v0, "n":I
    if-gt v0, v1, :cond_1

    .line 7553
    return-void

    .line 7555
    :cond_1
    rem-int/2addr p3, v0

    .line 7556
    if-gez p3, :cond_2

    .line 7557
    add-int/2addr p3, v0

    .line 7561
    :cond_2
    :goto_0
    if-le v0, v1, :cond_5

    if-lez p3, :cond_5

    .line 7562
    sub-int v2, v0, p3

    .line 7563
    .local v2, "nOffset":I
    if-le p3, v2, :cond_3

    .line 7564
    add-int v3, p1, v0

    sub-int/2addr v3, v2

    invoke-static {p0, p1, v3, v2}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    .line 7565
    move v0, p3

    .line 7566
    sub-int/2addr p3, v2

    goto :goto_1

    .line 7567
    :cond_3
    if-ge p3, v2, :cond_4

    .line 7568
    add-int v3, p1, v2

    invoke-static {p0, p1, v3, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    .line 7569
    add-int/2addr p1, p3

    .line 7570
    move v0, v2

    .line 7575
    .end local v2    # "nOffset":I
    :goto_1
    goto :goto_0

    .line 7572
    .restart local v2    # "nOffset":I
    :cond_4
    add-int v1, p1, v2

    invoke-static {p0, p1, v1, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    .line 7573
    nop

    .line 7576
    .end local v2    # "nOffset":I
    :cond_5
    return-void

    .line 7547
    .end local v0    # "n":I
    :cond_6
    :goto_2
    return-void
.end method

.method public static shift([ZI)V
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "offset"    # I

    .line 6961
    if-eqz p0, :cond_0

    .line 6962
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/ArrayUtils;->shift([ZIII)V

    .line 6964
    :cond_0
    return-void
.end method

.method public static shift([ZIII)V
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .param p3, "offset"    # I

    .line 6986
    if-eqz p0, :cond_6

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_6

    if-gtz p2, :cond_0

    goto :goto_2

    .line 6989
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 6990
    array-length v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 6991
    sub-int v0, p2, p1

    .line 6992
    .local v0, "n":I
    if-gt v0, v1, :cond_1

    .line 6993
    return-void

    .line 6995
    :cond_1
    rem-int/2addr p3, v0

    .line 6996
    if-gez p3, :cond_2

    .line 6997
    add-int/2addr p3, v0

    .line 7001
    :cond_2
    :goto_0
    if-le v0, v1, :cond_5

    if-lez p3, :cond_5

    .line 7002
    sub-int v2, v0, p3

    .line 7003
    .local v2, "nOffset":I
    if-le p3, v2, :cond_3

    .line 7004
    add-int v3, p1, v0

    sub-int/2addr v3, v2

    invoke-static {p0, p1, v3, v2}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    .line 7005
    move v0, p3

    .line 7006
    sub-int/2addr p3, v2

    goto :goto_1

    .line 7007
    :cond_3
    if-ge p3, v2, :cond_4

    .line 7008
    add-int v3, p1, v2

    invoke-static {p0, p1, v3, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    .line 7009
    add-int/2addr p1, p3

    .line 7010
    move v0, v2

    .line 7015
    .end local v2    # "nOffset":I
    :goto_1
    goto :goto_0

    .line 7012
    .restart local v2    # "nOffset":I
    :cond_4
    add-int v1, p1, v2

    invoke-static {p0, p1, v1, p3}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    .line 7013
    nop

    .line 7016
    .end local v2    # "nOffset":I
    :cond_5
    return-void

    .line 6987
    .end local v0    # "n":I
    :cond_6
    :goto_2
    return-void
.end method

.method public static shuffle([B)V
    .locals 1
    .param p0, "array"    # [B

    .line 7611
    invoke-static {}, Lorg/apache/commons/lang3/ArrayUtils;->random()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([BLjava/util/Random;)V

    .line 7612
    return-void
.end method

.method public static shuffle([BLjava/util/Random;)V
    .locals 4
    .param p0, "array"    # [B
    .param p1, "random"    # Ljava/util/Random;

    .line 7623
    array-length v0, p0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 7624
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    .line 7623
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7626
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static shuffle([C)V
    .locals 1
    .param p0, "array"    # [C

    .line 7636
    invoke-static {}, Lorg/apache/commons/lang3/ArrayUtils;->random()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([CLjava/util/Random;)V

    .line 7637
    return-void
.end method

.method public static shuffle([CLjava/util/Random;)V
    .locals 4
    .param p0, "array"    # [C
    .param p1, "random"    # Ljava/util/Random;

    .line 7648
    array-length v0, p0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 7649
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    .line 7648
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7651
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static shuffle([D)V
    .locals 1
    .param p0, "array"    # [D

    .line 7661
    invoke-static {}, Lorg/apache/commons/lang3/ArrayUtils;->random()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([DLjava/util/Random;)V

    .line 7662
    return-void
.end method

.method public static shuffle([DLjava/util/Random;)V
    .locals 4
    .param p0, "array"    # [D
    .param p1, "random"    # Ljava/util/Random;

    .line 7673
    array-length v0, p0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 7674
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    .line 7673
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7676
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static shuffle([F)V
    .locals 1
    .param p0, "array"    # [F

    .line 7686
    invoke-static {}, Lorg/apache/commons/lang3/ArrayUtils;->random()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([FLjava/util/Random;)V

    .line 7687
    return-void
.end method

.method public static shuffle([FLjava/util/Random;)V
    .locals 4
    .param p0, "array"    # [F
    .param p1, "random"    # Ljava/util/Random;

    .line 7698
    array-length v0, p0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 7699
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    .line 7698
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7701
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static shuffle([I)V
    .locals 1
    .param p0, "array"    # [I

    .line 7711
    invoke-static {}, Lorg/apache/commons/lang3/ArrayUtils;->random()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([ILjava/util/Random;)V

    .line 7712
    return-void
.end method

.method public static shuffle([ILjava/util/Random;)V
    .locals 4
    .param p0, "array"    # [I
    .param p1, "random"    # Ljava/util/Random;

    .line 7723
    array-length v0, p0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 7724
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    .line 7723
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7726
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static shuffle([J)V
    .locals 1
    .param p0, "array"    # [J

    .line 7736
    invoke-static {}, Lorg/apache/commons/lang3/ArrayUtils;->random()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([JLjava/util/Random;)V

    .line 7737
    return-void
.end method

.method public static shuffle([JLjava/util/Random;)V
    .locals 4
    .param p0, "array"    # [J
    .param p1, "random"    # Ljava/util/Random;

    .line 7748
    array-length v0, p0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 7749
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    .line 7748
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7751
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static shuffle([Ljava/lang/Object;)V
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;

    .line 7761
    invoke-static {}, Lorg/apache/commons/lang3/ArrayUtils;->random()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([Ljava/lang/Object;Ljava/util/Random;)V

    .line 7762
    return-void
.end method

.method public static shuffle([Ljava/lang/Object;Ljava/util/Random;)V
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "random"    # Ljava/util/Random;

    .line 7773
    array-length v0, p0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 7774
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    .line 7773
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7776
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static shuffle([S)V
    .locals 1
    .param p0, "array"    # [S

    .line 7786
    invoke-static {}, Lorg/apache/commons/lang3/ArrayUtils;->random()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([SLjava/util/Random;)V

    .line 7787
    return-void
.end method

.method public static shuffle([SLjava/util/Random;)V
    .locals 4
    .param p0, "array"    # [S
    .param p1, "random"    # Ljava/util/Random;

    .line 7798
    array-length v0, p0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 7799
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    .line 7798
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7801
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static shuffle([Z)V
    .locals 1
    .param p0, "array"    # [Z

    .line 7586
    invoke-static {}, Lorg/apache/commons/lang3/ArrayUtils;->random()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->shuffle([ZLjava/util/Random;)V

    .line 7587
    return-void
.end method

.method public static shuffle([ZLjava/util/Random;)V
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "random"    # Ljava/util/Random;

    .line 7598
    array-length v0, p0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 7599
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {p0, v2, v3, v1}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    .line 7598
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7601
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static subarray([BII)[B
    .locals 3
    .param p0, "array"    # [B
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 7859
    if-nez p0, :cond_0

    .line 7860
    const/4 v0, 0x0

    return-object v0

    .line 7862
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 7863
    array-length v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 7864
    sub-int v0, p2, p1

    .line 7865
    .local v0, "newSize":I
    if-gtz v0, :cond_1

    .line 7866
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v1

    .line 7868
    :cond_1
    new-instance v1, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda12;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->arraycopy(Ljava/lang/Object;IIILjava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    return-object v1
.end method

.method public static subarray([CII)[C
    .locals 3
    .param p0, "array"    # [C
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 7893
    if-nez p0, :cond_0

    .line 7894
    const/4 v0, 0x0

    return-object v0

    .line 7896
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 7897
    array-length v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 7898
    sub-int v0, p2, p1

    .line 7899
    .local v0, "newSize":I
    if-gtz v0, :cond_1

    .line 7900
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v1

    .line 7902
    :cond_1
    new-instance v1, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda19;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->arraycopy(Ljava/lang/Object;IIILjava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    return-object v1
.end method

.method public static subarray([DII)[D
    .locals 3
    .param p0, "array"    # [D
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 7927
    if-nez p0, :cond_0

    .line 7928
    const/4 v0, 0x0

    return-object v0

    .line 7930
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 7931
    array-length v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 7932
    sub-int v0, p2, p1

    .line 7933
    .local v0, "newSize":I
    if-gtz v0, :cond_1

    .line 7934
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object v1

    .line 7936
    :cond_1
    new-instance v1, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda11;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->arraycopy(Ljava/lang/Object;IIILjava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    return-object v1
.end method

.method public static subarray([FII)[F
    .locals 3
    .param p0, "array"    # [F
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 7961
    if-nez p0, :cond_0

    .line 7962
    const/4 v0, 0x0

    return-object v0

    .line 7964
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 7965
    array-length v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 7966
    sub-int v0, p2, p1

    .line 7967
    .local v0, "newSize":I
    if-gtz v0, :cond_1

    .line 7968
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object v1

    .line 7970
    :cond_1
    new-instance v1, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda5;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->arraycopy(Ljava/lang/Object;IIILjava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    return-object v1
.end method

.method public static subarray([III)[I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 7995
    if-nez p0, :cond_0

    .line 7996
    const/4 v0, 0x0

    return-object v0

    .line 7998
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 7999
    array-length v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 8000
    sub-int v0, p2, p1

    .line 8001
    .local v0, "newSize":I
    if-gtz v0, :cond_1

    .line 8002
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v1

    .line 8004
    :cond_1
    new-instance v1, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda6;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->arraycopy(Ljava/lang/Object;IIILjava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    return-object v1
.end method

.method public static subarray([JII)[J
    .locals 3
    .param p0, "array"    # [J
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 8029
    if-nez p0, :cond_0

    .line 8030
    const/4 v0, 0x0

    return-object v0

    .line 8032
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 8033
    array-length v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 8034
    sub-int v0, p2, p1

    .line 8035
    .local v0, "newSize":I
    if-gtz v0, :cond_1

    .line 8036
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object v1

    .line 8038
    :cond_1
    new-instance v1, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda2;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->arraycopy(Ljava/lang/Object;IIILjava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    return-object v1
.end method

.method public static subarray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 4
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 8106
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_0

    .line 8107
    const/4 v0, 0x0

    return-object v0

    .line 8109
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 8110
    array-length v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 8111
    sub-int v0, p2, p1

    .line 8112
    .local v0, "newSize":I
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getComponentType([Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    .line 8113
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    if-gtz v0, :cond_1

    .line 8114
    invoke-static {v1, v2}, Lorg/apache/commons/lang3/ArrayUtils;->newInstance(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 8116
    :cond_1
    new-instance v3, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda20;

    invoke-direct {v3, v1, v0}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda20;-><init>(Ljava/lang/Class;I)V

    invoke-static {p0, p1, v2, v0, v3}, Lorg/apache/commons/lang3/ArrayUtils;->arraycopy(Ljava/lang/Object;IIILjava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    return-object v2
.end method

.method public static subarray([SII)[S
    .locals 3
    .param p0, "array"    # [S
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 8063
    if-nez p0, :cond_0

    .line 8064
    const/4 v0, 0x0

    return-object v0

    .line 8066
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 8067
    array-length v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 8068
    sub-int v0, p2, p1

    .line 8069
    .local v0, "newSize":I
    if-gtz v0, :cond_1

    .line 8070
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object v1

    .line 8072
    :cond_1
    new-instance v1, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda15;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->arraycopy(Ljava/lang/Object;IIILjava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    return-object v1
.end method

.method public static subarray([ZII)[Z
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "startIndexInclusive"    # I
    .param p2, "endIndexExclusive"    # I

    .line 7825
    if-nez p0, :cond_0

    .line 7826
    const/4 v0, 0x0

    return-object v0

    .line 7828
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 7829
    array-length v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 7830
    sub-int v0, p2, p1

    .line 7831
    .local v0, "newSize":I
    if-gtz v0, :cond_1

    .line 7832
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object v1

    .line 7834
    :cond_1
    new-instance v1, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda17;-><init>()V

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->arraycopy(Ljava/lang/Object;IIILjava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    return-object v1
.end method

.method public static swap([BII)V
    .locals 1
    .param p0, "array"    # [B
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I

    .line 8204
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([BIII)V

    .line 8205
    return-void
.end method

.method public static swap([BIII)V
    .locals 3
    .param p0, "array"    # [B
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I
    .param p3, "len"    # I

    .line 8232
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_2

    array-length v0, p0

    if-ge p1, v0, :cond_2

    array-length v0, p0

    if-lt p2, v0, :cond_0

    goto :goto_1

    .line 8235
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 8236
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p2

    .line 8237
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 8238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 8239
    aget-byte v1, p0, p1

    .line 8240
    .local v1, "aux":B
    aget-byte v2, p0, p2

    aput-byte v2, p0, p1

    .line 8241
    aput-byte v1, p0, p2

    .line 8238
    .end local v1    # "aux":B
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8243
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 8233
    :cond_2
    :goto_1
    return-void
.end method

.method public static swap([CII)V
    .locals 1
    .param p0, "array"    # [C
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I

    .line 8267
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([CIII)V

    .line 8268
    return-void
.end method

.method public static swap([CIII)V
    .locals 3
    .param p0, "array"    # [C
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I
    .param p3, "len"    # I

    .line 8295
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-nez v0, :cond_2

    array-length v0, p0

    if-ge p1, v0, :cond_2

    array-length v0, p0

    if-lt p2, v0, :cond_0

    goto :goto_1

    .line 8298
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 8299
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p2

    .line 8300
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 8301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 8302
    aget-char v1, p0, p1

    .line 8303
    .local v1, "aux":C
    aget-char v2, p0, p2

    aput-char v2, p0, p1

    .line 8304
    aput-char v1, p0, p2

    .line 8301
    .end local v1    # "aux":C
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8306
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 8296
    :cond_2
    :goto_1
    return-void
.end method

.method public static swap([DII)V
    .locals 1
    .param p0, "array"    # [D
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I

    .line 8330
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([DIII)V

    .line 8331
    return-void
.end method

.method public static swap([DIII)V
    .locals 5
    .param p0, "array"    # [D
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I
    .param p3, "len"    # I

    .line 8358
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([D)Z

    move-result v0

    if-nez v0, :cond_2

    array-length v0, p0

    if-ge p1, v0, :cond_2

    array-length v0, p0

    if-lt p2, v0, :cond_0

    goto :goto_1

    .line 8361
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 8362
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p2

    .line 8363
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 8364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 8365
    aget-wide v1, p0, p1

    .line 8366
    .local v1, "aux":D
    aget-wide v3, p0, p2

    aput-wide v3, p0, p1

    .line 8367
    aput-wide v1, p0, p2

    .line 8364
    .end local v1    # "aux":D
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8369
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 8359
    :cond_2
    :goto_1
    return-void
.end method

.method public static swap([FII)V
    .locals 1
    .param p0, "array"    # [F
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I

    .line 8393
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([FIII)V

    .line 8394
    return-void
.end method

.method public static swap([FIII)V
    .locals 3
    .param p0, "array"    # [F
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I
    .param p3, "len"    # I

    .line 8421
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([F)Z

    move-result v0

    if-nez v0, :cond_2

    array-length v0, p0

    if-ge p1, v0, :cond_2

    array-length v0, p0

    if-lt p2, v0, :cond_0

    goto :goto_1

    .line 8424
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 8425
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p2

    .line 8426
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 8427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 8428
    aget v1, p0, p1

    .line 8429
    .local v1, "aux":F
    aget v2, p0, p2

    aput v2, p0, p1

    .line 8430
    aput v1, p0, p2

    .line 8427
    .end local v1    # "aux":F
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8433
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 8422
    :cond_2
    :goto_1
    return-void
.end method

.method public static swap([III)V
    .locals 1
    .param p0, "array"    # [I
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I

    .line 8457
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([IIII)V

    .line 8458
    return-void
.end method

.method public static swap([IIII)V
    .locals 3
    .param p0, "array"    # [I
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I
    .param p3, "len"    # I

    .line 8485
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_2

    array-length v0, p0

    if-ge p1, v0, :cond_2

    array-length v0, p0

    if-lt p2, v0, :cond_0

    goto :goto_1

    .line 8488
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 8489
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p2

    .line 8490
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 8491
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 8492
    aget v1, p0, p1

    .line 8493
    .local v1, "aux":I
    aget v2, p0, p2

    aput v2, p0, p1

    .line 8494
    aput v1, p0, p2

    .line 8491
    .end local v1    # "aux":I
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8496
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 8486
    :cond_2
    :goto_1
    return-void
.end method

.method public static swap([JII)V
    .locals 1
    .param p0, "array"    # [J
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I

    .line 8520
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([JIII)V

    .line 8521
    return-void
.end method

.method public static swap([JIII)V
    .locals 5
    .param p0, "array"    # [J
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I
    .param p3, "len"    # I

    .line 8548
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_2

    array-length v0, p0

    if-ge p1, v0, :cond_2

    array-length v0, p0

    if-lt p2, v0, :cond_0

    goto :goto_1

    .line 8551
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 8552
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p2

    .line 8553
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 8554
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 8555
    aget-wide v1, p0, p1

    .line 8556
    .local v1, "aux":J
    aget-wide v3, p0, p2

    aput-wide v3, p0, p1

    .line 8557
    aput-wide v1, p0, p2

    .line 8554
    .end local v1    # "aux":J
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8559
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 8549
    :cond_2
    :goto_1
    return-void
.end method

.method public static swap([Ljava/lang/Object;II)V
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I

    .line 8583
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([Ljava/lang/Object;III)V

    .line 8584
    return-void
.end method

.method public static swap([Ljava/lang/Object;III)V
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I
    .param p3, "len"    # I

    .line 8611
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    array-length v0, p0

    if-ge p1, v0, :cond_2

    array-length v0, p0

    if-lt p2, v0, :cond_0

    goto :goto_1

    .line 8614
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 8615
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p2

    .line 8616
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 8617
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 8618
    aget-object v1, p0, p1

    .line 8619
    .local v1, "aux":Ljava/lang/Object;
    aget-object v2, p0, p2

    aput-object v2, p0, p1

    .line 8620
    aput-object v1, p0, p2

    .line 8617
    .end local v1    # "aux":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8622
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 8612
    :cond_2
    :goto_1
    return-void
.end method

.method public static swap([SII)V
    .locals 1
    .param p0, "array"    # [S
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I

    .line 8646
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([SIII)V

    .line 8647
    return-void
.end method

.method public static swap([SIII)V
    .locals 3
    .param p0, "array"    # [S
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I
    .param p3, "len"    # I

    .line 8674
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([S)Z

    move-result v0

    if-nez v0, :cond_3

    array-length v0, p0

    if-ge p1, v0, :cond_3

    array-length v0, p0

    if-lt p2, v0, :cond_0

    goto :goto_1

    .line 8677
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 8678
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p2

    .line 8679
    if-ne p1, p2, :cond_1

    .line 8680
    return-void

    .line 8682
    :cond_1
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 8683
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 8684
    aget-short v1, p0, p1

    .line 8685
    .local v1, "aux":S
    aget-short v2, p0, p2

    aput-short v2, p0, p1

    .line 8686
    aput-short v1, p0, p2

    .line 8683
    .end local v1    # "aux":S
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8688
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 8675
    :cond_3
    :goto_1
    return-void
.end method

.method public static swap([ZII)V
    .locals 1
    .param p0, "array"    # [Z
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I

    .line 8141
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/ArrayUtils;->swap([ZIII)V

    .line 8142
    return-void
.end method

.method public static swap([ZIII)V
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "offset1"    # I
    .param p2, "offset2"    # I
    .param p3, "len"    # I

    .line 8169
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    if-nez v0, :cond_2

    array-length v0, p0

    if-ge p1, v0, :cond_2

    array-length v0, p0

    if-lt p2, v0, :cond_0

    goto :goto_1

    .line 8172
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p1

    .line 8173
    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->max0(I)I

    move-result p2

    .line 8174
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 8175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 8176
    aget-boolean v1, p0, p1

    .line 8177
    .local v1, "aux":Z
    aget-boolean v2, p0, p2

    aput-boolean v2, p0, p1

    .line 8178
    aput-boolean v1, p0, p2

    .line 8175
    .end local v1    # "aux":Z
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8180
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 8170
    :cond_2
    :goto_1
    return-void
.end method

.method public static varargs toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 8730
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    return-object p0
.end method

.method public static toMap([Ljava/lang/Object;)Ljava/util/Map;
    .locals 8
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 8761
    if-nez p0, :cond_0

    .line 8762
    const/4 v0, 0x0

    return-object v0

    .line 8764
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    array-length v1, p0

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 8765
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 8766
    aget-object v2, p0, v1

    .line 8767
    .local v2, "object":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/Map$Entry;

    if-eqz v3, :cond_1

    .line 8768
    move-object v3, v2

    check-cast v3, Ljava/util/Map$Entry;

    .line 8769
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8770
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    goto :goto_1

    :cond_1
    instance-of v3, v2, [Ljava/lang/Object;

    const-string v4, ", \'"

    const-string v5, "Array element "

    if-eqz v3, :cond_3

    .line 8771
    move-object v3, v2

    check-cast v3, [Ljava/lang/Object;

    .line 8772
    .local v3, "entry":[Ljava/lang/Object;
    array-length v6, v3

    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    .line 8777
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8778
    .end local v3    # "entry":[Ljava/lang/Object;
    nop

    .line 8765
    .end local v2    # "object":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8773
    .restart local v2    # "object":Ljava/lang/Object;
    .restart local v3    # "entry":[Ljava/lang/Object;
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', has a length less than 2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 8779
    .end local v3    # "entry":[Ljava/lang/Object;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', is neither of type Map.Entry nor an Array"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8784
    .end local v1    # "i":I
    .end local v2    # "object":Ljava/lang/Object;
    :cond_4
    return-object v0
.end method

.method public static toObject([Z)[Ljava/lang/Boolean;
    .locals 2
    .param p0, "array"    # [Z

    .line 8796
    if-nez p0, :cond_0

    .line 8797
    const/4 v0, 0x0

    return-object v0

    .line 8799
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 8800
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    return-object v0

    .line 8802
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Boolean;

    .line 8803
    .local v0, "result":[Ljava/lang/Boolean;
    new-instance v1, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda8;-><init>([Z)V

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Boolean;

    return-object v1
.end method

.method public static toObject([B)[Ljava/lang/Byte;
    .locals 2
    .param p0, "array"    # [B

    .line 8815
    if-nez p0, :cond_0

    .line 8816
    const/4 v0, 0x0

    return-object v0

    .line 8818
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 8819
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    return-object v0

    .line 8821
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Byte;

    new-instance v1, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda18;-><init>([B)V

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Byte;

    return-object v0
.end method

.method public static toObject([C)[Ljava/lang/Character;
    .locals 2
    .param p0, "array"    # [C

    .line 8833
    if-nez p0, :cond_0

    .line 8834
    const/4 v0, 0x0

    return-object v0

    .line 8836
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 8837
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-object v0

    .line 8839
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Character;

    new-instance v1, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda4;-><init>([C)V

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Character;

    return-object v0
.end method

.method public static toObject([D)[Ljava/lang/Double;
    .locals 2
    .param p0, "array"    # [D

    .line 8851
    if-nez p0, :cond_0

    .line 8852
    const/4 v0, 0x0

    return-object v0

    .line 8854
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 8855
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    return-object v0

    .line 8857
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Double;

    new-instance v1, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda9;-><init>([D)V

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    return-object v0
.end method

.method public static toObject([F)[Ljava/lang/Float;
    .locals 2
    .param p0, "array"    # [F

    .line 8869
    if-nez p0, :cond_0

    .line 8870
    const/4 v0, 0x0

    return-object v0

    .line 8872
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 8873
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    return-object v0

    .line 8875
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Float;

    new-instance v1, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda3;-><init>([F)V

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Float;

    return-object v0
.end method

.method public static toObject([I)[Ljava/lang/Integer;
    .locals 2
    .param p0, "array"    # [I

    .line 8887
    if-nez p0, :cond_0

    .line 8888
    const/4 v0, 0x0

    return-object v0

    .line 8890
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 8891
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    return-object v0

    .line 8893
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Integer;

    new-instance v1, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda7;-><init>([I)V

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    return-object v0
.end method

.method public static toObject([J)[Ljava/lang/Long;
    .locals 2
    .param p0, "array"    # [J

    .line 8905
    if-nez p0, :cond_0

    .line 8906
    const/4 v0, 0x0

    return-object v0

    .line 8908
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 8909
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    return-object v0

    .line 8911
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Long;

    new-instance v1, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda13;-><init>([J)V

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    return-object v0
.end method

.method public static toObject([S)[Ljava/lang/Short;
    .locals 2
    .param p0, "array"    # [S

    .line 8923
    if-nez p0, :cond_0

    .line 8924
    const/4 v0, 0x0

    return-object v0

    .line 8926
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 8927
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    return-object v0

    .line 8929
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Short;

    new-instance v1, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/ArrayUtils$$ExternalSyntheticLambda16;-><init>([S)V

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Short;

    return-object v0
.end method

.method public static toPrimitive(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "array"    # Ljava/lang/Object;

    .line 9278
    if-nez p0, :cond_0

    .line 9279
    const/4 v0, 0x0

    return-object v0

    .line 9281
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 9282
    .local v0, "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lorg/apache/commons/lang3/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 9283
    .local v1, "pt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9284
    move-object v2, p0

    check-cast v2, [Ljava/lang/Boolean;

    invoke-static {v2}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object v2

    return-object v2

    .line 9286
    :cond_1
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9287
    move-object v2, p0

    check-cast v2, [Ljava/lang/Character;

    invoke-static {v2}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Character;)[C

    move-result-object v2

    return-object v2

    .line 9289
    :cond_2
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9290
    move-object v2, p0

    check-cast v2, [Ljava/lang/Byte;

    invoke-static {v2}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Byte;)[B

    move-result-object v2

    return-object v2

    .line 9292
    :cond_3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9293
    move-object v2, p0

    check-cast v2, [Ljava/lang/Integer;

    invoke-static {v2}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Integer;)[I

    move-result-object v2

    return-object v2

    .line 9295
    :cond_4
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 9296
    move-object v2, p0

    check-cast v2, [Ljava/lang/Long;

    invoke-static {v2}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Long;)[J

    move-result-object v2

    return-object v2

    .line 9298
    :cond_5
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9299
    move-object v2, p0

    check-cast v2, [Ljava/lang/Short;

    invoke-static {v2}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Short;)[S

    move-result-object v2

    return-object v2

    .line 9301
    :cond_6
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 9302
    move-object v2, p0

    check-cast v2, [Ljava/lang/Double;

    invoke-static {v2}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Double;)[D

    move-result-object v2

    return-object v2

    .line 9304
    :cond_7
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 9305
    move-object v2, p0

    check-cast v2, [Ljava/lang/Float;

    invoke-static {v2}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Float;)[F

    move-result-object v2

    return-object v2

    .line 9307
    :cond_8
    return-object p0
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .locals 3
    .param p0, "array"    # [Ljava/lang/Byte;

    .line 8984
    if-nez p0, :cond_0

    .line 8985
    const/4 v0, 0x0

    return-object v0

    .line 8987
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 8988
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 8990
    :cond_1
    array-length v0, p0

    new-array v0, v0, [B

    .line 8991
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 8992
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 8991
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8994
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Byte;B)[B
    .locals 4
    .param p0, "array"    # [Ljava/lang/Byte;
    .param p1, "valueForNull"    # B

    .line 9008
    if-nez p0, :cond_0

    .line 9009
    const/4 v0, 0x0

    return-object v0

    .line 9011
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9012
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 9014
    :cond_1
    array-length v0, p0

    new-array v0, v0, [B

    .line 9015
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 9016
    aget-object v2, p0, v1

    .line 9017
    .local v2, "b":Ljava/lang/Byte;
    if-nez v2, :cond_2

    move v3, p1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    :goto_1
    aput-byte v3, v0, v1

    .line 9015
    .end local v2    # "b":Ljava/lang/Byte;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9019
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Character;)[C
    .locals 3
    .param p0, "array"    # [Ljava/lang/Character;

    .line 9033
    if-nez p0, :cond_0

    .line 9034
    const/4 v0, 0x0

    return-object v0

    .line 9036
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9037
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v0

    .line 9039
    :cond_1
    array-length v0, p0

    new-array v0, v0, [C

    .line 9040
    .local v0, "result":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 9041
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v0, v1

    .line 9040
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9043
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Character;C)[C
    .locals 4
    .param p0, "array"    # [Ljava/lang/Character;
    .param p1, "valueForNull"    # C

    .line 9057
    if-nez p0, :cond_0

    .line 9058
    const/4 v0, 0x0

    return-object v0

    .line 9060
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9061
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v0

    .line 9063
    :cond_1
    array-length v0, p0

    new-array v0, v0, [C

    .line 9064
    .local v0, "result":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 9065
    aget-object v2, p0, v1

    .line 9066
    .local v2, "b":Ljava/lang/Character;
    if-nez v2, :cond_2

    move v3, p1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v3

    :goto_1
    aput-char v3, v0, v1

    .line 9064
    .end local v2    # "b":Ljava/lang/Character;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9068
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .locals 4
    .param p0, "array"    # [Ljava/lang/Double;

    .line 9082
    if-nez p0, :cond_0

    .line 9083
    const/4 v0, 0x0

    return-object v0

    .line 9085
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9086
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object v0

    .line 9088
    :cond_1
    array-length v0, p0

    new-array v0, v0, [D

    .line 9089
    .local v0, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 9090
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 9089
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9092
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Double;D)[D
    .locals 5
    .param p0, "array"    # [Ljava/lang/Double;
    .param p1, "valueForNull"    # D

    .line 9106
    if-nez p0, :cond_0

    .line 9107
    const/4 v0, 0x0

    return-object v0

    .line 9109
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9110
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    return-object v0

    .line 9112
    :cond_1
    array-length v0, p0

    new-array v0, v0, [D

    .line 9113
    .local v0, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 9114
    aget-object v2, p0, v1

    .line 9115
    .local v2, "b":Ljava/lang/Double;
    if-nez v2, :cond_2

    move-wide v3, p1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    :goto_1
    aput-wide v3, v0, v1

    .line 9113
    .end local v2    # "b":Ljava/lang/Double;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9117
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Float;)[F
    .locals 3
    .param p0, "array"    # [Ljava/lang/Float;

    .line 9131
    if-nez p0, :cond_0

    .line 9132
    const/4 v0, 0x0

    return-object v0

    .line 9134
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9135
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object v0

    .line 9137
    :cond_1
    array-length v0, p0

    new-array v0, v0, [F

    .line 9138
    .local v0, "result":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 9139
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 9138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9141
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Float;F)[F
    .locals 4
    .param p0, "array"    # [Ljava/lang/Float;
    .param p1, "valueForNull"    # F

    .line 9155
    if-nez p0, :cond_0

    .line 9156
    const/4 v0, 0x0

    return-object v0

    .line 9158
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9159
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    return-object v0

    .line 9161
    :cond_1
    array-length v0, p0

    new-array v0, v0, [F

    .line 9162
    .local v0, "result":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 9163
    aget-object v2, p0, v1

    .line 9164
    .local v2, "b":Ljava/lang/Float;
    if-nez v2, :cond_2

    move v3, p1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_1
    aput v3, v0, v1

    .line 9162
    .end local v2    # "b":Ljava/lang/Float;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9166
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Integer;

    .line 9180
    if-nez p0, :cond_0

    .line 9181
    const/4 v0, 0x0

    return-object v0

    .line 9183
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9184
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v0

    .line 9186
    :cond_1
    array-length v0, p0

    new-array v0, v0, [I

    .line 9187
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 9188
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 9187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9190
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Integer;I)[I
    .locals 4
    .param p0, "array"    # [Ljava/lang/Integer;
    .param p1, "valueForNull"    # I

    .line 9204
    if-nez p0, :cond_0

    .line 9205
    const/4 v0, 0x0

    return-object v0

    .line 9207
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9208
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v0

    .line 9210
    :cond_1
    array-length v0, p0

    new-array v0, v0, [I

    .line 9211
    .local v0, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 9212
    aget-object v2, p0, v1

    .line 9213
    .local v2, "b":Ljava/lang/Integer;
    if-nez v2, :cond_2

    move v3, p1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    aput v3, v0, v1

    .line 9211
    .end local v2    # "b":Ljava/lang/Integer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9215
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .locals 4
    .param p0, "array"    # [Ljava/lang/Long;

    .line 9229
    if-nez p0, :cond_0

    .line 9230
    const/4 v0, 0x0

    return-object v0

    .line 9232
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9233
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object v0

    .line 9235
    :cond_1
    array-length v0, p0

    new-array v0, v0, [J

    .line 9236
    .local v0, "result":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 9237
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 9236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9239
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Long;J)[J
    .locals 5
    .param p0, "array"    # [Ljava/lang/Long;
    .param p1, "valueForNull"    # J

    .line 9253
    if-nez p0, :cond_0

    .line 9254
    const/4 v0, 0x0

    return-object v0

    .line 9256
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9257
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    return-object v0

    .line 9259
    :cond_1
    array-length v0, p0

    new-array v0, v0, [J

    .line 9260
    .local v0, "result":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 9261
    aget-object v2, p0, v1

    .line 9262
    .local v2, "b":Ljava/lang/Long;
    if-nez v2, :cond_2

    move-wide v3, p1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_1
    aput-wide v3, v0, v1

    .line 9260
    .end local v2    # "b":Ljava/lang/Long;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9264
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Short;)[S
    .locals 3
    .param p0, "array"    # [Ljava/lang/Short;

    .line 9321
    if-nez p0, :cond_0

    .line 9322
    const/4 v0, 0x0

    return-object v0

    .line 9324
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9325
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object v0

    .line 9327
    :cond_1
    array-length v0, p0

    new-array v0, v0, [S

    .line 9328
    .local v0, "result":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 9329
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v0, v1

    .line 9328
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9331
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Short;S)[S
    .locals 4
    .param p0, "array"    # [Ljava/lang/Short;
    .param p1, "valueForNull"    # S

    .line 9345
    if-nez p0, :cond_0

    .line 9346
    const/4 v0, 0x0

    return-object v0

    .line 9348
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9349
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    return-object v0

    .line 9351
    :cond_1
    array-length v0, p0

    new-array v0, v0, [S

    .line 9352
    .local v0, "result":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 9353
    aget-object v2, p0, v1

    .line 9354
    .local v2, "b":Ljava/lang/Short;
    if-nez v2, :cond_2

    move v3, p1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v3

    :goto_1
    aput-short v3, v0, v1

    .line 9352
    .end local v2    # "b":Ljava/lang/Short;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9356
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .locals 1
    .param p0, "array"    # [Ljava/lang/Boolean;

    .line 8945
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;Z)[Z

    move-result-object v0

    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;Z)[Z
    .locals 4
    .param p0, "array"    # [Ljava/lang/Boolean;
    .param p1, "valueForNull"    # Z

    .line 8959
    if-nez p0, :cond_0

    .line 8960
    const/4 v0, 0x0

    return-object v0

    .line 8962
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 8963
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object v0

    .line 8965
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Z

    .line 8966
    .local v0, "result":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 8967
    aget-object v2, p0, v1

    .line 8968
    .local v2, "b":Ljava/lang/Boolean;
    if-nez v2, :cond_2

    move v3, p1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_1
    aput-boolean v3, v0, v1

    .line 8966
    .end local v2    # "b":Ljava/lang/Boolean;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8970
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # Ljava/lang/Object;

    .line 9373
    const-string v0, "{}"

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # Ljava/lang/Object;
    .param p1, "stringIfNull"    # Ljava/lang/String;

    .line 9391
    if-nez p0, :cond_0

    .line 9392
    return-object p1

    .line 9394
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    sget-object v1, Lorg/apache/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;

    .line 9410
    if-nez p0, :cond_0

    .line 9411
    const/4 v0, 0x0

    return-object v0

    .line 9413
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9414
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 9417
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 9418
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 9419
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 9418
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9422
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static toStringArray([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "valueForNullElements"    # Ljava/lang/String;

    .line 9438
    if-nez p0, :cond_0

    .line 9439
    const/4 v0, 0x0

    return-object v0

    .line 9441
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 9442
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 9445
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 9446
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 9447
    aget-object v2, p0, v1

    invoke-static {v2, p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 9446
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9450
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method
