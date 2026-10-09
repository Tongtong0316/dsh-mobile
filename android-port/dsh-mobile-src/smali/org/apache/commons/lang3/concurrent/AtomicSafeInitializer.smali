.class public Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;
.super Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;
.source "AtomicSafeInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer<",
        "TT;",
        "Lorg/apache/commons/lang3/concurrent/ConcurrentException;",
        ">;"
    }
.end annotation


# static fields
.field private static final NO_INIT:Ljava/lang/Object;


# instance fields
.field private final factory:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final reference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->NO_INIT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 105
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;, "Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer<TT;>;"
    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;-><init>()V

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->factory:Ljava/util/concurrent/atomic/AtomicReference;

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->getNoInit()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 107
    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/lang3/function/FailableSupplier;Lorg/apache/commons/lang3/function/FailableConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableSupplier<",
            "TT;",
            "Lorg/apache/commons/lang3/concurrent/ConcurrentException;",
            ">;",
            "Lorg/apache/commons/lang3/function/FailableConsumer<",
            "TT;",
            "Lorg/apache/commons/lang3/concurrent/ConcurrentException;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;, "Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer<TT;>;"
    .local p1, "initializer":Lorg/apache/commons/lang3/function/FailableSupplier;, "Lorg/apache/commons/lang3/function/FailableSupplier<TT;Lorg/apache/commons/lang3/concurrent/ConcurrentException;>;"
    .local p2, "closer":Lorg/apache/commons/lang3/function/FailableConsumer;, "Lorg/apache/commons/lang3/function/FailableConsumer<TT;Lorg/apache/commons/lang3/concurrent/ConcurrentException;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;-><init>(Lorg/apache/commons/lang3/function/FailableSupplier;Lorg/apache/commons/lang3/function/FailableConsumer;)V

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->factory:Ljava/util/concurrent/atomic/AtomicReference;

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->getNoInit()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableSupplier;Lorg/apache/commons/lang3/function/FailableConsumer;Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/lang3/function/FailableSupplier;
    .param p2, "x1"    # Lorg/apache/commons/lang3/function/FailableConsumer;
    .param p3, "x2"    # Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer$1;

    .line 57
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;, "Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;-><init>(Lorg/apache/commons/lang3/function/FailableSupplier;Lorg/apache/commons/lang3/function/FailableConsumer;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer$Builder<",
            "Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer<",
            "TT;>;TT;>;"
        }
    .end annotation

    .line 93
    new-instance v0, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer$Builder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer$Builder;-><init>()V

    return-object v0
.end method

.method private getNoInit()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;, "Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer<TT;>;"
    sget-object v0, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->NO_INIT:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/lang3/concurrent/ConcurrentException;
        }
    .end annotation

    .line 130
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;, "Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer<TT;>;"
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->getNoInit()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 131
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->factory:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->initialize()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :cond_1
    return-object v1
.end method

.method protected bridge synthetic getTypedException(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;, "Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer<TT;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->getTypedException(Ljava/lang/Exception;)Lorg/apache/commons/lang3/concurrent/ConcurrentException;

    move-result-object p1

    return-object p1
.end method

.method protected getTypedException(Ljava/lang/Exception;)Lorg/apache/commons/lang3/concurrent/ConcurrentException;
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 150
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;, "Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer<TT;>;"
    new-instance v0, Lorg/apache/commons/lang3/concurrent/ConcurrentException;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/concurrent/ConcurrentException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public isInitialized()Z
    .locals 2

    .line 161
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;, "Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/lang3/concurrent/AtomicSafeInitializer;->NO_INIT:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
