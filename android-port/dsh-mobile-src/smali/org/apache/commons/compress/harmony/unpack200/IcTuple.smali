.class public Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
.super Ljava/lang/Object;
.source "IcTuple.java"


# static fields
.field static final EMPTY_ARRAY:[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final NESTED_CLASS_FLAG:I = 0x10000


# instance fields
.field protected C:Ljava/lang/String;

.field protected C2:Ljava/lang/String;

.field protected F:I

.field protected N:Ljava/lang/String;

.field private anonymous:Z

.field private final c2Index:I

.field private final cIndex:I

.field private cachedHashCode:I

.field private cachedOuterClassIndex:I

.field private cachedOuterClassString:Ljava/lang/String;

.field private cachedSimpleClassName:Ljava/lang/String;

.field private cachedSimpleClassNameIndex:I

.field private hashCodeComputed:Z

.field private initialized:Z

.field private member:Z

.field private final nIndex:I

.field private outerIsAnonymous:Z

.field private predictOuter:Z

.field private predictSimple:Z

.field private final tIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 35
    new-array v0, v0, [Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    sput-object v0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->EMPTY_ARRAY:[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 2
    .param p1, "C"    # Ljava/lang/String;
    .param p2, "F"    # I
    .param p3, "C2"    # Ljava/lang/String;
    .param p4, "N"    # Ljava/lang/String;
    .param p5, "cIndex"    # I
    .param p6, "c2Index"    # I
    .param p7, "nIndex"    # I
    .param p8, "tIndex"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->member:Z

    .line 56
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedOuterClassIndex:I

    .line 57
    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedSimpleClassNameIndex:I

    .line 74
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C:Ljava/lang/String;

    .line 75
    iput p2, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->F:I

    .line 76
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C2:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->N:Ljava/lang/String;

    .line 78
    iput p5, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cIndex:I

    .line 79
    iput p6, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->c2Index:I

    .line 80
    iput p7, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->nIndex:I

    .line 81
    iput p8, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->tIndex:I

    .line 82
    if-nez p4, :cond_0

    .line 83
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->predictSimple:Z

    .line 85
    :cond_0
    if-nez p3, :cond_1

    .line 86
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->predictOuter:Z

    .line 88
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->initializeClassStrings()V

    .line 89
    return-void
.end method

.method private computeOuterIsAnonymous()Z
    .locals 6

    .line 92
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedOuterClassString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->innerBreakAtDollar(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "result":[Ljava/lang/String;
    array-length v1, v0

    if-eqz v1, :cond_2

    .line 97
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 98
    .local v4, "element":Ljava/lang/String;
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->isAllDigits(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    const/4 v1, 0x1

    return v1

    .line 97
    .end local v4    # "element":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    :cond_1
    return v2

    .line 94
    :cond_2
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Should have an outer before checking if it\'s anonymous"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private generateHashCode()V
    .locals 1

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->hashCodeComputed:Z

    .line 118
    const/16 v0, 0x11

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedHashCode:I

    .line 119
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedHashCode:I

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C2:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedHashCode:I

    .line 125
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->N:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->N:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedHashCode:I

    .line 128
    :cond_2
    return-void
.end method

.method private initializeClassStrings()V
    .locals 7

    .line 159
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->initialized:Z

    if-eqz v0, :cond_0

    .line 160
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->initialized:Z

    .line 164
    iget-boolean v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->predictSimple:Z

    if-nez v1, :cond_1

    .line 165
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->N:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedSimpleClassName:Ljava/lang/String;

    .line 167
    :cond_1
    iget-boolean v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->predictOuter:Z

    if-nez v1, :cond_2

    .line 168
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C2:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedOuterClassString:Ljava/lang/String;

    .line 172
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->innerBreakAtDollar(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "nameComponents":[Ljava/lang/String;
    array-length v2, v1

    .line 177
    array-length v2, v1

    .line 181
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    .line 185
    return-void

    .line 189
    :cond_3
    array-length v2, v1

    sub-int/2addr v2, v0

    .line 190
    .local v2, "lastPosition":I
    aget-object v3, v1, v2

    iput-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedSimpleClassName:Ljava/lang/String;

    .line 191
    const-string v3, ""

    iput-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedOuterClassString:Ljava/lang/String;

    .line 192
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_6

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedOuterClassString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedOuterClassString:Ljava/lang/String;

    .line 194
    aget-object v5, v1, v3

    invoke-direct {p0, v5}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->isAllDigits(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 195
    iput-boolean v4, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->member:Z

    .line 197
    :cond_4
    add-int/lit8 v4, v3, 0x1

    if-eq v4, v2, :cond_5

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedOuterClassString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedOuterClassString:Ljava/lang/String;

    .line 192
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    .end local v3    # "index":I
    :cond_6
    iget-boolean v3, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->predictSimple:Z

    if-nez v3, :cond_7

    .line 207
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->N:Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedSimpleClassName:Ljava/lang/String;

    .line 208
    iget v3, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->nIndex:I

    iput v3, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedSimpleClassNameIndex:I

    .line 210
    :cond_7
    iget-boolean v3, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->predictOuter:Z

    if-nez v3, :cond_8

    .line 211
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C2:Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedOuterClassString:Ljava/lang/String;

    .line 212
    iget v3, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->c2Index:I

    iput v3, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedOuterClassIndex:I

    .line 214
    :cond_8
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedSimpleClassName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->isAllDigits(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 215
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->anonymous:Z

    .line 216
    iput-boolean v4, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->member:Z

    .line 217
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->nestedExplicitFlagSet()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 219
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->member:Z

    .line 223
    :cond_9
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->computeOuterIsAnonymous()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->outerIsAnonymous:Z

    .line 224
    return-void
.end method

.method private isAllDigits(Ljava/lang/String;)Z
    .locals 3
    .param p1, "nameString"    # Ljava/lang/String;

    .line 252
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 253
    return v0

    .line 255
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 256
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    return v0

    .line 255
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    .end local v1    # "index":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 107
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    .line 111
    .local v1, "other":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C2:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C2:Ljava/lang/String;

    .line 112
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->N:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->N:Ljava/lang/String;

    .line 113
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 111
    :goto_0
    return v0

    .line 108
    .end local v1    # "other":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    :cond_2
    :goto_1
    return v0
.end method

.method public getC()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getC2()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C2:Ljava/lang/String;

    return-object v0
.end method

.method public getF()I
    .locals 1

    .line 139
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->F:I

    return v0
.end method

.method public getN()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->N:Ljava/lang/String;

    return-object v0
.end method

.method public getTupleIndex()I
    .locals 1

    .line 147
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->tIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 152
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->hashCodeComputed:Z

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->generateHashCode()V

    .line 155
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedHashCode:I

    return v0
.end method

.method public innerBreakAtDollar(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 235
    .local v1, "start":I
    const/4 v2, 0x0

    .line 236
    .local v2, "index":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 237
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x24

    if-gt v3, v4, :cond_1

    .line 238
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v1, v2, 0x1

    .line 241
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 242
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 244
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_2
    sget-object v3, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public isAnonymous()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->anonymous:Z

    return v0
.end method

.method public isMember()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->member:Z

    return v0
.end method

.method public nestedExplicitFlagSet()Z
    .locals 2

    .line 277
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->F:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nullSafeEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "stringOne"    # Ljava/lang/String;
    .param p2, "stringTwo"    # Ljava/lang/String;

    .line 281
    if-nez p1, :cond_1

    .line 282
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 284
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public outerClassIndex()I
    .locals 1

    .line 288
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedOuterClassIndex:I

    return v0
.end method

.method public outerClassString()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedOuterClassString:Ljava/lang/String;

    return-object v0
.end method

.method public outerIsAnonymous()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->outerIsAnonymous:Z

    return v0
.end method

.method public predicted()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->predictOuter:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->predictSimple:Z

    if-eqz v0, :cond_0

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

.method public simpleClassName()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedSimpleClassName:Ljava/lang/String;

    return-object v0
.end method

.method public simpleClassNameIndex()I
    .locals 1

    .line 323
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cachedSimpleClassNameIndex:I

    return v0
.end method

.method public thisClassIndex()I
    .locals 1

    .line 327
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->predicted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->cIndex:I

    return v0

    .line 330
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public thisClassString()Ljava/lang/String;
    .locals 2

    .line 339
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->predicted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C:Ljava/lang/String;

    return-object v0

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->C2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    const-string v1, "IcTuple "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 352
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 353
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->simpleClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 354
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 355
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->outerClassString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 356
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    return-object v0
.end method
