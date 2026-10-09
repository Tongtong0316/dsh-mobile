.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
.source "SourceFileAttribute.java"


# static fields
.field private static attributeName:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;


# instance fields
.field private final name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

.field private nameIndex:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V
    .locals 1
    .param p1, "name"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 39
    sget-object v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;->attributeName:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 40
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 41
    return-void
.end method

.method public static setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V
    .locals 0
    .param p0, "cpUTF8Value"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 31
    sput-object p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;->attributeName:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 45
    if-ne p0, p1, :cond_0

    .line 46
    const/4 v0, 0x1

    return v0

    .line 48
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 49
    return v1

    .line 51
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 52
    return v1

    .line 54
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;

    .line 55
    .local v0, "other":Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected getLength()I
    .locals 1

    .line 60
    const/4 v0, 0x2

    return v0
.end method

.method protected getNestedClassFileEntries()[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .locals 3

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;->getAttributeName()Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 70
    const/16 v0, 0x1f

    .line 71
    .local v0, "PRIME":I
    invoke-super {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->hashCode()I

    move-result v1

    .line 72
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 73
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public isSourceFileAttribute()Z
    .locals 1

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method protected resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V
    .locals 1
    .param p1, "pool"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;

    .line 88
    invoke-super {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    .line 89
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;->nameIndex:I

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SourceFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 99
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;->nameIndex:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 100
    return-void
.end method
