.class public Lorg/apache/commons/io/filefilter/FileEqualsFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "FileEqualsFileFilter.java"


# instance fields
.field private final file:Ljava/io/File;

.field private final path:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 43
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 44
    const-string v0, "file"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/FileEqualsFileFilter;->file:Ljava/io/File;

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/FileEqualsFileFilter;->path:Ljava/nio/file/Path;

    .line 46
    return-void
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "attributes"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 55
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/FileEqualsFileFilter;->path:Ljava/nio/file/Path;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/filefilter/FileEqualsFileFilter;->toFileVisitResult(Z)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0
.end method

.method public accept(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 50
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/FileEqualsFileFilter;->file:Ljava/io/File;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
