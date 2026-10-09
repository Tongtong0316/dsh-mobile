.class public abstract Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ArchiveOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lorg/apache/commons/compress/archivers/ArchiveEntry;",
        ">",
        "Ljava/io/FilterOutputStream;"
    }
.end annotation


# static fields
.field static final BYTE_MASK:I = 0xff


# instance fields
.field private bytesWritten:J

.field private closed:Z

.field private finished:Z

.field private final oneByte:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    .local p0, "this":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->oneByte:[B

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 90
    .local p0, "this":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<TE;>;"
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->oneByte:[B

    .line 91
    return-void
.end method


# virtual methods
.method public canWriteEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .locals 1
    .param p1, "archiveEntry"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 105
    .local p0, "this":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected checkFinished()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    .local p0, "this":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    return-void

    .line 275
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    .local p0, "this":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<TE;>;"
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->closed:Z

    .line 124
    return-void
.end method

.method public abstract closeArchiveEntry()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected count(I)V
    .locals 2
    .param p1, "written"    # I

    .line 139
    .local p0, "this":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<TE;>;"
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->count(J)V

    .line 140
    return-void
.end method

.method protected count(J)V
    .locals 2
    .param p1, "written"    # J

    .line 149
    .local p0, "this":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<TE;>;"
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 150
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->bytesWritten:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->bytesWritten:J

    .line 152
    :cond_0
    return-void
.end method

.method public abstract createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs createArchiveEntry(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .param p1, "inputPath"    # Ljava/nio/file/Path;
    .param p2, "entryName"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    .local p0, "this":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<TE;>;"
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    .local p0, "this":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<TE;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->finished:Z

    .line 197
    return-void
.end method

.method public getBytesWritten()J
    .locals 2

    .line 206
    .local p0, "this":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<TE;>;"
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->bytesWritten:J

    return-wide v0
.end method

.method public getCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    .local p0, "this":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<TE;>;"
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->bytesWritten:J

    long-to-int v0, v0

    return v0
.end method

.method protected isClosed()Z
    .locals 1

    .line 227
    .local p0, "this":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->closed:Z

    return v0
.end method

.method protected isFinished()Z
    .locals 1

    .line 237
    .local p0, "this":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<TE;>;"
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->finished:Z

    return v0
.end method

.method public abstract putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    .local p0, "this":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->oneByte:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 264
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->oneByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->write([BII)V

    .line 265
    return-void
.end method
