.class public Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "ZstdCompressorOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/compressors/CompressorOutputStream<",
        "Lcom/github/luben/zstd/ZstdOutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-direct {v0, p1}, Lcom/github/luben/zstd/ZstdOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-direct {v0, p1, p2}, Lcom/github/luben/zstd/ZstdOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 1
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .param p2, "level"    # I
    .param p3, "closeFrameOnFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-direct {v0, p1, p2}, Lcom/github/luben/zstd/ZstdOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->out()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-virtual {v0, p3}, Lcom/github/luben/zstd/ZstdOutputStream;->setCloseFrameOnFlush(Z)Lcom/github/luben/zstd/ZstdOutputStream;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZZ)V
    .locals 1
    .param p1, "outStream"    # Ljava/io/OutputStream;
    .param p2, "level"    # I
    .param p3, "closeFrameOnFlush"    # Z
    .param p4, "useChecksum"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/github/luben/zstd/ZstdOutputStream;

    invoke-direct {v0, p1, p2}, Lcom/github/luben/zstd/ZstdOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->out()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lcom/github/luben/zstd/ZstdOutputStream;

    .line 90
    invoke-virtual {v0, p3}, Lcom/github/luben/zstd/ZstdOutputStream;->setCloseFrameOnFlush(Z)Lcom/github/luben/zstd/ZstdOutputStream;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p4}, Lcom/github/luben/zstd/ZstdOutputStream;->setChecksum(Z)Lcom/github/luben/zstd/ZstdOutputStream;

    .line 92
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 102
    return-void
.end method
