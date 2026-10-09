.class final Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;
.super Ljava/lang/Object;
.source "FixedLengthBlockOutputStream.java"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BufferAtATimeOutputChannel"
.end annotation


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final out:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    iput-object p1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;->out:Ljava/io/OutputStream;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/OutputStream;
    .param p2, "x1"    # Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$1;

    .line 60
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 74
    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 92
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, v0

    .line 93
    .local v1, "len":I
    iget-object v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 94
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    return v1

    .line 96
    .end local v0    # "pos":I
    .end local v1    # "len":I
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    goto :goto_0

    .line 99
    :catch_1
    move-exception v1

    .line 101
    :goto_0
    throw v0

    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Direct buffer somehow written to BufferAtATimeOutputChannel"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
.end method
