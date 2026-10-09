.class public interface abstract Lorg/apache/commons/io/function/IOComparator;
.super Ljava/lang/Object;
.source "IOComparator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic lambda$asComparator$0(Lorg/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/io/function/IOComparator;
    .param p1, "t"    # Ljava/lang/Object;
    .param p2, "u"    # Ljava/lang/Object;

    .line 42
    .local p0, "this":Lorg/apache/commons/io/function/IOComparator;, "Lorg/apache/commons/io/function/IOComparator<TT;>;"
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/function/Uncheck;->compare(Lorg/apache/commons/io/function/IOComparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public asComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/apache/commons/io/function/IOComparator;, "Lorg/apache/commons/io/function/IOComparator<TT;>;"
    new-instance v0, Lorg/apache/commons/io/function/IOComparator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/function/IOComparator$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/function/IOComparator;)V

    return-object v0
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
