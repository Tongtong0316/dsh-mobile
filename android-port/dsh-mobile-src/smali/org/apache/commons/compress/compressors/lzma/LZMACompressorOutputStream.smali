.class public Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "LZMACompressorOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/compressors/CompressorOutputStream<",
        "Lorg/tukaani/xz/LZMAOutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    new-instance v0, Lorg/tukaani/xz/LZMAOutputStream;

    new-instance v1, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {v1}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    const-wide/16 v2, -0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/tukaani/xz/LZMAOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;J)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;->out()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Lorg/tukaani/xz/LZMAOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/LZMAOutputStream;->finish()V

    .line 54
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    return-void
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

    .line 67
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 68
    return-void
.end method
