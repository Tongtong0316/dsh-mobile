.class public Lorg/apache/commons/compress/archivers/examples/Archiver;
.super Ljava/lang/Object;
.source "Archiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiverFileVisitor;
    }
.end annotation


# static fields
.field public static final EMPTY_FileVisitOption:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Ljava/nio/file/FileVisitOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    const-class v0, Ljava/nio/file/FileVisitOption;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/examples/Archiver;->EMPTY_FileVisitOption:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private prefersSeekableByteChannel(Ljava/lang/String;)Z
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .line 348
    const-string v0, "zip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

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

    :goto_1
    return v0
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/io/File;
    .param p3, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 193
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/lang/String;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 194
    return-void
.end method

.method public create(Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/File;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/io/OutputStream;
    .param p3, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    sget-object v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->NULL_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 215
    return-void
.end method

.method public create(Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/io/OutputStream;
    .param p3, "directory"    # Ljava/io/File;
    .param p4, "closeableConsumer"    # Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 237
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;

    invoke-direct {v0, p4}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;-><init>(Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 238
    .local v0, "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :try_start_0
    sget-object v1, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->DEFAULT:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    move-result-object v1

    .line 239
    .local v1, "archiveOutputStream":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<+Lorg/apache/commons/compress/archivers/ArchiveEntry;>;"
    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    invoke-virtual {p0, v2, p3}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .end local v1    # "archiveOutputStream":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<+Lorg/apache/commons/compress/archivers/ArchiveEntry;>;"
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V

    .line 241
    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    return-void

    .line 237
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

.method public create(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/nio/channels/SeekableByteChannel;
    .param p3, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 286
    sget-object v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;->NULL_CONSUMER:Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 287
    return-void
.end method

.method public create(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/io/File;Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/nio/channels/SeekableByteChannel;
    .param p3, "directory"    # Ljava/io/File;
    .param p4, "closeableConsumer"    # Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 309
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;

    invoke-direct {v0, p4}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;-><init>(Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;)V

    .line 310
    .local v0, "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/examples/Archiver;->prefersSeekableByteChannel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    invoke-static {p2}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Ljava/io/OutputStream;

    invoke-virtual {p0, p1, v1, p3}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/lang/String;Ljava/io/OutputStream;Ljava/io/File;)V

    goto :goto_0

    .line 312
    :cond_0
    const-string v1, "zip"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;

    invoke-direct {v1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    invoke-virtual {p0, v1, p3}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;)V

    goto :goto_0

    .line 314
    :cond_1
    const-string v1, "7z"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-direct {v1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;-><init>(Ljava/nio/channels/SeekableByteChannel;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->track(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-virtual {p0, v1, p3}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;->close()V

    .line 321
    .end local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    return-void

    .line 318
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    :cond_2
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
    .end local p2    # "target":Ljava/nio/channels/SeekableByteChannel;
    .end local p3    # "directory":Ljava/io/File;
    .end local p4    # "closeableConsumer":Lorg/apache/commons/compress/archivers/examples/CloseableConsumer;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    .restart local v0    # "c":Lorg/apache/commons/compress/archivers/examples/CloseableConsumerAdapter;
    .restart local p1    # "format":Ljava/lang/String;
    .restart local p2    # "target":Ljava/nio/channels/SeekableByteChannel;
    .restart local p3    # "directory":Ljava/io/File;
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

.method public create(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/nio/file/Path;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/nio/channels/SeekableByteChannel;
    .param p3, "directory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    const-string v0, "7z"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;-><init>(Ljava/nio/channels/SeekableByteChannel;)V

    .line 336
    .local v0, "sevenZFile":Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;
    :try_start_0
    invoke-virtual {p0, v0, p3}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/nio/file/Path;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->close()V

    .line 335
    .end local v0    # "sevenZFile":Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;
    goto :goto_1

    .restart local v0    # "sevenZFile":Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    .line 338
    .end local v0    # "sevenZFile":Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;
    :cond_0
    const-string v0, "zip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;)V

    .line 340
    .local v0, "archiveOutputStream":Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    :try_start_2
    sget-object v1, Lorg/apache/commons/compress/archivers/examples/Archiver;->EMPTY_FileVisitOption:Ljava/util/EnumSet;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-virtual {p0, v0, p3, v1, v2}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/nio/file/Path;Ljava/util/EnumSet;[Ljava/nio/file/LinkOption;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 341
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->close()V

    .line 339
    .end local v0    # "archiveOutputStream":Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    nop

    .line 345
    :goto_1
    return-void

    .line 339
    .restart local v0    # "archiveOutputStream":Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    :catchall_2
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1

    .line 343
    .end local v0    # "archiveOutputStream":Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public create(Ljava/lang/String;Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/nio/file/Path;
    .param p3, "directory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 255
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/examples/Archiver;->prefersSeekableByteChannel(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 256
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 258
    .local v0, "channel":Ljava/nio/channels/SeekableByteChannel;
    :try_start_0
    invoke-virtual {p0, p1, v0, p3}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Ljava/lang/String;Ljava/nio/channels/SeekableByteChannel;Ljava/nio/file/Path;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 259
    :cond_0
    return-void

    .line 256
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

    .line 263
    .end local v0    # "channel":Ljava/nio/channels/SeekableByteChannel;
    :cond_2
    sget-object v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->DEFAULT:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    new-array v2, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p2, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/archivers/ArchiveOutputStream;

    move-result-object v0

    .line 264
    .local v0, "outputStream":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<*>;"
    :try_start_2
    sget-object v2, Lorg/apache/commons/compress/archivers/examples/Archiver;->EMPTY_FileVisitOption:Ljava/util/EnumSet;

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-virtual {p0, v0, p3, v2, v1}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/nio/file/Path;Ljava/util/EnumSet;[Ljava/nio/file/LinkOption;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 265
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->close()V

    .line 266
    .end local v0    # "outputStream":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<*>;"
    :cond_3
    return-void

    .line 262
    .restart local v0    # "outputStream":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<*>;"
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
.end method

.method public create(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/io/File;)V
    .locals 3
    .param p2, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<",
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

    .line 107
    .local p1, "target":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<*>;"
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/compress/archivers/examples/Archiver;->EMPTY_FileVisitOption:Ljava/util/EnumSet;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/nio/file/Path;Ljava/util/EnumSet;[Ljava/nio/file/LinkOption;)V

    .line 108
    return-void
.end method

.method public create(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/nio/file/Path;)V
    .locals 2
    .param p2, "directory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<",
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

    .line 119
    .local p1, "target":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<*>;"
    sget-object v0, Lorg/apache/commons/compress/archivers/examples/Archiver;->EMPTY_FileVisitOption:Ljava/util/EnumSet;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/nio/file/Path;Ljava/util/EnumSet;[Ljava/nio/file/LinkOption;)V

    .line 120
    return-void
.end method

.method public varargs create(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/nio/file/Path;Ljava/util/EnumSet;[Ljava/nio/file/LinkOption;)V
    .locals 2
    .param p2, "directory"    # Ljava/nio/file/Path;
    .param p4, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<",
            "*>;",
            "Ljava/nio/file/Path;",
            "Ljava/util/EnumSet<",
            "Ljava/nio/file/FileVisitOption;",
            ">;[",
            "Ljava/nio/file/LinkOption;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    .local p1, "target":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<*>;"
    .local p3, "fileVisitOptions":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljava/nio/file/FileVisitOption;>;"
    new-instance v0, Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiverFileVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p4, v1}, Lorg/apache/commons/compress/archivers/examples/Archiver$ArchiverFileVisitor;-><init>(Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;Lorg/apache/commons/compress/archivers/examples/Archiver$1;)V

    const v1, 0x7fffffff

    invoke-static {p2, p3, v1, v0}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/util/Set;ILjava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    .line 135
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->finish()V

    .line 136
    return-void
.end method

.method public create(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/io/File;)V
    .locals 1
    .param p1, "target"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;
    .param p2, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/examples/Archiver;->create(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/nio/file/Path;)V

    .line 147
    return-void
.end method

.method public create(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;Ljava/nio/file/Path;)V
    .locals 8
    .param p1, "target"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;
    .param p2, "directory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    new-instance v7, Lorg/apache/commons/compress/archivers/examples/Archiver$1;

    const/4 v0, 0x0

    new-array v4, v0, [Ljava/nio/file/LinkOption;

    const/4 v2, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/examples/Archiver$1;-><init>(Lorg/apache/commons/compress/archivers/examples/Archiver;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;Ljava/nio/file/Path;Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)V

    invoke-static {p2, v7}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    .line 179
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->finish()V

    .line 180
    return-void
.end method
