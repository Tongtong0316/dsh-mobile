.class public Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;
.super Ljava/io/FilterInputStream;
.source "CircularBufferInputStream.java"


# instance fields
.field protected final buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

.field protected final bufferSize:I

.field private eof:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 50
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .line 61
    const-string v0, "inputStream"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 62
    if-lez p2, :cond_0

    .line 65
    new-instance v0, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-direct {v0, p2}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    .line 66
    iput p2, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->bufferSize:I

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->eof:Z

    .line 68
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal bufferSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->eof:Z

    .line 74
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->clear()V

    .line 75
    return-void
.end method

.method protected fillBuffer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-boolean v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->eof:Z

    if-eqz v0, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->getSpace()I

    move-result v0

    .line 87
    .local v0, "space":I
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->byteArray(I)[B

    move-result-object v1

    .line 88
    .local v1, "buf":[B
    :goto_0
    if-lez v0, :cond_3

    .line 89
    iget-object v2, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->in:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 90
    .local v2, "res":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 91
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->eof:Z

    .line 92
    return-void

    .line 94
    :cond_1
    if-lez v2, :cond_2

    .line 95
    iget-object v4, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v4, v1, v3, v2}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->add([BII)V

    .line 96
    sub-int/2addr v0, v2

    .line 98
    .end local v2    # "res":I
    :cond_2
    goto :goto_0

    .line 99
    :cond_3
    return-void
.end method

.method protected haveBytes(I)Z
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->getCurrentNumberOfBytes()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->fillBuffer()V

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->hasBytes()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->haveBytes(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const/4 v0, -0x1

    return v0

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->read()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "targetBuffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const-string v0, "targetBuffer"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    if-ltz p2, :cond_3

    .line 129
    if-ltz p3, :cond_2

    .line 132
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->haveBytes(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const/4 v0, -0x1

    return v0

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->getCurrentNumberOfBytes()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 136
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 137
    add-int v2, p2, v1

    iget-object v3, p0, Lorg/apache/commons/io/input/buffer/CircularBufferInputStream;->buffer:Lorg/apache/commons/io/input/buffer/CircularByteBuffer;

    invoke-virtual {v3}, Lorg/apache/commons/io/input/buffer/CircularByteBuffer;->read()B

    move-result v3

    aput-byte v3, p1, v2

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "i":I
    :cond_1
    return v0

    .line 130
    .end local v0    # "result":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offset must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
