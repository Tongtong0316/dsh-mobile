.class public Lorg/apache/commons/lang3/tuple/MutableTriple;
.super Lorg/apache/commons/lang3/tuple/Triple;
.source "MutableTriple.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/tuple/Triple<",
        "T",
        "L;",
        "TM;TR;>;"
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lorg/apache/commons/lang3/tuple/MutableTriple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/lang3/tuple/MutableTriple<",
            "***>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public middle:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field public right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/lang3/tuple/MutableTriple;

    sput-object v0, Lorg/apache/commons/lang3/tuple/MutableTriple;->EMPTY_ARRAY:[Lorg/apache/commons/lang3/tuple/MutableTriple;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 111
    .local p0, "this":Lorg/apache/commons/lang3/tuple/MutableTriple;, "Lorg/apache/commons/lang3/tuple/MutableTriple<TL;TM;TR;>;"
    invoke-direct {p0}, Lorg/apache/commons/lang3/tuple/Triple;-><init>()V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TM;TR;)V"
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/apache/commons/lang3/tuple/MutableTriple;, "Lorg/apache/commons/lang3/tuple/MutableTriple<TL;TM;TR;>;"
    .local p1, "left":Ljava/lang/Object;, "TL;"
    .local p2, "middle":Ljava/lang/Object;, "TM;"
    .local p3, "right":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Lorg/apache/commons/lang3/tuple/Triple;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->left:Ljava/lang/Object;

    .line 123
    iput-object p2, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->middle:Ljava/lang/Object;

    .line 124
    iput-object p3, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->right:Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public static emptyArray()[Lorg/apache/commons/lang3/tuple/MutableTriple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "M:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()[",
            "Lorg/apache/commons/lang3/tuple/MutableTriple<",
            "T",
            "L;",
            "TM;TR;>;"
        }
    .end annotation

    .line 59
    sget-object v0, Lorg/apache/commons/lang3/tuple/MutableTriple;->EMPTY_ARRAY:[Lorg/apache/commons/lang3/tuple/MutableTriple;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/MutableTriple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "M:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TM;TR;)",
            "Lorg/apache/commons/lang3/tuple/MutableTriple<",
            "T",
            "L;",
            "TM;TR;>;"
        }
    .end annotation

    .line 77
    .local p0, "left":Ljava/lang/Object;, "TL;"
    .local p1, "middle":Ljava/lang/Object;, "TM;"
    .local p2, "right":Ljava/lang/Object;, "TR;"
    new-instance v0, Lorg/apache/commons/lang3/tuple/MutableTriple;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang3/tuple/MutableTriple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ofNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/MutableTriple;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "M:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TM;TR;)",
            "Lorg/apache/commons/lang3/tuple/MutableTriple<",
            "T",
            "L;",
            "TM;TR;>;"
        }
    .end annotation

    .line 97
    .local p0, "left":Ljava/lang/Object;, "TL;"
    .local p1, "middle":Ljava/lang/Object;, "TM;"
    .local p2, "right":Ljava/lang/Object;, "TR;"
    const-string v0, "left"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "middle"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "right"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/tuple/MutableTriple;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/tuple/MutableTriple;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLeft()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lorg/apache/commons/lang3/tuple/MutableTriple;, "Lorg/apache/commons/lang3/tuple/MutableTriple<TL;TM;TR;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public getMiddle()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/apache/commons/lang3/tuple/MutableTriple;, "Lorg/apache/commons/lang3/tuple/MutableTriple<TL;TM;TR;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->middle:Ljava/lang/Object;

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/apache/commons/lang3/tuple/MutableTriple;, "Lorg/apache/commons/lang3/tuple/MutableTriple<TL;TM;TR;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->right:Ljava/lang/Object;

    return-object v0
.end method

.method public setLeft(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .line 157
    .local p0, "this":Lorg/apache/commons/lang3/tuple/MutableTriple;, "Lorg/apache/commons/lang3/tuple/MutableTriple<TL;TM;TR;>;"
    .local p1, "left":Ljava/lang/Object;, "TL;"
    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->left:Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public setMiddle(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 166
    .local p0, "this":Lorg/apache/commons/lang3/tuple/MutableTriple;, "Lorg/apache/commons/lang3/tuple/MutableTriple<TL;TM;TR;>;"
    .local p1, "middle":Ljava/lang/Object;, "TM;"
    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->middle:Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public setRight(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 175
    .local p0, "this":Lorg/apache/commons/lang3/tuple/MutableTriple;, "Lorg/apache/commons/lang3/tuple/MutableTriple<TL;TM;TR;>;"
    .local p1, "right":Ljava/lang/Object;, "TR;"
    iput-object p1, p0, Lorg/apache/commons/lang3/tuple/MutableTriple;->right:Ljava/lang/Object;

    .line 176
    return-void
.end method
