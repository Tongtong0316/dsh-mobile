.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;
.source "CPNameAndType.java"


# instance fields
.field private cachedHashCode:I

.field descriptor:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field transient descriptorIndex:I

.field private hashCodeComputed:Z

.field name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field transient nameIndex:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;I)V
    .locals 1
    .param p1, "name"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .param p2, "descriptor"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .param p3, "globalIndex"    # I

    .line 51
    const/16 v0, 0xc

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;-><init>(BI)V

    .line 52
    const-string v0, "name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 53
    const-string v0, "descriptor"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->descriptor:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 54
    return-void
.end method

.method private generateHashCode()V
    .locals 4

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->hashCodeComputed:Z

    .line 78
    const/16 v0, 0x1f

    .line 79
    .local v0, "PRIME":I
    const/4 v1, 0x1

    .line 80
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->descriptor:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 81
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 82
    .end local v2    # "result":I
    .restart local v1    # "result":I
    iput v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->cachedHashCode:I

    .line 83
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 63
    return v0

    .line 65
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 66
    return v1

    .line 68
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 69
    return v1

    .line 71
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    .line 72
    .local v2, "other":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->descriptor:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iget-object v4, v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->descriptor:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iget-object v4, v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 73
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 72
    :goto_0
    return v0
.end method

.method protected getNestedClassFileEntries()[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .locals 3

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->descriptor:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 92
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->hashCodeComputed:Z

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->generateHashCode()V

    .line 95
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->cachedHashCode:I

    return v0
.end method

.method public invokeInterfaceCount()I
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->descriptor:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->underlyingString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countInvokeInterfaceArgs(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V
    .locals 1
    .param p1, "pool"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;

    .line 110
    invoke-super {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    .line 111
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->descriptor:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->descriptorIndex:I

    .line 112
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->nameIndex:I

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NameAndType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->descriptor:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeBody(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->nameIndex:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 123
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->descriptorIndex:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 124
    return-void
.end method
