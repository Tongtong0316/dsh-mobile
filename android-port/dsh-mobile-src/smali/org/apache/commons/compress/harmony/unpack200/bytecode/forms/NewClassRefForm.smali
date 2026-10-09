.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/NewClassRefForm;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ClassRefForm;
.source "NewClassRefForm.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;[I)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "rewrite"    # [I

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ClassRefForm;-><init>(ILjava/lang/String;[I)V

    .line 34
    return-void
.end method


# virtual methods
.method public setByteCodeOperands(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)V
    .locals 5
    .param p1, "byteCode"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;
    .param p2, "operandManager"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;
    .param p3, "codeLength"    # I

    .line 44
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/NewClassRefForm;->getOffset(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;)I

    move-result v0

    .line 45
    .local v0, "offset":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->globalConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v2

    .line 48
    .local v2, "globalPool":Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->getCurrentClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;->getClassPoolEntry(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;

    move-result-object v4

    aput-object v4, v3, v1

    .line 49
    .local v3, "nested":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    invoke-virtual {p1, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setNested([Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)V

    .line 50
    const/4 v4, 0x2

    filled-new-array {v1, v4}, [I

    move-result-object v4

    filled-new-array {v4}, [[I

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setNestedPositions([[I)V

    .line 51
    .end local v2    # "globalPool":Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;
    .end local v3    # "nested":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    goto :goto_0

    .line 56
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/NewClassRefForm;->setNestedEntries(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)V
    :try_end_0
    .catch Lorg/apache/commons/compress/harmony/pack200/Pack200Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    nop

    .line 61
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getNestedClassFileEntries()[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v2

    aget-object v1, v2, v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->setNewClass(Ljava/lang/String;)V

    .line 62
    return-void

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "ex":Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Got a pack200 exception. What to do?"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method
