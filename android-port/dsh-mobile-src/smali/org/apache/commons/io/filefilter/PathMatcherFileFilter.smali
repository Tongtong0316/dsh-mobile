.class public Lorg/apache/commons/io/filefilter/PathMatcherFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "PathMatcherFileFilter.java"


# instance fields
.field private final pathMatcher:Ljava/nio/file/PathMatcher;


# direct methods
.method public constructor <init>(Ljava/nio/file/PathMatcher;)V
    .locals 1
    .param p1, "pathMatcher"    # Ljava/nio/file/PathMatcher;

    .line 39
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 40
    const-string v0, "pathMatcher"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/PathMatcher;

    iput-object v0, p0, Lorg/apache/commons/io/filefilter/PathMatcherFileFilter;->pathMatcher:Ljava/nio/file/PathMatcher;

    .line 41
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 45
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/filefilter/PathMatcherFileFilter;->matches(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matches(Ljava/nio/file/Path;)Z
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 50
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/PathMatcherFileFilter;->pathMatcher:Ljava/nio/file/PathMatcher;

    invoke-interface {v0, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method
