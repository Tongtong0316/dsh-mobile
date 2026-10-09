.class public Lorg/tukaani/xz/ResettableArrayCache;
.super Lorg/tukaani/xz/ArrayCache;
.source "ResettableArrayCache.java"


# instance fields
.field private final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private final byteArrays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final intArrays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 26
    invoke-direct {p0}, Lorg/tukaani/xz/ArrayCache;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 32
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDummyCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    .line 34
    iput-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    .line 39
    :goto_0
    return-void
.end method


# virtual methods
.method public getByteArray(IZ)[B
    .locals 3
    .param p1, "size"    # I
    .param p2, "fillWithZeros"    # Z

    .line 43
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, p1, p2}, Lorg/tukaani/xz/ArrayCache;->getByteArray(IZ)[B

    move-result-object v0

    .line 45
    .local v0, "array":[B
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v2, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 51
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getIntArray(IZ)[I
    .locals 3
    .param p1, "size"    # I
    .param p2, "fillWithZeros"    # Z

    .line 71
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, p1, p2}, Lorg/tukaani/xz/ArrayCache;->getIntArray(IZ)[I

    move-result-object v0

    .line 73
    .local v0, "array":[I
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v2, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 79
    :cond_0
    :goto_0
    return-object v0
.end method

.method public putArray([B)V
    .locals 3
    .param p1, "array"    # [B

    .line 56
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    .line 61
    .local v1, "i":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 62
    iget-object v2, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 63
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/ArrayCache;->putArray([B)V

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 67
    :cond_1
    :goto_0
    return-void
.end method

.method public putArray([I)V
    .locals 3
    .param p1, "array"    # [I

    .line 84
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    .line 87
    .local v1, "i":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 88
    iget-object v2, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 89
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, p1}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 93
    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 4

    .line 101
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 106
    iget-object v2, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    iget-object v3, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v2, v3}, Lorg/tukaani/xz/ArrayCache;->putArray([B)V

    .line 105
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 108
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 109
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    monitor-enter v1

    .line 112
    :try_start_1
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 113
    iget-object v2, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    iget-object v3, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-virtual {v2, v3}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    .line 112
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 115
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 109
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 118
    :cond_2
    :goto_2
    return-void
.end method
