.class public Lorg/apache/commons/lang3/builder/DiffResult;
.super Ljava/lang/Object;
.source "DiffResult.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/commons/lang3/builder/Diff<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final OBJECTS_SAME_STRING:Ljava/lang/String; = ""


# instance fields
.field private final diffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/lang3/builder/Diff<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final lhs:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final rhs:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final style:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field private final toStringFormat:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/List;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/String;)V
    .locals 1
    .param p4, "style"    # Lorg/apache/commons/lang3/builder/ToStringStyle;
    .param p5, "toStringFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Ljava/util/List<",
            "Lorg/apache/commons/lang3/builder/Diff<",
            "*>;>;",
            "Lorg/apache/commons/lang3/builder/ToStringStyle;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/apache/commons/lang3/builder/DiffResult;, "Lorg/apache/commons/lang3/builder/DiffResult<TT;>;"
    .local p1, "lhs":Ljava/lang/Object;, "TT;"
    .local p2, "rhs":Ljava/lang/Object;, "TT;"
    .local p3, "diffList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/lang3/builder/Diff<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "diffList"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->diffList:Ljava/util/List;

    .line 73
    const-string v0, "lhs"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->lhs:Ljava/lang/Object;

    .line 74
    const-string v0, "rhs"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->rhs:Ljava/lang/Object;

    .line 75
    const-string v0, "style"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/builder/ToStringStyle;

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 76
    const-string v0, "toStringFormat"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->toStringFormat:Ljava/lang/String;

    .line 77
    return-void
.end method

.method static synthetic lambda$toString$0(Lorg/apache/commons/lang3/builder/ToStringBuilder;Lorg/apache/commons/lang3/builder/ToStringBuilder;Lorg/apache/commons/lang3/builder/Diff;)V
    .locals 2
    .param p0, "lhsBuilder"    # Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .param p1, "rhsBuilder"    # Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .param p2, "diff"    # Lorg/apache/commons/lang3/builder/Diff;

    .line 189
    invoke-virtual {p2}, Lorg/apache/commons/lang3/builder/Diff;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/commons/lang3/builder/Diff;->getLeft()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    .line 190
    invoke-virtual {p2}, Lorg/apache/commons/lang3/builder/Diff;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/commons/lang3/builder/Diff;->getRight()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;

    .line 191
    return-void
.end method


# virtual methods
.method public getDiffs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/lang3/builder/Diff<",
            "*>;>;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/apache/commons/lang3/builder/DiffResult;, "Lorg/apache/commons/lang3/builder/DiffResult<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->diffList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/apache/commons/lang3/builder/DiffResult;, "Lorg/apache/commons/lang3/builder/DiffResult<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->lhs:Ljava/lang/Object;

    return-object v0
.end method

.method public getNumberOfDiffs()I
    .locals 1

    .line 105
    .local p0, "this":Lorg/apache/commons/lang3/builder/DiffResult;, "Lorg/apache/commons/lang3/builder/DiffResult<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->diffList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRight()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/apache/commons/lang3/builder/DiffResult;, "Lorg/apache/commons/lang3/builder/DiffResult<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->rhs:Ljava/lang/Object;

    return-object v0
.end method

.method public getToStringStyle()Lorg/apache/commons/lang3/builder/ToStringStyle;
    .locals 1

    .line 124
    .local p0, "this":Lorg/apache/commons/lang3/builder/DiffResult;, "Lorg/apache/commons/lang3/builder/DiffResult<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/lang3/builder/Diff<",
            "*>;>;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lorg/apache/commons/lang3/builder/DiffResult;, "Lorg/apache/commons/lang3/builder/DiffResult<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->diffList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 168
    .local p0, "this":Lorg/apache/commons/lang3/builder/DiffResult;, "Lorg/apache/commons/lang3/builder/DiffResult<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/builder/DiffResult;->toString(Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;
    .locals 5
    .param p1, "style"    # Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 181
    .local p0, "this":Lorg/apache/commons/lang3/builder/DiffResult;, "Lorg/apache/commons/lang3/builder/DiffResult<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffResult;->diffList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const-string v0, ""

    return-object v0

    .line 185
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/DiffResult;->lhs:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    .line 186
    .local v0, "lhsBuilder":Lorg/apache/commons/lang3/builder/ToStringBuilder;
    new-instance v1, Lorg/apache/commons/lang3/builder/ToStringBuilder;

    iget-object v2, p0, Lorg/apache/commons/lang3/builder/DiffResult;->rhs:Ljava/lang/Object;

    invoke-direct {v1, v2, p1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V

    .line 188
    .local v1, "rhsBuilder":Lorg/apache/commons/lang3/builder/ToStringBuilder;
    iget-object v2, p0, Lorg/apache/commons/lang3/builder/DiffResult;->diffList:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/lang3/builder/DiffResult$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lorg/apache/commons/lang3/builder/DiffResult$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/builder/ToStringBuilder;Lorg/apache/commons/lang3/builder/ToStringBuilder;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 193
    iget-object v2, p0, Lorg/apache/commons/lang3/builder/DiffResult;->toStringFormat:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
