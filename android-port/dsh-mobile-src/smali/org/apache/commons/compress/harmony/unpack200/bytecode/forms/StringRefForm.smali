.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/StringRefForm;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/SingleByteReferenceForm;
.source "StringRefForm.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;[I)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "rewrite"    # [I

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/SingleByteReferenceForm;-><init>(ILjava/lang/String;[I)V

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[IZ)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "rewrite"    # [I
    .param p4, "widened"    # Z

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/StringRefForm;-><init>(ILjava/lang/String;[I)V

    .line 36
    iput-boolean p4, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/StringRefForm;->widened:Z

    .line 37
    return-void
.end method


# virtual methods
.method protected getOffset(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;)I
    .locals 1
    .param p1, "operandManager"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;

    .line 41
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextStringRef()I

    move-result v0

    return v0
.end method

.method protected getPoolID()I
    .locals 1

    .line 46
    const/4 v0, 0x6

    return v0
.end method

.method protected setNestedEntries(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)V
    .locals 6
    .param p1, "byteCode"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;
    .param p2, "operandManager"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 51
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->globalConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v0

    .line 52
    .local v0, "globalPool":Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;
    const/4 v1, 0x1

    new-array v2, v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/StringRefForm;->getPoolID()I

    move-result v3

    int-to-long v4, p3

    invoke-virtual {v0, v3, v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;->getValue(IJ)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 53
    .local v2, "nested":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    invoke-virtual {p1, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setNested([Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)V

    .line 54
    iget-boolean v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/StringRefForm;->widened:Z

    if-eqz v3, :cond_0

    .line 55
    const/4 v1, 0x2

    filled-new-array {v4, v1}, [I

    move-result-object v1

    filled-new-array {v1}, [[I

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setNestedPositions([[I)V

    goto :goto_0

    .line 57
    :cond_0
    filled-new-array {v4, v1}, [I

    move-result-object v1

    filled-new-array {v1}, [[I

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setNestedPositions([[I)V

    .line 59
    :goto_0
    return-void
.end method
