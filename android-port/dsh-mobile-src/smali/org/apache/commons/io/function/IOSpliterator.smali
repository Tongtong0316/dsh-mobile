.class public interface abstract Lorg/apache/commons/io/function/IOSpliterator;
.super Ljava/lang/Object;
.source "IOSpliterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static adapt(Ljava/util/Spliterator;)Lorg/apache/commons/io/function/IOSpliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TE;>;)",
            "Lorg/apache/commons/io/function/IOSpliterator<",
            "TE;>;"
        }
    .end annotation

    .line 42
    .local p0, "iterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TE;>;"
    invoke-static {p0}, Lorg/apache/commons/io/function/IOSpliteratorAdapter;->adapt(Ljava/util/Spliterator;)Lorg/apache/commons/io/function/IOSpliteratorAdapter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asSpliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lorg/apache/commons/io/function/IOSpliterator;, "Lorg/apache/commons/io/function/IOSpliterator<TT;>;"
    new-instance v0, Lorg/apache/commons/io/function/UncheckedIOSpliterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/function/UncheckedIOSpliterator;-><init>(Lorg/apache/commons/io/function/IOSpliterator;)V

    return-object v0
.end method

.method public characteristics()I
    .locals 1

    .line 61
    .local p0, "this":Lorg/apache/commons/io/function/IOSpliterator;, "Lorg/apache/commons/io/function/IOSpliterator<TT;>;"
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOSpliterator;->unwrap()Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 71
    .local p0, "this":Lorg/apache/commons/io/function/IOSpliterator;, "Lorg/apache/commons/io/function/IOSpliterator<TT;>;"
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOSpliterator;->unwrap()Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Lorg/apache/commons/io/function/IOConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/apache/commons/io/function/IOSpliterator;, "Lorg/apache/commons/io/function/IOSpliterator<TT;>;"
    .local p1, "action":Lorg/apache/commons/io/function/IOConsumer;, "Lorg/apache/commons/io/function/IOConsumer<-TT;>;"
    :goto_0
    invoke-interface {p0, p1}, Lorg/apache/commons/io/function/IOSpliterator;->tryAdvance(Lorg/apache/commons/io/function/IOConsumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public getComparator()Lorg/apache/commons/io/function/IOComparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/io/function/IOComparator<",
            "-TT;>;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/apache/commons/io/function/IOSpliterator;, "Lorg/apache/commons/io/function/IOSpliterator<TT;>;"
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOSpliterator;->unwrap()Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/function/IOComparator;

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 102
    .local p0, "this":Lorg/apache/commons/io/function/IOSpliterator;, "Lorg/apache/commons/io/function/IOSpliterator<TT;>;"
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOSpliterator;->unwrap()Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 1
    .param p1, "characteristics"    # I

    .line 112
    .local p0, "this":Lorg/apache/commons/io/function/IOSpliterator;, "Lorg/apache/commons/io/function/IOSpliterator<TT;>;"
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOSpliterator;->unwrap()Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Lorg/apache/commons/io/function/IOConsumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/apache/commons/io/function/IOSpliterator;, "Lorg/apache/commons/io/function/IOSpliterator<TT;>;"
    .local p1, "action":Lorg/apache/commons/io/function/IOConsumer;, "Lorg/apache/commons/io/function/IOConsumer<-TT;>;"
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOSpliterator;->unwrap()Ljava/util/Spliterator;

    move-result-object v0

    const-string v1, "action"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/function/IOConsumer;

    invoke-interface {v1}, Lorg/apache/commons/io/function/IOConsumer;->asConsumer()Ljava/util/function/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public trySplit()Lorg/apache/commons/io/function/IOSpliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/io/function/IOSpliterator<",
            "TT;>;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lorg/apache/commons/io/function/IOSpliterator;, "Lorg/apache/commons/io/function/IOSpliterator<TT;>;"
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOSpliterator;->unwrap()Ljava/util/Spliterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/function/IOSpliterator;->adapt(Ljava/util/Spliterator;)Lorg/apache/commons/io/function/IOSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract unwrap()Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation
.end method
