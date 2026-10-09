.class Lorg/tukaani/xz/BlockOutputStream;
.super Lorg/tukaani/xz/FinishableOutputStream;
.source "BlockOutputStream.java"


# instance fields
.field private final check:Lorg/tukaani/xz/check/Check;

.field private final compressedSizeLimit:J

.field private filterChain:Lorg/tukaani/xz/FinishableOutputStream;

.field private final headerSize:I

.field private final out:Ljava/io/OutputStream;

.field private final outCounted:Lorg/tukaani/xz/CountingOutputStream;

.field private final tempBuf:[B

.field private uncompressedSize:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;[Lorg/tukaani/xz/FilterEncoder;Lorg/tukaani/xz/check/Check;Lorg/tukaani/xz/ArrayCache;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "filters"    # [Lorg/tukaani/xz/FilterEncoder;
    .param p3, "check"    # Lorg/tukaani/xz/check/Check;
    .param p4, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lorg/tukaani/xz/FinishableOutputStream;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tukaani/xz/BlockOutputStream;->uncompressedSize:J

    .line 23
    const/4 v0, 0x1

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/tukaani/xz/BlockOutputStream;->tempBuf:[B

    .line 28
    iput-object p1, p0, Lorg/tukaani/xz/BlockOutputStream;->out:Ljava/io/OutputStream;

    .line 29
    iput-object p3, p0, Lorg/tukaani/xz/BlockOutputStream;->check:Lorg/tukaani/xz/check/Check;

    .line 32
    new-instance v1, Lorg/tukaani/xz/CountingOutputStream;

    invoke-direct {v1, p1}, Lorg/tukaani/xz/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/tukaani/xz/BlockOutputStream;->outCounted:Lorg/tukaani/xz/CountingOutputStream;

    .line 33
    iget-object v1, p0, Lorg/tukaani/xz/BlockOutputStream;->outCounted:Lorg/tukaani/xz/CountingOutputStream;

    iput-object v1, p0, Lorg/tukaani/xz/BlockOutputStream;->filterChain:Lorg/tukaani/xz/FinishableOutputStream;

    .line 34
    array-length v1, p2

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 35
    aget-object v2, p2, v1

    iget-object v3, p0, Lorg/tukaani/xz/BlockOutputStream;->filterChain:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-interface {v2, v3, p4}, Lorg/tukaani/xz/FilterEncoder;->getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/tukaani/xz/BlockOutputStream;->filterChain:Lorg/tukaani/xz/FinishableOutputStream;

    .line 34
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 38
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 42
    .local v1, "bufStream":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 46
    array-length v3, p2

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 50
    aget-object v3, p2, v0

    invoke-interface {v3}, Lorg/tukaani/xz/FilterEncoder;->getFilterID()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lorg/tukaani/xz/common/EncoderUtil;->encodeVLI(Ljava/io/OutputStream;J)V

    .line 51
    aget-object v3, p2, v0

    invoke-interface {v3}, Lorg/tukaani/xz/FilterEncoder;->getFilterProps()[B

    move-result-object v3

    .line 52
    .local v3, "filterProps":[B
    array-length v4, v3

    int-to-long v4, v4

    invoke-static {v1, v4, v5}, Lorg/tukaani/xz/common/EncoderUtil;->encodeVLI(Ljava/io/OutputStream;J)V

    .line 53
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 49
    .end local v3    # "filterProps":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    .end local v0    # "i":I
    :cond_1
    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 64
    .local v0, "buf":[B
    array-length v3, v0

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/tukaani/xz/BlockOutputStream;->headerSize:I

    .line 67
    iget v3, p0, Lorg/tukaani/xz/BlockOutputStream;->headerSize:I

    const/16 v4, 0x400

    if-gt v3, v4, :cond_3

    .line 71
    array-length v3, v0

    div-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 74
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 75
    invoke-static {p1, v0}, Lorg/tukaani/xz/common/EncoderUtil;->writeCRC32(Ljava/io/OutputStream;[B)V

    .line 79
    iget v2, p0, Lorg/tukaani/xz/BlockOutputStream;->headerSize:I

    int-to-long v2, v2

    const-wide v4, 0x7ffffffffffffffcL

    sub-long/2addr v4, v2

    .line 80
    invoke-virtual {p3}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lorg/tukaani/xz/BlockOutputStream;->compressedSizeLimit:J

    .line 81
    return-void

    .line 68
    :cond_3
    new-instance v2, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {v2}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>()V

    throw v2
.end method

.method private validate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->outCounted:Lorg/tukaani/xz/CountingOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/CountingOutputStream;->getSize()J

    move-result-wide v0

    .line 122
    .local v0, "compressedSize":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v4, p0, Lorg/tukaani/xz/BlockOutputStream;->compressedSizeLimit:J

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    iget-wide v4, p0, Lorg/tukaani/xz/BlockOutputStream;->uncompressedSize:J

    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    .line 125
    return-void

    .line 124
    :cond_0
    new-instance v2, Lorg/tukaani/xz/XZIOException;

    const-string v3, "XZ Stream has grown too big"

    invoke-direct {v2, v3}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public finish()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->filterChain:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/FinishableOutputStream;->finish()V

    .line 107
    invoke-direct {p0}, Lorg/tukaani/xz/BlockOutputStream;->validate()V

    .line 110
    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->outCounted:Lorg/tukaani/xz/CountingOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/CountingOutputStream;->getSize()J

    move-result-wide v0

    .local v0, "i":J
    :goto_0
    const-wide/16 v2, 0x3

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lorg/tukaani/xz/BlockOutputStream;->out:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 110
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    .line 114
    .end local v0    # "i":J
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/tukaani/xz/BlockOutputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v1}, Lorg/tukaani/xz/check/Check;->finish()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 115
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->filterChain:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/FinishableOutputStream;->flush()V

    .line 100
    invoke-direct {p0}, Lorg/tukaani/xz/BlockOutputStream;->validate()V

    .line 101
    return-void
.end method

.method public getUncompressedSize()J
    .locals 2

    .line 132
    iget-wide v0, p0, Lorg/tukaani/xz/BlockOutputStream;->uncompressedSize:J

    return-wide v0
.end method

.method public getUnpaddedSize()J
    .locals 4

    .line 128
    iget v0, p0, Lorg/tukaani/xz/BlockOutputStream;->headerSize:I

    int-to-long v0, v0

    iget-object v2, p0, Lorg/tukaani/xz/BlockOutputStream;->outCounted:Lorg/tukaani/xz/CountingOutputStream;

    invoke-virtual {v2}, Lorg/tukaani/xz/CountingOutputStream;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/tukaani/xz/BlockOutputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v2}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->tempBuf:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 86
    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->tempBuf:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/BlockOutputStream;->write([BII)V

    .line 87
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->filterChain:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/tukaani/xz/FinishableOutputStream;->write([BII)V

    .line 92
    iget-object v0, p0, Lorg/tukaani/xz/BlockOutputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v0, p1, p2, p3}, Lorg/tukaani/xz/check/Check;->update([BII)V

    .line 93
    iget-wide v0, p0, Lorg/tukaani/xz/BlockOutputStream;->uncompressedSize:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tukaani/xz/BlockOutputStream;->uncompressedSize:J

    .line 94
    invoke-direct {p0}, Lorg/tukaani/xz/BlockOutputStream;->validate()V

    .line 95
    return-void
.end method
