.class public Lorg/apache/commons/io/filefilter/PathVisitorFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "PathVisitorFileFilter.java"


# instance fields
.field private final pathVisitor:Lorg/apache/commons/io/file/PathVisitor;


# direct methods
.method public constructor <init>(Lorg/apache/commons/io/file/PathVisitor;)V
    .locals 1
    .param p1, "pathVisitor"    # Lorg/apache/commons/io/file/PathVisitor;

    .line 45
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 46
    if-nez p1, :cond_0

    sget-object v0, Lorg/apache/commons/io/file/NoopPathVisitor;->INSTANCE:Lorg/apache/commons/io/file/NoopPathVisitor;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/io/filefilter/PathVisitorFileFilter;->pathVisitor:Lorg/apache/commons/io/file/PathVisitor;

    .line 47
    return-void
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "attributes"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 71
    new-instance v0, Lorg/apache/commons/io/filefilter/PathVisitorFileFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/io/filefilter/PathVisitorFileFilter$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/filefilter/PathVisitorFileFilter;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/filefilter/PathVisitorFileFilter;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0
.end method

.method public accept(Ljava/io/File;)Z
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .line 52
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    .line 53
    .local v2, "path":Ljava/nio/file/Path;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lorg/apache/commons/io/file/PathUtils;->readBasicFileAttributes(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/io/filefilter/PathVisitorFileFilter;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v3

    sget-object v4, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    .line 54
    .end local v2    # "path":Ljava/nio/file/Path;
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {p0, v2}, Lorg/apache/commons/io/filefilter/PathVisitorFileFilter;->handle(Ljava/lang/Throwable;)Ljava/nio/file/FileVisitResult;

    move-result-object v3

    sget-object v4, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 62
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 63
    .local v2, "path":Ljava/nio/file/Path;
    invoke-static {v2}, Lorg/apache/commons/io/file/PathUtils;->readBasicFileAttributes(Ljava/nio/file/Path;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/io/filefilter/PathVisitorFileFilter;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v3

    sget-object v4, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 64
    .end local v2    # "path":Ljava/nio/file/Path;
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {p0, v2}, Lorg/apache/commons/io/filefilter/PathVisitorFileFilter;->handle(Ljava/lang/Throwable;)Ljava/nio/file/FileVisitResult;

    move-result-object v3

    sget-object v4, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method synthetic lambda$accept$0$org-apache-commons-io-filefilter-PathVisitorFileFilter(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 2
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "attributes"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/filefilter/PathVisitorFileFilter;->pathVisitor:Lorg/apache/commons/io/file/PathVisitor;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/apache/commons/io/file/PathVisitor;->postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/filefilter/PathVisitorFileFilter;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/filefilter/PathVisitorFileFilter;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "attributes"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/PathVisitorFileFilter;->pathVisitor:Lorg/apache/commons/io/file/PathVisitor;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/io/file/PathVisitor;->visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0
.end method
