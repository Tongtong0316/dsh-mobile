.class public Lorg/apache/commons/lang3/concurrent/Memoizer;
.super Ljava/lang/Object;
.source "Memoizer.java"

# interfaces
.implements Lorg/apache/commons/lang3/concurrent/Computable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/concurrent/Computable<",
        "TI;TO;>;"
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TI;",
            "Ljava/util/concurrent/Future<",
            "TO;>;>;"
        }
    .end annotation
.end field

.field private final mappingFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-TI;+",
            "Ljava/util/concurrent/Future<",
            "TO;>;>;"
        }
    .end annotation
.end field

.field private final recalculate:Z


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "TI;TO;>;)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/Memoizer;, "Lorg/apache/commons/lang3/concurrent/Memoizer<TI;TO;>;"
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TI;TO;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/concurrent/Memoizer;-><init>(Ljava/util/function/Function;Z)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;Z)V
    .locals 1
    .param p2, "recalculate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "TI;TO;>;Z)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/Memoizer;, "Lorg/apache/commons/lang3/concurrent/Memoizer<TI;TO;>;"
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TI;TO;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 106
    iput-boolean p2, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->recalculate:Z

    .line 107
    new-instance v0, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Function;)V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->mappingFunction:Ljava/util/function/Function;

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/concurrent/Computable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/concurrent/Computable<",
            "TI;TO;>;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/Memoizer;, "Lorg/apache/commons/lang3/concurrent/Memoizer<TI;TO;>;"
    .local p1, "computable":Lorg/apache/commons/lang3/concurrent/Computable;, "Lorg/apache/commons/lang3/concurrent/Computable<TI;TO;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/concurrent/Memoizer;-><init>(Lorg/apache/commons/lang3/concurrent/Computable;Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/concurrent/Computable;Z)V
    .locals 1
    .param p2, "recalculate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/concurrent/Computable<",
            "TI;TO;>;Z)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/Memoizer;, "Lorg/apache/commons/lang3/concurrent/Memoizer<TI;TO;>;"
    .local p1, "computable":Lorg/apache/commons/lang3/concurrent/Computable;, "Lorg/apache/commons/lang3/concurrent/Computable<TI;TO;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 77
    iput-boolean p2, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->recalculate:Z

    .line 78
    new-instance v0, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/concurrent/Computable;)V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->mappingFunction:Ljava/util/function/Function;

    .line 79
    return-void
.end method

.method static synthetic lambda$new$0(Lorg/apache/commons/lang3/concurrent/Computable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "computable"    # Lorg/apache/commons/lang3/concurrent/Computable;
    .param p1, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/concurrent/Computable;->compute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$1(Lorg/apache/commons/lang3/concurrent/Computable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .param p0, "computable"    # Lorg/apache/commons/lang3/concurrent/Computable;
    .param p1, "k"    # Ljava/lang/Object;

    .line 78
    new-instance v0, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/concurrent/Computable;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/concurrent/FutureTasks;->run(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$2(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "function"    # Ljava/util/function/Function;
    .param p1, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$3(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .param p0, "function"    # Ljava/util/function/Function;
    .param p1, "k"    # Ljava/lang/Object;

    .line 107
    new-instance v0, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Function;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/concurrent/FutureTasks;->run(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    return-object v0
.end method

.method private launderException(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 148
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/Memoizer;, "Lorg/apache/commons/lang3/concurrent/Memoizer<TI;TO;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unchecked exception"

    invoke-static {p1}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->throwUnchecked(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public compute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 126
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/Memoizer;, "Lorg/apache/commons/lang3/concurrent/Memoizer<TI;TO;>;"
    .local p1, "arg":Ljava/lang/Object;, "TI;"
    nop

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->cache:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->mappingFunction:Ljava/util/function/Function;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 128
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TO;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    iget-boolean v2, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->recalculate:Z

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/lang3/concurrent/Memoizer;->launderException(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 129
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    .line 130
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    iget-object v2, p0, Lorg/apache/commons/lang3/concurrent/Memoizer;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    nop

    .line 137
    .end local v0    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TO;>;"
    goto :goto_0
.end method
