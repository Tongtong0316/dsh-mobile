.class public interface abstract Lorg/apache/commons/lang3/function/FailablePredicate;
.super Ljava/lang/Object;
.source "FailablePredicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final FALSE:Lorg/apache/commons/lang3/function/FailablePredicate;

.field public static final TRUE:Lorg/apache/commons/lang3/function/FailablePredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailablePredicate;->FALSE:Lorg/apache/commons/lang3/function/FailablePredicate;

    .line 39
    new-instance v0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailablePredicate;->TRUE:Lorg/apache/commons/lang3/function/FailablePredicate;

    return-void
.end method

.method public static falsePredicate()Lorg/apache/commons/lang3/function/FailablePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "TT;TE;>;"
        }
    .end annotation

    .line 50
    sget-object v0, Lorg/apache/commons/lang3/function/FailablePredicate;->FALSE:Lorg/apache/commons/lang3/function/FailablePredicate;

    return-object v0
.end method

.method public static synthetic lambda$and$2(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailablePredicate;
    .param p1, "other"    # Lorg/apache/commons/lang3/function/FailablePredicate;
    .param p2, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/apache/commons/lang3/function/FailablePredicate;, "Lorg/apache/commons/lang3/function/FailablePredicate<TT;TE;>;"
    invoke-interface {p0, p2}, Lorg/apache/commons/lang3/function/FailablePredicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lorg/apache/commons/lang3/function/FailablePredicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$negate$3(Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailablePredicate;
    .param p1, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/apache/commons/lang3/function/FailablePredicate;, "Lorg/apache/commons/lang3/function/FailablePredicate<TT;TE;>;"
    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/function/FailablePredicate;->test(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic lambda$or$4(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailablePredicate;
    .param p1, "other"    # Lorg/apache/commons/lang3/function/FailablePredicate;
    .param p2, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 95
    .local p0, "this":Lorg/apache/commons/lang3/function/FailablePredicate;, "Lorg/apache/commons/lang3/function/FailablePredicate<TT;TE;>;"
    invoke-interface {p0, p2}, Lorg/apache/commons/lang3/function/FailablePredicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Lorg/apache/commons/lang3/function/FailablePredicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static synthetic lambda$static$0(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$static$1(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public static truePredicate()Lorg/apache/commons/lang3/function/FailablePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "TT;TE;>;"
        }
    .end annotation

    .line 62
    sget-object v0, Lorg/apache/commons/lang3/function/FailablePredicate;->TRUE:Lorg/apache/commons/lang3/function/FailablePredicate;

    return-object v0
.end method


# virtual methods
.method public and(Lorg/apache/commons/lang3/function/FailablePredicate;)Lorg/apache/commons/lang3/function/FailablePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "-TT;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "TT;TE;>;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/apache/commons/lang3/function/FailablePredicate;, "Lorg/apache/commons/lang3/function/FailablePredicate<TT;TE;>;"
    .local p1, "other":Lorg/apache/commons/lang3/function/FailablePredicate;, "Lorg/apache/commons/lang3/function/FailablePredicate<-TT;TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;)V

    return-object v0
.end method

.method public negate()Lorg/apache/commons/lang3/function/FailablePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "TT;TE;>;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/apache/commons/lang3/function/FailablePredicate;, "Lorg/apache/commons/lang3/function/FailablePredicate<TT;TE;>;"
    new-instance v0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/lang3/function/FailablePredicate;)V

    return-object v0
.end method

.method public or(Lorg/apache/commons/lang3/function/FailablePredicate;)Lorg/apache/commons/lang3/function/FailablePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "-TT;TE;>;)",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "TT;TE;>;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/apache/commons/lang3/function/FailablePredicate;, "Lorg/apache/commons/lang3/function/FailablePredicate<TT;TE;>;"
    .local p1, "other":Lorg/apache/commons/lang3/function/FailablePredicate;, "Lorg/apache/commons/lang3/function/FailablePredicate<-TT;TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;)V

    return-object v0
.end method

.method public abstract test(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
