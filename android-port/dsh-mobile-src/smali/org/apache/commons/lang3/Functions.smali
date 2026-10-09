.class public Lorg/apache/commons/lang3/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/Functions$FailableBiConsumer;,
        Lorg/apache/commons/lang3/Functions$FailableRunnable;,
        Lorg/apache/commons/lang3/Functions$FailableConsumer;,
        Lorg/apache/commons/lang3/Functions$FailableBiFunction;,
        Lorg/apache/commons/lang3/Functions$FailableSupplier;,
        Lorg/apache/commons/lang3/Functions$FailableFunction;,
        Lorg/apache/commons/lang3/Functions$FailableBiPredicate;,
        Lorg/apache/commons/lang3/Functions$FailableCallable;,
        Lorg/apache/commons/lang3/Functions$FailablePredicate;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    return-void
.end method

.method public static accept(Lorg/apache/commons/lang3/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O1:",
            "Ljava/lang/Object;",
            "O2:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableBiConsumer<",
            "TO1;TO2;TT;>;TO1;TO2;)V"
        }
    .end annotation

    .line 297
    .local p0, "consumer":Lorg/apache/commons/lang3/Functions$FailableBiConsumer;, "Lorg/apache/commons/lang3/Functions$FailableBiConsumer<TO1;TO2;TT;>;"
    .local p1, "object1":Ljava/lang/Object;, "TO1;"
    .local p2, "object2":Ljava/lang/Object;, "TO2;"
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->run(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V

    .line 298
    return-void
.end method

.method public static accept(Lorg/apache/commons/lang3/Functions$FailableConsumer;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableConsumer<",
            "TO;TT;>;TO;)V"
        }
    .end annotation

    .line 309
    .local p0, "consumer":Lorg/apache/commons/lang3/Functions$FailableConsumer;, "Lorg/apache/commons/lang3/Functions$FailableConsumer<TO;TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TO;"
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda14;-><init>(Lorg/apache/commons/lang3/Functions$FailableConsumer;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->run(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V

    .line 310
    return-void
.end method

.method public static apply(Lorg/apache/commons/lang3/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O1:",
            "Ljava/lang/Object;",
            "O2:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableBiFunction<",
            "TO1;TO2;TO;TT;>;TO1;TO2;)TO;"
        }
    .end annotation

    .line 326
    .local p0, "function":Lorg/apache/commons/lang3/Functions$FailableBiFunction;, "Lorg/apache/commons/lang3/Functions$FailableBiFunction<TO1;TO2;TO;TT;>;"
    .local p1, "input1":Ljava/lang/Object;, "TO1;"
    .local p2, "input2":Ljava/lang/Object;, "TO2;"
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/lang3/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->get(Lorg/apache/commons/lang3/Functions$FailableSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static apply(Lorg/apache/commons/lang3/Functions$FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableFunction<",
            "TI;TO;TT;>;TI;)TO;"
        }
    .end annotation

    .line 340
    .local p0, "function":Lorg/apache/commons/lang3/Functions$FailableFunction;, "Lorg/apache/commons/lang3/Functions$FailableFunction<TI;TO;TT;>;"
    .local p1, "input":Ljava/lang/Object;, "TI;"
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda11;-><init>(Lorg/apache/commons/lang3/Functions$FailableFunction;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->get(Lorg/apache/commons/lang3/Functions$FailableSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static asBiConsumer(Lorg/apache/commons/lang3/Functions$FailableBiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O1:",
            "Ljava/lang/Object;",
            "O2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableBiConsumer<",
            "TO1;TO2;*>;)",
            "Ljava/util/function/BiConsumer<",
            "TO1;TO2;>;"
        }
    .end annotation

    .line 353
    .local p0, "consumer":Lorg/apache/commons/lang3/Functions$FailableBiConsumer;, "Lorg/apache/commons/lang3/Functions$FailableBiConsumer<TO1;TO2;*>;"
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda8;-><init>(Lorg/apache/commons/lang3/Functions$FailableBiConsumer;)V

    return-object v0
.end method

.method public static asBiFunction(Lorg/apache/commons/lang3/Functions$FailableBiFunction;)Ljava/util/function/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O1:",
            "Ljava/lang/Object;",
            "O2:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableBiFunction<",
            "TO1;TO2;TO;*>;)",
            "Ljava/util/function/BiFunction<",
            "TO1;TO2;TO;>;"
        }
    .end annotation

    .line 367
    .local p0, "function":Lorg/apache/commons/lang3/Functions$FailableBiFunction;, "Lorg/apache/commons/lang3/Functions$FailableBiFunction<TO1;TO2;TO;*>;"
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda12;-><init>(Lorg/apache/commons/lang3/Functions$FailableBiFunction;)V

    return-object v0
.end method

.method public static asBiPredicate(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;)Ljava/util/function/BiPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O1:",
            "Ljava/lang/Object;",
            "O2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableBiPredicate<",
            "TO1;TO2;*>;)",
            "Ljava/util/function/BiPredicate<",
            "TO1;TO2;>;"
        }
    .end annotation

    .line 380
    .local p0, "predicate":Lorg/apache/commons/lang3/Functions$FailableBiPredicate;, "Lorg/apache/commons/lang3/Functions$FailableBiPredicate<TO1;TO2;*>;"
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;)V

    return-object v0
.end method

.method public static asCallable(Lorg/apache/commons/lang3/Functions$FailableCallable;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableCallable<",
            "TO;*>;)",
            "Ljava/util/concurrent/Callable<",
            "TO;>;"
        }
    .end annotation

    .line 392
    .local p0, "callable":Lorg/apache/commons/lang3/Functions$FailableCallable;, "Lorg/apache/commons/lang3/Functions$FailableCallable<TO;*>;"
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda10;-><init>(Lorg/apache/commons/lang3/Functions$FailableCallable;)V

    return-object v0
.end method

.method public static asConsumer(Lorg/apache/commons/lang3/Functions$FailableConsumer;)Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableConsumer<",
            "TI;*>;)",
            "Ljava/util/function/Consumer<",
            "TI;>;"
        }
    .end annotation

    .line 404
    .local p0, "consumer":Lorg/apache/commons/lang3/Functions$FailableConsumer;, "Lorg/apache/commons/lang3/Functions$FailableConsumer<TI;*>;"
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda6;-><init>(Lorg/apache/commons/lang3/Functions$FailableConsumer;)V

    return-object v0
.end method

.method public static asFunction(Lorg/apache/commons/lang3/Functions$FailableFunction;)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableFunction<",
            "TI;TO;*>;)",
            "Ljava/util/function/Function<",
            "TI;TO;>;"
        }
    .end annotation

    .line 417
    .local p0, "function":Lorg/apache/commons/lang3/Functions$FailableFunction;, "Lorg/apache/commons/lang3/Functions$FailableFunction<TI;TO;*>;"
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/lang3/Functions$FailableFunction;)V

    return-object v0
