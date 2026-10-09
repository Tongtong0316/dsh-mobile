.class Lorg/apache/commons/compress/archivers/zip/SeekableChannelRandomAccessOutputStream;
.super Lorg/apache/commons/compress/archivers/zip/RandomAccessOutputStream;
.source "SeekableChannelRandomAccessOutputStream.java"


# instance fields
.field private final channel:Ljava/nio/channels/SeekableByteChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 0
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/RandomAccessOutputStream;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/SeekableChannelRandomAccessOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 33
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/SeekableChannelRandomAccessOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 36
    .end local p0    # "this":Lorg/apache/commons/compress/archivers/zip/SeekableChannelRandomAccessOutputStream;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized position()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/SeekableChannelRandomAccessOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 42
    .end local p0    # "this":Lorg/apache/commons/compress/archivers/zip/SeekableChannelRandomAccessOutputStream;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/SeekableChannelRandomAccessOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipIoUtil;->writeFully(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 46
    .end local p0    # "this":Lorg/apache/commons/compress/archivers/zip/SeekableChannelRandomAccessOutputStream;
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized writeFully([BIIJ)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/SeekableChannelRandomAccessOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    .local v0, "saved":J
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/SeekableChannelRandomAccessOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2, p4, p5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 55
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/SeekableChannelRandomAccessOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipIoUtil;->writeFully(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/SeekableChannelRandomAccessOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    nop

    .line 59
    monitor-exit p0

    return-void

    .line 57
    .end local p0    # "this":Lorg/apache/commons/compress/archivers/zip/SeekableChannelRandomAccessOutputStream;
    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/SeekableChannelRandomAccessOutputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v3, v0, v1}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 58
    throw v2

    .line 51
    .end local v0    # "saved":J
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    .end local p4    # "position":J
    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
