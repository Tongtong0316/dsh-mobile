.class public final Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;
.super Ljava/lang/Object;
.source "DiffBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private style:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field private testObjectsEquals:Z

.field private toStringFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    .local p0, "this":Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;, "Lorg/apache/commons/lang3/builder/DiffBuilder$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->testObjectsEquals:Z

    .line 88
    const-string v0, "%s differs from %s"

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->toStringFormat:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public build()Lorg/apache/commons/lang3/builder/DiffBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;, "Lorg/apache/commons/lang3/builder/DiffBuilder$Builder<TT;>;"
    new-instance v7, Lorg/apache/commons/lang3/builder/DiffBuilder;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->left:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->right:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-boolean v4, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->testObjectsEquals:Z

    iget-object v5, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->toStringFormat:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/lang3/builder/DiffBuilder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;ZLjava/lang/String;Lorg/apache/commons/lang3/builder/DiffBuilder$1;)V

    return-object v7
.end method

.method public setLeft(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/lang3/builder/DiffBuilder$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;, "Lorg/apache/commons/lang3/builder/DiffBuilder$Builder<TT;>;"
    .local p1, "left":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->left:Ljava/lang/Object;

    .line 114
    return-object p0
.end method

.method public setRight(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/lang3/builder/DiffBuilder$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;, "Lorg/apache/commons/lang3/builder/DiffBuilder$Builder<TT;>;"
    .local p1, "right":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->right:Ljava/lang/Object;

    .line 125
    return-object p0
.end method

.method public setStyle(Lorg/apache/commons/lang3/builder/ToStringStyle;)Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;
    .locals 1
    .param p1, "style"    # Lorg/apache/commons/lang3/builder/ToStringStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/builder/ToStringStyle;",
            ")",
            "Lorg/apache/commons/lang3/builder/DiffBuilder$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;, "Lorg/apache/commons/lang3/builder/DiffBuilder$Builder<TT;>;"
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->style:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 136
    return-object p0
.end method

.method public setTestObjectsEquals(Z)Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;
    .locals 0
    .param p1, "testObjectsEquals"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/commons/lang3/builder/DiffBuilder$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;, "Lorg/apache/commons/lang3/builder/DiffBuilder$Builder<TT;>;"
    iput-boolean p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->testObjectsEquals:Z

    .line 151
    return-object p0
.end method

.method public setToStringFormat(Ljava/lang/String;)Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;
    .locals 1
    .param p1, "toStringFormat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/lang3/builder/DiffBuilder$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 161
    .local p0, "this":Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;, "Lorg/apache/commons/lang3/builder/DiffBuilder$Builder<TT;>;"
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, "%s differs from %s"

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$Builder;->toStringFormat:Ljava/lang/String;

    .line 162
    return-object p0
.end method
