.class public abstract Lorg/apache/commons/io/input/AbstractCharacterFilterReader;
.super Ljava/io/FilterReader;
.source "AbstractCharacterFilterReader.java"


# static fields
.field protected static final SKIP_NONE:Ljava/util/function/IntPredicate;


# instance fields
.field private final skip:Ljava/util/function/IntPredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/apache/commons/io/input/AbstractCharacterFilterReader$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/io/input/AbstractCharacterFilterReader$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;->SKIP_NONE:Ljava/util/function/IntPredicate;

    return-void
.end method

.method protected constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;

    .line 46
    sget-object v0, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;->SKIP_NONE:Ljava/util/function/IntPredicate;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;-><init>(Ljava/io/Reader;Ljava/util/function/IntPredicate;)V

    .line 47
    return-void
.end method

.method protected constructor <init>(Ljava/io/Reader;Ljava/util/function/IntPredicate;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "skip"    # Ljava/util/function/IntPredicate;

    .line 57
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 58
    if-nez p2, :cond_0

    sget-object v0, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;->SKIP_NONE:Ljava/util/function/IntPredicate;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;->skip:Ljava/util/function/IntPredicate;

    .line 59
    return-void
.end method

.method static synthetic lambda$static$0(I)Z
    .locals 1
    .param p0, "ch"    # I

    .line 36
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected filter(I)Z
    .locals 1
    .param p1, "ch"    # I

    .line 68
    iget-object v0, p0, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;->skip:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    nop

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 76
    .local v0, "ch":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;->filter(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    :cond_1
    return v0
.end method

.method public read([CII)I
    .locals 4
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterReader;->read([CII)I

    move-result v0

    .line 83
    .local v0, "read":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 84
    return v1

    .line 86
    :cond_0
    add-int/lit8 v1, p2, -0x1

    .line 87
    .local v1, "pos":I
    move v2, p2

    .local v2, "readPos":I
    :goto_0
    add-int v3, p2, v0

    if-ge v2, v3, :cond_3

    .line 88
    aget-char v3, p1, v2

    invoke-virtual {p0, v3}, Lorg/apache/commons/io/input/AbstractCharacterFilterReader;->filter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    goto :goto_1

    .line 91
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 92
    if-ge v1, v2, :cond_2

    .line 93
    aget-char v3, p1, v2

    aput-char v3, p1, v1

    .line 87
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v2    # "readPos":I
    :cond_3
    sub-int v2, v1, p2

    add-int/lit8 v2, v2, 0x1

    return v2
.end method
