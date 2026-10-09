.class Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;
.super Lorg/apache/commons/compress/archivers/zip/RandomAccessOutputStream;
.source "FileRandomAccessOutputStream.java"


# instance fields
.field private final channel:Ljava/nio/channels/FileChannel;

.field private position:J


# direct methods
.method constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;

    .line 37
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/RandomAccessOutputStream;-><init>()V

    .line 38
    const-string v0, "channel"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileChannel;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 39
    return-void
.end method

.method constructor <init>(Ljava/nio/file/Path;)V
    .locals 3
    .param p1, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)V

    .line 43
    return-void
.end method

.method varargs constructor <init>(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)V
    .locals 1
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-static {p1, p2}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 47
    return-void
.end method


# virtual methods
.method channel()Ljava/nio/channels/FileChannel;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;->channel:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 58
    :cond_0
    return-void
.end method

.method public declared-synchronized position()J
    .locals 2

    monitor-enter p0

    .line 62
    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;->position:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 62
    .end local p0    # "this":Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipIoUtil;->writeFully(Ljava/nio/channels/SeekableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 68
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;->position:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;->position:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 66
    .end local p0    # "this":Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;
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

.method public writeFully([BIIJ)V
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "atPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 74
    .local v0, "buf":Ljava/nio/ByteBuffer;
    move-wide v1, p4

    .local v1, "currentPos":J
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/FileRandomAccessOutputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3, v0, v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v3

    .line 76
    .local v3, "written":I
    if-lez v3, :cond_0

    .line 79
    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 80
    .end local v3    # "written":I
    goto :goto_0

    .line 77
    .restart local v3    # "written":I
    :cond_0
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to fully write to file: written="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 81
    .end local v1    # "currentPos":J
    .end local v3    # "written":I
    :cond_1
    return-void
.end method
