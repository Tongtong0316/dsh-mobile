.class public Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;
.super Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;
.source "EventCountCircuitBreaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyClosed;,
        Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyOpen;,
        Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;,
        Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final STRATEGY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;",
            "Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;",
            ">;"
        }
    .end annotation
.end field

.field private final closingInterval:J

.field private final closingThreshold:I

.field private final openingInterval:J

.field private final openingThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 284
    invoke-static {}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->createStrategyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->STRATEGY_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .param p1, "threshold"    # I
    .param p2, "checkInterval"    # J
    .param p4, "checkUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 336
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;-><init>(IJLjava/util/concurrent/TimeUnit;I)V

    .line 337
    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;I)V
    .locals 9
    .param p1, "openingThreshold"    # I
    .param p2, "checkInterval"    # J
    .param p4, "checkUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "closingThreshold"    # I

    .line 354
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;-><init>(IJLjava/util/concurrent/TimeUnit;IJLjava/util/concurrent/TimeUnit;)V

    .line 356
    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;IJLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "openingThreshold"    # I
    .param p2, "openingInterval"    # J
    .param p4, "openingUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "closingThreshold"    # I
    .param p6, "closingInterval"    # J
    .param p8, "closingUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 376
    invoke-direct {p0}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;-><init>()V

    .line 377
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;-><init>(IJ)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;

    .line 378
    iput p1, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->openingThreshold:I

    .line 379
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->openingInterval:J

    .line 380
    iput p5, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->closingThreshold:I

    .line 381
    invoke-virtual {p8, p6, p7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->closingInterval:J

    .line 382
    return-void
.end method

.method private changeStateAndStartNewCheckInterval(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)V
    .locals 5
    .param p1, "newState"    # Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    .line 391
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->changeState(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)V

    .line 392
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->nanoTime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;-><init>(IJ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 393
    return-void
.end method

.method private static createStrategyMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;",
            "Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 294
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;>;"
    sget-object v1, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->CLOSED:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    new-instance v2, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyClosed;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyClosed;-><init>(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v1, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->OPEN:Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    new-instance v2, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyOpen;

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategyOpen;-><init>(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-object v0
.end method

.method private nextCheckIntervalData(ILorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;J)Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    .locals 1
    .param p1, "increment"    # I
    .param p2, "currentData"    # Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    .param p3, "currentState"    # Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
    .param p4, "time"    # J

    .line 507
    invoke-static {p3}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->stateStrategy(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p4, p5}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;->isCheckIntervalFinished(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    new-instance v0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    invoke-direct {v0, p1, p4, p5}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;-><init>(IJ)V

    .local v0, "nextData":Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    goto :goto_0

    .line 510
    .end local v0    # "nextData":Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    :cond_0
    invoke-virtual {p2, p1}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;->increment(I)Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    move-result-object v0

    .line 512
    .restart local v0    # "nextData":Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    :goto_0
    return-object v0
.end method

.method private performStateCheck(I)Z
    .locals 10
    .param p1, "increment"    # I

    .line 543
    nop

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->nanoTime()J

    move-result-wide v6

    .line 544
    .local v6, "time":J
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    .line 545
    .local v8, "currentState":Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    .line 546
    .local v9, "currentData":Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    move-object v0, p0

    move v1, p1

    move-object v2, v9

    move-object v3, v8

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->nextCheckIntervalData(ILorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;J)Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    move-result-object v0

    .line 547
    .end local v6    # "time":J
    .local v0, "nextData":Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    invoke-direct {p0, v9, v0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->updateCheckIntervalData(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    invoke-static {v8}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->stateStrategy(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;

    move-result-object v1

    invoke-virtual {v1, p0, v9, v0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;->isStateTransition(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    invoke-virtual {v8}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;->oppositeState()Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    move-result-object v8

    .line 553
    invoke-direct {p0, v8}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->changeStateAndStartNewCheckInterval(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)V

    .line 555
    :cond_1
    invoke-static {v8}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->isOpen(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static stateStrategy(Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;)Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;
    .locals 1
    .param p0, "state"    # Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker$State;

    .line 307
    sget-object v0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->STRATEGY_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$StateStrategy;

    return-object v0
.end method

.method private updateCheckIntervalData(Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;)Z
    .locals 1
    .param p1, "currentData"    # Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;
    .param p2, "nextData"    # Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    .line 570
    if-eq p1, p2, :cond_1

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;

    .line 571
    invoke-static {v0, p1, p2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 570
    :goto_1
    return v0
.end method


# virtual methods
.method public checkState()Z
    .locals 1

    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->performStateCheck(I)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 5

    .line 419
    invoke-super {p0}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->close()V

    .line 420
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->nanoTime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;-><init>(IJ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 421
    return-void
.end method

.method public getClosingInterval()J
    .locals 2

    .line 429
    iget-wide v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->closingInterval:J

    return-wide v0
.end method

.method public getClosingThreshold()I
    .locals 1

    .line 440
    iget v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->closingThreshold:I

    return v0
.end method

.method public getOpeningInterval()J
    .locals 2

    .line 449
    iget-wide v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->openingInterval:J

    return-wide v0
.end method

.method public getOpeningThreshold()I
    .locals 1

    .line 460
    iget v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->openingThreshold:I

    return v0
.end method

.method public incrementAndCheckState()Z
    .locals 1

    .line 472
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->incrementAndCheckState(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public incrementAndCheckState(Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "increment"    # Ljava/lang/Integer;

    .line 480
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->performStateCheck(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic incrementAndCheckState(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 138
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->incrementAndCheckState(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method nanoTime()J
    .locals 2

    .line 490
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public open()V
    .locals 5

    .line 526
    invoke-super {p0}, Lorg/apache/commons/lang3/concurrent/AbstractCircuitBreaker;->open()V

    .line 527
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->checkIntervalData:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker;->nanoTime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/lang3/concurrent/EventCountCircuitBreaker$CheckIntervalData;-><init>(IJ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 528
    return-void
.end method
