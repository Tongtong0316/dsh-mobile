.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;
.super Ljava/lang/Object;
.source "AnnotationsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElementValue"
.end annotation


# instance fields
.field private constantValueIndex:I

.field private final tag:I

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->constantValueIndex:I

    .line 99
    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->tag:I

    .line 100
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    .line 101
    return-void
.end method


# virtual methods
.method public getClassFileEntries()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    instance-of v1, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    iget-object v1, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->name:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    iget-object v1, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->descriptor:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 109
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    instance-of v1, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 112
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    instance-of v1, v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    if-eqz v1, :cond_3

    .line 113
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    check-cast v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    .line 114
    .local v1, "values":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 115
    .local v4, "value2":Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->getClassFileEntries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    .end local v4    # "value2":Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "values":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;
    :cond_2
    goto :goto_1

    .line 117
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    instance-of v1, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    if-eqz v1, :cond_4

    .line 118
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;->getClassFileEntries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 117
    :cond_4
    :goto_1
    nop

    .line 120
    :goto_2
    return-object v0
.end method

.method public getLength()I
    .locals 6

    .line 124
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->tag:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 148
    return v1

    .line 137
    :sswitch_0
    const/4 v0, 0x5

    return v0

    .line 139
    :sswitch_1
    const/4 v0, 0x3

    .line 140
    .local v0, "length":I
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    check-cast v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    .line 141
    .local v2, "nestedValues":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 142
    .local v4, "nestedValue":Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->getLength()I

    move-result v5

    add-int/2addr v0, v5

    .line 141
    .end local v4    # "nestedValue":Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return v0

    .line 135
    .end local v0    # "length":I
    .end local v2    # "nestedValues":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;
    :sswitch_2
    const/4 v0, 0x3

    return v0

    .line 146
    :sswitch_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_3
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x44 -> :sswitch_2
        0x46 -> :sswitch_2
        0x49 -> :sswitch_2
        0x4a -> :sswitch_2
        0x53 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_1
        0x63 -> :sswitch_2
        0x65 -> :sswitch_0
        0x73 -> :sswitch_2
    .end sparse-switch
.end method

.method public resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V
    .locals 4
    .param p1, "pool"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;

    .line 152
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    .line 154
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPConstant;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->constantValueIndex:I

    goto :goto_1

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    .line 157
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->constantValueIndex:I

    goto :goto_1

    .line 158
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    .line 160
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->constantValueIndex:I

    goto :goto_1

    .line 161
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    goto :goto_1

    .line 163
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    if-eqz v0, :cond_4

    .line 164
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    goto :goto_1

    .line 165
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    instance-of v0, v0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    if-eqz v0, :cond_5

    .line 166
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    check-cast v0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    .line 167
    .local v0, "nestedValues":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 168
    .local v3, "nestedValue":Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;
    invoke-virtual {v3, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    .line 167
    .end local v3    # "nestedValue":Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "nestedValues":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;
    :cond_5
    :goto_1
    return-void
.end method

.method public writeBody(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->tag:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 175
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->constantValueIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 176
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->constantValueIndex:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;->writeBody(Ljava/io/DataOutputStream;)V

    goto :goto_1

    .line 179
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;->writeBody(Ljava/io/DataOutputStream;)V

    goto :goto_1

    .line 181
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    instance-of v0, v0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    if-eqz v0, :cond_4

    .line 182
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->value:Ljava/lang/Object;

    check-cast v0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;

    .line 183
    .local v0, "nestedValues":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 184
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 185
    .local v3, "nestedValue":Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;
    invoke-virtual {v3, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;->writeBody(Ljava/io/DataOutputStream;)V

    .line 184
    .end local v3    # "nestedValue":Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "nestedValues":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$ElementValue;
    :cond_3
    nop

    .line 190
    :goto_1
    return-void

    .line 188
    :cond_4
    new-instance v0, Ljava/lang/Error;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
