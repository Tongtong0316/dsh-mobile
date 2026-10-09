.class public final Lorg/apache/commons/io/input/MemoryMappedFileInputStream;
.super Ljava/io/InputStream;
.source "MemoryMappedFileInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/MemoryMappedFileInputStream$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x40000

.field private static final EMPTY_BUFFER:Ljava/nio/ByteBuffer;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private final bufferSize:I

.field private final channel:Ljava/nio/channels/FileChannel;

.field private closed:Z

.field private nextBufferPosition:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 134
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private constructor <init>(Ljava/nio/file/Path;I)V
    .locals 3
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 148
    sget-object v0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 164
    iput p2, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->bufferSize:I

    .line 165
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 166
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/file/Path;ILorg/apache/commons/io/input/MemoryMappedFileInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/file/Path;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/commons/io/input/MemoryMappedFileInputStream$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;-><init>(Ljava/nio/file/Path;I)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/MemoryMappedFileInputStream$Builder;
    .locals 1

    .line 143
    new-instance v0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/MemoryMappedFileInputStream$Builder;-><init>()V

    return-object v0
.end method

.method private cleanBuffer()V
    .locals 1

    .line 174
    invoke-static {}, Lorg/apache/commons/io/input/ByteBufferCleaner;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/apache/commons/io/input/ByteBufferCleaner;->clean(Ljava/nio/ByteBuffer;)V

    .line 177
    :cond_0
    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget-boolean v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 193
    return-void

    .line 191
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextBuffer()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->nextBufferPosition:J

    sub-long/2addr v0, v2

    .line 201
    .local v0, "remainingInFile":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 202
    iget v2, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->bufferSize:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 203
    .local v2, "amountToMap":J
    invoke-direct {p0}, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->cleanBuffer()V

    .line 204
    iget-object v4, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->channel:Ljava/nio/channels/FileChannel;

    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    iget-wide v6, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->nextBufferPosition:J

    move-wide v8, v2

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 205
    iget-wide v4, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->nextBufferPosition:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->nextBufferPosition:J

    .line 206
    .end local v2    # "amountToMap":J
    goto :goto_0

    .line 207
    :cond_0
    sget-object v2, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 209
    :goto_0
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

    .line 170
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

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

    .line 181
    iget-boolean v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 182
    invoke-direct {p0}, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->cleanBuffer()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 184
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->closed:Z

    .line 187
    :cond_0
    return-void
.end method

.method getBufferSize()I
    .locals 1

    .line 196
    iget v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->bufferSize:I

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->ensureOpen()V

    .line 214
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-direct {p0}, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->nextBuffer()V

    .line 216
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    const/4 v0, -0x1

    return v0

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    invoke-direct {p0}, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->ensureOpen()V

    .line 226
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0}, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->nextBuffer()V

    .line 228
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    const/4 v0, -0x1

    return v0

    .line 232
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 233
    .local v0, "numBytes":I
    iget-object v1, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 234
    return v0
.end method

.method public skip(J)J
    .locals 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->ensureOpen()V

    .line 240
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 241
    return-wide v0

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 244
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 245
    return-wide p1

    .line 247
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->nextBufferPosition:J

    sub-long/2addr v0, v2

    .line 248
    .local v0, "remainingInFile":J
    iget-object v2, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    sub-long v4, p1, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 249
    .local v2, "skipped":J
    iget-wide v4, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->nextBufferPosition:J

    iget-object v6, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    int-to-long v6, v6

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->nextBufferPosition:J

    .line 250
    invoke-direct {p0}, Lorg/apache/commons/io/input/MemoryMappedFileInputStream;->nextBuffer()V

    .line 251
    return-wide v2
.end method
