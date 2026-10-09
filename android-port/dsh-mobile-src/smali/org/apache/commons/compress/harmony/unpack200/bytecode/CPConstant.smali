.class public abstract Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;
.source "CPConstant.java"


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(BLjava/lang/Object;I)V
    .locals 1
    .param p1, "tag"    # B
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "globalIndex"    # I

    .line 37
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;-><init>(BI)V

    .line 38
    const-string v0, "value"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;->value:Ljava/lang/Object;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 43
    if-ne p0, p1, :cond_0

    .line 44
    const/4 v0, 0x1

    return v0

    .line 46
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 47
    return v0

    .line 49
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 50
    return v0

    .line 52
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;

    .line 53
    .local v0, "other":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;->value:Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;->value:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected getValue()Ljava/lang/Object;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;->value:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
