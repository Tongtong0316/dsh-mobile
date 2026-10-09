.class public Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "Pack200CompressorInputStream.java"


# static fields
.field private static final CAFE_DOOD:[B

.field private static final SIG_LENGTH:I


# instance fields
.field private final abstractStreamBridge:Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;

.field private final originalInputStream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->CAFE_DOOD:[B

    .line 45
    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->CAFE_DOOD:[B

    array-length v0, v0

    sput v0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->SIG_LENGTH:I

    return-void

    :array_0
    .array-data 1
        -0x36t
        -0x2t
        -0x30t
        0xdt
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->IN_MEMORY:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/util/Map;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
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

    .line 90
    .local p2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->IN_MEMORY:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;",
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

    .line 113
    .local p3, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->IN_MEMORY:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;)V

    .line 128
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "mode"    # Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            "Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;",
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

    .line 131
    .local p4, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 132
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->originalInputStream:Ljava/io/InputStream;

    .line 133
    invoke-virtual {p3}, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->newStreamBridge()Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->abstractStreamBridge:Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;

    .line 134
    new-instance v0, Ljava/util/jar/JarOutputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->abstractStreamBridge:Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;

    invoke-direct {v0, v1}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 135
    .local v0, "jarOut":Ljava/util/jar/JarOutputStream;
    :try_start_0
    invoke-static {}, Lorg/apache/commons/compress/java/util/jar/Pack200;->newUnpacker()Lorg/apache/commons/compress/java/util/jar/Pack200$Unpacker;

    move-result-object v1

    .line 136
    .local v1, "unpacker":Lorg/apache/commons/compress/java/util/jar/Pack200$Unpacker;
    if-eqz p4, :cond_0

    .line 137
    invoke-interface {v1}, Lorg/apache/commons/compress/java/util/jar/Pack200$Unpacker;->properties()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p4}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 139
    :cond_0
    if-nez p2, :cond_1

    .line 140
    invoke-interface {v1, p1, v0}, Lorg/apache/commons/compress/java/util/jar/Pack200$Unpacker;->unpack(Ljava/io/InputStream;Ljava/util/jar/JarOutputStream;)V

    goto :goto_0

    .line 142
    :cond_1
    invoke-interface {v1, p2, v0}, Lorg/apache/commons/compress/java/util/jar/Pack200$Unpacker;->unpack(Ljava/io/File;Ljava/util/jar/JarOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .end local v1    # "unpacker":Lorg/apache/commons/compress/java/util/jar/Pack200$Unpacker;
    :goto_0
    invoke-virtual {v0}, Ljava/util/jar/JarOutputStream;->close()V

    .line 145
    .end local v0    # "jarOut":Ljava/util/jar/JarOutputStream;
    return-void

    .line 134
    .restart local v0    # "jarOut":Ljava/util/jar/JarOutputStream;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/Map;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
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

    .line 159
    .local p2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;->IN_MEMORY:Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "mode"    # Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "mode"    # Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;",
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

    .line 190
    .local p3, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;Ljava/io/File;Lorg/apache/commons/compress/compressors/pack200/Pack200Strategy;Ljava/util/Map;)V

    .line 191
    return-void
.end method

.method private getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->abstractStreamBridge:Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static matches([BI)Z
    .locals 4
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 55
    sget v0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->SIG_LENGTH:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 56
    return v1

    .line 59
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->SIG_LENGTH:I

    if-ge v0, v2, :cond_2

    .line 60
    aget-byte v2, p0, v0

    sget-object v3, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->CAFE_DOOD:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_1

    .line 61
    return v1

    .line 59
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->abstractStreamBridge:Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->originalInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->originalInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 208
    :cond_0
    return-void

    .line 204
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->originalInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->originalInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 207
    :cond_1
    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "limit"    # I

    monitor-enter p0

    .line 218
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    nop

    .line 222
    monitor-exit p0

    return-void

    .line 217
    .end local p0    # "this":Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;
    .end local p1    # "limit":I
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 219
    .restart local p1    # "limit":I
    :catch_0
    move-exception v0

    .line 220
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 217
    .end local v0    # "ex":Ljava/io/IOException;
    .end local p1    # "limit":I
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public markSupported()Z
    .locals 2

    .line 228
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "ex":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 255
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 254
    .end local p0    # "this":Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
