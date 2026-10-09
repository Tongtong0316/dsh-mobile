.class public Lorg/apache/commons/compress/harmony/pack200/PackingUtils;
.super Ljava/lang/Object;
.source "PackingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/pack200/PackingUtils$PackingLogger;
    }
.end annotation


# static fields
.field private static fileHandler:Ljava/util/logging/FileHandler;

.field private static packingLogger:Lorg/apache/commons/compress/harmony/pack200/PackingUtils$PackingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/PackingUtils$PackingLogger;

    const-string v1, "org.harmony.apache.pack200"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils$PackingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->packingLogger:Lorg/apache/commons/compress/harmony/pack200/PackingUtils$PackingLogger;

    .line 69
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->packingLogger:Lorg/apache/commons/compress/harmony/pack200/PackingUtils$PackingLogger;

    invoke-virtual {v0, v1}, Ljava/util/logging/LogManager;->addLogger(Ljava/util/logging/Logger;)Z

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static config(Lorg/apache/commons/compress/harmony/pack200/PackingOptions;)V
    .locals 4
    .param p0, "options"    # Lorg/apache/commons/compress/harmony/pack200/PackingOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getLogFile()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 74
    .local v0, "logFileName":Ljava/lang/String;
    :goto_0
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->fileHandler:Ljava/util/logging/FileHandler;

    if-eqz v1, :cond_1

    .line 75
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->fileHandler:Ljava/util/logging/FileHandler;

    invoke-virtual {v1}, Ljava/util/logging/FileHandler;->close()V

    .line 77
    :cond_1
    if-eqz v0, :cond_2

    .line 78
    new-instance v1, Ljava/util/logging/FileHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;Z)V

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->fileHandler:Ljava/util/logging/FileHandler;

    .line 79
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->fileHandler:Ljava/util/logging/FileHandler;

    new-instance v3, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v3}, Ljava/util/logging/SimpleFormatter;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 80
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->packingLogger:Lorg/apache/commons/compress/harmony/pack200/PackingUtils$PackingLogger;

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->fileHandler:Ljava/util/logging/FileHandler;

    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils$PackingLogger;->addHandler(Ljava/util/logging/Handler;)V

    .line 81
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->packingLogger:Lorg/apache/commons/compress/harmony/pack200/PackingUtils$PackingLogger;

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils$PackingLogger;->setUseParentHandlers(Z)V

    .line 83
    :cond_2
    if-eqz p0, :cond_3

    .line 84
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->packingLogger:Lorg/apache/commons/compress/harmony/pack200/PackingUtils$PackingLogger;

    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->isVerbose()Z

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils$PackingLogger;->access$000(Lorg/apache/commons/compress/harmony/pack200/PackingUtils$PackingLogger;Z)V

    .line 86
    :cond_3
    return-void
.end method

