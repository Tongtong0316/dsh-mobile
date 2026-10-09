.class final Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;
.super Ljava/lang/Object;
.source "AbstractFormatCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/AbstractFormatCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArrayKey"
.end annotation


# instance fields
.field private final hashCode:I

.field private final keys:[Ljava/lang/Object;


# direct methods
.method varargs constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .param p1, "keys"    # [Ljava/lang/Object;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;->keys:[Ljava/lang/Object;

    .line 63
    invoke-static {p1}, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;->computeHashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;->hashCode:I

    .line 64
    return-void
.end method

.method private static computeHashCode([Ljava/lang/Object;)I
    .locals 4
    .param p0, "keys"    # [Ljava/lang/Object;

    .line 47
    const/16 v0, 0x1f

    .line 48
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 49
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 50
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 68
    if-ne p0, p1, :cond_0

    .line 69
    const/4 v0, 0x1

    return v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 72
    return v0

    .line 74
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 75
    return v0

    .line 77
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;

    .line 78
    .local v0, "other":Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;
    iget-object v1, p0, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;->keys:[Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;->keys:[Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 83
    iget v0, p0, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;->hashCode:I

    return v0
.end method
