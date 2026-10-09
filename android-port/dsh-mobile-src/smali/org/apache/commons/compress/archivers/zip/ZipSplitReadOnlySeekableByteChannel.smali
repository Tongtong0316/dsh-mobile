.class public Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;
.super Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;
.source "ZipSplitReadOnlySeekableByteChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel$ZipSplitSegmentComparator;
    }
.end annotation


# static fields
.field private static final EMPTY_PATH_ARRAY:[Ljava/nio/file/Path;

.field private static final ZIP_SPLIT_SIGNATURE_LENGTH:I = 0x4


# instance fields
.field private final zipSplitSignatureByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public static synthetic $r8$lambda$wBZ5N9SAmxJLRX-vx8hIUeo_fgc()Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 75
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/Path;

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->EMPTY_PATH_ARRAY:[Ljava/nio/file/Path;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/channels/SeekableByteChannel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/SeekableByteChannel;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/utils/MultiReadOnlySeekableByteChannel;-><init>(Ljava/util/List;)V

    .line 255
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->zipSplitSignatureByteBuffer:Ljava/nio/ByteBuffer;

    .line 273
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->assertSplitSignature(Ljava/util/List;)V

    .line 274
    return-void
.end method

.method private assertSplitSignature(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/channels/SeekableByteChannel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    .local p1, "channels":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/SeekableByteChannel;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SeekableByteChannel;

    .line 294
    .local v0, "channel":Ljava/nio/channels/SeekableByteChannel;
    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 296
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->zipSplitSignatureByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 297
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->zipSplitSignatureByteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v3}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 298
    new-instance v3, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->zipSplitSignatureByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([B)V

    .line 299
    .local v3, "signature":Lorg/apache/commons/compress/archivers/zip/ZipLong;
    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipLong;->DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 304
    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 305
    return-void

    .line 300
    :cond_0
    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 301
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The first ZIP split segment does not begin with split ZIP file signature"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static buildFromLastSplitSegment(Ljava/io/File;)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
    .param p0, "lastSegmentFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->buildFromLastSplitSegment(Ljava/nio/file/Path;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public static buildFromLastSplitSegment(Ljava/nio/file/Path;)Ljava/nio/channels/SeekableByteChannel;
    .locals 8
    .param p0, "lastSegmentPath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-static {p0}, Lorg/apache/commons/compress/utils/FileNameUtils;->getExtension(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "extension":Ljava/lang/String;
    const-string v1, "zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v1

    const-string v3, "."

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 106
    .local v1, "parent":Ljava/nio/file/Path;
    :goto_0
    invoke-static {p0}, Lorg/apache/commons/compress/utils/FileNameUtils;->getBaseName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "fileBaseName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".[zZ][0-9]+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 111
    .local v4, "pattern":Ljava/util/regex/Pattern;
    const/4 v5, 0x1

    new-array v2, v2, [Ljava/nio/file/FileVisitOption;

    invoke-static {v1, v5, v2}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 112
    .local v2, "walk":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :try_start_0
    new-instance v5, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda3;

    invoke-direct {v6, v4}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda3;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel$ZipSplitSegmentComparator;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel$ZipSplitSegmentComparator;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel$1;)V

    .line 113
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v6}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .local v5, "splitZipSegments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/nio/file/Path;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/stream/Stream;->close()V

    .line 116
    .end local v2    # "walk":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :cond_1
    invoke-static {p0, v5}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->forPaths(Ljava/nio/file/Path;Ljava/lang/Iterable;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v2

    return-object v2

    .line 111
    .end local v5    # "splitZipSegments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/nio/file/Path;>;"
    .restart local v2    # "walk":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Ljava/util/stream/Stream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v5

    .line 102
    .end local v1    # "parent":Ljava/nio/file/Path;
    .end local v2    # "walk":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    .end local v3    # "fileBaseName":Ljava/lang/String;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The extension of last ZIP split segment should be .zip"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static forFiles(Ljava/io/File;Ljava/lang/Iterable;)Ljava/nio/channels/SeekableByteChannel;
    .locals 2
    .param p0, "lastSegmentFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/Iterable<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/nio/channels/SeekableByteChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    .local p1, "files":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/io/File;>;"
    const-string v0, "files"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    const-string v0, "lastSegmentFile"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v0, "filesList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 154
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->forPaths(Ljava/nio/file/Path;Ljava/lang/Iterable;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    return-object v1
.end method

.method public static varargs forFiles([Ljava/io/File;)Ljava/nio/channels/SeekableByteChannel;
    .locals 6
    .param p0, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    const-string v1, "files"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 132
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v4    # "f":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    :cond_0
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->EMPTY_PATH_ARRAY:[Ljava/nio/file/Path;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/nio/file/Path;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->forPaths([Ljava/nio/file/Path;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    return-object v1
.end method

.method public static forOrderedSeekableByteChannels(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/Iterable;)Ljava/nio/channels/SeekableByteChannel;
    .locals 2
    .param p0, "lastSegmentChannel"    # Ljava/nio/channels/SeekableByteChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SeekableByteChannel;",
            "Ljava/lang/Iterable<",
            "Ljava/nio/channels/SeekableByteChannel;",
            ">;)",
            "Ljava/nio/channels/SeekableByteChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    .local p1, "channels":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/nio/channels/SeekableByteChannel;>;"
    const-string v0, "channels"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    const-string v0, "lastSegmentChannel"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v0, "channelsList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/SeekableByteChannel;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 190
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->forOrderedSeekableByteChannels([Ljava/nio/channels/SeekableByteChannel;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    return-object v1
.end method

.method public static varargs forOrderedSeekableByteChannels([Ljava/nio/channels/SeekableByteChannel;)Ljava/nio/channels/SeekableByteChannel;
    .locals 2
    .param p0, "channels"    # [Ljava/nio/channels/SeekableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    const-string v0, "channels"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/channels/SeekableByteChannel;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 168
    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0

    .line 170
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static forPaths(Ljava/nio/file/Path;Ljava/lang/Iterable;)Ljava/nio/channels/SeekableByteChannel;
    .locals 2
    .param p0, "lastSegmentPath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Iterable<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/channels/SeekableByteChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    .local p1, "paths":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/nio/file/Path;>;"
    const-string v0, "paths"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 246
    const-string v0, "lastSegmentPath"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v0, "filesList":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 250
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->EMPTY_PATH_ARRAY:[Ljava/nio/file/Path;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/nio/file/Path;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->forPaths([Ljava/nio/file/Path;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    return-object v1
.end method

.method public static forPaths(Ljava/util/List;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;
    .locals 4
    .param p1, "openOptions"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;[",
            "Ljava/nio/file/OpenOption;",
            ")",
            "Ljava/nio/channels/SeekableByteChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    .local p0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/SeekableByteChannel;>;"
    const-string v1, "paths"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    .line 210
    .local v2, "path":Ljava/nio/file/Path;
    invoke-static {v2, p1}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v2    # "path":Ljava/nio/file/Path;
    goto :goto_0

    .line 212
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 213
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SeekableByteChannel;

    return-object v1

    .line 215
    :cond_1
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static varargs forPaths([Ljava/nio/file/Path;)Ljava/nio/channels/SeekableByteChannel;
    .locals 4
    .param p0, "paths"    # [Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->forPaths(Ljava/util/List;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$buildFromLastSplitSegment$0(Ljava/nio/file/Path;)Z
    .locals 1
    .param p0, "x$0"    # Ljava/nio/file/Path;

    .line 112
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$buildFromLastSplitSegment$1(Ljava/util/regex/Pattern;Ljava/nio/file/Path;)Z
    .locals 1
    .param p0, "pattern"    # Ljava/util/regex/Pattern;
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 112
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$forFiles$2(Ljava/util/List;Ljava/io/File;)V
    .locals 1
    .param p0, "filesList"    # Ljava/util/List;
    .param p1, "f"    # Ljava/io/File;

    .line 152
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
