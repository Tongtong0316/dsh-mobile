.class public final Lorg/apache/commons/io/monitor/FileAlterationMonitor;
.super Ljava/lang/Object;
.source "FileAlterationMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final EMPTY_ARRAY:[Lorg/apache/commons/io/monitor/FileAlterationObserver;


# instance fields
.field private final intervalMillis:J

.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/io/monitor/FileAlterationObserver;",
            ">;"
        }
    .end annotation
.end field

.field private volatile running:Z

.field private thread:Ljava/lang/Thread;

.field private threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public static synthetic $r8$lambda$gzGXVxF49C1sEWfrB5-CYlmFFY8(Lorg/apache/commons/io/monitor/FileAlterationObserver;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/io/monitor/FileAlterationObserver;

    sput-object v0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->EMPTY_ARRAY:[Lorg/apache/commons/io/monitor/FileAlterationObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    const-wide/16 v0, 0x2710

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/monitor/FileAlterationMonitor;-><init>(J)V

    .line 53
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "intervalMillis"    # J

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    .line 62
    iput-wide p1, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->intervalMillis:J

    .line 63
    return-void
.end method

.method public constructor <init>(JLjava/util/Collection;)V
    .locals 2
    .param p1, "interval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/io/monitor/FileAlterationObserver;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p3, "observers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/commons/io/monitor/FileAlterationObserver;>;"
    nop

    .line 77
    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    .line 78
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    sget-object v1, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->EMPTY_ARRAY:[Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 79
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/monitor/FileAlterationMonitor;-><init>(J[Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    .line 82
    return-void
.end method

.method public varargs constructor <init>(J[Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .locals 2
    .param p1, "interval"    # J
    .param p3, "observers"    # [Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 92
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/monitor/FileAlterationMonitor;-><init>(J)V

    .line 93
    if-eqz p3, :cond_0

    .line 94
    invoke-static {p3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/monitor/FileAlterationMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/commons/io/monitor/FileAlterationMonitor$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/io/monitor/FileAlterationMonitor;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public addObserver(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .locals 1
    .param p1, "observer"    # Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    return-void
.end method

.method public getInterval()J
    .locals 2

    .line 115
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->intervalMillis:J

    return-wide v0
.end method

.method public getObservers()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/io/monitor/FileAlterationObserver;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public removeObserver(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .locals 2
    .param p1, "observer"    # Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 134
    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/commons/io/monitor/FileAlterationMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/monitor/FileAlterationMonitor$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 137
    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 144
    nop

    :goto_0
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/io/monitor/FileAlterationMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/commons/io/monitor/FileAlterationMonitor$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 146
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    if-nez v0, :cond_0

    .line 147
    goto :goto_2

    .line 150
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->intervalMillis:J

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/ThreadUtils;->sleep(Ljava/time/Duration;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 151
    :catch_0
    move-exception v0

    .line 153
    :goto_1
    goto :goto_0

    .line 155
    :cond_1
    :goto_2
    return-void
.end method

.method public declared-synchronized setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    monitor-enter p0

    .line 163
    :try_start_0
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->threadFactory:Ljava/util/concurrent/ThreadFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 162
    .end local p0    # "this":Lorg/apache/commons/io/monitor/FileAlterationMonitor;
    .end local p1    # "threadFactory":Ljava/util/concurrent/ThreadFactory;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 172
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 176
    .local v1, "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    invoke-virtual {v1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->initialize()V

    .line 177
    .end local v1    # "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    goto :goto_0

    .line 178
    .end local p0    # "this":Lorg/apache/commons/io/monitor/FileAlterationMonitor;
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    .line 179
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    goto :goto_1

    .line 182
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    .line 184
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 173
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Monitor is already running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 193
    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->intervalMillis:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->stop(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 192
    .end local p0    # "this":Lorg/apache/commons/io/monitor/FileAlterationMonitor;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized stop(J)V
    .locals 2
    .param p1, "stopInterval"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 205
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    if-eqz v0, :cond_1

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 211
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    goto :goto_0

    .line 212
    .end local p0    # "this":Lorg/apache/commons/io/monitor/FileAlterationMonitor;
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 215
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 216
    .local v1, "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    invoke-virtual {v1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    .end local v1    # "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    goto :goto_1

    .line 218
    :cond_0
    monitor-exit p0

    return-void

    .line 206
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Monitor is not running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    .end local p1    # "stopInterval":J
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
