.class public interface abstract Lorg/apache/commons/lang3/function/TriFunction;
.super Ljava/lang/Object;
.source "TriFunction.java"


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
.method public static synthetic lambda$andThen$0(Lorg/apache/commons/lang3/function/TriFunction;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/TriFunction;
    .param p1, "after"    # Ljava/util/function/Function;
    .param p2, "t"    # Ljava/lang/Object;
    .param p3, "u"    # Ljava/lang/Object;
    .param p4, "v"    # Ljava/lang/Object;

    .line 54
    .local p0, "this":Lorg/apache/commons/lang3/function/TriFunction;, "Lorg/apache/commons/lang3/function/TriFunction<TT;TU;TV;TR;>;"
    invoke-interface {p0, p2, p3, p4}, Lorg/apache/commons/lang3/function/TriFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public andThen(Ljava/util/function/Function;)Lorg/apache/commons/lang3/function/TriFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<W:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TR;+TW;>;)",
            "Lorg/apache/commons/lang3/function/TriFunction<",
            "TT;TU;TV;TW;>;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lorg/apache/commons/lang3/function/TriFunction;, "Lorg/apache/commons/lang3/function/TriFunction<TT;TU;TV;TR;>;"
    .local p1, "after":Ljava/util/function/Function;, "Ljava/util/function/Function<-TR;+TW;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v0, Lorg/apache/commons/lang3/function/TriFunction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/TriFunction$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/TriFunction;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public abstract apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;TV;)TR;"
        }
    .end annotation
.end method
