.class public interface abstract Lorg/apache/commons/io/function/IOQuadFunction;
.super Ljava/lang/Object;
.source "IOQuadFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "W:",
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
.method public static synthetic lambda$andThen$0(Lorg/apache/commons/io/function/IOQuadFunction;Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOQuadFunction;
    .param p1, "after"    # Lorg/apache/commons/io/function/IOFunction;
    .param p2, "t"    # Ljava/lang/Object;
    .param p3, "u"    # Ljava/lang/Object;
    .param p4, "v"    # Ljava/lang/Object;
    .param p5, "w"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    .local p0, "this":Lorg/apache/commons/io/function/IOQuadFunction;, "Lorg/apache/commons/io/function/IOQuadFunction<TT;TU;TV;TW;TR;>;"
    invoke-interface {p0, p2, p3, p4, p5}, Lorg/apache/commons/io/function/IOQuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public andThen(Lorg/apache/commons/io/function/IOFunction;)Lorg/apache/commons/io/function/IOQuadFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/function/IOFunction<",
            "-TR;+TX;>;)",
            "Lorg/apache/commons/io/function/IOQuadFunction<",
            "TT;TU;TV;TW;TX;>;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/apache/commons/io/function/IOQuadFunction;, "Lorg/apache/commons/io/function/IOQuadFunction<TT;TU;TV;TW;TR;>;"
    .local p1, "after":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<-TR;+TX;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v0, Lorg/apache/commons/io/function/IOQuadFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/function/IOQuadFunction$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/function/IOQuadFunction;Lorg/apache/commons/io/function/IOFunction;)V

    return-object v0
.end method

.method public abstract apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;TV;TW;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
