.class public abstract Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/InitMethodReferenceForm;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ClassSpecificReferenceForm;
.source "InitMethodReferenceForm.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;[I)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "rewrite"    # [I

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/ClassSpecificReferenceForm;-><init>(ILjava/lang/String;[I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected abstract context(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;)Ljava/lang/String;
.end method

.method protected getOffset(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;)I
    .locals 1
    .param p1, "operandManager"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;

    .line 39
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->nextInitRef()I

    move-result v0

    return v0
.end method

.method protected getPoolID()I
    .locals 1

    .line 44
    const/16 v0, 0xb

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

    .line 49
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->globalConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v0

    .line 50
    .local v0, "globalPool":Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    int-to-long v2, p3

    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/InitMethodReferenceForm;->context(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v0, v5, v2, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;->getInitMethodPoolEntry(IJLjava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 51
    .local v1, "nested":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    invoke-virtual {p1, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setNested([Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)V

    .line 52
    const/4 v2, 0x2

    filled-new-array {v3, v2}, [I

    move-result-object v2

    filled-new-array {v2}, [[I

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->setNestedPositions([[I)V

    .line 53
    return-void
.end method
