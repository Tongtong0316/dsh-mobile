.class final Lorg/tukaani/xz/lzma/Optimum;
.super Ljava/lang/Object;
.source "Optimum.java"


# static fields
.field private static final INFINITY_PRICE:I = 0x40000000


# instance fields
.field backPrev:I

.field backPrev2:I

.field hasPrev2:Z

.field optPrev:I

.field optPrev2:I

.field prev1IsLiteral:Z

.field price:I

.field final reps:[I

.field final state:Lorg/tukaani/xz/lzma/State;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lorg/tukaani/xz/lzma/State;

    invoke-direct {v0}, Lorg/tukaani/xz/lzma/State;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/lzma/Optimum;->state:Lorg/tukaani/xz/lzma/State;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/tukaani/xz/lzma/Optimum;->reps:[I

    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    .line 31
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lorg/tukaani/xz/lzma/Optimum;->price:I

    .line 32
    return-void
.end method

.method set1(III)V
    .locals 1
    .param p1, "newPrice"    # I
    .param p2, "optCur"    # I
    .param p3, "back"    # I

    .line 38
    iput p1, p0, Lorg/tukaani/xz/lzma/Optimum;->price:I

    .line 39
    iput p2, p0, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 40
    iput p3, p0, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/lzma/Optimum;->prev1IsLiteral:Z

    .line 42
    return-void
.end method

.method set2(III)V
    .locals 1
    .param p1, "newPrice"    # I
    .param p2, "optCur"    # I
    .param p3, "back"    # I

    .line 48
    iput p1, p0, Lorg/tukaani/xz/lzma/Optimum;->price:I

    .line 49
    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 50
    iput p3, p0, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tukaani/xz/lzma/Optimum;->prev1IsLiteral:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/lzma/Optimum;->hasPrev2:Z

    .line 53
    return-void
.end method

.method set3(IIIII)V
    .locals 2
    .param p1, "newPrice"    # I
    .param p2, "optCur"    # I
    .param p3, "back2"    # I
    .param p4, "len2"    # I
    .param p5, "back"    # I

    .line 60
    iput p1, p0, Lorg/tukaani/xz/lzma/Optimum;->price:I

    .line 61
    add-int v0, p2, p4

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/lzma/Optimum;->optPrev:I

    .line 62
    iput p5, p0, Lorg/tukaani/xz/lzma/Optimum;->backPrev:I

    .line 63
    iput-boolean v1, p0, Lorg/tukaani/xz/lzma/Optimum;->prev1IsLiteral:Z

    .line 64
    iput-boolean v1, p0, Lorg/tukaani/xz/lzma/Optimum;->hasPrev2:Z

    .line 65
    iput p2, p0, Lorg/tukaani/xz/lzma/Optimum;->optPrev2:I

    .line 66
    iput p3, p0, Lorg/tukaani/xz/lzma/Optimum;->backPrev2:I

    .line 67
    return-void
.end method
