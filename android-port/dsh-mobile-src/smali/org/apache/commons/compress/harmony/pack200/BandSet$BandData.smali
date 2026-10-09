.class public Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;
.super Ljava/lang/Object;
.source "BandSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/pack200/BandSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BandData"
.end annotation


# instance fields
.field private averageAbsoluteDelta:D

.field private averageAbsoluteValue:D

.field private final band:[I

.field private deltaIsAscending:I

.field private distinctValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private largest:I

.field private largestDelta:I

.field private smallDeltaCount:I

.field private smallest:I

.field private smallestDelta:I

.field final synthetic this$0:Lorg/apache/commons/compress/harmony/pack200/BandSet;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/BandSet;[I)V
    .locals 10
    .param p1, "this$0"    # Lorg/apache/commons/compress/harmony/pack200/BandSet;
    .param p2, "band"    # [I

    .line 82
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->this$0:Lorg/apache/commons/compress/harmony/pack200/BandSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallest:I

    .line 65
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->largest:I

    .line 83
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->band:[I

    .line 84
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 85
    .local v1, "one":Ljava/lang/Integer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_a

    .line 86
    aget v3, p2, v2

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallest:I

    if-ge v3, v4, :cond_0

    .line 87
    aget v3, p2, v2

    iput v3, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallest:I

    .line 89
    :cond_0
    aget v3, p2, v2

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->largest:I

    if-le v3, v4, :cond_1

    .line 90
    aget v3, p2, v2

    iput v3, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->largest:I

    .line 92
    :cond_1
    if-eqz v2, :cond_6

    .line 93
    aget v3, p2, v2

    add-int/lit8 v4, v2, -0x1

    aget v4, p2, v4

    sub-int/2addr v3, v4

    .line 94
    .local v3, "delta":I
    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallestDelta:I

    if-ge v3, v4, :cond_2

    .line 95
    iput v3, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallestDelta:I

    .line 97
    :cond_2
    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->largestDelta:I

    if-le v3, v4, :cond_3

    .line 98
    iput v3, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->largestDelta:I

    .line 100
    :cond_3
    if-ltz v3, :cond_4

    .line 101
    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->deltaIsAscending:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->deltaIsAscending:I

    .line 103
    :cond_4
    iget-wide v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->averageAbsoluteDelta:D

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    array-length v8, p2

    sub-int/2addr v8, v0

    int-to-double v8, v8

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->averageAbsoluteDelta:D

    .line 104
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x100

    if-ge v4, v5, :cond_5

    .line 105
    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallDeltaCount:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallDeltaCount:I

    .line 107
    .end local v3    # "delta":I
    :cond_5
    goto :goto_1

    .line 108
    :cond_6
    const/4 v3, 0x0

    aget v4, p2, v3

    iput v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallestDelta:I

    .line 109
    aget v3, p2, v3

    iput v3, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->largestDelta:I

    .line 111
    :goto_1
    iget-wide v3, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->averageAbsoluteValue:D

    aget v5, p2, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v5, v5

    array-length v7, p2

    int-to-double v7, v7

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->averageAbsoluteValue:D

    .line 112
    iget v3, p1, Lorg/apache/commons/compress/harmony/pack200/BandSet;->effort:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_9

    .line 113
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->distinctValues:Ljava/util/Map;

    if-nez v3, :cond_7

    .line 114
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->distinctValues:Ljava/util/Map;

    .line 116
    :cond_7
    aget v3, p2, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 117
    .local v3, "value":Ljava/lang/Integer;
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->distinctValues:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 118
    .local v4, "count":Ljava/lang/Integer;
    if-nez v4, :cond_8

    .line 119
    move-object v4, v1

    goto :goto_2

    .line 121
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 123
    :goto_2
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->distinctValues:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .end local v3    # "value":Ljava/lang/Integer;
    .end local v4    # "count":Ljava/lang/Integer;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 126
    .end local v2    # "i":I
    :cond_a
    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;

    .line 61
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->largest:I

    return v0
.end method

.method static synthetic access$500(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;

    .line 61
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->distinctValues:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;

    .line 61
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->largestDelta:I

    return v0
.end method

.method static synthetic access$800(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;

    .line 61
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallestDelta:I

    return v0
.end method

.method static synthetic access$900(Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;

    .line 61
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallest:I

    return v0
.end method


# virtual methods
.method public anyNegatives()Z
    .locals 1

    .line 134
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallest:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mainlyPositiveDeltas()Z
    .locals 2

    .line 144
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->deltaIsAscending:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->band:[I

    array-length v1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mainlySmallDeltas()Z
    .locals 2

    .line 154
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->smallDeltaCount:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->band:[I

    array-length v1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3f333333    # 0.7f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public numDistinctValues()I
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->distinctValues:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->band:[I

    array-length v0, v0

    return v0

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->distinctValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public wellCorrelated()Z
    .locals 4

    .line 176
    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->averageAbsoluteDelta:D

    const-wide v2, 0x4008cccccccccccdL    # 3.1

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/compress/harmony/pack200/BandSet$BandData;->averageAbsoluteValue:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
