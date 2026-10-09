.class public Lorg/apache/commons/lang3/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;,
        Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;,
        Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;,
        Lorg/apache/commons/lang3/ThreadUtils$ThreadIdPredicate;,
        Lorg/apache/commons/lang3/ThreadUtils$NamePredicate;
    }
.end annotation


# static fields
.field private static final ALWAYS_TRUE:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "*>;"
        }
    .end annotation
.end field

.field public static final ALWAYS_TRUE_PREDICATE:Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$YHL_QulH_KmQoivjQMLCmXNpvjA(Ljava/lang/Thread;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZWB-HZH3FrAoAArz258k5khmiwY(Ljava/lang/Thread;JI)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/Thread;->join(JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zgh5a8N9HEVvBkHP45WS-MYIpuk(JI)V
    .locals 0

    invoke-static {p0, p1, p2}, Ljava/lang/Thread;->sleep(JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$cW5QU2KvH9grOgBBRsPdPTIqWzI(Ljava/lang/ThreadGroup;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 171
    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;-><init>(Lorg/apache/commons/lang3/ThreadUtils$1;)V

    sput-object v0, Lorg/apache/commons/lang3/ThreadUtils;->ALWAYS_TRUE_PREDICATE:Lorg/apache/commons/lang3/ThreadUtils$AlwaysTruePredicate;

    .line 173
    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/ThreadUtils;->ALWAYS_TRUE:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    return-void
.end method

.method private static alwaysTruePredicate()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 177
    sget-object v0, Lorg/apache/commons/lang3/ThreadUtils;->ALWAYS_TRUE:Ljava/util/function/Predicate;

    return-object v0
.end method

.method public static findThreadById(J)Ljava/lang/Thread;
    .locals 2
    .param p0, "threadId"    # J

    .line 193
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    .line 196
    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda4;-><init>(J)V

    invoke-static {v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreads(Ljava/util/function/Predicate;)Ljava/util/Collection;

    move-result-object v0

    .line 197
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Thread;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    :goto_0
    return-object v1

    .line 194
    .end local v0    # "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Thread;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The thread id must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static findThreadById(JLjava/lang/String;)Ljava/lang/Thread;
    .locals 2
    .param p0, "threadId"    # J
    .param p2, "threadGroupName"    # Ljava/lang/String;

    .line 216
    const-string v0, "threadGroupName"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ThreadUtils;->findThreadById(J)Ljava/lang/Thread;

    move-result-object v0

    .line 218
    .local v0, "thread":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    return-object v0

    .line 221
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static findThreadById(JLjava/lang/ThreadGroup;)Ljava/lang/Thread;
    .locals 2
    .param p0, "threadId"    # J
    .param p2, "threadGroup"    # Ljava/lang/ThreadGroup;

    .line 240
    const-string v0, "threadGroup"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 241
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ThreadUtils;->findThreadById(J)Ljava/lang/Thread;

    move-result-object v0

    .line 242
    .local v0, "thread":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    return-object v0

    .line 245
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static findThreadGroups(Ljava/lang/ThreadGroup;ZLjava/util/function/Predicate;)Ljava/util/Collection;
    .locals 5
    .param p0, "threadGroup"    # Ljava/lang/ThreadGroup;
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadGroup;",
            "Z",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/ThreadGroup;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation

    .line 277
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/ThreadGroup;>;"
    const-string v0, "threadGroup"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    const-string v0, "predicate"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    move-result v0

    .line 283
    .local v0, "count":I
    :cond_0
    div-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/ThreadGroup;

    .line 284
    .local v1, "threadGroups":[Ljava/lang/ThreadGroup;
    invoke-virtual {p0, v1, p1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;Z)I

    move-result v0

    .line 286
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 287
    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method public static findThreadGroups(Ljava/lang/ThreadGroup;ZLorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;)Ljava/util/Collection;
    .locals 1
    .param p0, "threadGroup"    # Ljava/lang/ThreadGroup;
    .param p1, "recurse"    # Z
    .param p2, "predicate"    # Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadGroup;",
            "Z",
            "Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;)V

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreadGroups(Ljava/lang/ThreadGroup;ZLjava/util/function/Predicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static findThreadGroups(Ljava/util/function/Predicate;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/ThreadGroup;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation

    .line 261
    .local p0, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/ThreadGroup;>;"
    invoke-static {}, Lorg/apache/commons/lang3/ThreadUtils;->getSystemThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreadGroups(Ljava/lang/ThreadGroup;ZLjava/util/function/Predicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static findThreadGroups(Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;)Ljava/util/Collection;
    .locals 2
    .param p0, "predicate"    # Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    invoke-static {}, Lorg/apache/commons/lang3/ThreadUtils;->getSystemThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreadGroups(Ljava/lang/ThreadGroup;ZLorg/apache/commons/lang3/ThreadUtils$ThreadGroupPredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static findThreadGroupsByName(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p0, "threadGroupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation

    .line 337
    invoke-static {p0}, Lorg/apache/commons/lang3/ThreadUtils;->predicateThreadGroup(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreadGroups(Ljava/util/function/Predicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static findThreads(Ljava/lang/ThreadGroup;ZLjava/util/function/Predicate;)Ljava/util/Collection;
    .locals 5
    .param p0, "threadGroup"    # Ljava/lang/ThreadGroup;
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadGroup;",
            "Z",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Thread;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 370
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Thread;>;"
    const-string v0, "The group must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 371
    const-string v0, "The predicate must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 372
    invoke-virtual {p0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v0

    .line 375
    .local v0, "count":I
    :cond_0
    div-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/Thread;

    .line 376
    .local v1, "threads":[Ljava/lang/Thread;
    invoke-virtual {p0, v1, p1}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;Z)I

    move-result v0

    .line 378
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 379
    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method public static findThreads(Ljava/lang/ThreadGroup;ZLorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;)Ljava/util/Collection;
    .locals 1
    .param p0, "threadGroup"    # Ljava/lang/ThreadGroup;
    .param p1, "recurse"    # Z
    .param p2, "predicate"    # Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadGroup;",
            "Z",
            "Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 396
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda7;

    invoke-direct {v0, p2}, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda7;-><init>(Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;)V

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreads(Ljava/lang/ThreadGroup;ZLjava/util/function/Predicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static findThreads(Ljava/util/function/Predicate;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Thread;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 354
    .local p0, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Thread;>;"
    invoke-static {}, Lorg/apache/commons/lang3/ThreadUtils;->getSystemThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreads(Ljava/lang/ThreadGroup;ZLjava/util/function/Predicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static findThreads(Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;)Ljava/util/Collection;
    .locals 2
    .param p0, "predicate"    # Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 414
    invoke-static {}, Lorg/apache/commons/lang3/ThreadUtils;->getSystemThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreads(Ljava/lang/ThreadGroup;ZLorg/apache/commons/lang3/ThreadUtils$ThreadPredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static findThreadsByName(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p0, "threadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 430
    invoke-static {p0}, Lorg/apache/commons/lang3/ThreadUtils;->predicateThread(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreads(Ljava/util/function/Predicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static findThreadsByName(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .param p0, "threadName"    # Ljava/lang/String;
    .param p1, "threadGroupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 448
    const-string v0, "threadName"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 449
    const-string v0, "threadGroupName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 450
    invoke-static {p1}, Lorg/apache/commons/lang3/ThreadUtils;->predicateThreadGroup(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreadGroups(Ljava/util/function/Predicate;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    .line 451
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 450
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static findThreadsByName(Ljava/lang/String;Ljava/lang/ThreadGroup;)Ljava/util/Collection;
    .locals 2
    .param p0, "threadName"    # Ljava/lang/String;
    .param p1, "threadGroup"    # Ljava/lang/ThreadGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ThreadGroup;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 469
    const/4 v0, 0x0

    invoke-static {p0}, Lorg/apache/commons/lang3/ThreadUtils;->predicateThread(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/ThreadUtils;->findThreads(Ljava/lang/ThreadGroup;ZLjava/util/function/Predicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getAllThreadGroups()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation

    .line 483
    invoke-static {}, Lorg/apache/commons/lang3/ThreadUtils;->alwaysTruePredicate()Ljava/util/function/Predicate;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreadGroups(Ljava/util/function/Predicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getAllThreads()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 497
    invoke-static {}, Lorg/apache/commons/lang3/ThreadUtils;->alwaysTruePredicate()Ljava/util/function/Predicate;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ThreadUtils;->findThreads(Ljava/util/function/Predicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemThreadGroup()Ljava/lang/ThreadGroup;
    .locals 2

    .line 511
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 512
    .local v0, "threadGroup":Ljava/lang/ThreadGroup;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 513
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v0

    goto :goto_0

    .line 515
    :cond_0
    return-object v0
.end method

.method public static join(Ljava/lang/Thread;Ljava/time/Duration;)V
    .locals 1
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "duration"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 528
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Thread;)V

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/time/DurationUtils;->accept(Lorg/apache/commons/lang3/function/FailableBiConsumer;Ljava/time/Duration;)V

    .line 529
    return-void
.end method

.method static synthetic lambda$findThreadById$1(JLjava/lang/Thread;)Z
    .locals 2
    .param p0, "threadId"    # J
    .param p2, "t"    # Ljava/lang/Thread;

    .line 196
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$findThreadsByName$2(Ljava/lang/String;Ljava/lang/ThreadGroup;)Ljava/util/stream/Stream;
    .locals 2
    .param p0, "threadName"    # Ljava/lang/String;
    .param p1, "group"    # Ljava/lang/ThreadGroup;

    .line 451
    const/4 v0, 0x0

    invoke-static {p0}, Lorg/apache/commons/lang3/ThreadUtils;->predicateThread(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/apache/commons/lang3/ThreadUtils;->findThreads(Ljava/lang/ThreadGroup;ZLjava/util/function/Predicate;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$namePredicate$3(Ljava/util/function/Function;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "nameGetter"    # Ljava/util/function/Function;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Object;

    .line 532
    if-eqz p2, :cond_0

    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "t"    # Ljava/lang/Object;

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method private static namePredicate(Ljava/lang/String;Ljava/util/function/Function;)Ljava/util/function/Predicate;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 532
    .local p1, "nameGetter":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda9;-><init>(Ljava/util/function/Function;Ljava/lang/String;)V

    return-object v0
.end method

.method private static predicateThread(Ljava/lang/String;)Ljava/util/function/Predicate;
    .locals 1
    .param p0, "threadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 536
    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ThreadUtils;->namePredicate(Ljava/lang/String;Ljava/util/function/Function;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method private static predicateThreadGroup(Ljava/lang/String;)Ljava/util/function/Predicate;
    .locals 1
    .param p0, "threadGroupName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/ThreadGroup;",
            ">;"
        }
    .end annotation

    .line 540
    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/ThreadUtils;->namePredicate(Ljava/lang/String;Ljava/util/function/Function;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public static sleep(Ljava/time/Duration;)V
    .locals 1
    .param p0, "duration"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 552
    new-instance v0, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, p0}, Lorg/apache/commons/lang3/time/DurationUtils;->accept(Lorg/apache/commons/lang3/function/FailableBiConsumer;Ljava/time/Duration;)V

    .line 553
    return-void
.end method

.method public static sleepQuietly(Ljava/time/Duration;)V
    .locals 1
    .param p0, "duration"    # Ljava/time/Duration;

    .line 566
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang3/ThreadUtils;->sleep(Ljava/time/Duration;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 570
    :goto_0
    return-void
.end method
