.class public abstract Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy;
.super Ljava/lang/Object;
.source "AbstractFutureProxy.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy;, "Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy<TV;>;"
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "future"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy;->future:Ljava/util/concurrent/Future;

    .line 42
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 46
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy;, "Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy<TV;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 51
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy;, "Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy<TV;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 56
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy;, "Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy<TV;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy;, "Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy<TV;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy;->future:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 70
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy;, "Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy<TV;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 75
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy;, "Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy<TV;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractFutureProxy;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method
