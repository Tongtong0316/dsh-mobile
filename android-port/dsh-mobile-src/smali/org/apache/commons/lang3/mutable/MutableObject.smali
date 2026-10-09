.class public Lorg/apache/commons/lang3/mutable/MutableObject;
.super Ljava/lang/Object;
.source "MutableObject.java"

# interfaces
.implements Lorg/apache/commons/lang3/mutable/Mutable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/mutable/Mutable<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x14146a94f5L


# instance fields
.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    .local p0, "this":Lorg/apache/commons/lang3/mutable/MutableObject;, "Lorg/apache/commons/lang3/mutable/MutableObject<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/apache/commons/lang3/mutable/MutableObject;, "Lorg/apache/commons/lang3/mutable/MutableObject<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 68
    .local p0, "this":Lorg/apache/commons/lang3/mutable/MutableObject;, "Lorg/apache/commons/lang3/mutable/MutableObject<TT;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 69
    return v0

    .line 71
    :cond_0
    if-ne p0, p1, :cond_1

    .line 72
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 75
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/lang3/mutable/MutableObject;

    .line 76
    .local v0, "that":Lorg/apache/commons/lang3/mutable/MutableObject;, "Lorg/apache/commons/lang3/mutable/MutableObject<*>;"
    iget-object v1, p0, Lorg/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 78
    .end local v0    # "that":Lorg/apache/commons/lang3/mutable/MutableObject;, "Lorg/apache/commons/lang3/mutable/MutableObject<*>;"
    :cond_2
    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/apache/commons/lang3/mutable/MutableObject;, "Lorg/apache/commons/lang3/mutable/MutableObject<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 98
    .local p0, "this":Lorg/apache/commons/lang3/mutable/MutableObject;, "Lorg/apache/commons/lang3/mutable/MutableObject<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 108
    .local p0, "this":Lorg/apache/commons/lang3/mutable/MutableObject;, "Lorg/apache/commons/lang3/mutable/MutableObject<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 118
    .local p0, "this":Lorg/apache/commons/lang3/mutable/MutableObject;, "Lorg/apache/commons/lang3/mutable/MutableObject<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/mutable/MutableObject;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
