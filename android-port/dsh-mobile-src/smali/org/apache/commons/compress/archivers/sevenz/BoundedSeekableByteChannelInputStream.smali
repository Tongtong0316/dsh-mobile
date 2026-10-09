.class final Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;
.super Ljava/io/InputStream;
.source "BoundedSeekableByteChannelInputStream.java"


# static fields
.field private static final MAX_BUF_LEN:I = 0x2000


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private bytesRemaining:J

.field private final channel:Ljava/nio/channels/SeekableByteChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/SeekableByteChannel;J)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "size"    # J

    .line 30
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 32
    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    .line 33
    const-wide/16 v0, 0x2000

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    long-to-int v0, p2

    goto :goto_0

    :cond_0
    const/16 v0, 0x2000

    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 34
    return-void
.end method

.method private read(I)I
    .locals 2
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 96
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 97
    .local v0, "read":I
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 98
    return v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 39
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 44
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->read(I)I

    move-result v0

    .line 46
    .local v0, "read":I
    if-gez v0, :cond_0

    .line 47
    return v0

    .line 49
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    return v1

    .line 51
    .end local v0    # "read":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    if-nez p3, :cond_0

    .line 68
    const/4 v0, 0x0

    return v0

    .line 70
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 71
    const/4 v0, -0x1

    return v0

    .line 73
    :cond_1
    move v0, p3

    .line 74
    .local v0, "bytesToRead":I
    int-to-long v1, v0

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 75
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    long-to-int v0, v1

    .line 79
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 80
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 81
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->read(I)I

    move-result v2

    .local v2, "bytesRead":I
    goto :goto_0

    .line 83
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "bytesRead":I
    :cond_3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 84
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2, v1}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 85
    .restart local v2    # "bytesRead":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 87
    :goto_0
    if-ltz v2, :cond_4

    .line 88
    invoke-virtual {v1, p1, p2, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 89
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;->bytesRemaining:J

    .line 91
    :cond_4
    return v2
.end method
