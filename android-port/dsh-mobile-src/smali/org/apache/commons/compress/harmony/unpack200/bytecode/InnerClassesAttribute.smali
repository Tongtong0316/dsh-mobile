.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
.source "InnerClassesAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$InnerClassesEntry;
    }
.end annotation


# static fields
.field private static attributeName:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;


# instance fields
.field private final innerClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$InnerClassesEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final nestedClassFileEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 94
    sget-object v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->attributeName:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->innerClasses:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->nestedClassFileEntries:Ljava/util/List;

    .line 95
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->nestedClassFileEntries:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->getAttributeName()Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method private addInnerClassesEntry(Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$InnerClassesEntry;)V
    .locals 1
    .param p1, "innerClassesEntry"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$InnerClassesEntry;

    .line 112
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->innerClasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public static setAttributeName(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V
    .locals 0
    .param p0, "cpUTF8Value"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 87
    sput-object p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->attributeName:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 88
    return-void
.end method


# virtual methods
.method public addInnerClassesEntry(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;I)V
    .locals 1
    .param p1, "innerClass"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    .param p2, "outerClass"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    .param p3, "innerName"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .param p4, "flags"    # I

    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->nestedClassFileEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    if-eqz p2, :cond_1

    .line 103
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->nestedClassFileEntries:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    if-eqz p3, :cond_2

    .line 106
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->nestedClassFileEntries:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_2
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$InnerClassesEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$InnerClassesEntry;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->addInnerClassesEntry(Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$InnerClassesEntry;)V

    .line 109
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 117
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 118
    return v0

    .line 120
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 121
    return v2

    .line 123
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    .line 124
    return v2

    .line 126
    :cond_2
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;

    .line 127
    .local v1, "other":Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->getAttributeName()Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v3

    if-nez v3, :cond_3

    .line 128
    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->getAttributeName()Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 129
    return v2

    .line 131
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->getAttributeName()Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->getAttributeName()Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 132
    return v2

    .line 134
    :cond_4
    return v0
.end method

.method protected getLength()I
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->innerClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getNestedClassFileEntries()[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .locals 2

    .line 144
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->nestedClassFileEntries:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->NONE:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 149
    const/16 v0, 0x1f

    .line 150
    .local v0, "PRIME":I
    invoke-super {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->hashCode()I

    move-result v1

    .line 151
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->getAttributeName()Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->getAttributeName()Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 152
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method protected resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V
    .locals 2
    .param p1, "pool"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;

    .line 157
    invoke-super {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    .line 158
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->innerClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$InnerClassesEntry;

    .line 159
    .local v1, "entry":Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$InnerClassesEntry;
    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$InnerClassesEntry;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    .line 160
    .end local v1    # "entry":Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$InnerClassesEntry;
    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InnerClasses: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->getAttributeName()Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeBody(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->innerClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 172
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->innerClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$InnerClassesEntry;

    .line 173
    .local v1, "entry":Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$InnerClassesEntry;
    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$InnerClassesEntry;->write(Ljava/io/DataOutputStream;)V

    .line 174
    .end local v1    # "entry":Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute$InnerClassesEntry;
    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method
