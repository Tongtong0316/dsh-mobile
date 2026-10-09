.class public Lorg/apache/commons/io/file/spi/FileSystemProviders;
.super Ljava/lang/Object;
.source "FileSystemProviders.java"


# static fields
.field private static final INSTALLED:Lorg/apache/commons/io/file/spi/FileSystemProviders;


# instance fields
.field private final providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/spi/FileSystemProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lorg/apache/commons/io/file/spi/FileSystemProviders;

    invoke-static {}, Ljava/nio/file/spi/FileSystemProvider;->installedProviders()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/file/spi/FileSystemProviders;-><init>(Ljava/util/List;)V

    sput-object v0, Lorg/apache/commons/io/file/spi/FileSystemProviders;->INSTALLED:Lorg/apache/commons/io/file/spi/FileSystemProviders;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/spi/FileSystemProvider;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/spi/FileSystemProvider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/io/file/spi/FileSystemProviders;->providers:Ljava/util/List;

    .line 66
    return-void
.end method

.method public static getFileSystemProvider(Ljava/nio/file/Path;)Ljava/nio/file/spi/FileSystemProvider;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;

    .line 46
    const-string v0, "path"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method

.method public static installed()Lorg/apache/commons/io/file/spi/FileSystemProviders;
    .locals 1

    .line 56
    sget-object v0, Lorg/apache/commons/io/file/spi/FileSystemProviders;->INSTALLED:Lorg/apache/commons/io/file/spi/FileSystemProviders;

    return-object v0
.end method

.method static synthetic lambda$getFileSystemProvider$0(Ljava/lang/String;Ljava/nio/file/spi/FileSystemProvider;)Z
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/nio/file/spi/FileSystemProvider;

    .line 82
    invoke-virtual {p1}, Ljava/nio/file/spi/FileSystemProvider;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getFileSystemProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;
    .locals 2
    .param p1, "scheme"    # Ljava/lang/String;

    .line 76
    const-string v0, "scheme"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    const-string v0, "file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/file/spi/FileSystemProviders;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/file/spi/FileSystemProviders$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/file/spi/FileSystemProviders$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/spi/FileSystemProvider;

    return-object v0
.end method

.method public getFileSystemProvider(Ljava/net/URI;)Ljava/nio/file/spi/FileSystemProvider;
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .line 92
    const-string v0, "uri"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/file/spi/FileSystemProviders;->getFileSystemProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method

.method public getFileSystemProvider(Ljava/net/URL;)Ljava/nio/file/spi/FileSystemProvider;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .line 102
    const-string v0, "url"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/file/spi/FileSystemProviders;->getFileSystemProvider(Ljava/lang/String;)Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    return-object v0
.end method
