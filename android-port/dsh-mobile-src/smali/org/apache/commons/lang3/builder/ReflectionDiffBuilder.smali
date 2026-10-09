.class public Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;
.super Ljava/lang/Object;
.source "ReflectionDiffBuilder.java"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder<",
        "Lorg/apache/commons/lang3/builder/DiffResult<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation
.end field

.field private excludeFieldNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V
    .locals 2
    .param p3, "style"    # Lorg/apache/commons/lang3/builder/ToStringStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Lorg/apache/commons/lang3/builder/ToStringStyle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    .local p0, "this":Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;, "Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder<TT;>;"
    .local p1, "left":Ljava/lang/Object;, "TT;"
    .local p2, "right":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lorg/apache/commons/lang3/builder/DiffBuilder;->builder()Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->setLeft(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->setRight(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->setStyle(Lorg/apache/commons/lang3/builder/ToStringStyle;)Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->build()Lorg/apache/commons/lang3/builder/DiffBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;[Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/lang3/builder/DiffBuilder;[Ljava/lang/String;)V
    .locals 0
    .param p2, "excludeFieldNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/builder/DiffBuilder<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;, "Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder<TT;>;"
    .local p1, "diffBuilder":Lorg/apache/commons/lang3/builder/DiffBuilder;, "Lorg/apache/commons/lang3/builder/DiffBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;

    .line 157
    iput-object p2, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->excludeFieldNames:[Ljava/lang/String;

    .line 158
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/builder/DiffBuilder;[Ljava/lang/String;Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/lang3/builder/DiffBuilder;
    .param p2, "x1"    # [Ljava/lang/String;
    .param p3, "x2"    # Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$1;

    .line 76
    .local p0, "this":Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;, "Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;-><init>(Lorg/apache/commons/lang3/builder/DiffBuilder;[Ljava/lang/String;)V

    return-void
.end method

.method private accept(Ljava/lang/reflect/Field;)Z
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 180
    .local p0, "this":Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;, "Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder<TT;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 181
    return v2

    .line 183
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    return v2

    .line 186
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    return v2

    .line 189
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->excludeFieldNames:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->excludeFieldNames:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 191
    return v2

    .line 193
    :cond_3
    const-class v0, Lorg/apache/commons/lang3/builder/DiffExclude;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic access$100([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/String;

    .line 76
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->toExcludeFieldNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private appendFields(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 197
    .local p0, "this":Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;, "Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lorg/apache/commons/lang3/reflect/FieldUtils;->getAllFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 198
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-direct {p0, v3}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->accept(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->getLeft()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->getRight()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v3, v7}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/commons/lang3/builder/DiffBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/DiffBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_1

    .line 201
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected IllegalAccessException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 197
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_1
    return-void
.end method

.method public static builder()Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 137
    new-instance v0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$Builder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder$Builder;-><init>()V

    return-object v0
.end method

.method private getLeft()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 231
    .local p0, "this":Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;, "Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/DiffBuilder;->getLeft()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getRight()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 235
    .local p0, "this":Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;, "Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/DiffBuilder;->getRight()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 239
    .local p0, "this":Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;, "Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder<TT;>;"
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static toExcludeFieldNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "excludeFieldNames"    # [Ljava/lang/String;

    .line 141
    if-nez p0, :cond_0

    .line 142
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 145
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ArraySorter;->sort([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 76
    .local p0, "this":Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;, "Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->build()Lorg/apache/commons/lang3/builder/DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/commons/lang3/builder/DiffResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/builder/DiffResult<",
            "TT;>;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;, "Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder<TT;>;"
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->getLeft()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->getRight()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/DiffBuilder;->build()Lorg/apache/commons/lang3/builder/DiffResult;

    move-result-object v0

    return-object v0

    .line 216
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->getLeft()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->appendFields(Ljava/lang/Class;)V

    .line 217
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->diffBuilder:Lorg/apache/commons/lang3/builder/DiffBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/DiffBuilder;->build()Lorg/apache/commons/lang3/builder/DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public getExcludeFieldNames()[Ljava/lang/String;
    .locals 1

    .line 227
    .local p0, "this":Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;, "Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->excludeFieldNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public varargs setExcludeFieldNames([Ljava/lang/String;)Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;
    .locals 1
    .param p1, "excludeFieldNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    .local p0, "this":Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;, "Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder<TT;>;"
    invoke-static {p1}, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->toExcludeFieldNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/ReflectionDiffBuilder;->excludeFieldNames:[Ljava/lang/String;

    .line 253
    return-object p0
.end method
