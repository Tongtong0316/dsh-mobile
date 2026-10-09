.class public Lorg/apache/commons/io/file/AccumulatorPathVisitor;
.super Lorg/apache/commons/io/file/CountingPathVisitor;
.source "AccumulatorPathVisitor.java"


# instance fields
.field private final dirList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-static {}, Lorg/apache/commons/io/file/Counters;->noopPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V
    .locals 1
    .param p1, "pathCounter"    # Lorg/apache/commons/io/file/Counters$PathCounters;

    .line 125
    invoke-direct {p0, p1}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)V
    .locals 1
    .param p1, "pathCounter"    # Lorg/apache/commons/io/file/Counters$PathCounters;
    .param p2, "fileFilter"    # Lorg/apache/commons/io/file/PathFilter;
    .param p3, "dirFilter"    # Lorg/apache/commons/io/file/PathFilter;

    .line 137
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    .line 138
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/function/IOBiFunction;)V
    .locals 1
    .param p1, "pathCounter"    # Lorg/apache/commons/io/file/Counters$PathCounters;
    .param p2, "fileFilter"    # Lorg/apache/commons/io/file/PathFilter;
    .param p3, "dirFilter"    # Lorg/apache/commons/io/file/PathFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/file/Counters$PathCounters;",
            "Lorg/apache/commons/io/file/PathFilter;",
            "Lorg/apache/commons/io/file/PathFilter;",
            "Lorg/apache/commons/io/function/IOBiFunction<",
            "Ljava/nio/file/Path;",
            "Ljava/io/IOException;",
            "Ljava/nio/file/FileVisitResult;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p4, "visitFileFailed":Lorg/apache/commons/io/function/IOBiFunction;, "Lorg/apache/commons/io/function/IOBiFunction<Ljava/nio/file/Path;Ljava/io/IOException;Ljava/nio/file/FileVisitResult;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/function/IOBiFunction;)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    .line 152
    return-void
.end method

.method private add(Ljava/util/List;Ljava/nio/file/Path;)V
    .locals 1
    .param p2, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            ")V"
        }
    .end annotation

    .line 155
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/nio/file/Path;>;"
    invoke-interface {p2}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public static withBigIntegerCounters()Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 2

    .line 69
    new-instance v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->bigIntegerPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V

    return-object v0
.end method

.method public static withBigIntegerCounters(Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 2
    .param p0, "fileFilter"    # Lorg/apache/commons/io/file/PathFilter;
    .param p1, "dirFilter"    # Lorg/apache/commons/io/file/PathFilter;

    .line 82
    new-instance v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->bigIntegerPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)V

    return-object v0
.end method

.method public static withLongCounters()Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 2

    .line 91
    new-instance v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V

    return-object v0
.end method

.method public static withLongCounters(Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    .locals 2
    .param p0, "fileFilter"    # Lorg/apache/commons/io/file/PathFilter;
    .param p1, "dirFilter"    # Lorg/apache/commons/io/file/PathFilter;

    .line 103
    new-instance v0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;Lorg/apache/commons/io/file/PathFilter;Lorg/apache/commons/io/file/PathFilter;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 160
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 161
    return v0

    .line 163
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/io/file/CountingPathVisitor;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 164
    return v2

    .line 166
    :cond_1
    instance-of v1, p1, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    if-nez v1, :cond_2

    .line 167
    return v2

    .line 169
    :cond_2
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/io/file/AccumulatorPathVisitor;

    .line 170
    .local v1, "other":Lorg/apache/commons/io/file/AccumulatorPathVisitor;
    iget-object v3, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    iget-object v4, v1, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    iget-object v4, v1, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDirList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 193
    const/16 v0, 0x1f

    .line 194
    .local v0, "prime":I
    invoke-super {p0}, Lorg/apache/commons/io/file/CountingPathVisitor;->hashCode()I

    move-result v1

    .line 195
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 196
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public relativizeDirectories(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;
    .locals 1
    .param p1, "parent"    # Ljava/nio/file/Path;
    .param p2, "sort"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 210
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/nio/file/Path;>;"
    invoke-virtual {p0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getDirList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/io/file/PathUtils;->relativize(Ljava/util/Collection;Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public relativizeFiles(Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;
    .locals 1
    .param p1, "parent"    # Ljava/nio/file/Path;
    .param p2, "sort"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 224
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/nio/file/Path;>;"
    invoke-virtual {p0}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->getFileList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/io/file/PathUtils;->relativize(Ljava/util/Collection;Ljava/nio/file/Path;ZLjava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected updateDirCounter(Ljava/nio/file/Path;Ljava/io/IOException;)V
    .locals 1
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p2, "exc"    # Ljava/io/IOException;

    .line 229
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->updateDirCounter(Ljava/nio/file/Path;Ljava/io/IOException;)V

    .line 230
    iget-object v0, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->dirList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->add(Ljava/util/List;Ljava/nio/file/Path;)V

    .line 231
    return-void
.end method

.method protected updateFileCounters(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V
    .locals 1
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "attributes"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 235
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->updateFileCounters(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    .line 236
    iget-object v0, p0, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->fileList:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/io/file/AccumulatorPathVisitor;->add(Ljava/util/List;Ljava/nio/file/Path;)V

    .line 237
    return-void
.end method
