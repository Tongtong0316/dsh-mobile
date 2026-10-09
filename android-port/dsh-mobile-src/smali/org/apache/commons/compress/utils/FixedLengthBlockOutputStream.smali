.class public Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;
.super Ljava/io/OutputStream;
.source "FixedLengthBlockOutputStream.java"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;
    }
.end annotation


# instance fields
.field private final blockSize:I

.field private final buffer:Ljava/nio/ByteBuffer;

.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final out:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # I

    .line 119
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 120
    instance-of v0, p1, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 121
    move-object v0, p1

    check-cast v0, Ljava/io/FileOutputStream;

    .line 122
    .local v0, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    .line 123
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 124
    .end local v0    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 125
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$1;)V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    .line 126
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 128
    :goto_0
    iput p2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;I)V
    .locals 1
    .param p1, "out"    # Ljava/nio/channels/WritableByteChannel;
    .param p2, "blockSize"    # I

    .line 137
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    iput-object p1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    .line 139
    iput p2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    .line 140
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 141
    return-void
.end method

.method private maybeFlush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->writeBlock()V

    .line 178
    :cond_0
    return-void
.end method

.method private padBlock()V
    .locals 7

    .line 181
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 182
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 183
    .local v0, "bytesToWrite":I
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-le v0, v2, :cond_2

    .line 184
    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    .line 185
    .local v3, "align":I
    if-eqz v3, :cond_1

    .line 186
    rsub-int/lit8 v4, v3, 0x8

    .line 187
    .local v4, "limit":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 188
    iget-object v6, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 187
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 190
    .end local v5    # "i":I
    :cond_0
    sub-int/2addr v0, v4

    .line 193
    .end local v4    # "limit":I
    :cond_1
    :goto_1
    if-lt v0, v2, :cond_2

    .line 194
    iget-object v4, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 195
    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    .line 198
    .end local v3    # "align":I
    :cond_2
    :goto_2
    iget-object v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    iget-object v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 201
    :cond_3
    return-void
.end method

.method private writeBlock()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 266
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 267
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    .line 268
    .local v1, "hasRemaining":Z
    iget v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    if-ne v0, v2, :cond_0

    if-nez v1, :cond_0

    .line 272
    iget-object v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 273
    return-void

    .line 269
    :cond_0
    iget v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to write %,d bytes atomically. Only wrote  %,d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->flushBlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V

    .line 150
    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/WritableByteChannel;->close()V

    .line 150
    throw v0

    .line 152
    :cond_0
    :goto_0
    return-void
.end method

.method public flushBlock()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->padBlock()V

    .line 162
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->writeBlock()V

    .line 164
    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 2

    .line 168
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 226
    .local v0, "srcRemaining":I
    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 228
    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 230
    :cond_0
    move v1, v0

    .line 231
    .local v1, "srcLeft":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 234
    .local v2, "savedLimit":I
    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 236
    .local v3, "n":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 237
    iget-object v4, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 238
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->writeBlock()V

    .line 239
    sub-int/2addr v1, v3

    .line 243
    .end local v3    # "n":I
    :cond_1
    :goto_0
    iget v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    if-lt v1, v3, :cond_2

    .line 244
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget v4, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 245
    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v3, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 246
    iget v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    sub-int/2addr v1, v3

    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 250
    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 252
    .end local v1    # "srcLeft":I
    .end local v2    # "savedLimit":I
    :goto_1
    return v0

    .line 222
    .end local v0    # "srcRemaining":I
    :cond_3
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 261
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->maybeFlush()V

    .line 262
    return-void

    .line 258
    :cond_0
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    move v0, p2

    .line 209
    .local v0, "off":I
    move v1, p3

    .line 210
    .local v1, "len":I
    :goto_0
    if-lez v1, :cond_0

    .line 211
    iget-object v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 212
    .local v2, "n":I
    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 213
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->maybeFlush()V

    .line 214
    sub-int/2addr v1, v2

    .line 215
    add-int/2addr v0, v2

    .line 216
    .end local v2    # "n":I
    goto :goto_0

    .line 217
    :cond_0
    return-void

    .line 206
    .end local v0    # "off":I
    .end local v1    # "len":I
    :cond_1
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method
