.class public abstract Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;
.super Ljava/lang/Object;
.source "AbstractConcurrentInitializer.java"

# interfaces
.implements Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer$AbstractBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/concurrent/ConcurrentInitializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final closer:Lorg/apache/commons/lang3/function/FailableConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/function/FailableConsumer<",
            "-TT;+",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final initializer:Lorg/apache/commons/lang3/function/FailableSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/function/FailableSupplier<",
            "+TT;+",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 120
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;, "Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer<TT;TE;>;"
    invoke-static {}, Lorg/apache/commons/lang3/function/FailableSupplier;->nul()Lorg/apache/commons/lang3/function/FailableSupplier;

    move-result-object v0

    invoke-static {}, Lorg/apache/commons/lang3/function/FailableConsumer;->nop()Lorg/apache/commons/lang3/function/FailableConsumer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;-><init>(Lorg/apache/commons/lang3/function/FailableSupplier;Lorg/apache/commons/lang3/function/FailableConsumer;)V

    .line 121
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/lang3/function/FailableSupplier;Lorg/apache/commons/lang3/function/FailableConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableSupplier<",
            "+TT;+",
            "Ljava/lang/Exception;",
            ">;",
            "Lorg/apache/commons/lang3/function/FailableConsumer<",
            "-TT;+",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;, "Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer<TT;TE;>;"
    .local p1, "initializer":Lorg/apache/commons/lang3/function/FailableSupplier;, "Lorg/apache/commons/lang3/function/FailableSupplier<+TT;+Ljava/lang/Exception;>;"
    .local p2, "closer":Lorg/apache/commons/lang3/function/FailableConsumer;, "Lorg/apache/commons/lang3/function/FailableConsumer<-TT;+Ljava/lang/Exception;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const-string v0, "closer"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/function/FailableConsumer;

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;->closer:Lorg/apache/commons/lang3/function/FailableConsumer;

    .line 131
    const-string v0, "initializer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/function/FailableSupplier;

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;->initializer:Lorg/apache/commons/lang3/function/FailableSupplier;

    .line 132
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/lang3/concurrent/ConcurrentException;
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;, "Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer<TT;TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;->closer:Lorg/apache/commons/lang3/function/FailableConsumer;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/lang3/function/FailableConsumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/commons/lang3/concurrent/ConcurrentException;

    invoke-static {v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->throwUnchecked(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/concurrent/ConcurrentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method protected abstract getTypedException(Ljava/lang/Exception;)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")TE;"
        }
    .end annotation
.end method

.method protected initialize()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 179
    .local p0, "this":Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;, "Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer<TT;TE;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;->initializer:Lorg/apache/commons/lang3/function/FailableSupplier;

    invoke-interface {v0}, Lorg/apache/commons/lang3/function/FailableSupplier;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->throwUnchecked(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 188
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/concurrent/AbstractConcurrentInitializer;->getTypedException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v1

    .line 189
    .local v1, "typedException":Ljava/lang/Exception;, "TE;"
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    throw v0

    .line 192
    :cond_0
    throw v1
.end method

.method protected abstract isInitialized()Z
.end method
