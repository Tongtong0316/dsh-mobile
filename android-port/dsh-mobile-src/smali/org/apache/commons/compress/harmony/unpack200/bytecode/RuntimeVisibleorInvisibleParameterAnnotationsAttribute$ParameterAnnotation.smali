.class public Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute$ParameterAnnotation;
.super Ljava/lang/Object;
.source "RuntimeVisibleorInvisibleParameterAnnotationsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterAnnotation"
.end annotation


# instance fields
.field private final annotations:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

.field private final numAnnotations:I


# direct methods
.method public constructor <init>([Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;)V
    .locals 1
    .param p1, "annotations"    # [Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    array-length v0, p1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute$ParameterAnnotation;->numAnnotations:I

    .line 39
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute$ParameterAnnotation;->annotations:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    .line 40
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

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "nested":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute$ParameterAnnotation;->annotations:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 45
    .local v4, "annotation":Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;->getClassFileEntries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    .end local v4    # "annotation":Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-object v0
.end method

.method public getLength()I
    .locals 6

    .line 51
    const/4 v0, 0x2

    .line 52
    .local v0, "length":I
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute$ParameterAnnotation;->annotations:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 53
    .local v4, "annotation":Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;->getLength()I

    move-result v5

    add-int/2addr v0, v5

    .line 52
    .end local v4    # "annotation":Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return v0
.end method

.method public resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V
    .locals 4
    .param p1, "pool"    # Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;

    .line 59
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute$ParameterAnnotation;->annotations:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 60
    .local v3, "annotation":Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;
    invoke-virtual {v3, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;->resolve(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)V

    .line 59
    .end local v3    # "annotation":Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_0
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

    .line 65
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute$ParameterAnnotation;->numAnnotations:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 66
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/RuntimeVisibleorInvisibleParameterAnnotationsAttribute$ParameterAnnotation;->annotations:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 67
    .local v3, "annotation":Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;
    invoke-virtual {v3, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;->writeBody(Ljava/io/DataOutputStream;)V

    .line 66
    .end local v3    # "annotation":Lorg/apache/commons/compress/harmony/unpack200/bytecode/AnnotationsAttribute$Annotation;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method
