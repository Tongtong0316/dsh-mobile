.class public Lorg/apache/commons/io/input/CharacterSetFilterReader;
.super Lorg/apache/commons/io/input/AbstractCharacterFilterReader;
.source "CharacterSetFilterReader.java"


# direct methods
.method public constructor <init>(Ljava/io/Reader;Ljava/util/Set;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p2, "skip":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p2}, Lorg/apache/commons/io/input/CharacterSetFilterReader;->toIntPredicate(Ljava/util/Set;)Ljava/util/function/IntPredicate;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;-><init>(Ljava/io/Reader;Ljava/util/function/IntPredicate;)V

    .line 63
    return-void
.end method

.method public varargs constructor <init>(Ljava/io/Reader;[Ljava/lang/Integer;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "skip"    # [Ljava/lang/Integer;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/CharacterSetFilterReader;-><init>(Ljava/io/Reader;Ljava/util/Set;)V

    .line 53
    return-void
.end method

.method static synthetic lambda$toIntPredicate$0(Ljava/util/Set;I)Z
    .locals 1
    .param p0, "unmodifiableSet"    # Ljava/util/Set;
    .param p1, "c"    # I

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static toIntPredicate(Ljava/util/Set;)Ljava/util/function/IntPredicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/function/IntPredicate;"
        }
    .end annotation

    .line 37
    .local p0, "skip":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    .line 38
    sget-object v0, Lorg/apache/commons/io/input/CharacterSetFilterReader;->SKIP_NONE:Ljava/util/function/IntPredicate;

    return-object v0

    .line 40
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 41
    .local v0, "unmodifiableSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Lorg/apache/commons/io/input/CharacterSetFilterReader$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/apache/commons/io/input/CharacterSetFilterReader$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    return-object v1
.end method
