.class public Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "Deflate64CompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# instance fields
.field private compressedBytesRead:J

.field private decoder:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

.field private final oneByte:[B

.field private originalStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .line 48
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;-><init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;)V

    .line 49
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->originalStream:Ljava/io/InputStream;

    .line 50
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;)V
    .locals 1
    .param p1, "decoder"    # Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    .line 38
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->oneByte:[B

    .line 39
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->decoder:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    .line 40
    return-void
.end method

.method private closeDecoder()V
    .locals 2

    .line 70
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->decoder:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    .line 71
    .local v0, "c":Ljava/io/Closeable;
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->decoder:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    .line 73
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->decoder:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->decoder:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->available()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->closeDecoder()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->originalStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->originalStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 64
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->originalStream:Ljava/io/InputStream;

    .line 67
    :cond_0
    return-void

    .line 62
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->originalStream:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 63
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->originalStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 64
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->originalStream:Ljava/io/InputStream;

    .line 66
    :cond_1
    throw v1
.end method

.method public getCompressedCount()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->compressedBytesRead:J

    return-wide v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    nop

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->oneByte:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->read([B)I

    move-result v0

    .line 90
    .local v0, "r":I
    packed-switch v0, :pswitch_data_0

    .line 98
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid return value from read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :pswitch_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->oneByte:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    return v1

    .line 96
    :pswitch_1
    goto :goto_0

    .line 94
    :pswitch_2
    const/4 v1, -0x1

    return v1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    if-nez p3, :cond_0

    .line 109
    const/4 v0, 0x0

    return v0

    .line 111
    :cond_0
    const/4 v0, -0x1

    .line 112
    .local v0, "read":I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->decoder:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    if-eqz v1, :cond_1

    .line 114
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->decoder:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->decode([BII)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 117
    nop

    .line 118
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->decoder:Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;->getBytesRead()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->compressedBytesRead:J

    .line 119
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->count(I)V

    .line 120
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 121
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;->closeDecoder()V

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid Deflate64 input"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 124
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return v0
.end method
