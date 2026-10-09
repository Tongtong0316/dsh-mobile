.class public interface abstract Lorg/apache/commons/io/function/IOFunction;
.super Ljava/lang/Object;
.source "IOFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static identity()Lorg/apache/commons/io/function/IOFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/io/function/IOFunction<",
            "TT;TT;>;"
        }
    .end annotation

    .line 45
    sget-object v0, Lorg/apache/commons/io/function/Constants;->IO_FUNCTION_ID:Lorg/apache/commons/io/function/IOFunction;

    return-object v0
.end method

.method public static synthetic lambda$andThen$0(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOFunction;
    .param p1, "after"    # Ljava/util/function/Consumer;
    .param p2, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    invoke-interface {p0, p2}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$andThen$1(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOFunction;
    .param p1, "after"    # Ljava/util/function/Function;
    .param p2, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    invoke-interface {p0, p2}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$andThen$2(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOFunction;
    .param p1, "after"    # Lorg/apache/commons/io/function/IOConsumer;
    .param p2, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    invoke-interface {p0, p2}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/io/function/IOConsumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$andThen$3(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOFunction;
    .param p1, "after"    # Lorg/apache/commons/io/function/IOFunction;
    .param p2, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    invoke-interface {p0, p2}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$asFunction$4(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOFunction;
    .param p1, "t"    # Ljava/lang/Object;

    .line 130
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$compose$5(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOFunction;
    .param p1, "before"    # Ljava/util/function/Function;
    .param p2, "v"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$compose$6(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOFunction;
    .param p1, "before"    # Lorg/apache/commons/io/function/IOFunction;
    .param p2, "v"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    invoke-interface {p1, p2}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$compose$7(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOFunction;
    .param p1, "before"    # Lorg/apache/commons/io/function/IOSupplier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    invoke-interface {p1}, Lorg/apache/commons/io/function/IOSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$compose$8(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOFunction;
    .param p1, "before"    # Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public andThen(Ljava/util/function/Consumer;)Lorg/apache/commons/io/function/IOConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TR;>;)",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    .local p1, "after":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TR;>;"
    const-string v0, "after"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    new-instance v0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda5;-><init>(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public andThen(Lorg/apache/commons/io/function/IOConsumer;)Lorg/apache/commons/io/function/IOConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "-TR;>;)",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "TT;>;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    .local p1, "after":Lorg/apache/commons/io/function/IOConsumer;, "Lorg/apache/commons/io/function/IOConsumer<-TR;>;"
    const-string v0, "after"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    new-instance v0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOConsumer;)V

    return-object v0
.end method

.method public andThen(Ljava/util/function/Function;)Lorg/apache/commons/io/function/IOFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TR;+TV;>;)",
            "Lorg/apache/commons/io/function/IOFunction<",
            "TT;TV;>;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    .local p1, "after":Ljava/util/function/Function;, "Ljava/util/function/Function<-TR;+TV;>;"
    const-string v0, "after"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    new-instance v0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public andThen(Lorg/apache/commons/io/function/IOFunction;)Lorg/apache/commons/io/function/IOFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOFunction<",
            "-TR;+TV;>;)",
            "Lorg/apache/commons/io/function/IOFunction<",
            "TT;TV;>;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    .local p1, "after":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<-TR;+TV;>;"
    const-string v0, "after"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    new-instance v0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOFunction;)V

    return-object v0
.end method

.method public abstract apply(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public asFunction()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "TT;TR;>;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    new-instance v0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/function/IOFunction;)V

    return-object v0
.end method

.method public compose(Ljava/util/function/Function;)Lorg/apache/commons/io/function/IOFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TV;+TT;>;)",
            "Lorg/apache/commons/io/function/IOFunction<",
            "TV;TR;>;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    .local p1, "before":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TT;>;"
    const-string v0, "before"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    new-instance v0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public compose(Lorg/apache/commons/io/function/IOFunction;)Lorg/apache/commons/io/function/IOFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOFunction<",
            "-TV;+TT;>;)",
            "Lorg/apache/commons/io/function/IOFunction<",
            "TV;TR;>;"
        }
    .end annotation

    .line 163
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    .local p1, "before":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<-TV;+TT;>;"
    const-string v0, "before"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    new-instance v0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda7;-><init>(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOFunction;)V

    return-object v0
.end method

.method public compose(Ljava/util/function/Supplier;)Lorg/apache/commons/io/function/IOSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+TT;>;)",
            "Lorg/apache/commons/io/function/IOSupplier<",
            "TR;>;"
        }
    .end annotation

    .line 195
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    .local p1, "before":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    const-string v0, "before"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    new-instance v0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda8;-><init>(Lorg/apache/commons/io/function/IOFunction;Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public compose(Lorg/apache/commons/io/function/IOSupplier;)Lorg/apache/commons/io/function/IOSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOSupplier<",
            "+TT;>;)",
            "Lorg/apache/commons/io/function/IOSupplier<",
            "TR;>;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<TT;TR;>;"
    .local p1, "before":Lorg/apache/commons/io/function/IOSupplier;, "Lorg/apache/commons/io/function/IOSupplier<+TT;>;"
    const-string v0, "before"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    new-instance v0, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOFunction$$ExternalSyntheticLambda6;-><init>(Lorg/apache/commons/io/function/IOFunction;Lorg/apache/commons/io/function/IOSupplier;)V

    return-object v0
.end method
