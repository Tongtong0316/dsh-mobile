.class public final Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Lorg/apache/commons/codec/language/bm/Rule$PhonemeExpr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/bm/Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phoneme"
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final languages:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

.field private final phonemeText:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V
    .locals 1
    .param p1, "phonemeText"    # Ljava/lang/CharSequence;
    .param p2, "languages"    # Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    .line 114
    iput-object p2, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    .line 115
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)V
    .locals 2
    .param p1, "phonemeLeft"    # Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .param p2, "phonemeRight"    # Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 118
    iget-object v0, p1, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    .line 119
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    iget-object v1, p2, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 120
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;Lorg/apache/commons/codec/language/bm/Rule$Phoneme;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V
    .locals 2
    .param p1, "phonemeLeft"    # Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .param p2, "phonemeRight"    # Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .param p3, "languages"    # Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    .line 123
    iget-object v0, p1, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    .line 124
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    iget-object v1, p2, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 125
    return-void
.end method

.method static synthetic lambda$static$0(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)I
    .locals 5
    .param p0, "o1"    # Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .param p1, "o2"    # Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    .line 90
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 91
    .local v0, "o1Length":I
    iget-object v1, p1, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 92
    .local v1, "o2Length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 93
    if-lt v2, v1, :cond_0

    .line 94
    const/4 v3, 0x1

    return v3

    .line 96
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    iget-object v4, p1, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    sub-int/2addr v3, v4

    .line 97
    .local v3, "c":I
    if-eqz v3, :cond_1

    .line 98
    return v3

    .line 92
    .end local v3    # "c":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v2    # "i":I
    :cond_2
    if-ge v0, v1, :cond_3

    .line 103
    const/4 v2, -0x1

    return v2

    .line 106
    :cond_3
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .locals 1
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 128
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 129
    return-object p0
.end method

.method public getLanguages()Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    return-object v0
.end method

.method public getPhonemeText()Ljava/lang/CharSequence;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getPhonemes()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/codec/language/bm/Rule$Phoneme;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public join(Lorg/apache/commons/codec/language/bm/Rule$Phoneme;)Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .locals 4
    .param p1, "right"    # Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    new-instance v0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    iget-object v3, p1, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    .line 155
    invoke-virtual {v2, v3}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->restrictTo(Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    .line 154
    return-object v0
.end method

.method public mergeWithLanguage(Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Lorg/apache/commons/codec/language/bm/Rule$Phoneme;
    .locals 3
    .param p1, "lang"    # Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    .line 166
    new-instance v0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;

    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    invoke-virtual {v2, p1}, Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;->merge(Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;-><init>(Ljava/lang/CharSequence;Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->phonemeText:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/codec/language/bm/Rule$Phoneme;->languages:Lorg/apache/commons/codec/language/bm/Languages$LanguageSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
