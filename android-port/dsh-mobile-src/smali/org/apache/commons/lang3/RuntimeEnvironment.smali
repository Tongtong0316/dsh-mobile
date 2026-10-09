.class public Lorg/apache/commons/lang3/RuntimeEnvironment;
.super Ljava/lang/Object;
.source "RuntimeEnvironment.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method private static containsLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "line"    # Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->lines(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .local v1, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/lang/String;>;"
    :try_start_1
    new-instance v2, Lorg/apache/commons/lang3/RuntimeEnvironment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lorg/apache/commons/lang3/RuntimeEnvironment$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 41
    :cond_0
    return-object v2

    .line 40
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Ljava/util/stream/Stream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "path":Ljava/lang/String;
    .end local p1    # "line":Ljava/lang/String;
    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 42
    .end local v1    # "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/lang/String;>;"
    .restart local p0    # "path":Ljava/lang/String;
    .restart local p1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static inContainer()Ljava/lang/Boolean;
    .locals 1

    .line 53
    invoke-static {}, Lorg/apache/commons/lang3/RuntimeEnvironment;->inDocker()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/commons/lang3/RuntimeEnvironment;->inPodman()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static inDocker()Ljava/lang/Boolean;
    .locals 2

    .line 66
    const-string v0, "/proc/1/cgroup"

    const-string v1, "/docker"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/RuntimeEnvironment;->containsLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static inPodman()Ljava/lang/Boolean;
    .locals 2

    .line 79
    const-string v0, "/proc/1/environ"

    const-string v1, "container=podman"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/RuntimeEnvironment;->containsLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static inWsl()Ljava/lang/Boolean;
    .locals 2

    .line 92
    const-string v0, "/proc/1/environ"

    const-string v1, "container=wslcontainer_host_id"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/RuntimeEnvironment;->containsLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$containsLine$0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "test"    # Ljava/lang/String;

    .line 41
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