.method public static copyThroughJar(Ljava/util/jar/JarFile;Ljava/io/OutputStream;)V
    .locals 8
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/jar/JarOutputStream;

    invoke-direct {v0, p1}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 97
    .local v0, "jarOutputStream":Ljava/util/jar/JarOutputStream;
    :try_start_0
    const-string v1, "PACK200"

    invoke-virtual {v0, v1}, Ljava/util/jar/JarOutputStream;->setComment(Ljava/lang/String;)V

    .line 98
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 99
    .local v1, "bytes":[B
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 100
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/JarEntry;

    .line 102
    .local v3, "jarEntry":Ljava/util/jar/JarEntry;
    invoke-virtual {v0, v3}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 103
    invoke-virtual {p0, v3}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 105
    .local v4, "inputStream":Ljava/io/InputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "bytesRead":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 106
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v6}, Ljava/util/jar/JarOutputStream;->write([BII)V

    goto :goto_1

    .line 108
    :cond_0
    invoke-virtual {v0}, Ljava/util/jar/JarOutputStream;->closeEntry()V

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Packed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .end local v6    # "bytesRead":I
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 111
    .end local v3    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :cond_1
    goto :goto_0

    .line 103
    .restart local v3    # "jarEntry":Ljava/util/jar/JarEntry;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "jarOutputStream":Ljava/util/jar/JarOutputStream;
    .end local p0    # "jarFile":Ljava/util/jar/JarFile;
    .end local p1    # "outputStream":Ljava/io/OutputStream;
    :cond_2
    :goto_2
    throw v5

    .line 112
    .end local v3    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "jarOutputStream":Ljava/util/jar/JarOutputStream;
    .restart local p0    # "jarFile":Ljava/util/jar/JarFile;
    .restart local p1    # "outputStream":Ljava/io/OutputStream;
    :cond_3
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 113
    .end local v1    # "bytes":[B
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    invoke-virtual {v0}, Ljava/util/jar/JarOutputStream;->close()V

    .line 114
    .end local v0    # "jarOutputStream":Ljava/util/jar/JarOutputStream;
    return-void

    .line 96
    .restart local v0    # "jarOutputStream":Ljava/util/jar/JarOutputStream;
    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
.end method

.method public static copyThroughJar(Ljava/util/jar/JarInputStream;Ljava/io/OutputStream;)V
    .locals 7
    .param p0, "jarInputStream"    # Ljava/util/jar/JarInputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 125
    .local v0, "manifest":Ljava/util/jar/Manifest;
    new-instance v1, Ljava/util/jar/JarOutputStream;

    invoke-direct {v1, p1, v0}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/jar/Manifest;)V

    .line 126
    .local v1, "jarOutputStream":Ljava/util/jar/JarOutputStream;
    :try_start_0
    const-string v2, "PACK200"

    invoke-virtual {v1, v2}, Ljava/util/jar/JarOutputStream;->setComment(Ljava/lang/String;)V

    .line 127
    const-string v2, "Packed META-INF/MANIFEST.MF"

    invoke-static {v2}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 129
    const/16 v2, 0x4000

    new-array v2, v2, [B

    .line 132
    .local v2, "bytes":[B
    :goto_0
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v3

    move-object v4, v3

    .local v4, "jarEntry":Ljava/util/jar/JarEntry;
    if-eqz v3, :cond_1

    .line 133
    invoke-virtual {v1, v4}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 134
    :goto_1
    invoke-virtual {p0, v2}, Ljava/util/jar/JarInputStream;->read([B)I

    move-result v3

    move v5, v3

    .local v5, "bytesRead":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 135
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v5}, Ljava/util/jar/JarOutputStream;->write([BII)V

    goto :goto_1

    .line 137
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Packed "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    .end local v5    # "bytesRead":I
    :cond_1
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local v2    # "bytes":[B
    .end local v4    # "jarEntry":Ljava/util/jar/JarEntry;
    invoke-virtual {v1}, Ljava/util/jar/JarOutputStream;->close()V

    .line 141
    .end local v1    # "jarOutputStream":Ljava/util/jar/JarOutputStream;
    return-void

    .line 125
    .restart local v1    # "jarOutputStream":Ljava/util/jar/JarOutputStream;
    :catchall_0
    move-exception v2

    :try_start_1
    invoke-virtual {v1}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
.end method

.method public static getPackingFileListFromJar(Ljava/util/jar/JarFile;Z)Ljava/util/List;
    .locals 6
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "keepFileOrder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "packingFileList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;>;"
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 146
    .local v1, "jarEntries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/JarEntry;

    .line 148
    .local v2, "jarEntry":Ljava/util/jar/JarEntry;
    invoke-virtual {p0, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 149
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v4}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->readJarEntry(Ljava/util/jar/JarEntry;Ljava/io/InputStream;)[B

    move-result-object v4

    .line 150
    .local v4, "bytes":[B
    new-instance v5, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;

    invoke-direct {v5, v4, v2}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;-><init>([BLjava/util/jar/JarEntry;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    nop

    .end local v4    # "bytes":[B
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 152
    .end local v2    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_0
    goto :goto_0

    .line 148
    .restart local v2    # "jarEntry":Ljava/util/jar/JarEntry;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v4

    .line 155
    .end local v2    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_2
    if-nez p1, :cond_3

    .line 156
    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->reorderPackingFiles(Ljava/util/List;)V

    .line 158
    :cond_3
    return-object v0
.end method

.method public static getPackingFileListFromJar(Ljava/util/jar/JarInputStream;Z)Ljava/util/List;
    .locals 8
    .param p0, "jarInputStream"    # Ljava/util/jar/JarInputStream;
    .param p1, "keepFileOrder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarInputStream;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "packingFileList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;>;"
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v1

    .line 166
    .local v1, "manifest":Ljava/util/jar/Manifest;
    if-eqz v1, :cond_0

    .line 167
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 168
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1, v2}, Ljava/util/jar/Manifest;->write(Ljava/io/OutputStream;)V

    .line 169
    new-instance v3, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const-wide/16 v5, 0x0

    const-string v7, "META-INF/MANIFEST.MF"

    invoke-direct {v3, v7, v4, v5, v6}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;-><init>(Ljava/lang/String;[BJ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v2

    move-object v3, v2

    .local v3, "jarEntry":Ljava/util/jar/JarEntry;
    if-eqz v2, :cond_1

    .line 176
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v3, v2}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->readJarEntry(Ljava/util/jar/JarEntry;Ljava/io/InputStream;)[B

    move-result-object v2

    .line 177
    .local v2, "bytes":[B
    new-instance v4, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;

    invoke-direct {v4, v2, v3}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;-><init>([BLjava/util/jar/JarEntry;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    .end local v2    # "bytes":[B
    :cond_1
    if-nez p1, :cond_2

    .line 182
    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->reorderPackingFiles(Ljava/util/List;)V

    .line 184
    :cond_2
    return-object v0
.end method

.method static synthetic lambda$reorderPackingFiles$0(Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;)I
    .locals 4
    .param p0, "arg0"    # Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;
    .param p1, "arg1"    # Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;

    .line 220
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->getName()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "fileName0":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->getName()Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "fileName1":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    const/4 v2, 0x0

    return v2

    .line 225
    :cond_0
    const-string v2, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    const/4 v2, -0x1

    return v2

    .line 228
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    const/4 v2, 0x1

    return v2

    .line 231
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 188
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->packingLogger:Lorg/apache/commons/compress/harmony/pack200/PackingUtils$PackingLogger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils$PackingLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method private static readJarEntry(Ljava/util/jar/JarEntry;Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "jarEntry"    # Ljava/util/jar/JarEntry;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v0

    .line 193
    .local v0, "size":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 197
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 198
    const-wide/16 v0, 0x0

    .line 200
    :cond_0
    long-to-int v2, v0

    new-array v2, v2, [B

    .line 201
    .local v2, "bytes":[B
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_1

    .line 204
    return-object v2

    .line 202
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Error reading from stream"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 195
    .end local v2    # "bytes":[B
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Large Class!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static reorderPackingFiles(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;",
            ">;)V"
        }
    .end annotation

    .line 208
    .local p0, "packingFileList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 209
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;

    .line 211
    .local v1, "packingFile":Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;
    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 215
    .end local v1    # "packingFile":Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;
    :cond_0
    goto :goto_0

    .line 219
    :cond_1
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/PackingUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 233
    return-void
.end method
