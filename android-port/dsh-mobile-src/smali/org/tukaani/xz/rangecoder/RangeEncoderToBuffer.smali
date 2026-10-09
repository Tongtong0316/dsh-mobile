.class public final Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;
.super Lorg/tukaani/xz/rangecoder/RangeEncoder;
.source "RangeEncoderToBuffer.java"


# instance fields
.field private final buf:[B

.field private bufPos:I


# direct methods
.method public constructor <init>(ILorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "bufSize"    # I
    .param p2, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 16
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;-><init>()V

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/tukaani/xz/ArrayCache;->getByteArray(IZ)[B

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->buf:[B

    .line 18
    invoke-virtual {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->reset()V

    .line 19
    return-void
.end method


# virtual methods
.method public finish()I
    .locals 2

    .line 39
    :try_start_0
    invoke-super {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->finish()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    nop

    .line 44
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->bufPos:I

    return v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    throw v1
.end method

.method public getPendingSize()I
    .locals 3

    .line 32
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->bufPos:I

    iget-wide v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->cacheSize:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p1, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 22
    iget-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->buf:[B

    invoke-virtual {p1, v0}, Lorg/tukaani/xz/ArrayCache;->putArray([B)V

    .line 23
    return-void
.end method

.method public reset()V
    .locals 1

    .line 26
    invoke-super {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->reset()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->bufPos:I

    .line 28
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->bufPos:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 49
    return-void
.end method

.method writeByte(I)V
    .locals 3
    .param p1, "b"    # I

    .line 53
    iget-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->bufPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToBuffer;->bufPos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 54
    return-void
.end method
