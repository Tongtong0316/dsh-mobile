.class public interface abstract Lorg/apache/commons/io/function/IOBiFunction;
.super Ljava/lang/Object;
.source "IOBiFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
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
.method public static synthetic lambda$andThen$0(Lorg/apache/commons/io/function/IOBiFunction;Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOBiFunction;
    .param p1, "after"    # Lorg/apache/commons/io/function/IOFunction;
    .param p2, "t"    # Ljava/lang/Object;
    .param p3, "u"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    .local p0, "this":Lorg/apache/commons/io/function/IOBiFunction;, "Lorg/apache/commons/io/function/IOBiFunction<TT;TU;TR;>;"
    invoke-interface {p0, p2, p3}, Lorg/apache/commons/io/function/IOBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$asBiFunction$1(Lorg/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOBiFunction;
    .param p1, "t"    # Ljava/lang/Object;
    .param p2, "u"    # Ljava/lang/Object;

    .line 76
    .local p0, "this":Lorg/apache/commons/io/function/IOBiFunction;, "Lorg/apache/commons/io/function/IOBiFunction<TT;TU;TR;>;"
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOBiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public andThen(Lorg/apache/commons/io/function/IOFunction;)Lorg/apache/commons/io/function/IOBiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOFunction<",
            "-TR;+TV;>;)",
            "Lorg/apache/commons/io/function/IOBiFunction<",
            "TT;TU;TV;>;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/apache/commons/io/function/IOBiFunction;, "Lorg/apache/commons/io/function/IOBiFunction<TT;TU;TR;>;"
    .local p1, "after":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<-TR;+TV;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v0, Lorg/apache/commons/io/function/IOBiFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOBiFunction$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/function/IOBiFunction;Lorg/apache/commons/io/function/IOFunction;)V

    return-object v0
.end method

.method public abstract apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public asBiFunction()Ljava/util/function/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiFunction<",
            "TT;TU;TR;>;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/apache/commons/io/function/IOBiFunction;, "Lorg/apache/commons/io/function/IOBiFunction<TT;TU;TR;>;"
    new-instance v0, Lorg/apache/commons/io/function/IOBiFunction$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/function/IOBiFunction$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/io/function/IOBiFunction;)V

    return-object v0
.end method
