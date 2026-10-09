.class public Lorg/apache/commons/io/input/Tailer$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "Tailer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/Tailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/Tailer;",
        "Lorg/apache/commons/io/input/Tailer$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DELAY_DURATION:Ljava/time/Duration;


# instance fields
.field private delayDuration:Ljava/time/Duration;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private reOpen:Z

.field private startThread:Z

.field private tailFromEnd:Z

.field private tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

.field private tailerListener:Lorg/apache/commons/io/input/TailerListener;


# direct methods
.method public static synthetic $r8$lambda$CurvmOD3ezs9AmkMzRx1dwR90vU(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/io/input/Tailer$Builder;->newDaemonThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 169
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/Tailer$Builder;->DEFAULT_DELAY_DURATION:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 167
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 185
    sget-object v0, Lorg/apache/commons/io/input/Tailer$Builder;->DEFAULT_DELAY_DURATION:Ljava/time/Duration;

    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->delayDuration:Ljava/time/Duration;

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->startThread:Z

    .line 189
    new-instance v0, Lorg/apache/commons/io/input/Tailer$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/io/input/Tailer$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static newDaemonThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 178
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "commons-io-tailer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 179
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 180
    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer$Builder;->get()Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/Tailer;
    .locals 10

    .line 211
    new-instance v9, Lorg/apache/commons/io/input/Tailer;

    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer$Builder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/io/input/Tailer$Builder;->tailerListener:Lorg/apache/commons/io/input/TailerListener;

    iget-object v4, p0, Lorg/apache/commons/io/input/Tailer$Builder;->delayDuration:Ljava/time/Duration;

    iget-boolean v5, p0, Lorg/apache/commons/io/input/Tailer$Builder;->tailFromEnd:Z

    iget-boolean v6, p0, Lorg/apache/commons/io/input/Tailer$Builder;->reOpen:Z

    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer$Builder;->getBufferSize()I

    move-result v7

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Lorg/apache/commons/io/input/Tailer$Tailable;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;Ljava/time/Duration;ZZILorg/apache/commons/io/input/Tailer$1;)V

    .line 212
    .local v0, "tailer":Lorg/apache/commons/io/input/Tailer;
    iget-boolean v1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->startThread:Z

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 215
    :cond_0
    return-object v0
.end method

.method public setDelayDuration(Ljava/time/Duration;)Lorg/apache/commons/io/input/Tailer$Builder;
    .locals 1
    .param p1, "delayDuration"    # Ljava/time/Duration;

    .line 225
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/io/input/Tailer$Builder;->DEFAULT_DELAY_DURATION:Ljava/time/Duration;

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->delayDuration:Ljava/time/Duration;

    .line 226
    return-object p0
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)Lorg/apache/commons/io/input/Tailer$Builder;
    .locals 1
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 236
    const-string v0, "executorService"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 237
    return-object p0
.end method

.method protected bridge synthetic setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/input/Tailer$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/build/AbstractOrigin<",
            "**>;)",
            "Lorg/apache/commons/io/input/Tailer$Builder;"
        }
    .end annotation

    .line 247
    .local p1, "origin":Lorg/apache/commons/io/build/AbstractOrigin;, "Lorg/apache/commons/io/build/AbstractOrigin<**>;"
    new-instance v0, Lorg/apache/commons/io/input/Tailer$TailablePath;

    invoke-virtual {p1}, Lorg/apache/commons/io/build/AbstractOrigin;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/io/input/Tailer$TailablePath;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;Lorg/apache/commons/io/input/Tailer$1;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailable(Lorg/apache/commons/io/input/Tailer$Tailable;)Lorg/apache/commons/io/input/Tailer$Builder;

    .line 248
    invoke-super {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setOrigin(Lorg/apache/commons/io/build/AbstractOrigin;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/Tailer$Builder;

    return-object v0
.end method

.method public setReOpen(Z)Lorg/apache/commons/io/input/Tailer$Builder;
    .locals 0
    .param p1, "reOpen"    # Z

    .line 258
    iput-boolean p1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->reOpen:Z

    .line 259
    return-object p0
.end method

.method public setStartThread(Z)Lorg/apache/commons/io/input/Tailer$Builder;
    .locals 0
    .param p1, "startThread"    # Z

    .line 269
    iput-boolean p1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->startThread:Z

    .line 270
    return-object p0
.end method

.method public setTailFromEnd(Z)Lorg/apache/commons/io/input/Tailer$Builder;
    .locals 0
    .param p1, "end"    # Z

    .line 302
    iput-boolean p1, p0, Lorg/apache/commons/io/input/Tailer$Builder;->tailFromEnd:Z

    .line 303
    return-object p0
.end method

.method public setTailable(Lorg/apache/commons/io/input/Tailer$Tailable;)Lorg/apache/commons/io/input/Tailer$Builder;
    .locals 1
    .param p1, "tailable"    # Lorg/apache/commons/io/input/Tailer$Tailable;

    .line 280
    const-string v0, "tailable"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/Tailer$Tailable;

    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    .line 281
    return-object p0
.end method

.method public setTailerListener(Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer$Builder;
    .locals 1
    .param p1, "tailerListener"    # Lorg/apache/commons/io/input/TailerListener;

    .line 291
    const-string v0, "tailerListener"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/TailerListener;

    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer$Builder;->tailerListener:Lorg/apache/commons/io/input/TailerListener;

    .line 292
    return-object p0
.end method
