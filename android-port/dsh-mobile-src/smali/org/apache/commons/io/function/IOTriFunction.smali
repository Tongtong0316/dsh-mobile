.class public interface abstract Lorg/apache/commons/io/function/IOTriFunction;
.super Ljava/lang/Object;
.source "IOTriFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
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
.method public static synthetic lambda$andThen$0(Lorg/apache/commons/io/function/IOTriFunction;Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOTriFunction;
    .param p1, "after"    # Lorg/apache/commons/io/function/IOFunction;
    .param p2, "t"    # Ljava/lang/Object;
    .param p3, "u"    # Ljava/lang/Object;
    .param p4, "v"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/apache/commons/io/function/IOTriFunction;, "Lorg/apache/commons/io/function/IOTriFunction<TT;TU;TV;TR;>;"
    invoke-interface {p0, p2, p3, p4}, Lorg/apache/commons/io/function/IOTriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public andThen(Lorg/apache/commons/io/function/IOFunction;)Lorg/apache/commons/io/function/IOTriFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOFunction<",
            "-TR;+TW;>;)",
            "Lorg/apache/commons/io/function/IOTriFunction<",
            "TT;TU;TV;TW;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/apache/commons/io/function/IOTriFunction;, "Lorg/apache/commons/io/function/IOTriFunction<TT;TU;TV;TR;>;"
    .local p1, "after":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<-TR;+TW;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v0, Lorg/apache/commons/io/function/IOTriFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOTriFunction$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/function/IOTriFunction;Lorg/apache/commons/io/function/IOFunction;)V

    return-object v0
.end method

.method public abstract apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;TV;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
