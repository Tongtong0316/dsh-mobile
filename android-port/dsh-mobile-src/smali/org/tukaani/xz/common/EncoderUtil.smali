.class public Lorg/tukaani/xz/common/EncoderUtil;
.super Lorg/tukaani/xz/common/Util;
.source "EncoderUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/tukaani/xz/common/Util;-><init>()V

    return-void
.end method

.method public static encodeVLI(Ljava/io/OutputStream;J)V
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "num"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    nop

    :goto_0
    const-wide/16 v0, 0x80

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 25
    or-long/2addr v0, p1

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 26
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    .line 29
    :cond_0
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 30
    return-void
.end method

.method public static writeCRC32(Ljava/io/OutputStream;[B)V
    .locals 6
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 15
    .local v0, "crc32":Ljava/util/zip/CRC32;
    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 16
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    .line 18
    .local v1, "value":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 19
    mul-int/lit8 v4, v3, 0x8

    ushr-long v4, v1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 18
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20
    .end local v3    # "i":I
    :cond_0
    return-void
.end method
