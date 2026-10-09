.class public Lorg/apache/commons/io/filefilter/HiddenFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "HiddenFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final HIDDEN:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field public static final VISIBLE:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field private static final serialVersionUID:J = 0x7bf0b9c4d4ed8916L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lorg/apache/commons/io/filefilter/HiddenFileFilter;

    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/HiddenFileFilter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/filefilter/HiddenFileFilter;->HIDDEN:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 87
    sget-object v0, Lorg/apache/commons/io/filefilter/HiddenFileFilter;->HIDDEN:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0}, Lorg/apache/commons/io/filefilter/IOFileFilter;->negate()Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/filefilter/HiddenFileFilter;->VISIBLE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 93
    return-void
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "attributes"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 117
    new-instance v0, Lorg/apache/commons/io/filefilter/HiddenFileFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/io/filefilter/HiddenFileFilter$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/filefilter/HiddenFileFilter;Ljava/nio/file/Path;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/filefilter/HiddenFileFilter;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0
.end method

.method public accept(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 104
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

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

.method synthetic lambda$accept$0$org-apache-commons-io-filefilter-HiddenFileFilter(Ljava/nio/file/Path;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .param p1, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/nio/file/Files;->isHidden(Ljava/nio/file/Path;)Z

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
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/filefilter/HiddenFileFilter;->toFileVisitResult(Z)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0
.end method
