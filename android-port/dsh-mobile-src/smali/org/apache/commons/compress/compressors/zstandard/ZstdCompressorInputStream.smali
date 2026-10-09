.class public Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "ZstdCompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# instance fields
.field private final countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

.field private final decIS:Lcom/github/luben/zstd/ZstdInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 42
    new-instance v0, Lcom/github/luben/zstd/ZstdInputStream;

    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    invoke-virtual {v1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;->countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-direct {v0, v1}, Lcom/github/luben/zstd/ZstdInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;->decIS:Lcom/github/luben/zstd/ZstdInputStream;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/github/luben/zstd/BufferPool;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "bufferPool"    # Lcom/github/luben/zstd/BufferPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 54
    new-instance v0, Lcom/github/luben/zstd/ZstdInputStream;

    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    invoke-virtual {v1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;->countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-direct {v0, v1, p2}, Lcom/github/luben/zstd/ZstdInputStream;-><init>(Ljava/io/InputStream;Lcom/github/luben/zstd/BufferPool;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;->decIS:Lcom/github/luben/zstd/ZstdInputStream;

    .line 55
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;->decIS:Lcom/github/luben/zstd/ZstdInputStream;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;->decIS:Lcom/github/luben/zstd/ZstdInputStream;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdInputStream;->close()V

    .line 65
    return-void
.end method

.method public getCompressedCount()J
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;->countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readLimit"    # I

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;->decIS:Lcom/github/luben/zstd/ZstdInputStream;

    invoke-virtual {v0, p1}, Lcom/github/luben/zstd/ZstdInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 76
    .end local p0    # "this":Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;
    .end local p1    # "readLimit":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;->decIS:Lcom/github/luben/zstd/ZstdInputStream;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdInputStream;->markSupported()Z

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

    .line 87
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;->decIS:Lcom/github/luben/zstd/ZstdInputStream;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdInputStream;->read()I

    move-result v0

    .line 88
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;->count(I)V

    .line 89
    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    if-nez p3, :cond_0

    .line 100
    const/4 v0, 0x0

    return v0

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;->decIS:Lcom/github/luben/zstd/ZstdInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/github/luben/zstd/ZstdInputStream;->read([BII)I

    move-result v0

    .line 103
    .local v0, "ret":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;->count(I)V

    .line 104
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;->decIS:Lcom/github/luben/zstd/ZstdInputStream;

    invoke-virtual {v0}, Lcom/github/luben/zstd/ZstdInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 108
    .end local p0    # "this":Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;->decIS:Lcom/github/luben/zstd/ZstdInputStream;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;->decIS:Lcom/github/luben/zstd/ZstdInputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
