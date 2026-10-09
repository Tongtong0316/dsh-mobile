.class public Lorg/apache/commons/lang3/EnumUtils;
.super Ljava/lang/Object;
.source "EnumUtils.java"


# static fields
.field private static final CANNOT_STORE_S_S_VALUES_IN_S_BITS:Ljava/lang/String; = "Cannot store %s %s values in %s bits"

.field private static final ENUM_CLASS_MUST_BE_DEFINED:Ljava/lang/String; = "EnumClass must be defined."

.field private static final NULL_ELEMENTS_NOT_PERMITTED:Ljava/lang/String; = "null elements not permitted"

.field private static final S_DOES_NOT_SEEM_TO_BE_AN_ENUM_TYPE:Ljava/lang/String; = "%s does not seem to be an Enum type"


# direct methods
.method public static synthetic $r8$lambda$9acruJBYBH7BiqWr1IfysXXSSsw(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    return-void
.end method

.method private static asEnum(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation

    .line 54
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const-string v0, "EnumClass must be defined."

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    const-string v1, "%s does not seem to be an Enum type"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 56
    return-object p0
.end method

.method private static checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation

    .line 69
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->asEnum(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 70
    .local v0, "constants":[Ljava/lang/Enum;, "[TE;"
    array-length v1, v0

    const/16 v2, 0x40

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 70
    const-string v3, "Cannot store %s %s values in %s bits"

    invoke-static {v1, v3, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    return-object p0
.end method

.method public static generateBitVector(Ljava/lang/Class;Ljava/lang/Iterable;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;)J"
        }
    .end annotation

    .line 118
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;

    .line 119
    const-string v0, "values"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    const-wide/16 v0, 0x0

    .line 121
    .local v0, "total":J
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    .line 122
    .local v3, "constant":Ljava/lang/Enum;, "TE;"
    const-string v4, "null elements not permitted"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    const-wide/16 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 124
    .end local v3    # "constant":Ljava/lang/Enum;, "TE;"
    goto :goto_0

    .line 125
    :cond_0
    return-wide v0
.end method

.method public static varargs generateBitVector(Ljava/lang/Class;[Ljava/lang/Enum;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;[TE;)J"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 95
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p1, "values":[Ljava/lang/Enum;, "[TE;"
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 96
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/EnumUtils;->generateBitVector(Ljava/lang/Class;Ljava/lang/Iterable;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static generateBitVectors(Ljava/lang/Class;Ljava/lang/Iterable;)[J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;)[J"
        }
    .end annotation

    .line 175
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->asEnum(Ljava/lang/Class;)Ljava/lang/Class;

    .line 176
    const-string v0, "values"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 178
    .local v0, "condensed":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    new-instance v1, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda3;-><init>(Ljava/util/EnumSet;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 179
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x40

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [J

    .line 180
    .local v1, "result":[J
    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    .line 181
    .local v3, "value":Ljava/lang/Enum;, "TE;"
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    div-int/lit8 v4, v4, 0x40

    aget-wide v5, v1, v4

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    rem-int/lit8 v7, v7, 0x40

    const-wide/16 v8, 0x1

    shl-long v7, v8, v7

    or-long/2addr v5, v7

    aput-wide v5, v1, v4

    .line 182
    .end local v3    # "value":Ljava/lang/Enum;, "TE;"
    goto :goto_0

    .line 183
    :cond_0
    invoke-static {v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([J)V

    .line 184
    return-object v1
.end method

.method public static varargs generateBitVectors(Ljava/lang/Class;[Ljava/lang/Enum;)[J
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;[TE;)[J"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 146
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p1, "values":[Ljava/lang/Enum;, "[TE;"
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->asEnum(Ljava/lang/Class;)Ljava/lang/Class;

    .line 147
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 148
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 149
    .local v0, "condensed":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x40

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [J

    .line 151
    .local v1, "result":[J
    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    .line 152
    .local v3, "value":Ljava/lang/Enum;, "TE;"
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    div-int/lit8 v4, v4, 0x40

    aget-wide v5, v1, v4

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    rem-int/lit8 v7, v7, 0x40

    const-wide/16 v8, 0x1

    shl-long v7, v8, v7

    or-long/2addr v5, v7

    aput-wide v5, v1, v4

    .line 153
    .end local v3    # "value":Ljava/lang/Enum;, "TE;"
    goto :goto_0

    .line 154
    :cond_0
    invoke-static {v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([J)V

    .line 155
    return-object v1
.end method

.method public static getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1
    .param p1, "enumName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 199
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/EnumUtils;->getEnum(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public static getEnum(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 1
    .param p1, "enumName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            "TE;)TE;"
        }
    .end annotation

    .line 216
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "defaultEnum":Ljava/lang/Enum;, "TE;"
    if-nez p1, :cond_0

    .line 217
    return-object p2

    .line 220
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    return-object p2
.end method

.method public static getEnumIgnoreCase(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1
    .param p1, "enumName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 239
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/EnumUtils;->getEnumIgnoreCase(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public static getEnumIgnoreCase(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 1
    .param p1, "enumName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            "TE;)TE;"
        }
    .end annotation

    .line 257
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "defaultEnum":Ljava/lang/Enum;, "TE;"
    new-instance v0, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/EnumUtils;->getFirstEnumIgnoreCase(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public static getEnumList(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 270
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getEnumMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TE;>;"
        }
    .end annotation

    .line 283
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    new-instance v0, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/EnumUtils;->getEnumMap(Ljava/lang/Class;Ljava/util/function/Function;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getEnumMap(Ljava/lang/Class;Ljava/util/function/Function;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/util/function/Function<",
            "TE;TK;>;)",
            "Ljava/util/Map<",
            "TK;TE;>;"
        }
    .end annotation

    .line 301
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p1, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<TE;TK;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Function;)V

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public static getEnumSystemProperty(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 1
    .param p1, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            "TE;)TE;"
        }
    .end annotation

    .line 320
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "defaultEnum":Ljava/lang/Enum;, "TE;"
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/apache/commons/lang3/EnumUtils;->getEnum(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_1

    .line 320
    :cond_1
    :goto_0
    move-object v0, p2

    :goto_1
    return-object v0
.end method

.method public static getFirstEnumIgnoreCase(Ljava/lang/Class;Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 2
    .param p1, "enumName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "TE;",
            "Ljava/lang/String;",
            ">;TE;)TE;"
        }
    .end annotation

    .line 340
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "stringFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<TE;Ljava/lang/String;>;"
    .local p3, "defaultEnum":Ljava/lang/Enum;, "TE;"
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/lang3/EnumUtils$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/util/function/Function;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0

    .line 341
    :cond_1
    :goto_0
    return-object p3
.end method

.method public static isValidEnum(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1
    .param p1, "enumName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 358
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/EnumUtils;->getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidEnumIgnoreCase(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1
    .param p1, "enumName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 375
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/EnumUtils;->getEnumIgnoreCase(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$generateBitVectors$0(Ljava/util/EnumSet;Ljava/lang/Enum;)V
    .locals 1
    .param p0, "condensed"    # Ljava/util/EnumSet;
    .param p1, "constant"    # Ljava/lang/Enum;

    .line 178
    const-string v0, "null elements not permitted"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {p0, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$getFirstEnumIgnoreCase$1(Ljava/lang/String;Ljava/util/function/Function;Ljava/lang/Enum;)Z
    .locals 1
    .param p0, "enumName"    # Ljava/lang/String;
    .param p1, "stringFunction"    # Ljava/util/function/Function;
    .param p2, "e"    # Ljava/lang/Enum;

    .line 343
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static processBitVector(Ljava/lang/Class;J)Ljava/util/EnumSet;
    .locals 2
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;J)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 392
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->checkBitVectorable(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 393
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/EnumUtils;->processBitVectors(Ljava/lang/Class;[J)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static varargs processBitVectors(Ljava/lang/Class;[J)Ljava/util/EnumSet;
    .locals 12
    .param p1, "values"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;[J)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 410
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/EnumUtils;->asEnum(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 411
    .local v0, "results":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    const-string v1, "values"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-static {v1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([J)[J

    move-result-object v1

    .line 412
    .local v1, "lvalues":[J
    invoke-static {v1}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([J)V

    .line 413
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 414
    .local v5, "constant":Ljava/lang/Enum;, "TE;"
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    div-int/lit8 v6, v6, 0x40

    .line 415
    .local v6, "block":I
    array-length v7, v1

    if-ge v6, v7, :cond_0

    aget-wide v7, v1, v6

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    rem-int/lit8 v9, v9, 0x40

    const-wide/16 v10, 0x1

    shl-long v9, v10, v9

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 416
    invoke-virtual {v0, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 413
    .end local v5    # "constant":Ljava/lang/Enum;, "TE;"
    .end local v6    # "block":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 419
    :cond_1
    return-object v0
.end method
