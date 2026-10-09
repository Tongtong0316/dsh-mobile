.class public Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "LZMACompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# instance fields
.field private final countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 63
    new-instance v0, Lorg/tukaani/xz/LZMAInputStream;

    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    invoke-virtual {v1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "memoryLimitInKb"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 80
    :try_start_0
    new-instance v0, Lorg/tukaani/xz/LZMAInputStream;

    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    invoke-virtual {v1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-direct {v0, v1, p2}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    nop

    .line 85
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lorg/tukaani/xz/MemoryLimitException;
    new-instance v1, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-virtual {v0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryLimit()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JILjava/lang/Exception;)V

    throw v1
.end method

.method public static matches([BI)Z
    .locals 3
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 47
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x3

    if-lt p1, v1, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-byte v2, p0, v1

    if-nez v2, :cond_0

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
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

    .line 90
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 97
    return-void
.end method

.method public getCompressedCount()J
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->countingStream:Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 111
    .local v0, "ret":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->count(I)V

    .line 112
    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 119
    .local v0, "ret":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->count(I)V

    .line 120
    return v0
.end method

.method public skip(J)J
    .locals 2
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/io/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v0

    return-wide v0
.end method
