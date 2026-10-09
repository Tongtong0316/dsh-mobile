.class public interface abstract Lorg/apache/commons/compress/archivers/ArchiveEntry;
.super Ljava/lang/Object;
.source "ArchiveEntry.java"


# static fields
.field public static final SIZE_UNKNOWN:J = -0x1L


# virtual methods
.method public abstract getLastModifiedDate()Ljava/util/Date;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSize()J
.end method

.method public abstract isDirectory()Z
.end method

.method public resolveIn(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 5
    .param p1, "parentPath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v1

    .line 78
    .local v1, "outputFile":Ljava/nio/file/Path;
    invoke-interface {v1, p1}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    return-object v1

    .line 79
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Zip slip \'%s\' + \'%s\' -> \'%s\'"

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
