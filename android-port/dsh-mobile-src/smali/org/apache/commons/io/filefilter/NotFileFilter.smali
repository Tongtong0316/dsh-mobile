.class public Lorg/apache/commons/io/filefilter/NotFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "NotFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5517b05cf2c98bb6L


# instance fields
.field private final filter:Lorg/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method public constructor <init>(Lorg/apache/commons/io/filefilter/IOFileFilter;)V
    .locals 1
    .param p1, "filter"    # Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 49
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 50
    const-string v0, "filter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lorg/apache/commons/io/filefilter/NotFileFilter;->filter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 52
    return-void
.end method

.method private not(Ljava/nio/file/FileVisitResult;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .param p1, "accept"    # Ljava/nio/file/FileVisitResult;

    .line 90
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-ne p1, v0, :cond_0

    sget-object v0, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "attributes"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 86
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/NotFileFilter;->filter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/io/filefilter/NotFileFilter;->not(Ljava/nio/file/FileVisitResult;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0
.end method

.method public accept(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 62
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/NotFileFilter;->filter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0, p1}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/NotFileFilter;->filter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOT ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/io/filefilter/NotFileFilter;->filter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
