.class public Lorg/apache/commons/io/input/UnixLineEndingInputStream;
.super Ljava/io/InputStream;
.source "UnixLineEndingInputStream.java"


# instance fields
.field private atEos:Z

.field private atSlashCr:Z

.field private atSlashLf:Z

.field private final in:Ljava/io/InputStream;

.field private final lineFeedAtEndOfFile:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "ensureLineFeedAtEndOfFile"    # Z

    .line 49
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->in:Ljava/io/InputStream;

    .line 51
    iput-boolean p2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->lineFeedAtEndOfFile:Z

    .line 52
    return-void
.end method

.method private handleEos(Z)I
    .locals 2
    .param p1, "previousWasSlashCr"    # Z

    .line 71
    const/4 v0, -0x1

    if-nez p1, :cond_2

    iget-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->lineFeedAtEndOfFile:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashLf:Z

    if-nez v1, :cond_1

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashLf:Z

    .line 76
    const/16 v0, 0xa

    return v0

    .line 78
    :cond_1
    return v0

    .line 72
    :cond_2
    :goto_0
    return v0
.end method

.method private readWithUpdate()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 120
    .local v0, "target":I
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atEos:Z

    .line 121
    iget-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atEos:Z

    if-eqz v1, :cond_1

    .line 122
    return v0

    .line 124
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashCr:Z

    .line 125
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashLf:Z

    .line 126
    return v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 61
    iget-object v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 62
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readLimit"    # I

    monitor-enter p0

    .line 86
    :try_start_0
    invoke-static {}, Lorg/apache/commons/io/input/UnsupportedOperationExceptions;->mark()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0

    .line 86
    .end local p0    # "this":Lorg/apache/commons/io/input/UnixLineEndingInputStream;
    .end local p1    # "readLimit":I
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-boolean v0, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashCr:Z

    .line 95
    .local v0, "previousWasSlashR":Z
    iget-boolean v1, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atEos:Z

    if-eqz v1, :cond_0

    .line 96
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->handleEos(Z)I

    move-result v1

    return v1

    .line 98
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->readWithUpdate()I

    move-result v1

    .line 99
    .local v1, "target":I
    iget-boolean v2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atEos:Z

    if-eqz v2, :cond_1

    .line 100
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->handleEos(Z)I

    move-result v2

    return v2

    .line 102
    :cond_1
    iget-boolean v2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashCr:Z

    if-eqz v2, :cond_2

    .line 103
    const/16 v2, 0xa

    return v2

    .line 106
    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->atSlashLf:Z

    if-eqz v2, :cond_3

    .line 107
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnixLineEndingInputStream;->read()I

    move-result v2

    return v2

    .line 110
    :cond_3
    return v1
.end method
