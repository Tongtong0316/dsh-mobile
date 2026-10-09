.class final Lorg/apache/commons/lang3/CachedRandomBits;
.super Ljava/lang/Object;
.source "CachedRandomBits.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bitIndex:I

.field private final cache:[B

.field private final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 38
    return-void
.end method

.method constructor <init>(ILjava/util/Random;)V
    .locals 2
    .param p1, "cacheSize"    # I
    .param p2, "random"    # Ljava/util/Random;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-lez p1, :cond_0

    .line 65
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/lang3/CachedRandomBits;->cache:[B

    .line 66
    const-string v0, "random"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    iput-object v0, p0, Lorg/apache/commons/lang3/CachedRandomBits;->random:Ljava/util/Random;

    .line 67
    iget-object v0, p0, Lorg/apache/commons/lang3/CachedRandomBits;->random:Ljava/util/Random;

    iget-object v1, p0, Lorg/apache/commons/lang3/CachedRandomBits;->cache:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang3/CachedRandomBits;->bitIndex:I

    .line 69
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheSize must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public nextBits(I)I
    .locals 6
    .param p1, "bits"    # I

    .line 78
    const/16 v0, 0x20

    if-gt p1, v0, :cond_3

    if-lez p1, :cond_3

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "result":I
    const/4 v1, 0x0

    .line 83
    .local v1, "generatedBits":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 84
    iget v2, p0, Lorg/apache/commons/lang3/CachedRandomBits;->bitIndex:I

    shr-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lorg/apache/commons/lang3/CachedRandomBits;->cache:[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 87
    iget v2, p0, Lorg/apache/commons/lang3/CachedRandomBits;->bitIndex:I

    iget-object v3, p0, Lorg/apache/commons/lang3/CachedRandomBits;->cache:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x8

    if-ne v2, v3, :cond_0

    .line 88
    iget-object v2, p0, Lorg/apache/commons/lang3/CachedRandomBits;->random:Ljava/util/Random;

    iget-object v3, p0, Lorg/apache/commons/lang3/CachedRandomBits;->cache:[B

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 89
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/lang3/CachedRandomBits;->bitIndex:I

    goto :goto_1

    .line 87
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 93
    :cond_1
    :goto_1
    iget v2, p0, Lorg/apache/commons/lang3/CachedRandomBits;->bitIndex:I

    and-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v2, v2, 0x8

    sub-int v3, p1, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 94
    .local v2, "generatedBitsInIteration":I
    shl-int/2addr v0, v2

    .line 95
    iget-object v3, p0, Lorg/apache/commons/lang3/CachedRandomBits;->cache:[B

    iget v4, p0, Lorg/apache/commons/lang3/CachedRandomBits;->bitIndex:I

    shr-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    iget v4, p0, Lorg/apache/commons/lang3/CachedRandomBits;->bitIndex:I

    and-int/lit8 v4, v4, 0x7

    shr-int/2addr v3, v4

    const/4 v4, 0x1

    shl-int v5, v4, v2

    sub-int/2addr v5, v4

    and-int/2addr v3, v5

    or-int/2addr v0, v3

    .line 96
    add-int/2addr v1, v2

    .line 97
    iget v3, p0, Lorg/apache/commons/lang3/CachedRandomBits;->bitIndex:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/commons/lang3/CachedRandomBits;->bitIndex:I

    .line 98
    .end local v2    # "generatedBitsInIteration":I
    goto :goto_0

    .line 99
    :cond_2
    return v0

    .line 79
    .end local v0    # "result":I
    .end local v1    # "generatedBits":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "number of bits must be between 1 and 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
