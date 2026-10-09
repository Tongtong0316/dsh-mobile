.class public final Lcom/dshmobile/shell/SnapshotExtractor;
.super Ljava/lang/Object;
.source "SnapshotExtractor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapshotExtractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotExtractor.kt\ncom/dshmobile/shell/SnapshotExtractor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,90:1\n1863#2:91\n1557#2:92\n1628#2,3:93\n1864#2:96\n*S KotlinDebug\n*F\n+ 1 SnapshotExtractor.kt\ncom/dshmobile/shell/SnapshotExtractor\n*L\n77#1:91\n78#1:92\n78#1:93,3\n77#1:96\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J8\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0018\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\rJ\u0016\u0010\u000e\u001a\u00020\u00052\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0002\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dshmobile/shell/SnapshotExtractor;",
        "",
        "<init>",
        "()V",
        "extract",
        "",
        "input",
        "Ljava/io/InputStream;",
        "totalBytes",
        "",
        "dest",
        "Ljava/io/File;",
        "onProgress",
        "Lkotlin/Function2;",
        "stampExecAttribute",
        "files",
        "",
        "",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dshmobile/shell/SnapshotExtractor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dshmobile/shell/SnapshotExtractor;

    invoke-direct {v0}, Lcom/dshmobile/shell/SnapshotExtractor;-><init>()V

    sput-object v0, Lcom/dshmobile/shell/SnapshotExtractor;->INSTANCE:Lcom/dshmobile/shell/SnapshotExtractor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final stampExecAttribute(Ljava/util/List;)V
    .locals 18
    .param p1, "files"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 73
    :cond_0
    nop

    .line 75
    const/4 v0, 0x5

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/bin/setfattr"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "-n"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "security.android.exec"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "-v"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "1"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, "base":Ljava/util/List;
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Iterable;

    const/16 v3, 0x40

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->chunked(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 91
    .local v3, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/util/List;

    .local v6, "batch":Ljava/util/List;
    const/4 v7, 0x0

    .line 78
    .local v7, "$i$a$-forEach-SnapshotExtractor$stampExecAttribute$1":I
    move-object v8, v6

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 92
    .local v9, "$i$f$map":I
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v8, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    move-object v11, v8

    .local v11, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 93
    .local v12, "$i$f$mapTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 94
    .local v14, "item$iv$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    .local v15, "f":Ljava/lang/String;
    const/16 v16, 0x0

    .line 78
    .local v16, "$i$a$-map-SnapshotExtractor$stampExecAttribute$1$procs$1":I
    new-instance v2, Ljava/lang/ProcessBuilder;

    move-object/from16 v17, v1

    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .local v17, "$this$forEach$iv":Ljava/lang/Iterable;
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1, v15}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 94
    .end local v15    # "f":Ljava/lang/String;
    .end local v16    # "$i$a$-map-SnapshotExtractor$stampExecAttribute$1$procs$1":I
    invoke-interface {v10, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v1

    move-object/from16 v1, v17

    goto :goto_1

    .line 95
    .end local v14    # "item$iv$iv":Ljava/lang/Object;
    .end local v17    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    :cond_1
    move-object/from16 v17, v1

    move v1, v2

    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$mapTo":I
    .restart local v17    # "$this$forEach$iv":Ljava/lang/Iterable;
    move-object v2, v10

    check-cast v2, Ljava/util/List;

    .line 92
    nop

    .line 78
    .end local v8    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$map":I
    nop

    .line 79
    .local v2, "procs":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Process;

    .line 80
    .local v9, "p":Ljava/lang/Process;
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v11, 0x1e

    invoke-virtual {v9, v11, v12, v10}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v10

    .line 81
    .local v10, "finished":Z
    if-nez v10, :cond_2

    invoke-virtual {v9}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 83
    .end local v9    # "p":Ljava/lang/Process;
    .end local v10    # "finished":Z
    :cond_3
    nop

    .line 91
    .end local v2    # "procs":Ljava/util/List;
    .end local v6    # "batch":Ljava/util/List;
    .end local v7    # "$i$a$-forEach-SnapshotExtractor$stampExecAttribute$1":I
    move v2, v1

    move-object/from16 v1, v17

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 96
    .end local v17    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    :cond_4
    move-object/from16 v17, v1

    .end local v0    # "base":Ljava/util/List;
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    goto :goto_3

    .line 84
    :catchall_0
    move-exception v0

    .line 88
    :goto_3
    return-void
.end method


# virtual methods
.method public final extract(Ljava/io/InputStream;JLjava/io/File;Lkotlin/jvm/functions/Function2;)V
    .locals 17
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "totalBytes"    # J
    .param p4, "dest"    # Ljava/io/File;
    .param p5, "onProgress"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "J",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-string v0, "input"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dest"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onProgress"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v0

    .line 32
    .local v4, "xz":Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;

    move-object v5, v4

    check-cast v5, Ljava/io/InputStream;

    invoke-direct {v0, v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v5, v0

    .line 33
    .local v5, "tar":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    .line 34
    .local v6, "execFiles":Ljava/util/List;
    const-wide/16 v7, 0x0

    .line 35
    .local v7, "done":J
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-result-object v0

    move-wide v8, v7

    move-object v7, v0

    .line 36
    .local v7, "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .local v8, "done":J
    :goto_0
    if-eqz v7, :cond_9

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v0

    .line 38
    .local v10, "target":Ljava/io/File;
    nop

    .line 39
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_2

    .line 40
    :cond_0
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSymbolicLink()Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_3

    .line 41
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 42
    :cond_1
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 43
    :cond_2
    invoke-virtual {v10}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getLinkName()Ljava/lang/String;

    move-result-object v12

    new-array v13, v11, [Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v12

    new-array v11, v11, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v12, v11}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    goto :goto_2

    .line 46
    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_4
    new-instance v0, Ljava/io/FileOutputStream;

    .line 47
    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v12, v0

    check-cast v12, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v12

    check-cast v0, Ljava/io/FileOutputStream;

    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    .line 48
    .local v13, "$i$a$-use-SnapshotExtractor$extract$1":I
    const/high16 v14, 0x10000

    new-array v14, v14, [B

    .line 49
    .local v14, "buf":[B
    invoke-virtual {v5, v14}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->read([B)I

    move-result v15

    .line 50
    .local v15, "n":I
    :goto_1
    if-ltz v15, :cond_5

    .line 51
    invoke-virtual {v0, v14, v11, v15}, Ljava/io/FileOutputStream;->write([BII)V

    .line 52
    invoke-virtual {v5, v14}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->read([B)I

    move-result v16

    move/from16 v15, v16

    goto :goto_1

    .line 54
    :cond_5
    nop

    .end local v0    # "out":Ljava/io/FileOutputStream;
    .end local v13    # "$i$a$-use-SnapshotExtractor$extract$1":I
    .end local v14    # "buf":[B
    .end local v15    # "n":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const/4 v0, 0x0

    invoke-static {v12, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 55
    invoke-virtual {v10, v11, v11}, Ljava/io/File;->setReadable(ZZ)Z

    .line 56
    const/4 v0, 0x1

    invoke-virtual {v10, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 57
    invoke-virtual {v10, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 58
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getMode()I

    move-result v12

    and-int/lit8 v12, v12, 0x40

    if-eqz v12, :cond_6

    move v11, v0

    :cond_6
    invoke-virtual {v10, v11, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 59
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getMode()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v11, "getAbsolutePath(...)"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_7
    :goto_2
    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v11

    add-long/2addr v8, v11

    .line 63
    const/high16 v0, 0x100000

    int-to-long v11, v0

    rem-long v11, v8, v11

    invoke-virtual {v7}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v13

    cmp-long v0, v11, v13

    if-gez v0, :cond_8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v3, v0, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_8
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-result-object v7

    .end local v10    # "target":Ljava/io/File;
    goto/16 :goto_0

    .line 47
    .restart local v10    # "target":Ljava/io/File;
    :catchall_0
    move-exception v0

    move-object v11, v0

    .end local v4    # "xz":Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;
    .end local v5    # "tar":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    .end local v6    # "execFiles":Ljava/util/List;
    .end local v7    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .end local v8    # "done":J
    .end local v10    # "target":Ljava/io/File;
    .end local p1    # "input":Ljava/io/InputStream;
    .end local p2    # "totalBytes":J
    .end local p4    # "dest":Ljava/io/File;
    .end local p5    # "onProgress":Lkotlin/jvm/functions/Function2;
    :try_start_1
    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v4    # "xz":Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;
    .restart local v5    # "tar":Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
    .restart local v6    # "execFiles":Ljava/util/List;
    .restart local v7    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .restart local v8    # "done":J
    .restart local v10    # "target":Ljava/io/File;
    .restart local p1    # "input":Ljava/io/InputStream;
    .restart local p2    # "totalBytes":J
    .restart local p4    # "dest":Ljava/io/File;
    .restart local p5    # "onProgress":Lkotlin/jvm/functions/Function2;
    :catchall_1
    move-exception v0

    move-object v13, v0

    invoke-static {v12, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v13

    .line 66
    .end local v10    # "target":Ljava/io/File;
    :cond_9
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->close()V

    .line 67
    move-object/from16 v10, p0

    invoke-direct {v10, v6}, Lcom/dshmobile/shell/SnapshotExtractor;->stampExecAttribute(Ljava/util/List;)V

    .line 68
    return-void
.end method
