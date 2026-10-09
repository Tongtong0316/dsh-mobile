.class public interface abstract Lorg/apache/commons/lang3/function/FailableIntPredicate;
.super Ljava/lang/Object;
.source "FailableIntPredicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final FALSE:Lorg/apache/commons/lang3/function/FailableIntPredicate;

.field public static final TRUE:Lorg/apache/commons/lang3/function/FailableIntPredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableIntPredicate;->FALSE:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    .line 38
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailableIntPredicate;->TRUE:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    return-void
.end method

.method public static falsePredicate()Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 48
    sget-object v0, Lorg/apache/commons/lang3/function/FailableIntPredicate;->FALSE:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    return-object v0
.end method

.method public static synthetic lambda$and$2(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;I)Z
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .param p1, "other"    # Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .param p2, "t"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/apache/commons/lang3/function/FailableIntPredicate;, "Lorg/apache/commons/lang3/function/FailableIntPredicate<TE;>;"
    invoke-interface {p0, p2}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$negate$3(Lorg/apache/commons/lang3/function/FailableIntPredicate;I)Z
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .param p1, "t"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/apache/commons/lang3/function/FailableIntPredicate;, "Lorg/apache/commons/lang3/function/FailableIntPredicate<TE;>;"
    invoke-interface {p0, p1}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->test(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic lambda$or$4(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;I)Z
    .locals 1
    .param p0, "_this"    # Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .param p1, "other"    # Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .param p2, "t"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 92
    .local p0, "this":Lorg/apache/commons/lang3/function/FailableIntPredicate;, "Lorg/apache/commons/lang3/function/FailableIntPredicate<TE;>;"
    invoke-interface {p0, p2}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->test(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Lorg/apache/commons/lang3/function/FailableIntPredicate;->test(I)Z

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

.method public static synthetic lambda$static$0(I)Z
    .locals 1
    .param p0, "t"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$static$1(I)Z
    .locals 1
    .param p0, "t"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public static truePredicate()Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">()",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 59
    sget-object v0, Lorg/apache/commons/lang3/function/FailableIntPredicate;->TRUE:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    return-object v0
.end method


# virtual methods
.method public and(Lorg/apache/commons/lang3/function/FailableIntPredicate;)Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/apache/commons/lang3/function/FailableIntPredicate;, "Lorg/apache/commons/lang3/function/FailableIntPredicate<TE;>;"
    .local p1, "other":Lorg/apache/commons/lang3/function/FailableIntPredicate;, "Lorg/apache/commons/lang3/function/FailableIntPredicate<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;)V

    return-object v0
.end method

.method public negate()Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/apache/commons/lang3/function/FailableIntPredicate;, "Lorg/apache/commons/lang3/function/FailableIntPredicate<TE;>;"
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/lang3/function/FailableIntPredicate;)V

    return-object v0
.end method

.method public or(Lorg/apache/commons/lang3/function/FailableIntPredicate;)Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate<",
            "TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableIntPredicate<",
            "TE;>;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/apache/commons/lang3/function/FailableIntPredicate;, "Lorg/apache/commons/lang3/function/FailableIntPredicate<TE;>;"
    .local p1, "other":Lorg/apache/commons/lang3/function/FailableIntPredicate;, "Lorg/apache/commons/lang3/function/FailableIntPredicate<TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;)V

    return-object v0
.end method

.method public abstract test(I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Z^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
