.class final Lorg/apache/commons/lang3/builder/DiffBuilder$SDiff;
.super Lorg/apache/commons/lang3/builder/Diff;
.source "DiffBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SDiff"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/builder/Diff<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient leftSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final transient rightSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Class;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 173
    .local p0, "this":Lorg/apache/commons/lang3/builder/DiffBuilder$SDiff;, "Lorg/apache/commons/lang3/builder/DiffBuilder$SDiff<TT;>;"
    .local p2, "leftSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local p3, "rightSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local p4, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1, p4}, Lorg/apache/commons/lang3/builder/Diff;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 174
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$SDiff;->leftSupplier:Ljava/util/function/Supplier;

    .line 175
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    iput-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$SDiff;->rightSupplier:Ljava/util/function/Supplier;

    .line 176
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Class;Lorg/apache/commons/lang3/builder/DiffBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/function/Supplier;
    .param p3, "x2"    # Ljava/util/function/Supplier;
    .param p4, "x3"    # Ljava/lang/Class;
    .param p5, "x4"    # Lorg/apache/commons/lang3/builder/DiffBuilder$1;

    .line 166
    .local p0, "this":Lorg/apache/commons/lang3/builder/DiffBuilder$SDiff;, "Lorg/apache/commons/lang3/builder/DiffBuilder$SDiff<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang3/builder/DiffBuilder$SDiff;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/apache/commons/lang3/builder/DiffBuilder$SDiff;, "Lorg/apache/commons/lang3/builder/DiffBuilder$SDiff<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$SDiff;->leftSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/apache/commons/lang3/builder/DiffBuilder$SDiff;, "Lorg/apache/commons/lang3/builder/DiffBuilder$SDiff<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$SDiff;->rightSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
