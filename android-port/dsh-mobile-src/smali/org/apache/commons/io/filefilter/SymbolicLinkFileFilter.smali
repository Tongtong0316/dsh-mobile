.class public Lorg/apache/commons/io/filefilter/SymbolicLinkFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "SymbolicLinkFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/io/filefilter/SymbolicLinkFileFilter;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lorg/apache/commons/io/filefilter/SymbolicLinkFileFilter;

    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/SymbolicLinkFileFilter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/filefilter/SymbolicLinkFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/SymbolicLinkFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/FileVisitResult;Ljava/nio/file/FileVisitResult;)V
    .locals 0
    .param p1, "onAccept"    # Ljava/nio/file/FileVisitResult;
    .param p2, "onReject"    # Ljava/nio/file/FileVisitResult;

    .line 104
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>(Ljava/nio/file/FileVisitResult;Ljava/nio/file/FileVisitResult;)V

    .line 105
    return-void
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "attributes"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 128
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/filefilter/SymbolicLinkFileFilter;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/filefilter/SymbolicLinkFileFilter;->toFileVisitResult(Z)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0
.end method

.method public accept(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 116
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/filefilter/SymbolicLinkFileFilter;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method isSymbolicLink(Ljava/nio/file/Path;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/nio/file/Path;

    .line 142
    invoke-static {p1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method
