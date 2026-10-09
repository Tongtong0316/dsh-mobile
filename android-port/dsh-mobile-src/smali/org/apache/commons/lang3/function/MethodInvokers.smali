.class public final Lorg/apache/commons/lang3/function/MethodInvokers;
.super Ljava/lang/Object;
.source "MethodInvokers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    return-void
.end method

.method public static asBiConsumer(Ljava/lang/reflect/Method;)Ljava/util/function/BiConsumer;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/util/function/BiConsumer<",
            "TT;TU;>;"
        }
    .end annotation

    .line 85
    const-class v0, Ljava/util/function/BiConsumer;

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/function/MethodInvokers;->asInterfaceInstance(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/BiConsumer;

    return-object v0
.end method

.method public static asBiFunction(Ljava/lang/reflect/Method;)Ljava/util/function/BiFunction;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/util/function/BiFunction<",
            "TT;TU;TR;>;"
        }
    .end annotation

    .line 110
    const-class v0, Ljava/util/function/BiFunction;

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/function/MethodInvokers;->asInterfaceInstance(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/BiFunction;

    return-object v0
.end method

.method public static asFailableBiConsumer(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/function/FailableBiConsumer;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lorg/apache/commons/lang3/function/FailableBiConsumer<",
            "TT;TU;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 125
    const-class v0, Lorg/apache/commons/lang3/function/FailableBiConsumer;

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/function/MethodInvokers;->asInterfaceInstance(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/function/FailableBiConsumer;

    return-object v0
.end method

.method public static asFailableBiFunction(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/function/FailableBiFunction;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lorg/apache/commons/lang3/function/FailableBiFunction<",
            "TT;TU;TR;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 141
    const-class v0, Lorg/apache/commons/lang3/function/FailableBiFunction;

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/function/MethodInvokers;->asInterfaceInstance(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/function/FailableBiFunction;

    return-object v0
.end method

.method public static asFailableFunction(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/function/FailableFunction;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lorg/apache/commons/lang3/function/FailableFunction<",
            "TT;TR;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 155
    const-class v0, Lorg/apache/commons/lang3/function/FailableFunction;

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/function/MethodInvokers;->asInterfaceInstance(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/function/FailableFunction;

    return-object v0
.end method

.method public static asFailableSupplier(Ljava/lang/reflect/Method;)Lorg/apache/commons/lang3/function/FailableSupplier;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lorg/apache/commons/lang3/function/FailableSupplier<",
            "TR;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 171
    const-class v0, Lorg/apache/commons/lang3/function/FailableSupplier;

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/function/MethodInvokers;->asInterfaceInstance(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/function/FailableSupplier;

    return-object v0
.end method

.method public static asFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/util/function/Function<",
            "TT;TR;>;"
        }
    .end annotation

    .line 194
    const-class v0, Ljava/util/function/Function;

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/function/MethodInvokers;->asInterfaceInstance(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Function;

    return-object v0
.end method

.method public static asInterfaceInstance(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Method;",
            ")TT;"
        }
    .end annotation

    .line 210
    .local p0, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "interfaceClass"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {p1}, Lorg/apache/commons/lang3/function/MethodInvokers;->unreflectUnchecked(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/invoke/MethodHandleProxies;->asInterfaceInstance(Ljava/lang/Class;Ljava/lang/invoke/MethodHandle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static asSupplier(Ljava/lang/reflect/Method;)Ljava/util/function/Supplier;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/util/function/Supplier<",
            "TR;>;"
        }
    .end annotation

    .line 226
    const-class v0, Ljava/util/function/Supplier;

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/function/MethodInvokers;->asInterfaceInstance(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    return-object v0
.end method

.method private static requireMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 237
    const-string v0, "method"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 241
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/commons/lang3/function/MethodInvokers;->requireMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method private static unreflectUnchecked(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 246
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang3/function/MethodInvokers;->unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lorg/apache/commons/lang3/exception/UncheckedIllegalAccessException;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/exception/UncheckedIllegalAccessException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
