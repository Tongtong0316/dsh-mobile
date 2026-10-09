.class public Lorg/apache/commons/compress/archivers/examples/Expander;
.super Ljava/lang/Object;
.source "Expander.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;,
        Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private expand(Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;Ljava/nio/file/Path;)V
    .locals 9
    .param p3, "targetDirectory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/compress/archivers/ArchiveEntry;",
            ">(",
            "Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier<",
            "TT;>;",
            "Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer<",
            "TT;>;",
            "Ljava/nio/file/Path;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    .local p1, "supplier":Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;, "Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier<TT;>;"
    .local p2, "writer":Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;, "Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer<TT;>;"
    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 70
    .local v1, "nullTarget":Z
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v3

    .line 71
    .local v3, "targetDirPath":Ljava/nio/file/Path;
    :goto_1
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;->get()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v4

    .line 72
    .local v4, "nextEntry":Lorg/apache/commons/compress/archivers/ArchiveEntry;, "TT;"
    :goto_2
    if-eqz v4, :cond_b

    .line 73
    if-eqz v1, :cond_2

    move-object v5, v2

    goto :goto_3

    :cond_2
    invoke-interface {v4, v3}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->resolveIn(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v5

    .line 74
    .local v5, "targetPath":Ljava/nio/file/Path;
    :goto_3
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->isDirectory()Z

    move-result v6

    const-string v7, "Failed to create directory "

    if-eqz v6, :cond_4

    .line 75
    if-nez v1, :cond_9

    new-array v6, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v5, v6}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v6

    if-nez v6, :cond_9

    new-array v6, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v5, v6}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v6

    if-eqz v6, :cond_3

    goto :goto_6

    .line 76
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_4
    if-eqz v1, :cond_5

    move-object v6, v2

    goto :goto_4

    :cond_5
    invoke-interface {v5}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v6

    .line 80
    .local v6, "parent":Ljava/nio/file/Path;
    :goto_4
    if-nez v1, :cond_7

    new-array v8, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v6, v8}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v8

    if-nez v8, :cond_7

    new-array v8, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v6, v8}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v8

    if-eqz v8, :cond_6

    goto :goto_5

    .line 81
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_7
    :goto_5
    if-eqz v1, :cond_8

    .line 84
    sget-object v7, Lorg/apache/commons/io/output/NullOutputStream;->INSTANCE:Lorg/apache/commons/io/output/NullOutputStream;

    invoke-interface {p2, v4, v7}, Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;->accept(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/OutputStream;)V

    goto :goto_6

    .line 86
    :cond_8
    new-array v7, v0, [Ljava/nio/file/OpenOption;

    invoke-static {v5, v7}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v7

    .line 87
    .local v7, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-interface {p2, v4, v7}, Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;->accept(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 91
    .end local v6    # "parent":Ljava/nio/file/Path;
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    :cond_9
    :goto_6
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;->get()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v4

    .line 92
    .end local v5    # "targetPath":Ljava/nio/file/Path;
    goto/16 :goto_2

    .line 86
    .restart local v5    # "targetPath":Ljava/nio/file/Path;
    .restart local v6    # "parent":Ljava/nio/file/Path;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_a

    :try_start_1
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_7
    throw v0

    .line 93
    .end local v5    # "targetPath":Ljava/nio/file/Path;
    .end local v6    # "parent":Ljava/nio/file/Path;
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    :cond_b
    return-void
.end method

.method static synthetic lambda$expand$0(Lorg/apache/commons/compress/archivers/ArchiveInputStream;)Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 2
    .param p0, "archive"    # Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v0

    .line 117
    .local v0, "next":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$expand$1(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "archive"    # Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-static {p0, p2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    return-void
.end method

.method static synthetic lambda$expand$2(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 231
    .local v0, "buffer":[B
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "n":I
    const/4 v3, -0x1

    if-eq v3, v1, :cond_1

    .line 232
    if-eqz p2, :cond_0

    .line 233
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 236
    :cond_1
    return-void
.end method

.method static synthetic lambda$expand$3(Ljava/util/Iterator;)Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .locals 1
    .param p0, "entryIterator"    # Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$expand$4(Lorg/apache/commons/compress/archivers/tar/TarFile;Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "archive"    # Lorg/apache/commons/compress/archivers/tar/TarFile;
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarFile;->getInputStream(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 442
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 444
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    return-void

    .line 441
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method static synthetic lambda$expand$5(Ljava/util/Enumeration;Lorg/apache/commons/compress/archivers/zip/ZipFile;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 3
    .param p0, "entries"    # Ljava/util/Enumeration;
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 470
    .local v0, "next":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->canReadEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 471
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    move-object v0, v2

    goto :goto_0

    .line 473
    :cond_2
    return-object v0
.end method

.method static synthetic lambda$expand$6(Lorg/apache/commons/compress/archivers/zip/ZipFile;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "archive"    # Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 475
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 476
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 478
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    return-void

    .line 475
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method private prefersSeekableByteChannel(Ljava/lang/String;)Z
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .line 482
    const-string v0, "tar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "zip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 483
    const-string v0, "7z"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 482
    :goto_1
    return v0
.end method

.method private toPath(Ljava/io/File;)Ljava/nio/file/Path;
    .locals 1
    .param p1, "targetDirectory"    # Ljava/io/File;

    .line 487
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public expand(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p1, "archive"    # Ljava/io/File;
    .param p2, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 137
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->toPath(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 138
    return-void
.end method

.method public expand(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 1
    .param p1, "archive"    # Ljava/io/InputStream;
    .param p2, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    sget-object v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->NULL_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 161
    return-void
.end method

.method public expand(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    .locals 3
    .param p1, "archive"    # Ljava/io/InputStream;
    .param p2, "targetDirectory"    # Ljava/io/File;
    .param p3, "closeableConsumer"    # Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 184
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;

    invoke-direct {v0, p3}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;-><init>(Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 185
    .local v0, "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :try_start_0
    sget-object v1, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->DEFAULT:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V

    .line 187
    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    return-void

    .line 184
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public expand(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/io/File;
    .param p3, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 249
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->toPath(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 250
    return-void
.end method

.method public expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/io/InputStream;
    .param p3, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 269
    sget-object v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->NULL_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 270
    return-void
.end method

.method public expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/io/InputStream;
    .param p3, "targetDirectory"    # Ljava/io/File;
    .param p4, "closeableConsumer"    # Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 291
    invoke-direct {p0, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->toPath(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/nio/file/Path;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 292
    return-void
.end method

.method public expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/nio/file/Path;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/io/InputStream;
    .param p3, "targetDirectory"    # Ljava/nio/file/Path;
    .param p4, "closeableConsumer"    # Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 313
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;

    invoke-direct {v0, p4}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;-><init>(Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 314
    .local v0, "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :try_start_0
    sget-object v1, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->DEFAULT:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v1

    .line 315
    .local v1, "archiveInputStream":Lorg/apache/commons/compress/archivers/ArchiveInputStream;, "Lorg/apache/commons/compress/archivers/ArchiveInputStream<*>;"
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    invoke-virtual {p0, v2, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Ljava/nio/file/Path;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    .end local v1    # "archiveInputStream":Lorg/apache/commons/compress/archivers/ArchiveInputStream;, "Lorg/apache/commons/compress/archivers/ArchiveInputStream<*>;"
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V

    .line 317
    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    return-void

    .line 313
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public expand(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/nio/channels/SeekableByteChannel;
    .param p3, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 358
    sget-object v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->NULL_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 359
    return-void
.end method

.method public expand(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/nio/channels/SeekableByteChannel;
    .param p3, "targetDirectory"    # Ljava/io/File;
    .param p4, "closeableConsumer"    # Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 380
    invoke-direct {p0, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->toPath(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/nio/file/Path;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 381
    return-void
.end method

.method public expand(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/nio/file/Path;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/nio/channels/SeekableByteChannel;
    .param p3, "targetDirectory"    # Ljava/nio/file/Path;
    .param p4, "closeableConsumer"    # Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 402
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;

    invoke-direct {v0, p4}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;-><init>(Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 403
    .local v0, "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander;->prefersSeekableByteChannel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    invoke-static {p2}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    sget-object v2, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->NULL_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, v1, p3, v2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/nio/file/Path;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    goto :goto_0

    .line 405
    :cond_0
    const-string v1, "tar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarFile;

    invoke-direct {v1, p2}, Lorg/apache/commons/compress/archivers/tar/TarFile;-><init>(Ljava/nio/channels/SeekableByteChannel;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/tar/TarFile;

    invoke-virtual {p0, v1, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/tar/TarFile;Ljava/nio/file/Path;)V

    goto :goto_0

    .line 407
    :cond_1
    const-string v1, "zip"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 408
    invoke-static {}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->builder()Lorg/apache/commons/compress/archivers/zip/ZipFile$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Builder;->setSeekableByteChannel(Ljava/nio/channels/SeekableByteChannel;)Lorg/apache/commons/compress/archivers/zip/ZipFile$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Builder;->get()Lorg/apache/commons/compress/archivers/zip/ZipFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-virtual {p0, v1, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/nio/file/Path;)V

    goto :goto_0

    .line 409
    :cond_2
    const-string v1, "7z"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 410
    invoke-static {}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->builder()Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->setSeekableByteChannel(Ljava/nio/channels/SeekableByteChannel;)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->get()Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-virtual {p0, v1, p3}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/nio/file/Path;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V

    .line 416
    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    return-void

    .line 413
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :cond_3
    :try_start_1
    new-instance v1, Lorg/apache/commons/compress/archivers/ArchiveException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t know how to handle format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .end local p1    # "format":Ljava/lang/String;
    .end local p2    # "archive":Ljava/nio/channels/SeekableByteChannel;
    .end local p3    # "targetDirectory":Ljava/nio/file/Path;
    .end local p4    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .restart local p1    # "format":Ljava/lang/String;
    .restart local p2    # "archive":Ljava/nio/channels/SeekableByteChannel;
    .restart local p3    # "targetDirectory":Ljava/nio/file/Path;
    .restart local p4    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public expand(Ljava/lang/String;Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "archive"    # Ljava/nio/file/Path;
    .param p3, "targetDirectory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 330
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander;->prefersSeekableByteChannel(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 331
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 332
    .local v0, "channel":Ljava/nio/channels/SeekableByteChannel;
    :try_start_0
    sget-object v1, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->CLOSING_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, v0, p3, v1}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/nio/file/Path;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 334
    .end local v0    # "channel":Ljava/nio/channels/SeekableByteChannel;
    :cond_0
    return-void

    .line 331
    .restart local v0    # "channel":Ljava/nio/channels/SeekableByteChannel;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 336
    .end local v0    # "channel":Ljava/nio/channels/SeekableByteChannel;
    :cond_2
    new-instance v0, Ljava/io/BufferedInputStream;

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p2, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 337
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_2
    sget-object v1, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->CLOSING_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, v0, p3, v1}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/io/InputStream;Ljava/nio/file/Path;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 338
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 339
    .end local v0    # "inputStream":Ljava/io/InputStream;
    return-void

    .line 336
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    :catchall_2
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public expand(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 3
    .param p1, "archive"    # Ljava/nio/file/Path;
    .param p2, "targetDirectory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/io/BufferedInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 204
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->detect(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Ljava/lang/String;Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 206
    .end local v0    # "inputStream":Ljava/io/InputStream;
    return-void

    .line 203
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public expand(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Ljava/io/File;)V
    .locals 1
    .param p2, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/archivers/ArchiveInputStream<",
            "*>;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    .local p1, "archive":Lorg/apache/commons/compress/archivers/ArchiveInputStream;, "Lorg/apache/commons/compress/archivers/ArchiveInputStream<*>;"
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->toPath(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Ljava/nio/file/Path;)V

    .line 104
    return-void
.end method

.method public expand(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Ljava/nio/file/Path;)V
    .locals 2
    .param p2, "targetDirectory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/archivers/ArchiveInputStream<",
            "*>;",
            "Ljava/nio/file/Path;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    .local p1, "archive":Lorg/apache/commons/compress/archivers/ArchiveInputStream;, "Lorg/apache/commons/compress/archivers/ArchiveInputStream<*>;"
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/compress/archivers/ArchiveInputStream;)V

    new-instance v1, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda5;-><init>(Lorg/apache/commons/compress/archivers/ArchiveInputStream;)V

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;Ljava/nio/file/Path;)V

    .line 122
    return-void
.end method

.method public expand(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/io/File;)V
    .locals 1
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    .param p2, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->toPath(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/nio/file/Path;)V

    .line 217
    return-void
.end method

.method public expand(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/nio/file/Path;)V
    .locals 2
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    .param p2, "targetDirectory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V

    new-instance v1, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;Ljava/nio/file/Path;)V

    .line 237
    return-void
.end method

.method public expand(Lorg/apache/commons/compress/archivers/tar/TarFile;Ljava/io/File;)V
    .locals 1
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/tar/TarFile;
    .param p2, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 427
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->toPath(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/tar/TarFile;Ljava/nio/file/Path;)V

    .line 428
    return-void
.end method

.method public expand(Lorg/apache/commons/compress/archivers/tar/TarFile;Ljava/nio/file/Path;)V
    .locals 3
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/tar/TarFile;
    .param p2, "targetDirectory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarFile;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 440
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;>;"
    new-instance v1, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda2;-><init>(Ljava/util/Iterator;)V

    new-instance v2, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/compress/archivers/tar/TarFile;)V

    invoke-direct {p0, v1, v2, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;Ljava/nio/file/Path;)V

    .line 445
    return-void
.end method

.method public expand(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/io/File;)V
    .locals 1
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .param p2, "targetDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->toPath(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/nio/file/Path;)V

    .line 456
    return-void
.end method

.method public expand(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/nio/file/Path;)V
    .locals 3
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .param p2, "targetDirectory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v0

    .line 468
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    new-instance v1, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda6;-><init>(Ljava/util/Enumeration;Lorg/apache/commons/compress/archivers/zip/ZipFile;)V

    new-instance v2, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1}, Lorg/apache/commons/compress/archivers/examples/Expander$$ExternalSyntheticLambda7;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V

    invoke-direct {p0, v1, v2, p2}, Lorg/apache/commons/compress/archivers/examples/Expander;->expand(Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntrySupplier;Lorg/apache/commons/compress/archivers/examples/Expander$ArchiveEntryBiConsumer;Ljava/nio/file/Path;)V

    .line 479
    return-void
.end method
