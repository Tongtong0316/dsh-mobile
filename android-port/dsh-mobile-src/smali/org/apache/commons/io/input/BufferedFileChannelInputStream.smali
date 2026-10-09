.class public final Lorg/apache/commons/io/input/BufferedFileChannelInputStream;
.super Ljava/io/InputStream;
.source "BufferedFileChannelInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;
    }
.end annotation


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private final fileChannel:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;-><init>(Ljava/io/File;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;-><init>(Ljava/nio/file/Path;I)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;-><init>(Ljava/nio/file/Path;I)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;I)V
    .locals 3
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 163
    const-string v0, "path"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 165
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 166
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 167
    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;
    .locals 1

    .line 109
    new-instance v0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream$Builder;-><init>()V

    return-object v0
.end method

.method private clean(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 183
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->cleanDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 186
    :cond_0
    return-void
.end method

.method private cleanDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 197
    invoke-static {}, Lorg/apache/commons/io/input/ByteBufferCleaner;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-static {p1}, Lorg/apache/commons/io/input/ByteBufferCleaner;->clean(Ljava/nio/ByteBuffer;)V

    .line 200
    :cond_0
    return-void
.end method

.method private refill()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 240
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "nRead":I
    :goto_0
    if-nez v0, :cond_0

    .line 243
    iget-object v2, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0

    .line 245
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 246
    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 248
    .end local v0    # "nRead":I
    :cond_2
    return v1
.end method

.method private skipFromFileChannel(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    .line 271
    .local v0, "currentFilePosition":J
    iget-object v2, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    .line 272
    .local v2, "size":J
    sub-long v4, v2, v0

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    .line 273
    iget-object v4, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v4, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 274
    sub-long v4, v2, v0

    return-wide v4

    .line 276
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    add-long v5, v0, p1

    invoke-virtual {v4, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 277
    return-wide p1
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 171
    .end local p0    # "this":Lorg/apache/commons/io/input/BufferedFileChannelInputStream;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->clean(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    nop

    .line 209
    monitor-exit p0

    return-void

    .line 207
    .end local p0    # "this":Lorg/apache/commons/io/input/BufferedFileChannelInputStream;
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->clean(Ljava/nio/ByteBuffer;)V

    .line 208
    throw v0

    .line 204
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public declared-synchronized read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 213
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->refill()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 214
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 216
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    .line 212
    .end local p0    # "this":Lorg/apache/commons/io/input/BufferedFileChannelInputStream;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 221
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    if-ltz v0, :cond_1

    add-int v0, p2, p3

    :try_start_0
    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 224
    invoke-direct {p0}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->refill()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 225
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 227
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move p3, v0

    .line 228
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    monitor-exit p0

    return p3

    .line 222
    .end local p0    # "this":Lorg/apache/commons/io/input/BufferedFileChannelInputStream;
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 220
    .end local p1    # "b":[B
    .end local p2    # "offset":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized skip(J)J
    .locals 6
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 253
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 254
    monitor-exit p0

    return-wide v0

    .line 256
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_1

    .line 258
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    long-to-int v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-wide p1

    .line 261
    .end local p0    # "this":Lorg/apache/commons/io/input/BufferedFileChannelInputStream;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    .line 262
    .local v0, "skippedFromBuffer":J
    sub-long v2, p1, v0

    .line 264
    .local v2, "toSkipFromFileChannel":J
    iget-object v4, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 265
    iget-object v4, p0, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 266
    invoke-direct {p0, v2, v3}, Lorg/apache/commons/io/input/BufferedFileChannelInputStream;->skipFromFileChannel(J)J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v4, v0

    monitor-exit p0

    return-wide v4

    .line 252
    .end local v0    # "skippedFromBuffer":J
    .end local v2    # "toSkipFromFileChannel":J
    .end local p1    # "n":J
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
