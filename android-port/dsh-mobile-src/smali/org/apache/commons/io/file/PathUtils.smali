.class public final Lorg/apache/commons/io/file/PathUtils;
.super Ljava/lang/Object;
.source "PathUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;
    }
.end annotation


# static fields
.field public static final EMPTY_COPY_OPTIONS:[Ljava/nio/file/CopyOption;

.field public static final EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

.field public static final EMPTY_FILE_ATTRIBUTE_ARRAY:[Ljava/nio/file/attribute/FileAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_FILE_VISIT_OPTION_ARRAY:[Ljava/nio/file/FileVisitOption;

.field public static final EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

.field public static final EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

.field public static final EMPTY_PATH_ARRAY:[Ljava/nio/file/Path;

.field public static final NOFOLLOW_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final NULL_LINK_OPTION:Ljava/nio/file/LinkOption;

.field private static final OPEN_OPTIONS_APPEND:[Ljava/nio/file/OpenOption;

.field private static final OPEN_OPTIONS_TRUNCATE:[Ljava/nio/file/OpenOption;


# direct methods
.method public static synthetic $r8$lambda$GF8JHa7vXNEFej4auUeh7g5xcuU(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 0

    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 153
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lorg/apache/commons/io/file/PathUtils;->OPEN_OPTIONS_TRUNCATE:[Ljava/nio/file/OpenOption;

    .line 155
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    sget-object v1, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v1, v0, v3

    sget-object v1, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->OPEN_OPTIONS_APPEND:[Ljava/nio/file/OpenOption;

    .line 162
    new-array v0, v3, [Ljava/nio/file/CopyOption;

    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_COPY_OPTIONS:[Ljava/nio/file/CopyOption;

    .line 169
    new-array v0, v3, [Lorg/apache/commons/io/file/DeleteOption;

    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    .line 176
    new-array v0, v3, [Ljava/nio/file/attribute/FileAttribute;

    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_FILE_ATTRIBUTE_ARRAY:[Ljava/nio/file/attribute/FileAttribute;

    .line 181
    new-array v0, v3, [Ljava/nio/file/FileVisitOption;

    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_FILE_VISIT_OPTION_ARRAY:[Ljava/nio/file/FileVisitOption;

    .line 186
    new-array v0, v3, [Ljava/nio/file/LinkOption;

    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    .line 195
    new-array v0, v4, [Ljava/nio/file/LinkOption;

    sget-object v1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->NOFOLLOW_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    .line 202
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->NULL_LINK_OPTION:Ljava/nio/file/LinkOption;

    .line 207
    new-array v0, v3, [Ljava/nio/file/OpenOption;

    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

    .line 214
    new-array v0, v3, [Ljava/nio/file/Path;

    sput-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_PATH_ARRAY:[Ljava/nio/file/Path;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1889
    return-void
.end method

.method static synthetic access$000(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 1
    .param p0, "x0"    # Ljava/nio/file/Path;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object v0

    return-object v0
.end method

.method private static accumulate(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 2
    .param p0, "directory"    # Ljava/nio/file/Path;
    .param p1, "maxDepth"    # I
    .param p2, "fileVisitOptions"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-static {}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->withLongCounters()Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/commons/io/file/PathUtils;->toFileVisitOptionSet([Ljava/nio/file/FileVisitOption;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;Ljava/util/Set;I)Ljava/nio/file/FileVisitor;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    return-object v0
.end method

.method public static cleanDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1
    .param p0, "directory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->cleanDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    return-object v0
.end method

.method public static varargs cleanDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 3
    .param p0, "directory"    # Ljava/nio/file/Path;
    .param p1, "deleteOptions"    # [Lorg/apache/commons/io/file/DeleteOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    new-instance v0, Lorg/apache/commons/io/file/CleaningPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/commons/io/file/CleaningPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;[Lorg/apache/commons/io/file/DeleteOption;[Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/file/CleaningPathVisitor;

    invoke-virtual {v0}, Lorg/apache/commons/io/file/CleaningPathVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    return-object v0
.end method

.method private static varargs compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I
    .locals 1
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "fileTime"    # Ljava/nio/file/attribute/FileTime;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    invoke-static {p0, p2}, Lorg/apache/commons/io/file/PathUtils;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/file/attribute/FileTime;->compareTo(Ljava/nio/file/attribute/FileTime;)I

    move-result v0

    return v0
.end method

.method public static varargs copy(Lorg/apache/commons/io/function/IOSupplier;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J
    .locals 3
    .param p1, "target"    # Ljava/nio/file/Path;
    .param p2, "copyOptions"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOSupplier<",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/CopyOption;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    .local p0, "in":Lorg/apache/commons/io/function/IOSupplier;, "Lorg/apache/commons/io/function/IOSupplier<Ljava/io/InputStream;>;"
    invoke-interface {p0}, Lorg/apache/commons/io/function/IOSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 279
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0, p1, p2}, Ljava/nio/file/Files;->copy(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 279
    :cond_0
    return-wide v1

    .line 278
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

.method public static varargs copyDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 3
    .param p0, "sourceDirectory"    # Ljava/nio/file/Path;
    .param p1, "targetDirectory"    # Ljava/nio/file/Path;
    .param p2, "copyOptions"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    .line 294
    .local v0, "absoluteSource":Ljava/nio/file/Path;
    new-instance v1, Lorg/apache/commons/io/file/CopyDirectoryVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1, p2}, Lorg/apache/commons/io/file/CopyDirectoryVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    invoke-static {v1, v0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/file/CopyDirectoryVisitor;

    .line 295
    invoke-virtual {v1}, Lorg/apache/commons/io/file/CopyDirectoryVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    .line 294
    return-object v1
.end method

.method public static varargs copyFile(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "sourceFile"    # Ljava/net/URL;
    .param p1, "targetFile"    # Ljava/nio/file/Path;
    .param p2, "copyOptions"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda2;-><init>(Ljava/net/URL;)V

    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->copy(Lorg/apache/commons/io/function/IOSupplier;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J

    .line 310
    return-object p1
.end method

.method public static varargs copyFileToDirectory(Ljava/net/URL;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .locals 2
    .param p0, "sourceFile"    # Ljava/net/URL;
    .param p1, "targetDirectory"    # Ljava/nio/file/Path;
    .param p2, "copyOptions"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 339
    .local v0, "resolve":Ljava/nio/file/Path;
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda2;-><init>(Ljava/net/URL;)V

    invoke-static {v1, v0, p2}, Lorg/apache/commons/io/file/PathUtils;->copy(Lorg/apache/commons/io/function/IOSupplier;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J

    .line 340
    return-object v0
.end method

.method public static varargs copyFileToDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "sourceFile"    # Ljava/nio/file/Path;
    .param p1, "targetDirectory"    # Ljava/nio/file/Path;
    .param p2, "copyOptions"    # [Ljava/nio/file/CopyOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {p0, v0, p2}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static countDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1
    .param p0, "directory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    invoke-static {}, Lorg/apache/commons/io/file/CountingPathVisitor;->withLongCounters()Lorg/apache/commons/io/file/CountingPathVisitor;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/file/CountingPathVisitor;

    invoke-virtual {v0}, Lorg/apache/commons/io/file/CountingPathVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    return-object v0
.end method

.method public static countDirectoryAsBigInteger(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1
    .param p0, "directory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    invoke-static {}, Lorg/apache/commons/io/file/CountingPathVisitor;->withBigIntegerCounters()Lorg/apache/commons/io/file/CountingPathVisitor;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/file/CountingPathVisitor;

    invoke-virtual {v0}, Lorg/apache/commons/io/file/CountingPathVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "linkOption"    # Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/LinkOption;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    .local p2, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->getParent(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 397
    .local v0, "parent":Ljava/nio/file/Path;
    sget-object v1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    if-ne p1, v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/io/file/PathUtils;->readIfSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 398
    if-nez v0, :cond_1

    .line 399
    const/4 v1, 0x0

    return-object v1

    .line 401
    :cond_1
    const/4 v1, 0x0

    if-nez p1, :cond_2

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    .line 402
    .local v1, "exists":Z
    :goto_1
    if-eqz v1, :cond_3

    move-object v2, v0

    goto :goto_2

    :cond_3
    invoke-static {v0, p2}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method public static varargs createParentDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    .local p1, "attrs":[Ljava/nio/file/attribute/FileAttribute;, "[Ljava/nio/file/attribute/FileAttribute<*>;"
    sget-object v0, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/file/PathUtils;->createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static current()Ljava/nio/file/Path;
    .locals 2

    .line 413
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "."

    invoke-static {v1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static delete(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->delete(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    return-object v0
.end method

.method public static varargs delete(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .param p2, "deleteOptions"    # [Lorg/apache/commons/io/file/DeleteOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    invoke-static {p0, p1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static varargs delete(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "deleteOptions"    # [Lorg/apache/commons/io/file/DeleteOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static deleteDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1
    .param p0, "directory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    return-object v0
.end method

.method public static varargs deleteDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 3
    .param p0, "directory"    # Ljava/nio/file/Path;
    .param p1, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .param p2, "deleteOptions"    # [Lorg/apache/commons/io/file/DeleteOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    new-instance v0, Lorg/apache/commons/io/file/DeletingPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/apache/commons/io/file/DeletingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;[Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/file/DeletingPathVisitor;

    invoke-virtual {v0}, Lorg/apache/commons/io/file/DeletingPathVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    return-object v0
.end method

.method public static varargs deleteDirectory(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 4
    .param p0, "directory"    # Ljava/nio/file/Path;
    .param p1, "deleteOptions"    # [Lorg/apache/commons/io/file/DeleteOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    invoke-static {}, Lorg/apache/commons/io/file/PathUtils;->noFollowLinkOptionArray()[Ljava/nio/file/LinkOption;

    move-result-object v0

    .line 503
    .local v0, "linkOptions":[Ljava/nio/file/LinkOption;
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->getParent(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/commons/io/file/PathUtils;->overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z

    move-result v2

    new-instance v3, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, p1, p0}, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda5;-><init>([Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;Ljava/nio/file/Path;)V

    invoke-static {v1, v0, v2, v3}, Lorg/apache/commons/io/file/PathUtils;->withPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/file/Counters$PathCounters;

    return-object v1
.end method

.method public static deleteFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1
    .param p0, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    return-object v0
.end method

.method public static varargs deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 9
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .param p2, "deleteOptions"    # [Lorg/apache/commons/io/file/DeleteOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/file/NoSuchFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    invoke-static {p0, p1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 567
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    .line 568
    .local v0, "pathCounts":Lorg/apache/commons/io/file/Counters$PathCounters;
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    .line 569
    .local v1, "exists":Z
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    .line 571
    .local v4, "size":J
    :goto_0
    :try_start_0
    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 572
    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$PathCounters;->getFileCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/io/file/Counters$Counter;->increment()V

    .line 573
    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$PathCounters;->getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Lorg/apache/commons/io/file/Counters$Counter;->add(J)V
    :try_end_0
    .catch Ljava/nio/file/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    return-object v0

    .line 578
    :cond_1
    goto :goto_1

    .line 576
    :catch_0
    move-exception v6

    .line 579
    :goto_1
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->getParent(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v6

    .line 580
    .local v6, "parent":Ljava/nio/file/Path;
    const/4 v7, 0x0

    .line 582
    .local v7, "posixFileAttributes":Ljava/nio/file/attribute/PosixFileAttributes;
    :try_start_1
    invoke-static {p2}, Lorg/apache/commons/io/file/PathUtils;->overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 583
    invoke-static {v6, p1}, Lorg/apache/commons/io/file/PathUtils;->readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v8

    move-object v7, v8

    .line 584
    const/4 v8, 0x0

    invoke-static {p0, v8, p1}, Lorg/apache/commons/io/file/PathUtils;->setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    .line 587
    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v8

    move v1, v8

    .line 588
    if-eqz v1, :cond_3

    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v2

    :cond_3
    move-wide v4, v2

    .line 589
    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 590
    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$PathCounters;->getFileCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/io/file/Counters$Counter;->increment()V

    .line 591
    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$PathCounters;->getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object v2

    invoke-interface {v2, v4, v5}, Lorg/apache/commons/io/file/Counters$Counter;->add(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    :cond_4
    if-eqz v7, :cond_5

    .line 595
    invoke-interface {v7}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    .line 598
    :cond_5
    return-object v0

    .line 594
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_6

    .line 595
    invoke-interface {v7}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v3

    invoke-static {v6, v3}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    .line 597
    :cond_6
    throw v2

    .line 565
    .end local v0    # "pathCounts":Lorg/apache/commons/io/file/Counters$PathCounters;
    .end local v1    # "exists":Z
    .end local v4    # "size":J
    .end local v6    # "parent":Ljava/nio/file/Path;
    .end local v7    # "posixFileAttributes":Ljava/nio/file/attribute/PosixFileAttributes;
    :cond_7
    new-instance v0, Ljava/nio/file/NoSuchFileException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs deleteFile(Ljava/nio/file/Path;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 1
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "deleteOptions"    # [Lorg/apache/commons/io/file/DeleteOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    invoke-static {}, Lorg/apache/commons/io/file/PathUtils;->noFollowLinkOptionArray()[Ljava/nio/file/LinkOption;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/file/PathUtils;->deleteFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    return-object v0
.end method

.method public static deleteOnExit(Ljava/nio/file/Path;)V
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 608
    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 609
    return-void
.end method

.method public static directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 3
    .param p0, "path1"    # Ljava/nio/file/Path;
    .param p1, "path2"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 621
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

    sget-object v2, Lorg/apache/commons/io/file/PathUtils;->EMPTY_FILE_VISIT_OPTION_ARRAY:[Ljava/nio/file/FileVisitOption;

    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/io/file/PathUtils;->directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z

    move-result v0

    return v0
.end method

.method public static directoryAndFileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;[Ljava/nio/file/FileVisitOption;)Z
    .locals 10
    .param p0, "path1"    # Ljava/nio/file/Path;
    .param p1, "path2"    # Ljava/nio/file/Path;
    .param p2, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .param p3, "openOptions"    # [Ljava/nio/file/OpenOption;
    .param p4, "fileVisitOption"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 639
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 640
    return v0

    .line 642
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_1

    goto :goto_1

    .line 645
    :cond_1
    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v2}, Lorg/apache/commons/io/file/PathUtils;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v2}, Lorg/apache/commons/io/file/PathUtils;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 646
    return v0

    .line 648
    :cond_2
    new-instance v2, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;

    const v6, 0x7fffffff

    const/4 v9, 0x0

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;Lorg/apache/commons/io/file/PathUtils$1;)V

    .line 650
    .local v2, "relativeSortedPaths":Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;
    iget-boolean v3, v2, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    if-nez v3, :cond_3

    .line 651
    return v1

    .line 654
    :cond_3
    iget-object v3, v2, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->relativeFileList1:Ljava/util/List;

    .line 655
    .local v3, "fileList1":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    iget-object v4, v2, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->relativeFileList2:Ljava/util/List;

    .line 656
    .local v4, "fileList2":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/file/Path;

    .line 657
    .local v6, "path":Ljava/nio/file/Path;
    invoke-static {v4, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v7

    .line 658
    .local v7, "binarySearch":I
    const/4 v8, -0x1

    if-le v7, v8, :cond_5

    .line 661
    invoke-interface {p0, v6}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {p1, v6}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v9

    invoke-static {v8, v9, p2, p3}, Lorg/apache/commons/io/file/PathUtils;->fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 662
    return v1

    .line 664
    .end local v6    # "path":Ljava/nio/file/Path;
    .end local v7    # "binarySearch":I
    :cond_4
    goto :goto_0

    .line 659
    .restart local v6    # "path":Ljava/nio/file/Path;
    .restart local v7    # "binarySearch":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected mismatch."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    .end local v6    # "path":Ljava/nio/file/Path;
    .end local v7    # "binarySearch":I
    :cond_6
    return v0

    .line 643
    .end local v2    # "relativeSortedPaths":Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;
    .end local v3    # "fileList1":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    .end local v4    # "fileList2":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    :cond_7
    :goto_1
    return v1
.end method

.method public static directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 3
    .param p0, "path1"    # Ljava/nio/file/Path;
    .param p1, "path2"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_FILE_VISIT_OPTION_ARRAY:[Ljava/nio/file/FileVisitOption;

    const v2, 0x7fffffff

    invoke-static {p0, p1, v2, v0, v1}, Lorg/apache/commons/io/file/PathUtils;->directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z

    move-result v0

    return v0
.end method

.method public static directoryContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;)Z
    .locals 8
    .param p0, "path1"    # Ljava/nio/file/Path;
    .param p1, "path2"    # Ljava/nio/file/Path;
    .param p2, "maxDepth"    # I
    .param p3, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .param p4, "fileVisitOptions"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 695
    new-instance v7, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;I[Ljava/nio/file/LinkOption;[Ljava/nio/file/FileVisitOption;Lorg/apache/commons/io/file/PathUtils$1;)V

    iget-boolean v0, v7, Lorg/apache/commons/io/file/PathUtils$RelativeSortedPaths;->equals:Z

    return v0
.end method

.method private static varargs exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .line 699
    const-string v0, "path"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 700
    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 2
    .param p0, "path1"    # Ljava/nio/file/Path;
    .param p1, "path2"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 717
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/file/PathUtils;->fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z

    move-result v0

    return v0
.end method

.method public static fileContentEquals(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Z
    .locals 9
    .param p0, "path1"    # Ljava/nio/file/Path;
    .param p1, "path2"    # Ljava/nio/file/Path;
    .param p2, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .param p3, "openOptions"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 737
    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 738
    return v0

    .line 740
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_10

    if-nez p1, :cond_1

    goto/16 :goto_4

    .line 743
    :cond_1
    invoke-interface {p0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v2

    .line 744
    .local v2, "nPath1":Ljava/nio/file/Path;
    invoke-interface {p1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v3

    .line 745
    .local v3, "nPath2":Ljava/nio/file/Path;
    invoke-static {v2, p2}, Lorg/apache/commons/io/file/PathUtils;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    .line 746
    .local v4, "path1Exists":Z
    invoke-static {v3, p2}, Lorg/apache/commons/io/file/PathUtils;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eq v4, v5, :cond_2

    .line 747
    return v1

    .line 749
    :cond_2
    if-nez v4, :cond_3

    .line 752
    return v0

    .line 754
    :cond_3
    invoke-static {v2, p2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    const-string v6, "Can\'t compare directories, only files: "

    if-nez v5, :cond_f

    .line 758
    invoke-static {v3, p2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 762
    invoke-static {v2}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v5

    invoke-static {v3}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    .line 764
    return v1

    .line 766
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 768
    return v0

    .line 771
    :cond_5
    :try_start_0
    sget-object v0, Lorg/apache/commons/io/RandomAccessFileMode;->READ_ONLY:Lorg/apache/commons/io/RandomAccessFileMode;

    invoke-interface {p0, p2}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/RandomAccessFileMode;->create(Ljava/nio/file/Path;)Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    .local v0, "raf1":Ljava/io/RandomAccessFile;
    :try_start_1
    sget-object v1, Lorg/apache/commons/io/RandomAccessFileMode;->READ_ONLY:Lorg/apache/commons/io/RandomAccessFileMode;

    invoke-interface {p1, p2}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/commons/io/RandomAccessFileMode;->create(Ljava/nio/file/Path;)Ljava/io/RandomAccessFile;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 773
    .local v1, "raf2":Ljava/io/RandomAccessFile;
    :try_start_2
    invoke-static {v0, v1}, Lorg/apache/commons/io/RandomAccessFiles;->contentEquals(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 774
    if-eqz v1, :cond_6

    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_6
    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_0

    .line 773
    :cond_7
    return v5

    .line 771
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_8

    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_6
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "raf1":Ljava/io/RandomAccessFile;
    .end local v2    # "nPath1":Ljava/nio/file/Path;
    .end local v3    # "nPath2":Ljava/nio/file/Path;
    .end local v4    # "path1Exists":Z
    .end local p0    # "path1":Ljava/nio/file/Path;
    .end local p1    # "path2":Ljava/nio/file/Path;
    .end local p2    # "linkOptions":[Ljava/nio/file/LinkOption;
    .end local p3    # "openOptions":[Ljava/nio/file/OpenOption;
    :cond_8
    :goto_0
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v1    # "raf2":Ljava/io/RandomAccessFile;
    .restart local v0    # "raf1":Ljava/io/RandomAccessFile;
    .restart local v2    # "nPath1":Ljava/nio/file/Path;
    .restart local v3    # "nPath2":Ljava/nio/file/Path;
    .restart local v4    # "path1Exists":Z
    .restart local p0    # "path1":Ljava/nio/file/Path;
    .restart local p1    # "path2":Ljava/nio/file/Path;
    .restart local p2    # "linkOptions":[Ljava/nio/file/LinkOption;
    .restart local p3    # "openOptions":[Ljava/nio/file/OpenOption;
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_9

    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v5

    :try_start_8
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "nPath1":Ljava/nio/file/Path;
    .end local v3    # "nPath2":Ljava/nio/file/Path;
    .end local v4    # "path1Exists":Z
    .end local p0    # "path1":Ljava/nio/file/Path;
    .end local p1    # "path2":Ljava/nio/file/Path;
    .end local p2    # "linkOptions":[Ljava/nio/file/LinkOption;
    .end local p3    # "openOptions":[Ljava/nio/file/OpenOption;
    :cond_9
    :goto_1
    throw v1
    :try_end_8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_0

    .line 774
    .end local v0    # "raf1":Ljava/io/RandomAccessFile;
    .restart local v2    # "nPath1":Ljava/nio/file/Path;
    .restart local v3    # "nPath2":Ljava/nio/file/Path;
    .restart local v4    # "path1Exists":Z
    .restart local p0    # "path1":Ljava/nio/file/Path;
    .restart local p1    # "path2":Ljava/nio/file/Path;
    .restart local p2    # "linkOptions":[Ljava/nio/file/LinkOption;
    .restart local p3    # "openOptions":[Ljava/nio/file/OpenOption;
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    invoke-static {v2, p3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    .line 780
    .local v1, "inputStream1":Ljava/io/InputStream;
    :try_start_9
    invoke-static {v3, p3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 781
    .local v5, "inputStream2":Ljava/io/InputStream;
    :try_start_a
    invoke-static {v1, v5}, Lorg/apache/commons/io/IOUtils;->contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 782
    if-eqz v5, :cond_a

    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 781
    :cond_b
    return v6

    .line 779
    :catchall_4
    move-exception v6

    if-eqz v5, :cond_c

    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v7

    :try_start_d
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    .end local v1    # "inputStream1":Ljava/io/InputStream;
    .end local v2    # "nPath1":Ljava/nio/file/Path;
    .end local v3    # "nPath2":Ljava/nio/file/Path;
    .end local v4    # "path1Exists":Z
    .end local p0    # "path1":Ljava/nio/file/Path;
    .end local p1    # "path2":Ljava/nio/file/Path;
    .end local p2    # "linkOptions":[Ljava/nio/file/LinkOption;
    .end local p3    # "openOptions":[Ljava/nio/file/OpenOption;
    :cond_c
    :goto_2
    throw v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .end local v5    # "inputStream2":Ljava/io/InputStream;
    .restart local v0    # "e":Ljava/lang/UnsupportedOperationException;
    .restart local v1    # "inputStream1":Ljava/io/InputStream;
    .restart local v2    # "nPath1":Ljava/nio/file/Path;
    .restart local v3    # "nPath2":Ljava/nio/file/Path;
    .restart local v4    # "path1Exists":Z
    .restart local p0    # "path1":Ljava/nio/file/Path;
    .restart local p1    # "path2":Ljava/nio/file/Path;
    .restart local p2    # "linkOptions":[Ljava/nio/file/LinkOption;
    .restart local p3    # "openOptions":[Ljava/nio/file/OpenOption;
    :catchall_6
    move-exception v5

    if-eqz v1, :cond_d

    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_3

    :catchall_7
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_3
    throw v5

    .line 760
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    .end local v1    # "inputStream1":Ljava/io/InputStream;
    :cond_e
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    .end local v2    # "nPath1":Ljava/nio/file/Path;
    .end local v3    # "nPath2":Ljava/nio/file/Path;
    .end local v4    # "path1Exists":Z
    :cond_10
    :goto_4
    return v1
.end method

.method public static varargs filter(Lorg/apache/commons/io/file/PathFilter;[Ljava/nio/file/Path;)[Ljava/nio/file/Path;
    .locals 2
    .param p0, "filter"    # Lorg/apache/commons/io/file/PathFilter;
    .param p1, "paths"    # [Ljava/nio/file/Path;

    .line 812
    const-string v0, "filter"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 813
    if-nez p1, :cond_0

    .line 814
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_PATH_ARRAY:[Ljava/nio/file/Path;

    return-object v0

    .line 816
    :cond_0
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/file/PathUtils;->filterPaths(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_PATH_ARRAY:[Ljava/nio/file/Path;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/Path;

    return-object v0
.end method

.method private static filterPaths(Lorg/apache/commons/io/file/PathFilter;Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;
    .locals 1
    .param p0, "filter"    # Lorg/apache/commons/io/file/PathFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/io/file/PathFilter;",
            "Ljava/util/stream/Stream<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/util/stream/Collector<",
            "-",
            "Ljava/nio/file/Path;",
            "TA;TR;>;)TR;"
        }
    .end annotation

    .line 820
    .local p1, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    .local p2, "collector":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-Ljava/nio/file/Path;TA;TR;>;"
    const-string v0, "filter"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 821
    const-string v0, "collector"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 822
    if-nez p1, :cond_0

    .line 823
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 825
    :cond_0
    new-instance v0, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/io/file/PathFilter;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 831
    invoke-interface {v0, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    .line 825
    return-object v0
.end method

.method public static getAclEntryList(Ljava/nio/file/Path;)Ljava/util/List;
    .locals 2
    .param p0, "sourcePath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/file/attribute/AclEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 843
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->getAclFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/AclFileAttributeView;

    move-result-object v0

    .line 844
    .local v0, "fileAttributeView":Ljava/nio/file/attribute/AclFileAttributeView;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/nio/file/attribute/AclFileAttributeView;->getAcl()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static varargs getAclFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/AclFileAttributeView;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .line 856
    const-class v0, Ljava/nio/file/attribute/AclFileAttributeView;

    invoke-static {p0, v0, p1}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/AclFileAttributeView;

    return-object v0
.end method

.method public static getBaseName(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 870
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 871
    return-object v0

    .line 873
    :cond_0
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    .line 874
    .local v1, "fileName":Ljava/nio/file/Path;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static varargs getDosFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributeView;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .line 886
    const-class v0, Ljava/nio/file/attribute/DosFileAttributeView;

    invoke-static {p0, v0, p1}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/DosFileAttributeView;

    return-object v0
.end method

.method public static getExtension(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 909
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->getFileNameString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getFileName(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/util/function/Function<",
            "Ljava/nio/file/Path;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 924
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/nio/file/Path;TR;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 925
    .local v1, "fileName":Ljava/nio/file/Path;
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getFileNameString(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 937
    new-instance v0, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->getFileName(Ljava/nio/file/Path;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getLastModifiedFileTime(Ljava/io/File;)Ljava/nio/file/attribute/FileTime;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 953
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/io/file/PathUtils;->getLastModifiedFileTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public static getLastModifiedFileTime(Ljava/net/URI;)Ljava/nio/file/attribute/FileTime;
    .locals 3
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 992
    invoke-static {p0}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/io/file/PathUtils;->getLastModifiedFileTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public static getLastModifiedFileTime(Ljava/net/URL;)Ljava/nio/file/attribute/FileTime;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1005
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/file/PathUtils;->getLastModifiedFileTime(Ljava/net/URI;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getLastModifiedFileTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "defaultIfAbsent"    # Ljava/nio/file/attribute/FileTime;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 967
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2}, Lorg/apache/commons/io/file/PathUtils;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public static varargs getLastModifiedFileTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 980
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/file/PathUtils;->getLastModifiedFileTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method private static varargs getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1009
    const-string v0, "path"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    invoke-static {v0, p1}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method private static getParent(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 1013
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static varargs getPosixFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributeView;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .line 1025
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    invoke-static {p0, v0, p1}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    return-object v0
.end method

.method public static getTempDirectory()Ljava/nio/file/Path;
    .locals 2

    .line 1035
    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static varargs isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .line 1051
    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEmpty(Ljava/nio/file/Path;)Z
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1062
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->isEmptyDirectory(Ljava/nio/file/Path;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->isEmptyFile(Ljava/nio/file/Path;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static isEmptyDirectory(Ljava/nio/file/Path;)Z
    .locals 3
    .param p0, "directory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1076
    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    .line 1077
    .local v0, "directoryStream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    xor-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V

    .line 1077
    :cond_0
    return v1

    .line 1076
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
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

.method public static isEmptyFile(Ljava/nio/file/Path;)Z
    .locals 4
    .param p0, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1091
    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static varargs isNewer(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z
    .locals 1
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "timeMillis"    # J
    .param p3, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1155
    invoke-static {p1, p2}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lorg/apache/commons/io/file/PathUtils;->isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    return v0
.end method

.method public static isNewer(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 2
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "reference"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1168
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Lorg/apache/commons/io/file/PathUtils;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v1, v0}, Lorg/apache/commons/io/file/PathUtils;->isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    return v0
.end method

.method public static varargs isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z
    .locals 2
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "fileTime"    # Ljava/nio/file/attribute/FileTime;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1122
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v1}, Lorg/apache/commons/io/file/PathUtils;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1123
    return v0

    .line 1125
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static varargs isNewer(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z
    .locals 1
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "instant"    # Ljava/time/Instant;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1140
    invoke-static {p1}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/apache/commons/io/file/PathUtils;->isNewer(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    return v0
.end method

.method public static varargs isNewer(Ljava/nio/file/Path;Ljava/time/chrono/ChronoZonedDateTime;[Ljava/nio/file/LinkOption;)Z
    .locals 1
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/time/chrono/ChronoZonedDateTime<",
            "*>;[",
            "Ljava/nio/file/LinkOption;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1106
    .local p1, "czdt":Ljava/time/chrono/ChronoZonedDateTime;, "Ljava/time/chrono/ChronoZonedDateTime<*>;"
    const-string v0, "czdt"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1107
    invoke-interface {p1}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/apache/commons/io/file/PathUtils;->isNewer(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    return v0
.end method

.method public static varargs isOlder(Ljava/nio/file/Path;J[Ljava/nio/file/LinkOption;)Z
    .locals 1
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "timeMillis"    # J
    .param p3, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1216
    invoke-static {p1, p2}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lorg/apache/commons/io/file/PathUtils;->isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    return v0
.end method

.method public static isOlder(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 2
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "reference"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1229
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Lorg/apache/commons/io/file/PathUtils;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v1, v0}, Lorg/apache/commons/io/file/PathUtils;->isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    return v0
.end method

.method public static varargs isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z
    .locals 2
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "fileTime"    # Ljava/nio/file/attribute/FileTime;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1183
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v1}, Lorg/apache/commons/io/file/PathUtils;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1184
    return v0

    .line 1186
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->compareLastModifiedTimeTo(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)I

    move-result v1

    if-gez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static varargs isOlder(Ljava/nio/file/Path;Ljava/time/Instant;[Ljava/nio/file/LinkOption;)Z
    .locals 1
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "instant"    # Ljava/time/Instant;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1201
    invoke-static {p1}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/apache/commons/io/file/PathUtils;->isOlder(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    return v0
.end method

.method public static varargs isPosix(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .locals 1
    .param p0, "test"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .line 1241
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static varargs isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .line 1257
    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$deleteDirectory$0([Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;Ljava/nio/file/Path;Ljava/nio/file/attribute/PosixFileAttributes;)Lorg/apache/commons/io/file/Counters$PathCounters;
    .locals 3
    .param p0, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .param p1, "deleteOptions"    # [Lorg/apache/commons/io/file/DeleteOption;
    .param p2, "directory"    # Ljava/nio/file/Path;
    .param p3, "pfa"    # Ljava/nio/file/attribute/PosixFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    new-instance v0, Lorg/apache/commons/io/file/DeletingPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1, v2}, Lorg/apache/commons/io/file/DeletingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;[Ljava/nio/file/LinkOption;[Lorg/apache/commons/io/file/DeleteOption;[Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/file/DeletingPathVisitor;

    invoke-virtual {v0}, Lorg/apache/commons/io/file/DeletingPathVisitor;->getPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$filterPaths$1(Lorg/apache/commons/io/file/PathFilter;Ljava/nio/file/Path;)Z
    .locals 3
    .param p0, "filter"    # Lorg/apache/commons/io/file/PathFilter;
    .param p1, "p"    # Ljava/nio/file/Path;

    .line 827
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/io/file/PathUtils;->readBasicFileAttributes(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Lorg/apache/commons/io/file/PathFilter;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v1

    sget-object v2, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 828
    :catch_0
    move-exception v1

    .line 829
    .local v1, "e":Ljava/io/IOException;
    return v0

    .line 827
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return v0
.end method

.method static synthetic lambda$overrideReadOnly$2(Lorg/apache/commons/io/file/DeleteOption;)Z
    .locals 1
    .param p0, "e"    # Lorg/apache/commons/io/file/DeleteOption;

    .line 1322
    sget-object v0, Lorg/apache/commons/io/file/StandardDeleteOption;->OVERRIDE_READ_ONLY:Lorg/apache/commons/io/file/StandardDeleteOption;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$walk$3(Lorg/apache/commons/io/file/PathFilter;ZLjava/nio/file/Path;)Z
    .locals 2
    .param p0, "pathFilter"    # Lorg/apache/commons/io/file/PathFilter;
    .param p1, "readAttributes"    # Z
    .param p2, "path"    # Ljava/nio/file/Path;

    .line 1848
    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/apache/commons/io/file/PathUtils;->readBasicFileAttributesUnchecked(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, p2, v0}, Lorg/apache/commons/io/file/PathFilter;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    sget-object v1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static newDirectoryStream(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;)Ljava/nio/file/DirectoryStream;
    .locals 1
    .param p0, "dir"    # Ljava/nio/file/Path;
    .param p1, "pathFilter"    # Lorg/apache/commons/io/file/PathFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Lorg/apache/commons/io/file/PathFilter;",
            ")",
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1273
    new-instance v0, Lorg/apache/commons/io/file/DirectoryStreamFilter;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/file/DirectoryStreamFilter;-><init>(Lorg/apache/commons/io/file/PathFilter;)V

    invoke-static {p0, v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    return-object v0
.end method

.method public static newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1287
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    if-eqz p1, :cond_0

    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->OPEN_OPTIONS_APPEND:[Ljava/nio/file/OpenOption;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->OPEN_OPTIONS_TRUNCATE:[Ljava/nio/file/OpenOption;

    :goto_0
    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/file/PathUtils;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method static varargs newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .param p2, "openOptions"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1291
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1292
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    aget-object v1, p1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->NULL_LINK_OPTION:Ljava/nio/file/LinkOption;

    :goto_0
    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p0, v1, v0}, Lorg/apache/commons/io/file/PathUtils;->createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 1294
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    move-object v1, p2

    goto :goto_1

    :cond_2
    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

    :goto_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1295
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/OpenOption;>;"
    if-eqz p1, :cond_3

    move-object v1, p1

    goto :goto_2

    :cond_3
    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    :goto_2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1296
    sget-object v1, Lorg/apache/commons/io/file/PathUtils;->EMPTY_OPEN_OPTION_ARRAY:[Ljava/nio/file/OpenOption;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    return-object v1
.end method

.method public static noFollowLinkOptionArray()[Ljava/nio/file/LinkOption;
    .locals 1

    .line 1305
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->NOFOLLOW_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    invoke-virtual {v0}, [Ljava/nio/file/LinkOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/LinkOption;

    return-object v0
.end method

.method private static varargs notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .line 1309
    const-string v0, "path"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    invoke-static {v0, p1}, Ljava/nio/file/Files;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    return v0
.end method

.method private static varargs overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z
    .locals 2
    .param p0, "deleteOptions"    # [Lorg/apache/commons/io/file/DeleteOption;

    .line 1319
    if-nez p0, :cond_0

    .line 1320
    const/4 v0, 0x0

    return v0

    .line 1322
    :cond_0
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static varargs readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class<",
            "TA;>;[",
            "Ljava/nio/file/LinkOption;",
            ")TA;"
        }
    .end annotation

    .line 1338
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    .line 1339
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 1341
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public static readBasicFileAttributes(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1354
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static varargs readBasicFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .line 1366
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/file/PathUtils;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static readBasicFileAttributesUnchecked(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1379
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_LINK_OPTION_ARRAY:[Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->readBasicFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static varargs readDosFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributes;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .line 1391
    const-class v0, Ljava/nio/file/attribute/DosFileAttributes;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/file/PathUtils;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/DosFileAttributes;

    return-object v0
.end method

.method private static readIfSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1395
    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/nio/file/Files;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static varargs readOsFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .line 1407
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v0

    .line 1408
    .local v0, "fileAttributes":Ljava/nio/file/attribute/PosixFileAttributes;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->readDosFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributes;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static varargs readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/LinkOption;

    .line 1420
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/file/PathUtils;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/PosixFileAttributes;

    return-object v0
.end method

.method public static readString(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1434
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1

    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method static relativize(Ljava/util/Collection;Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;
    .locals 2
    .param p1, "parent"    # Ljava/nio/file/Path;
    .param p2, "sort"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            "Z",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 1447
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/nio/file/Path;>;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/nio/file/Path;>;"
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda3;-><init>(Ljava/nio/file/Path;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1448
    .local v0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/nio/file/Path;>;"
    if-eqz p2, :cond_1

    .line 1449
    if-nez p3, :cond_0

    invoke-interface {v0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 1451
    :cond_1
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private static varargs requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .locals 3
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "fileParamName"    # Ljava/lang/String;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;

    .line 1465
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1466
    invoke-static {p0, p2}, Lorg/apache/commons/io/file/PathUtils;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1469
    return-object p0

    .line 1467
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File system element for parameter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs setDosReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "readOnly"    # Z
    .param p2, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1473
    invoke-static {p0, p2}, Lorg/apache/commons/io/file/PathUtils;->getDosFileAttributeView(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/DosFileAttributeView;

    move-result-object v0

    .line 1474
    .local v0, "dosFileAttributeView":Ljava/nio/file/attribute/DosFileAttributeView;
    if-eqz v0, :cond_0

    .line 1475
    invoke-interface {v0, p1}, Ljava/nio/file/attribute/DosFileAttributeView;->setReadOnly(Z)V

    .line 1476
    const/4 v1, 0x1

    return v1

    .line 1478
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 1
    .param p0, "sourceFile"    # Ljava/nio/file/Path;
    .param p1, "targetFile"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1492
    const-string v0, "sourceFile"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1493
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/nio/file/Files;->setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;)Ljava/nio/file/Path;

    .line 1494
    return-void
.end method

.method private static varargs setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z
    .locals 3
    .param p0, "parent"    # Ljava/nio/file/Path;
    .param p1, "enableDeleteChildren"    # Z
    .param p2, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1509
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/io/file/PathUtils;->setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    return v0
.end method

.method private static varargs setPosixPermissions(Ljava/nio/file/Path;ZLjava/util/List;[Ljava/nio/file/LinkOption;)Z
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "addPermissions"    # Z
    .param p3, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Z",
            "Ljava/util/List<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;[",
            "Ljava/nio/file/LinkOption;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1535
    .local p2, "updatePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;"
    if-eqz p0, :cond_2

    .line 1536
    invoke-static {p0, p3}, Ljava/nio/file/Files;->getPosixFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;

    move-result-object v0

    .line 1537
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1538
    .local v1, "newPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    if-eqz p1, :cond_0

    .line 1539
    invoke-interface {v1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1541
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1543
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1544
    invoke-static {p0, v1}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    .line 1546
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 1548
    .end local v0    # "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    .end local v1    # "newPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static varargs setPosixReadOnlyFile(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V
    .locals 5
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "readOnly"    # Z
    .param p2, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1553
    invoke-static {p0, p2}, Ljava/nio/file/Files;->getPosixFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;

    move-result-object v0

    .line 1555
    .local v0, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/PosixFilePermission;>;"
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/nio/file/attribute/PosixFilePermission;

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1560
    .local v2, "readPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;"
    new-array v1, v1, [Ljava/nio/file/attribute/PosixFilePermission;

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1566
    .local v1, "writePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/attribute/PosixFilePermission;>;"
    if-eqz p1, :cond_0

    .line 1568
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1569
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1572
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1573
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1575
    :goto_0
    invoke-static {p0, v0}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    .line 1576
    return-void
.end method

.method public static varargs setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .locals 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "readOnly"    # Z
    .param p2, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1594
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->setDosReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 1595
    return-object p0

    .line 1599
    :cond_0
    goto :goto_0

    .line 1597
    :catch_0
    move-exception v0

    .line 1600
    :goto_0
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->getParent(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 1601
    .local v0, "parent":Ljava/nio/file/Path;
    invoke-static {v0, p2}, Lorg/apache/commons/io/file/PathUtils;->isPosix(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1605
    if-eqz p1, :cond_1

    .line 1608
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/file/PathUtils;->setPosixReadOnlyFile(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)V

    .line 1609
    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lorg/apache/commons/io/file/PathUtils;->setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z

    goto :goto_1

    .line 1613
    :cond_1
    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lorg/apache/commons/io/file/PathUtils;->setPosixDeletePermissions(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Z

    .line 1615
    :goto_1
    return-object p0

    .line 1602
    :cond_2
    new-instance v1, Ljava/io/IOException;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "DOS or POSIX file operations not available for \'%s\' %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static sizeOf(Ljava/nio/file/Path;)J
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1634
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    const-string v2, "path"

    invoke-static {p0, v2, v1}, Lorg/apache/commons/io/file/PathUtils;->requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    .line 1635
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->sizeOfDirectory(Ljava/nio/file/Path;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static sizeOfAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1650
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    const-string v2, "path"

    invoke-static {p0, v2, v1}, Lorg/apache/commons/io/file/PathUtils;->requireExists(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    .line 1651
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->sizeOfDirectoryAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static sizeOfDirectory(Ljava/nio/file/Path;)J
    .locals 2
    .param p0, "directory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1668
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->countDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$PathCounters;->getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$Counter;->getLong()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static sizeOfDirectoryAsBigInteger(Ljava/nio/file/Path;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "directory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1681
    invoke-static {p0}, Lorg/apache/commons/io/file/PathUtils;->countDirectoryAsBigInteger(Ljava/nio/file/Path;)Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$PathCounters;->getByteCounter()Lorg/apache/commons/io/file/Counters$Counter;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/io/file/Counters$Counter;->getBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static varargs toFileVisitOptionSet([Ljava/nio/file/FileVisitOption;)Ljava/util/Set;
    .locals 2
    .param p0, "fileVisitOptions"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/nio/file/FileVisitOption;",
            ")",
            "Ljava/util/Set<",
            "Ljava/nio/file/FileVisitOption;",
            ">;"
        }
    .end annotation

    .line 1691
    if-nez p0, :cond_0

    const-class v0, Ljava/nio/file/FileVisitOption;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method public static touch(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 2
    .param p0, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1705
    const-string v0, "file"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1706
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1707
    new-array v1, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p0, v1}, Lorg/apache/commons/io/file/PathUtils;->createParentDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 1708
    new-array v0, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p0, v0}, Ljava/nio/file/Files;->createFile(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    goto :goto_0

    .line 1710
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/io/file/attribute/FileTimes;->setLastModifiedTime(Ljava/nio/file/Path;)V

    .line 1712
    :goto_0
    return-object p0
.end method

.method public static varargs visitFileTree(Ljava/nio/file/FileVisitor;Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/FileVisitor;
    .locals 1
    .param p1, "first"    # Ljava/lang/String;
    .param p2, "more"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;>(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1768
    .local p0, "visitor":Ljava/nio/file/FileVisitor;, "TT;"
    invoke-static {p1, p2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object v0

    return-object v0
.end method

.method public static visitFileTree(Ljava/nio/file/FileVisitor;Ljava/net/URI;)Ljava/nio/file/FileVisitor;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;>(TT;",
            "Ljava/net/URI;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1784
    .local p0, "visitor":Ljava/nio/file/FileVisitor;, "TT;"
    invoke-static {p1}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/file/PathUtils;->visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;

    move-result-object v0

    return-object v0
.end method

.method public static visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;)Ljava/nio/file/FileVisitor;
    .locals 0
    .param p1, "directory"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;>(TT;",
            "Ljava/nio/file/Path;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1730
    .local p0, "visitor":Ljava/nio/file/FileVisitor;, "TT;"
    invoke-static {p1, p0}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    .line 1731
    return-object p0
.end method

.method public static visitFileTree(Ljava/nio/file/FileVisitor;Ljava/nio/file/Path;Ljava/util/Set;I)Ljava/nio/file/FileVisitor;
    .locals 0
    .param p1, "start"    # Ljava/nio/file/Path;
    .param p3, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/nio/file/FileVisitor<",
            "-",
            "Ljava/nio/file/Path;",
            ">;>(TT;",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "Ljava/nio/file/FileVisitOption;",
            ">;I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1750
    .local p0, "visitor":Ljava/nio/file/FileVisitor;, "TT;"
    .local p2, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/FileVisitOption;>;"
    invoke-static {p1, p2, p3, p0}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/util/Set;ILjava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    .line 1751
    return-object p0
.end method

.method public static varargs waitFor(Ljava/nio/file/Path;Ljava/time/Duration;[Ljava/nio/file/LinkOption;)Z
    .locals 9
    .param p0, "file"    # Ljava/nio/file/Path;
    .param p1, "timeout"    # Ljava/time/Duration;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;

    .line 1801
    const-string v0, "file"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1802
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    .line 1803
    .local v0, "finishInstant":Ljava/time/Instant;
    const/4 v1, 0x0

    .line 1804
    .local v1, "interrupted":Z
    const-wide/16 v2, 0x64

    .line 1806
    .local v2, "minSleepMillis":J
    :goto_0
    :try_start_0
    invoke-static {p0, p2}, Lorg/apache/commons/io/file/PathUtils;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1807
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    .line 1808
    .local v4, "now":Ljava/time/Instant;
    invoke-virtual {v4, v0}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 1809
    nop

    .line 1820
    if-eqz v1, :cond_0

    .line 1821
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 1809
    :cond_0
    const/4 v5, 0x0

    return v5

    .line 1812
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/time/Instant;->minusMillis(J)Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    const-wide/16 v7, 0x64

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/io/ThreadUtils;->sleep(Ljava/time/Duration;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1815
    :catch_0
    move-exception v5

    .line 1816
    .local v5, "ex":Ljava/lang/Exception;
    goto :goto_2

    .line 1813
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 1814
    .local v5, "ignore":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 1817
    .end local v5    # "ignore":Ljava/lang/InterruptedException;
    :goto_1
    nop

    .line 1818
    .end local v4    # "now":Ljava/time/Instant;
    goto :goto_0

    .line 1820
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 1821
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 1824
    :cond_3
    invoke-static {p0, p2}, Lorg/apache/commons/io/file/PathUtils;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    return v4

    .line 1820
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_4

    .line 1821
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 1823
    :cond_4
    throw v4
.end method

.method public static varargs walk(Ljava/nio/file/Path;Lorg/apache/commons/io/file/PathFilter;IZ[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;
    .locals 2
    .param p0, "start"    # Ljava/nio/file/Path;
    .param p1, "pathFilter"    # Lorg/apache/commons/io/file/PathFilter;
    .param p2, "maxDepth"    # I
    .param p3, "readAttributes"    # Z
    .param p4, "options"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Lorg/apache/commons/io/file/PathFilter;",
            "IZ[",
            "Ljava/nio/file/FileVisitOption;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1847
    invoke-static {p0, p2, p4}, Ljava/nio/file/Files;->walk(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p3}, Lorg/apache/commons/io/file/PathUtils$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/file/PathFilter;Z)V

    .line 1848
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1847
    return-object v0
.end method

.method private static withPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;ZLorg/apache/commons/io/function/IOFunction;)Ljava/lang/Object;
    .locals 3
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .param p2, "overrideReadOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/LinkOption;",
            "Z",
            "Lorg/apache/commons/io/function/IOFunction<",
            "Ljava/nio/file/attribute/PosixFileAttributes;",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1853
    .local p3, "function":Lorg/apache/commons/io/function/IOFunction;, "Lorg/apache/commons/io/function/IOFunction<Ljava/nio/file/attribute/PosixFileAttributes;TR;>;"
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/io/file/PathUtils;->readPosixFileAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1855
    .local v0, "posixFileAttributes":Ljava/nio/file/attribute/PosixFileAttributes;
    :goto_0
    :try_start_0
    invoke-interface {p3, v0}, Lorg/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1857
    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    invoke-static {p0, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1858
    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v2

    invoke-static {p0, v2}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    .line 1855
    :cond_1
    return-object v1

    .line 1857
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    invoke-static {p0, p1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1858
    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v2

    invoke-static {p0, v2}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    .line 1860
    :cond_2
    throw v1
.end method

.method public static varargs writeString(Ljava/nio/file/Path;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "openOptions"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1878
    const-string v0, "path"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1879
    const-string v0, "charSequence"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1880
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p0, v0, p3}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 1881
    return-object p0
.end method
