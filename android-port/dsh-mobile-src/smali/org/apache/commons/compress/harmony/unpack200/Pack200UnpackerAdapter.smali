.class public Lorg/apache/commons/compress/harmony/unpack200/Pack200UnpackerAdapter;
.super Lorg/apache/commons/compress/harmony/pack200/Pack200Adapter;
.source "Pack200UnpackerAdapter.java"

# interfaces
.implements Lorg/apache/commons/compress/java/util/jar/Pack200$Unpacker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/Pack200Adapter;-><init>()V

    return-void
.end method

.method static newBoundedInputStream(Ljava/io/File;)Lorg/apache/commons/io/input/BoundedInputStream;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/Pack200UnpackerAdapter;->newBoundedInputStream(Ljava/nio/file/Path;)Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v0

    return-object v0
.end method

.method private static newBoundedInputStream(Ljava/io/FileInputStream;)Lorg/apache/commons/io/input/BoundedInputStream;
    .locals 2
    .param p0, "fileInputStream"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lorg/apache/commons/compress/harmony/unpack200/Pack200UnpackerAdapter;->readPathString(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/Pack200UnpackerAdapter;->newBoundedInputStream(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v0

    return-object v0
.end method

.method static newBoundedInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/input/BoundedInputStream;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    instance-of v0, p0, Lorg/apache/commons/io/input/BoundedInputStream;

    if-eqz v0, :cond_0

    .line 66
    move-object v0, p0

    check-cast v0, Lorg/apache/commons/io/input/BoundedInputStream;

    return-object v0

    .line 68
    :cond_0
    instance-of v0, p0, Lorg/apache/commons/io/input/CloseShieldInputStream;

    if-eqz v0, :cond_1

    .line 70
    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/Pack200UnpackerAdapter;->newBoundedInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v0

    return-object v0

    .line 72
    :cond_1
    instance-of v0, p0, Ljava/io/FilterInputStream;

    if-eqz v0, :cond_2

    .line 73
    move-object v0, p0

    check-cast v0, Ljava/io/FilterInputStream;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/Pack200UnpackerAdapter;->unwrap(Ljava/io/FilterInputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/Pack200UnpackerAdapter;->newBoundedInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v0

    return-object v0

    .line 75
    :cond_2
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_3

    .line 76
    move-object v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/Pack200UnpackerAdapter;->newBoundedInputStream(Ljava/io/FileInputStream;)Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v0

    return-object v0

    .line 79
    :cond_3
    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/Pack200UnpackerAdapter;->newBoundedInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v0

    return-object v0
.end method

.method static varargs newBoundedInputStream(Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/commons/io/input/BoundedInputStream;
    .locals 1
    .param p0, "first"    # Ljava/lang/String;
    .param p1, "more"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-static {p0, p1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/Pack200UnpackerAdapter;->newBoundedInputStream(Ljava/nio/file/Path;)Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v0

    return-object v0
.end method

.method static newBoundedInputStream(Ljava/net/URL;)Lorg/apache/commons/io/input/BoundedInputStream;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/Pack200UnpackerAdapter;->newBoundedInputStream(Ljava/nio/file/Path;)Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v0

    return-object v0
.end method

.method static newBoundedInputStream(Ljava/nio/file/Path;)Lorg/apache/commons/io/input/BoundedInputStream;
    .locals 5
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/OpenOption;

    .line 96
    invoke-static {p0, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    .line 97
    invoke-static {p0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setMaxCount(J)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    .line 98
    invoke-virtual {v0, v2}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setPropagateClose(Z)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    .line 99
    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v0

    .line 95
    return-object v0
.end method

.method private static readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 136
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static readPathString(Ljava/io/FileInputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "fis"    # Ljava/io/FileInputStream;

    .line 143
    const-string v0, "path"

    invoke-static {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/Pack200UnpackerAdapter;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static unwrap(Ljava/io/FilterInputStream;)Ljava/io/InputStream;
    .locals 1
    .param p0, "filterInputStream"    # Ljava/io/FilterInputStream;

    .line 153
    const-string v0, "in"

    invoke-static {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/Pack200UnpackerAdapter;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method static unwrap(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 164
    instance-of v0, p0, Ljava/io/FilterInputStream;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/io/FilterInputStream;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/Pack200UnpackerAdapter;->unwrap(Ljava/io/FilterInputStream;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public unpack(Ljava/io/File;Ljava/util/jar/JarOutputStream;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "out"    # Ljava/util/jar/JarOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 172
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 173
    .local v0, "size":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x2000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v2, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x2000

    .line 174
    .local v2, "bufferSize":I
    :goto_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/nio/file/OpenOption;

    invoke-static {v4, v5}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 175
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, v3, p2}, Lorg/apache/commons/compress/harmony/unpack200/Pack200UnpackerAdapter;->unpack(Ljava/io/InputStream;Ljava/util/jar/JarOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 177
    .end local v3    # "in":Ljava/io/InputStream;
    return-void

    .line 174
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v4

    .line 170
    .end local v0    # "size":J
    .end local v2    # "bufferSize":I
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify both input and output streams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unpack(Ljava/io/InputStream;Ljava/util/jar/JarOutputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/util/jar/JarOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 184
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/Pack200UnpackerAdapter;->completed(D)V

    .line 186
    :try_start_0
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/Archive;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/harmony/unpack200/Archive;-><init>(Ljava/io/InputStream;Ljava/util/jar/JarOutputStream;)V

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Archive;->unpack()V
    :try_end_0
    .catch Lorg/apache/commons/compress/harmony/pack200/Pack200Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    nop

    .line 190
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/Pack200UnpackerAdapter;->completed(D)V

    .line 191
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unpack Jar:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    .end local v0    # "e":Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify both input and output streams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
