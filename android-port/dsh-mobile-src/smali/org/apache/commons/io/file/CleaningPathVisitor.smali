.class public Lorg/apache/commons/io/file/CleaningPathVisitor;
.super Lorg/apache/commons/io/file/CountingPathVisitor;
.source "CleaningPathVisitor.java"


# instance fields
.field private final overrideReadOnly:Z

.field private final skip:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Lorg/apache/commons/io/file/Counters$PathCounters;[Ljava/lang/String;)V
    .locals 1
    .param p1, "pathCounter"    # Lorg/apache/commons/io/file/Counters$PathCounters;
    .param p2, "skip"    # [Ljava/lang/String;

    .line 82
    sget-object v0, Lorg/apache/commons/io/file/PathUtils;->EMPTY_DELETE_OPTION_ARRAY:[Lorg/apache/commons/io/file/DeleteOption;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/io/file/CleaningPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;[Lorg/apache/commons/io/file/DeleteOption;[Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/io/file/Counters$PathCounters;[Lorg/apache/commons/io/file/DeleteOption;[Ljava/lang/String;)V
    .locals 2
    .param p1, "pathCounter"    # Lorg/apache/commons/io/file/Counters$PathCounters;
    .param p2, "deleteOption"    # [Lorg/apache/commons/io/file/DeleteOption;
    .param p3, "skip"    # [Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1}, Lorg/apache/commons/io/file/CountingPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;)V

    .line 69
    if-eqz p3, :cond_0

    invoke-virtual {p3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/io/file/CleaningPathVisitor;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 70
    .local v0, "temp":[Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 71
    iput-object v0, p0, Lorg/apache/commons/io/file/CleaningPathVisitor;->skip:[Ljava/lang/String;

    .line 72
    invoke-static {p2}, Lorg/apache/commons/io/file/StandardDeleteOption;->overrideReadOnly([Lorg/apache/commons/io/file/DeleteOption;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/commons/io/file/CleaningPathVisitor;->overrideReadOnly:Z

    .line 73
    return-void
.end method

.method private accept(Ljava/nio/file/Path;)Z
    .locals 2
    .param p1, "path"    # Ljava/nio/file/Path;

    .line 92
    iget-object v0, p0, Lorg/apache/commons/io/file/CleaningPathVisitor;->skip:[Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/io/file/PathUtils;->getFileNameString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static withBigIntegerCounters()Lorg/apache/commons/io/file/CountingPathVisitor;
    .locals 3

    .line 44
    new-instance v0, Lorg/apache/commons/io/file/CleaningPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->bigIntegerPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/file/CleaningPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;[Ljava/lang/String;)V

    return-object v0
.end method

.method public static withLongCounters()Lorg/apache/commons/io/file/CountingPathVisitor;
    .locals 3

    .line 53
    new-instance v0, Lorg/apache/commons/io/file/CleaningPathVisitor;

    invoke-static {}, Lorg/apache/commons/io/file/Counters;->longPathCounters()Lorg/apache/commons/io/file/Counters$PathCounters;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/file/CleaningPathVisitor;-><init>(Lorg/apache/commons/io/file/Counters$PathCounters;[Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 98
    return v0

    .line 100
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/io/file/CountingPathVisitor;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 101
    return v2

    .line 103
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    .line 104
    return v2

    .line 106
    :cond_2
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/io/file/CleaningPathVisitor;

    .line 107
    .local v1, "other":Lorg/apache/commons/io/file/CleaningPathVisitor;
    iget-boolean v3, p0, Lorg/apache/commons/io/file/CleaningPathVisitor;->overrideReadOnly:Z

    iget-boolean v4, v1, Lorg/apache/commons/io/file/CleaningPathVisitor;->overrideReadOnly:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/apache/commons/io/file/CleaningPathVisitor;->skip:[Ljava/lang/String;

    iget-object v4, v1, Lorg/apache/commons/io/file/CleaningPathVisitor;->skip:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 112
    const/16 v0, 0x1f

    .line 113
    .local v0, "prime":I
    invoke-super {p0}, Lorg/apache/commons/io/file/CountingPathVisitor;->hashCode()I

    move-result v1

    .line 114
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/commons/io/file/CleaningPathVisitor;->skip:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 115
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-boolean v3, p0, Lorg/apache/commons/io/file/CleaningPathVisitor;->overrideReadOnly:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 116
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public bridge synthetic preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CleaningPathVisitor;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p2, "attributes"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/file/CountingPathVisitor;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    .line 122
    invoke-direct {p0, p1}, Lorg/apache/commons/io/file/CleaningPathVisitor;->accept(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

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

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CleaningPathVisitor;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 4
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "attributes"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1}, Lorg/apache/commons/io/file/CleaningPathVisitor;->accept(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    sget-object v2, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-boolean v1, p0, Lorg/apache/commons/io/file/CleaningPathVisitor;->overrideReadOnly:Z

    if-eqz v1, :cond_0

    .line 130
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    sget-object v1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v1, v0, v3

    invoke-static {p1, v3, v0}, Lorg/apache/commons/io/file/PathUtils;->setReadOnly(Ljava/nio/file/Path;Z[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    .line 132
    :cond_0
    invoke-static {p1}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 134
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/file/CleaningPathVisitor;->updateFileCounters(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    .line 135
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0
.end method
