.class final Lorg/apache/commons/io/function/IOStreams;
.super Ljava/lang/Object;
.source "IOStreams.java"


# static fields
.field static final NONE:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/commons/io/function/IOStreams;->NONE:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method static forAll(Ljava/util/stream/Stream;Lorg/apache/commons/io/function/IOConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/io/IOExceptionList;
        }
    .end annotation

    .line 36
    .local p0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    .local p1, "action":Lorg/apache/commons/io/function/IOConsumer;, "Lorg/apache/commons/io/function/IOConsumer<TT;>;"
    new-instance v0, Lorg/apache/commons/io/function/IOStreams$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/io/function/IOStreams$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/function/IOStreams;->forAll(Ljava/util/stream/Stream;Lorg/apache/commons/io/function/IOConsumer;Ljava/util/function/BiFunction;)V

    .line 37
    return-void
.end method

.method static forAll(Ljava/util/stream/Stream;Lorg/apache/commons/io/function/IOConsumer;Ljava/util/function/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Ljava/io/IOException;",
            "Ljava/io/IOException;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/io/IOExceptionList;
        }
    .end annotation

    .line 42
    .local p0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    .local p1, "action":Lorg/apache/commons/io/function/IOConsumer;, "Lorg/apache/commons/io/function/IOConsumer<TT;>;"
    .local p2, "exSupplier":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Ljava/io/IOException;Ljava/io/IOException;>;"
    invoke-static {p0}, Lorg/apache/commons/io/function/IOStream;->adapt(Ljava/util/stream/Stream;)Lorg/apache/commons/io/function/IOStream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/function/IOConsumer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/commons/io/function/IOConsumer$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, p1, v1}, Lorg/apache/commons/io/function/IOStream;->forAll(Lorg/apache/commons/io/function/IOConsumer;Ljava/util/function/BiFunction;)V

    .line 43
    return-void
.end method

.method static forEach(Ljava/util/stream/Stream;Lorg/apache/commons/io/function/IOConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    .local p0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    .local p1, "action":Lorg/apache/commons/io/function/IOConsumer;, "Lorg/apache/commons/io/function/IOConsumer<TT;>;"
    invoke-static {p1}, Lorg/apache/commons/io/function/IOStreams;->toIOConsumer(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/io/function/IOConsumer;

    move-result-object v0

    .line 48
    .local v0, "actualAction":Lorg/apache/commons/io/function/IOConsumer;, "Lorg/apache/commons/io/function/IOConsumer<TT;>;"
    invoke-static {p0}, Lorg/apache/commons/io/function/IOStreams;->of(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/io/function/IOStreams$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/apache/commons/io/function/IOStreams$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/function/IOConsumer;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 49
    return-void
.end method

.method static synthetic lambda$forAll$0(Ljava/lang/Integer;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .param p0, "i"    # Ljava/lang/Integer;
    .param p1, "e"    # Ljava/io/IOException;

    .line 36
    return-object p1
.end method

.method static synthetic lambda$forEach$1(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 0
    .param p0, "actualAction"    # Lorg/apache/commons/io/function/IOConsumer;
    .param p1, "e"    # Ljava/lang/Object;

    .line 48
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Erase;->accept(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method static of(Ljava/lang/Iterable;)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 61
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static of(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 65
    .local p0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static varargs of([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 79
    .local p0, "values":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static toIOConsumer(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/io/function/IOConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;)",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;"
        }
    .end annotation

    .line 83
    .local p0, "action":Lorg/apache/commons/io/function/IOConsumer;, "Lorg/apache/commons/io/function/IOConsumer<TT;>;"
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/commons/io/function/IOConsumer;->noop()Lorg/apache/commons/io/function/IOConsumer;

    move-result-object v0

    :goto_0
    return-object v0
.end method
