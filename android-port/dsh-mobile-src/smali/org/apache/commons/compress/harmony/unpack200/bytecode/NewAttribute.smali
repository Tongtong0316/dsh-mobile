.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;
.super Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;
.source "NewAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;,
        Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCLength;,
        Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;,
        Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$AbstractBcValue;
    }
.end annotation


# instance fields
.field private final body:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutIndex:I

.field private final lengths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pool:Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;I)V
    .locals 1
    .param p1, "attributeName"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .param p2, "layoutIndex"    # I

    .line 82
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->lengths:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    .line 83
    iput p2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->layoutIndex:I

    .line 84
    return-void
.end method


# virtual methods
.method public addBCIndex(II)V
    .locals 2
    .param p1, "length"    # I
    .param p2, "value"    # I

    .line 87
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->lengths:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;

    invoke-direct {v1, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public addBCLength(II)V
    .locals 2
    .param p1, "length"    # I
    .param p2, "value"    # I

    .line 92
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->lengths:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCLength;

    invoke-direct {v1, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCLength;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public addBCOffset(II)V
    .locals 2
    .param p1, "length"    # I
    .param p2, "value"    # I

    .line 97
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->lengths:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;

    invoke-direct {v1, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public addInteger(IJ)V
    .locals 2
    .param p1, "length"    # I
    .param p2, "value"    # J

    .line 102
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->lengths:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public addToBody(ILjava/lang/Object;)V
    .locals 2
    .param p1, "length"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->lengths:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public getLayoutIndex()I
    .locals 1

    .line 112
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->layoutIndex:I

    return v0
.end method

.method protected getLength()I
    .locals 4

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "length":I
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->lengths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 124
    .local v2, "len":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v0, v3

    .line 125
    .end local v2    # "len":Ljava/lang/Integer;
    goto :goto_0

    .line 126
    :cond_0
    return v0
.end method

.method protected getNestedClassFileEntries()[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .locals 6

    .line 131
    const/4 v0, 0x1

    .line 132
    .local v0, "total":I
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 133
    .local v2, "element":Ljava/lang/Object;
    instance-of v3, v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    if-eqz v3, :cond_0

    .line 134
    add-int/lit8 v0, v0, 0x1

    .line 136
    .end local v2    # "element":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 137
    :cond_1
    new-array v1, v0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 138
    .local v1, "nested":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->getAttributeName()Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v3

    aput-object v3, v1, v2

    .line 139
    const/4 v2, 0x1

    .line 140
    .local v2, "i":I
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 141
    .local v4, "element":Ljava/lang/Object;
    instance-of v5, v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    if-eqz v5, :cond_2

    .line 142
    move-object v5, v4

    check-cast v5, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    aput-object v5, v1, v2

    .line 143
    add-int/lit8 v2, v2, 0x1

    .line 145
    .end local v4    # "element":Ljava/lang/Object;
    :cond_2
    goto :goto_1

    .line 146
    :cond_3
    return-object v1
.end method

.method protected getStartPCs()[I
    .locals 1

    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public renumber(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p1, "byteCodeOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->renumbered:Z

    if-nez v0, :cond_6

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "previous":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 160
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;

    if-eqz v3, :cond_0

    .line 161
    move-object v3, v2

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;

    .line 162
    .local v3, "bcIndex":Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;->access$100(Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;)I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;->setActualValue(I)V

    .line 163
    .end local v3    # "bcIndex":Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;
    goto/16 :goto_2

    :cond_0
    instance-of v3, v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;

    if-eqz v3, :cond_3

    .line 164
    move-object v3, v2

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;

    .line 165
    .local v3, "bcOffset":Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;
    instance-of v4, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;

    if-eqz v4, :cond_1

    .line 166
    move-object v4, v0

    check-cast v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;

    invoke-static {v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;->access$100(Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;)I

    move-result v4

    invoke-static {v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;->access$200(Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;)I

    move-result v5

    add-int/2addr v4, v5

    .line 167
    .local v4, "index":I
    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;->setIndex(I)V

    .line 168
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;->setActualValue(I)V

    .line 169
    .end local v4    # "index":I
    goto :goto_1

    :cond_1
    instance-of v4, v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;

    if-eqz v4, :cond_2

    .line 170
    move-object v4, v0

    check-cast v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;

    invoke-static {v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;->access$300(Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;)I

    move-result v4

    invoke-static {v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;->access$200(Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;)I

    move-result v5

    add-int/2addr v4, v5

    .line 171
    .restart local v4    # "index":I
    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;->setIndex(I)V

    .line 172
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;->setActualValue(I)V

    .line 173
    .end local v4    # "index":I
    goto :goto_1

    .line 175
    :cond_2
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;->access$200(Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;)I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;->setActualValue(I)V

    goto :goto_1

    .line 177
    .end local v3    # "bcOffset":Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCOffset;
    :cond_3
    instance-of v3, v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCLength;

    if-eqz v3, :cond_4

    .line 179
    move-object v3, v2

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCLength;

    .line 180
    .local v3, "bcLength":Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCLength;
    move-object v4, v0

    check-cast v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;

    .line 181
    .local v4, "prevIndex":Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;
    invoke-static {v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;->access$100(Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;)I

    move-result v5

    invoke-static {v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCLength;->access$400(Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCLength;)I

    move-result v6

    add-int/2addr v5, v6

    .line 182
    .local v5, "index":I
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;->actualValue:I

    sub-int/2addr v6, v7

    .line 183
    .local v6, "actualLength":I
    invoke-virtual {v3, v6}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCLength;->setActualValue(I)V

    goto :goto_2

    .line 177
    .end local v3    # "bcLength":Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCLength;
    .end local v4    # "prevIndex":Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$BCIndex;
    .end local v5    # "index":I
    .end local v6    # "actualLength":I
    :cond_4
    :goto_1
    nop

    .line 185
    :goto_2
    move-object v0, v2

    .line 186
    .end local v2    # "obj":Ljava/lang/Object;
    goto/16 :goto_0

    .line 187
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->renumbered:Z

    .line 189
    .end local v0    # "previous":Ljava/lang/Object;
    :cond_6
    return-void
.end method

.method protected resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V
    .locals 3
    .param p1, "pool"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;

    .line 193
    invoke-super {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    .line 194
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 195
    .local v1, "element":Ljava/lang/Object;
    instance-of v2, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    if-eqz v2, :cond_0

    .line 196
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    .line 198
    .end local v1    # "element":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 199
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->pool:Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;

    .line 200
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->attributeName:Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->underlyingString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeBody(Ljava/io/DataOutputStream;)V
    .locals 7
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->lengths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 220
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->lengths:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 221
    .local v1, "length":I
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->body:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 222
    .local v2, "obj":Ljava/lang/Object;
    const-wide/16 v3, 0x0

    .line 223
    .local v3, "value":J
    instance-of v5, v2, Ljava/lang/Long;

    if-eqz v5, :cond_0

    .line 224
    move-object v5, v2

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_1

    .line 225
    :cond_0
    instance-of v5, v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    if-eqz v5, :cond_1

    .line 226
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->pool:Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;

    move-object v6, v2

    check-cast v6, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    invoke-virtual {v5, v6}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v5

    int-to-long v3, v5

    goto :goto_1

    .line 227
    :cond_1
    instance-of v5, v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$AbstractBcValue;

    if-eqz v5, :cond_2

    .line 228
    move-object v5, v2

    check-cast v5, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$AbstractBcValue;

    iget v5, v5, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute$AbstractBcValue;->actualValue:I

    int-to-long v3, v5

    .line 231
    :cond_2
    :goto_1
    sparse-switch v1, :sswitch_data_0

    goto :goto_2

    .line 242
    :sswitch_0
    invoke-virtual {p1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 243
    goto :goto_2

    .line 239
    :sswitch_1
    long-to-int v5, v3

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 240
    goto :goto_2

    .line 236
    :sswitch_2
    long-to-int v5, v3

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 237
    goto :goto_2

    .line 233
    :sswitch_3
    long-to-int v5, v3

    invoke-virtual {p1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 234
    nop

    .line 219
    .end local v1    # "length":I
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "value":J
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "i":I
    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