.end method

.method public static asPredicate(Lorg/apache/commons/lang3/Functions$FailablePredicate;)Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailablePredicate<",
            "TI;*>;)",
            "Ljava/util/function/Predicate<",
            "TI;>;"
        }
    .end annotation

    .line 429
    .local p0, "predicate":Lorg/apache/commons/lang3/Functions$FailablePredicate;, "Lorg/apache/commons/lang3/Functions$FailablePredicate<TI;*>;"
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/Functions$FailablePredicate;)V

    return-object v0
.end method

.method public static asRunnable(Lorg/apache/commons/lang3/Functions$FailableRunnable;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/Functions$FailableRunnable<",
            "*>;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 440
    .local p0, "runnable":Lorg/apache/commons/lang3/Functions$FailableRunnable;, "Lorg/apache/commons/lang3/Functions$FailableRunnable<*>;"
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda16;-><init>(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V

    return-object v0
.end method

.method public static asSupplier(Lorg/apache/commons/lang3/Functions$FailableSupplier;)Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableSupplier<",
            "TO;*>;)",
            "Ljava/util/function/Supplier<",
            "TO;>;"
        }
    .end annotation

    .line 452
    .local p0, "supplier":Lorg/apache/commons/lang3/Functions$FailableSupplier;, "Lorg/apache/commons/lang3/Functions$FailableSupplier<TO;*>;"
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda13;-><init>(Lorg/apache/commons/lang3/Functions$FailableSupplier;)V

    return-object v0
.end method

.method public static call(Lorg/apache/commons/lang3/Functions$FailableCallable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableCallable<",
            "TO;TT;>;)TO;"
        }
    .end annotation

    .line 464
    .local p0, "callable":Lorg/apache/commons/lang3/Functions$FailableCallable;, "Lorg/apache/commons/lang3/Functions$FailableCallable<TO;TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda9;-><init>(Lorg/apache/commons/lang3/Functions$FailableCallable;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->get(Lorg/apache/commons/lang3/Functions$FailableSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get(Lorg/apache/commons/lang3/Functions$FailableSupplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableSupplier<",
            "TO;TT;>;)TO;"
        }
    .end annotation

    .line 478
    .local p0, "supplier":Lorg/apache/commons/lang3/Functions$FailableSupplier;, "Lorg/apache/commons/lang3/Functions$FailableSupplier<TO;TT;>;"
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/lang3/Functions$FailableSupplier;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 479
    :catchall_0
    move-exception v0

    .line 480
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static getAsBoolean(Lorg/apache/commons/lang3/function/FailableBooleanSupplier;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableBooleanSupplier<",
            "TT;>;)Z"
        }
    .end annotation

    .line 493
    .local p0, "supplier":Lorg/apache/commons/lang3/function/FailableBooleanSupplier;, "Lorg/apache/commons/lang3/function/FailableBooleanSupplier<TT;>;"
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/lang3/function/FailableBooleanSupplier;->getAsBoolean()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 494
    :catchall_0
    move-exception v0

    .line 495
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static synthetic lambda$accept$0(Lorg/apache/commons/lang3/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "consumer"    # Lorg/apache/commons/lang3/Functions$FailableBiConsumer;
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 297
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/Functions$FailableBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$accept$1(Lorg/apache/commons/lang3/Functions$FailableConsumer;Ljava/lang/Object;)V
    .locals 0
    .param p0, "consumer"    # Lorg/apache/commons/lang3/Functions$FailableConsumer;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 309
    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/Functions$FailableConsumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$apply$2(Lorg/apache/commons/lang3/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "function"    # Lorg/apache/commons/lang3/Functions$FailableBiFunction;
    .param p1, "input1"    # Ljava/lang/Object;
    .param p2, "input2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 326
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/Functions$FailableBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$apply$3(Lorg/apache/commons/lang3/Functions$FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "function"    # Lorg/apache/commons/lang3/Functions$FailableFunction;
    .param p1, "input"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 340
    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/Functions$FailableFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$asBiConsumer$4(Lorg/apache/commons/lang3/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "consumer"    # Lorg/apache/commons/lang3/Functions$FailableBiConsumer;
    .param p1, "input1"    # Ljava/lang/Object;
    .param p2, "input2"    # Ljava/lang/Object;

    .line 353
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/Functions;->accept(Lorg/apache/commons/lang3/Functions$FailableBiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$asBiFunction$5(Lorg/apache/commons/lang3/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "function"    # Lorg/apache/commons/lang3/Functions$FailableBiFunction;
    .param p1, "input1"    # Ljava/lang/Object;
    .param p2, "input2"    # Ljava/lang/Object;

    .line 367
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/Functions;->apply(Lorg/apache/commons/lang3/Functions$FailableBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$asBiPredicate$6(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "predicate"    # Lorg/apache/commons/lang3/Functions$FailableBiPredicate;
    .param p1, "input1"    # Ljava/lang/Object;
    .param p2, "input2"    # Ljava/lang/Object;

    .line 380
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/Functions;->test(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$asCallable$7(Lorg/apache/commons/lang3/Functions$FailableCallable;)Ljava/lang/Object;
    .locals 1
    .param p0, "callable"    # Lorg/apache/commons/lang3/Functions$FailableCallable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 392
    invoke-static {p0}, Lorg/apache/commons/lang3/Functions;->call(Lorg/apache/commons/lang3/Functions$FailableCallable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$asConsumer$8(Lorg/apache/commons/lang3/Functions$FailableConsumer;Ljava/lang/Object;)V
    .locals 0
    .param p0, "consumer"    # Lorg/apache/commons/lang3/Functions$FailableConsumer;
    .param p1, "input"    # Ljava/lang/Object;

    .line 404
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Functions;->accept(Lorg/apache/commons/lang3/Functions$FailableConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$asFunction$9(Lorg/apache/commons/lang3/Functions$FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "function"    # Lorg/apache/commons/lang3/Functions$FailableFunction;
    .param p1, "input"    # Ljava/lang/Object;

    .line 417
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Functions;->apply(Lorg/apache/commons/lang3/Functions$FailableFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$asPredicate$10(Lorg/apache/commons/lang3/Functions$FailablePredicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "predicate"    # Lorg/apache/commons/lang3/Functions$FailablePredicate;
    .param p1, "input"    # Ljava/lang/Object;

    .line 429
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/Functions;->test(Lorg/apache/commons/lang3/Functions$FailablePredicate;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$asRunnable$11(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V
    .locals 0
    .param p0, "runnable"    # Lorg/apache/commons/lang3/Functions$FailableRunnable;

    .line 440
    invoke-static {p0}, Lorg/apache/commons/lang3/Functions;->run(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V

    return-void
.end method

.method static synthetic lambda$asSupplier$12(Lorg/apache/commons/lang3/Functions$FailableSupplier;)Ljava/lang/Object;
    .locals 1
    .param p0, "supplier"    # Lorg/apache/commons/lang3/Functions$FailableSupplier;

    .line 452
    invoke-static {p0}, Lorg/apache/commons/lang3/Functions;->get(Lorg/apache/commons/lang3/Functions$FailableSupplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$test$13(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "predicate"    # Lorg/apache/commons/lang3/Functions$FailableBiPredicate;
    .param p1, "object1"    # Ljava/lang/Object;
    .param p2, "object2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 590
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/lang3/Functions$FailableBiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$test$14(Lorg/apache/commons/lang3/Functions$FailablePredicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "predicate"    # Lorg/apache/commons/lang3/Functions$FailablePredicate;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 603
    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/Functions$FailablePredicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$tryWithResources$15([Lorg/apache/commons/lang3/Functions$FailableRunnable;I)V
    .locals 1
    .param p0, "resources"    # [Lorg/apache/commons/lang3/Functions$FailableRunnable;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 631
    aget-object v0, p0, p1

    invoke-interface {v0}, Lorg/apache/commons/lang3/Functions$FailableRunnable;->run()V

    return-void
.end method

.method static synthetic lambda$tryWithResources$16([Lorg/apache/commons/lang3/Functions$FailableRunnable;I)Lorg/apache/commons/lang3/function/FailableRunnable;
    .locals 1
    .param p0, "resources"    # [Lorg/apache/commons/lang3/Functions$FailableRunnable;
    .param p1, "i"    # I

    .line 631
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda15;-><init>([Lorg/apache/commons/lang3/Functions$FailableRunnable;I)V

    return-object v0
.end method

.method public static rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 524
    const-string v0, "throwable"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 525
    invoke-static {p0}, Lorg/apache/commons/lang3/exception/ExceptionUtils;->throwUnchecked(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 526
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 527
    new-instance v0, Ljava/io/UncheckedIOException;

    move-object v1, p0

    check-cast v1, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 529
    :cond_0
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static run(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableRunnable<",
            "TT;>;)V"
        }
    .end annotation

    .line 540
    .local p0, "runnable":Lorg/apache/commons/lang3/Functions$FailableRunnable;, "Lorg/apache/commons/lang3/Functions$FailableRunnable<TT;>;"
    :try_start_0
    invoke-interface {p0}, Lorg/apache/commons/lang3/Functions$FailableRunnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    nop

    .line 544
    return-void

    .line 541
    :catchall_0
    move-exception v0

    .line 542
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static stream(Ljava/util/Collection;)Lorg/apache/commons/lang3/Streams$FailableStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TO;>;)",
            "Lorg/apache/commons/lang3/Streams$FailableStream<",
            "TO;>;"
        }
    .end annotation

    .line 559
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TO;>;"
    new-instance v0, Lorg/apache/commons/lang3/Streams$FailableStream;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/Streams$FailableStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public static stream(Ljava/util/stream/Stream;)Lorg/apache/commons/lang3/Streams$FailableStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TO;>;)",
            "Lorg/apache/commons/lang3/Streams$FailableStream<",
            "TO;>;"
        }
    .end annotation

    .line 574
    .local p0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TO;>;"
    new-instance v0, Lorg/apache/commons/lang3/Streams$FailableStream;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Streams$FailableStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public static test(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O1:",
            "Ljava/lang/Object;",
            "O2:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailableBiPredicate<",
            "TO1;TO2;TT;>;TO1;TO2;)Z"
        }
    .end annotation

    .line 590
    .local p0, "predicate":Lorg/apache/commons/lang3/Functions$FailableBiPredicate;, "Lorg/apache/commons/lang3/Functions$FailableBiPredicate<TO1;TO2;TT;>;"
    .local p1, "object1":Ljava/lang/Object;, "TO1;"
    .local p2, "object2":Ljava/lang/Object;, "TO2;"
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda5;-><init>(Lorg/apache/commons/lang3/Functions$FailableBiPredicate;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->getAsBoolean(Lorg/apache/commons/lang3/function/FailableBooleanSupplier;)Z

    move-result v0

    return v0
.end method

.method public static test(Lorg/apache/commons/lang3/Functions$FailablePredicate;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/apache/commons/lang3/Functions$FailablePredicate<",
            "TO;TT;>;TO;)Z"
        }
    .end annotation

    .line 603
    .local p0, "predicate":Lorg/apache/commons/lang3/Functions$FailablePredicate;, "Lorg/apache/commons/lang3/Functions$FailablePredicate<TO;TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TO;"
    new-instance v0, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda7;-><init>(Lorg/apache/commons/lang3/Functions$FailablePredicate;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/commons/lang3/Functions;->getAsBoolean(Lorg/apache/commons/lang3/function/FailableBooleanSupplier;)Z

    move-result v0

    return v0
.end method

.method public static varargs tryWithResources(Lorg/apache/commons/lang3/Functions$FailableRunnable;Lorg/apache/commons/lang3/Functions$FailableConsumer;[Lorg/apache/commons/lang3/Functions$FailableRunnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/Functions$FailableRunnable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Lorg/apache/commons/lang3/Functions$FailableConsumer<",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;[",
            "Lorg/apache/commons/lang3/Functions$FailableRunnable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 630
    .local p0, "action":Lorg/apache/commons/lang3/Functions$FailableRunnable;, "Lorg/apache/commons/lang3/Functions$FailableRunnable<+Ljava/lang/Throwable;>;"
    .local p1, "errorHandler":Lorg/apache/commons/lang3/Functions$FailableConsumer;, "Lorg/apache/commons/lang3/Functions$FailableConsumer<Ljava/lang/Throwable;+Ljava/lang/Throwable;>;"
    .local p2, "resources":[Lorg/apache/commons/lang3/Functions$FailableRunnable;, "[Lorg/apache/commons/lang3/Functions$FailableRunnable<+Ljava/lang/Throwable;>;"
    array-length v0, p2

    new-array v0, v0, [Lorg/apache/commons/lang3/function/FailableRunnable;

    .line 631
    .local v0, "fr":[Lorg/apache/commons/lang3/function/FailableRunnable;, "[Lorg/apache/commons/lang3/function/FailableRunnable<*>;"
    new-instance v1, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda17;

    invoke-direct {v1, p2}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda17;-><init>([Lorg/apache/commons/lang3/Functions$FailableRunnable;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 632
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda18;-><init>(Lorg/apache/commons/lang3/Functions$FailableRunnable;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda19;

    invoke-direct {v2, p1}, Lorg/apache/commons/lang3/Functions$$ExternalSyntheticLambda19;-><init>(Lorg/apache/commons/lang3/Functions$FailableConsumer;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/function/Failable;->tryWithResources(Lorg/apache/commons/lang3/function/FailableRunnable;Lorg/apache/commons/lang3/function/FailableConsumer;[Lorg/apache/commons/lang3/function/FailableRunnable;)V

    .line 633
    return-void
.end method

.method public static varargs tryWithResources(Lorg/apache/commons/lang3/Functions$FailableRunnable;[Lorg/apache/commons/lang3/Functions$FailableRunnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/Functions$FailableRunnable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;[",
            "Lorg/apache/commons/lang3/Functions$FailableRunnable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 656
    .local p0, "action":Lorg/apache/commons/lang3/Functions$FailableRunnable;, "Lorg/apache/commons/lang3/Functions$FailableRunnable<+Ljava/lang/Throwable;>;"
    .local p1, "resources":[Lorg/apache/commons/lang3/Functions$FailableRunnable;, "[Lorg/apache/commons/lang3/Functions$FailableRunnable<+Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/Functions;->tryWithResources(Lorg/apache/commons/lang3/Functions$FailableRunnable;Lorg/apache/commons/lang3/Functions$FailableConsumer;[Lorg/apache/commons/lang3/Functions$FailableRunnable;)V

    .line 657
    return-void
.end method
