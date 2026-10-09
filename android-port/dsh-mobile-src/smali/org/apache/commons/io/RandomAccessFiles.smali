.class public Lorg/apache/commons/io/RandomAccessFiles;
.super Ljava/lang/Object;
.source "RandomAccessFiles.java"


# direct methods
.method public static synthetic $r8$lambda$fCVYdj23SqCdcsyWj6BY79RXmVQ(Ljava/io/RandomAccessFile;[BII)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public static contentEquals(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)Z
    .locals 8
    .param p0, "raf1"    # Ljava/io/RandomAccessFile;
    .param p1, "raf2"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 47
    return v1

    .line 50
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/RandomAccessFiles;->length(Ljava/io/RandomAccessFile;)J

    move-result-wide v2

    .line 51
    .local v2, "length1":J
    invoke-static {p1}, Lorg/apache/commons/io/RandomAccessFiles;->length(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    .line 52
    .local v4, "length2":J
    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x0

    return v0

    .line 55
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 56
    return v1

    .line 61
    :cond_2
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 62
    .local v0, "channel1":Ljava/nio/channels/FileChannel;
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 63
    .local v1, "channel2":Ljava/nio/channels/FileChannel;
    const/16 v6, 0x2000

    invoke-static {v0, v1, v6}, Lorg/apache/commons/io/channels/FileChannels;->contentEquals(Ljava/nio/channels/FileChannel;Ljava/nio/channels/FileChannel;I)Z

    move-result v6

    return v6
.end method

.method private static length(Ljava/io/RandomAccessFile;)J
    .locals 2
    .param p0, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static read(Ljava/io/RandomAccessFile;JI)[B
    .locals 1
    .param p0, "input"    # Ljava/io/RandomAccessFile;
    .param p1, "position"    # J
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 82
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/commons/io/RandomAccessFiles$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/RandomAccessFiles$$ExternalSyntheticLambda0;-><init>(Ljava/io/RandomAccessFile;)V

    invoke-static {v0, p3}, Lorg/apache/commons/io/IOUtils;->toByteArray(Lorg/apache/commons/io/function/IOTriFunction;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static reset(Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;
    .locals 2
    .param p0, "raf"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 95
    return-object p0
.end method
