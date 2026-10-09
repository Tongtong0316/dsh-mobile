.class Lorg/tukaani/xz/BasicArrayCache$CyclicStack;
.super Ljava/lang/Object;
.source "BasicArrayCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/BasicArrayCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CyclicStack"
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
.field private final elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private pos:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 57
    .local p0, "this":Lorg/tukaani/xz/BasicArrayCache$CyclicStack;, "Lorg/tukaani/xz/BasicArrayCache$CyclicStack<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->elements:[Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pos:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/tukaani/xz/BasicArrayCache$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/tukaani/xz/BasicArrayCache$1;

    .line 57
    .local p0, "this":Lorg/tukaani/xz/BasicArrayCache$CyclicStack;, "Lorg/tukaani/xz/BasicArrayCache$CyclicStack<TT;>;"
    invoke-direct {p0}, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized pop()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .local p0, "this":Lorg/tukaani/xz/BasicArrayCache$CyclicStack;, "Lorg/tukaani/xz/BasicArrayCache$CyclicStack<TT;>;"
    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pos:I

    aget-object v0, v0, v1

    .line 83
    .local v0, "e":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pos:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 84
    iget v1, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pos:I

    add-int/lit8 v1, v1, -0x1

    and-int/lit16 v1, v1, 0x1ff

    iput v1, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-object v0

    .line 81
    .end local v0    # "e":Ljava/lang/Object;, "TT;"
    .end local p0    # "this":Lorg/tukaani/xz/BasicArrayCache$CyclicStack;, "Lorg/tukaani/xz/BasicArrayCache$CyclicStack<TT;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized push(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .local p0, "this":Lorg/tukaani/xz/BasicArrayCache$CyclicStack;, "Lorg/tukaani/xz/BasicArrayCache$CyclicStack<TT;>;"
    .local p1, "e":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 93
    :try_start_0
    iget v0, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pos:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0x1ff

    iput v0, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pos:I

    .line 94
    iget-object v0, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pos:I

    aput-object p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 92
    .end local p0    # "this":Lorg/tukaani/xz/BasicArrayCache$CyclicStack;, "Lorg/tukaani/xz/BasicArrayCache$CyclicStack<TT;>;"
    .end local p1    # "e":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
