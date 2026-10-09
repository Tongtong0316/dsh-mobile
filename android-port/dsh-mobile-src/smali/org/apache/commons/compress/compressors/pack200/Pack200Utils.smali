.class public Lorg/apache/commons/compress/compressors/pack200/Pack200Utils;
.super Ljava/lang/Object;
.source "Pack200Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    return-void
.end method

.method public static normalize(Ljava/io/File;)V
    .locals 1
    .param p0, "jar"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    invoke-static {p0, p0, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200Utils;->normalize(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V

    .line 59
    return-void
.end method

.method public static normalize(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200Utils;->normalize(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V

    .line 84
    return-void
.end method

.method public static normalize(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V
    .locals 6
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    .local p2, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p2, v0

    .line 108
    :cond_0
    const-string v0, "pack.segment.limit"

    const-string v1, "-1"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "pack200normalize"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/attribute/FileAttribute;

    const-string v3, "commons-compress"

    invoke-static {v3, v0, v2}, Ljava/nio/file/Files;->createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    .line 111
    .local v0, "tempFile":Ljava/nio/file/Path;
    :try_start_0
    new-array v2, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 112
    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_1
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 113
    .local v3, "jarFile":Ljava/util/jar/JarFile;
    :try_start_2
    invoke-static {}, Lorg/apache/commons/compress/java/util/jar/Pack200;->newPacker()Lorg/apache/commons/compress/java/util/jar/Pack200$Packer;

    move-result-object v4

    .line 114
    .local v4, "packer":Lorg/apache/commons/compress/java/util/jar/Pack200$Packer;
    invoke-interface {v4}, Lorg/apache/commons/compress/java/util/jar/Pack200$Packer;->properties()Ljava/util/SortedMap;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 115
    invoke-interface {v4, v3, v2}, Lorg/apache/commons/compress/java/util/jar/Pack200$Packer;->pack(Ljava/util/jar/JarFile;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 116
    .end local v4    # "packer":Lorg/apache/commons/compress/java/util/jar/Pack200$Packer;
    :try_start_3
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .end local v3    # "jarFile":Ljava/util/jar/JarFile;
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 117
    .end local v2    # "fos":Ljava/io/OutputStream;
    :cond_1
    invoke-static {}, Lorg/apache/commons/compress/java/util/jar/Pack200;->newUnpacker()Lorg/apache/commons/compress/java/util/jar/Pack200$Unpacker;

    move-result-object v2

    .line 118
    .local v2, "unpacker":Lorg/apache/commons/compress/java/util/jar/Pack200$Unpacker;
    new-instance v3, Ljava/util/jar/JarOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v4, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    move-object v1, v3

    .line 119
    .local v1, "jos":Ljava/util/jar/JarOutputStream;
    :try_start_5
    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/compress/java/util/jar/Pack200$Unpacker;->unpack(Ljava/io/File;Ljava/util/jar/JarOutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 120
    :try_start_6
    invoke-virtual {v1}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 122
    .end local v1    # "jos":Ljava/util/jar/JarOutputStream;
    .end local v2    # "unpacker":Lorg/apache/commons/compress/java/util/jar/Pack200$Unpacker;
    invoke-static {v0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 123
    nop

    .line 124
    return-void

    .line 118
    .restart local v1    # "jos":Ljava/util/jar/JarOutputStream;
    .restart local v2    # "unpacker":Lorg/apache/commons/compress/java/util/jar/Pack200$Unpacker;
    :catchall_0
    move-exception v3

    :try_start_7
    invoke-virtual {v1}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "tempFile":Ljava/nio/file/Path;
    .end local p0    # "from":Ljava/io/File;
    .end local p1    # "to":Ljava/io/File;
    .end local p2    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 111
    .end local v1    # "jos":Ljava/util/jar/JarOutputStream;
    .restart local v0    # "tempFile":Ljava/nio/file/Path;
    .local v2, "fos":Ljava/io/OutputStream;
    .restart local v3    # "jarFile":Ljava/util/jar/JarFile;
    .restart local p0    # "from":Ljava/io/File;
    .restart local p1    # "to":Ljava/io/File;
    .restart local p2    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_2
    move-exception v1

    :try_start_9
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v4

    :try_start_a
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "tempFile":Ljava/nio/file/Path;
    .end local v2    # "fos":Ljava/io/OutputStream;
    .end local p0    # "from":Ljava/io/File;
    .end local p1    # "to":Ljava/io/File;
    .end local p2    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .end local v3    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v0    # "tempFile":Ljava/nio/file/Path;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    .restart local p0    # "from":Ljava/io/File;
    .restart local p1    # "to":Ljava/io/File;
    .restart local p2    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_4
    move-exception v1

    if-eqz v2, :cond_2

    :try_start_b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v3

    :try_start_c
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "tempFile":Ljava/nio/file/Path;
    .end local p0    # "from":Ljava/io/File;
    .end local p1    # "to":Ljava/io/File;
    .end local p2    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_2
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 122
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v0    # "tempFile":Ljava/nio/file/Path;
    .restart local p0    # "from":Ljava/io/File;
    .restart local p1    # "to":Ljava/io/File;
    .restart local p2    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_6
    move-exception v1

    invoke-static {v0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    .line 123
    throw v1
.end method

.method public static normalize(Ljava/io/File;Ljava/util/Map;)V
    .locals 0
    .param p0, "jar"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p0, p1}, Lorg/apache/commons/compress/compressors/pack200/Pack200Utils;->normalize(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V

    .line 141
    return-void
.end method
