.class public Lorg/apache/commons/io/filefilter/PathEqualsFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "PathEqualsFileFilter.java"


# instance fields
.field private final path:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 0
    .param p1, "file"    # Ljava/nio/file/Path;

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/commons/io/filefilter/PathEqualsFileFilter;->path:Ljava/nio/file/Path;

    .line 44
    return-void
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "attributes"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 53
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/PathEqualsFileFilter;->path:Ljava/nio/file/Path;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/filefilter/PathEqualsFileFilter;->toFileVisitResult(Z)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0
.end method

.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 48
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/PathEqualsFileFilter;->path:Ljava/nio/file/Path;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
