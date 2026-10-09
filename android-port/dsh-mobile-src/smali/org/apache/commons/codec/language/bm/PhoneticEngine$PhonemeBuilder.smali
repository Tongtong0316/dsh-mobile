.class final Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
.super Ljava/lang/Object;
.source "PhoneticEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/bm/PhoneticEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PhonemeBuilder"
.end annotation


# instance fields
.field private final phonemes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "phonemes":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/codec/language/bm/Rule$Phoneme;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Set;
    .param p2, "x1"    # Lorg/apache/commons/codec/language/bm/PhoneticEngine$1;

    .line 64
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;-><init>(Ljava/util/Set;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)V
    .locals 1
    .param p1, "phoneme"    # Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    .line 82
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public static empty(Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;
    .locals 3
    .param p0, "languages"    # Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    .line 75
    new-instance v0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;

    new-instance v1, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    const-string v2, ""

    invoke-direct {v1, v2, p0}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;-><init>(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)V

    return-object v0
.end method

.method static synthetic lambda$append$0(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)V
    .locals 0
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "ph"    # Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 95
    invoke-virtual {p1, p0}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->append(Ljava/lang/CharSequence;)Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 95
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    new-instance v1, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 96
    return-void
.end method

.method public apply(Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;I)V
    .locals 8
    .param p1, "phonemeExpr"    # Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;
    .param p2, "maxPhonemes"    # I

    .line 109
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;->size()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 110
    .local v0, "newPhonemes":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/codec/language/bm/Rule$Phoneme;>;"
    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 111
    .local v2, "left":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    invoke-interface {p1}, Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;->getPhonemes()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 112
    .local v4, "right":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->getLanguages()Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->getLanguages()Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->restrictTo(Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v5

    .line 113
    .local v5, "languages":Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    invoke-virtual {v5}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 114
    new-instance v6, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    invoke-direct {v6, v2, v4, v5}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;Lorg/apache/commons/codec/language/bm/Rule$Phoneme;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    .line 115
    .local v6, "join":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    if-ge v7, p2, :cond_0

    .line 116
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v7

    if-lt v7, p2, :cond_0

    .line 118
    goto :goto_2

    .line 122
    .end local v4    # "right":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .end local v5    # "languages":Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    .end local v6    # "join":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    :cond_0
    goto :goto_1

    .line 123
    .end local v2    # "left":Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    :cond_1
    goto :goto_0

    .line 124
    :cond_2
    :goto_2
    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 125
    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 126
    return-void
.end method

.method public getPhonemes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    return-object v0
.end method

.method public makeString()Ljava/lang/String;
    .locals 2

    .line 145
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder;->phonemes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/commons/codec/language/bm/PhoneticEngine$PhonemeBuilder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, "|"

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
