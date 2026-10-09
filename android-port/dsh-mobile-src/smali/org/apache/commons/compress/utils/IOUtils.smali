.class public final Lorg/apache/commons/compress/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field public static final EMPTY_LINK_OPTIONS:[Ljava/nio/file/LinkOption;


# direct methods
.method public static synthetic $r8$lambda$4BQ5ArfWXirWkxf9s4XfDylm8lY()[B
    .locals 1

    invoke-static {}, Lorg/apache/commons/io/IOUtils;->byteArray()[B

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    sput-object v0, Lorg/apache/commons/compress/utils/IOUtils;->EMPTY_LINK_OPTIONS:[Ljava/nio/file/LinkOption;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0
    .param p0, "c"    # Ljava/io/Closeable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 59
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copy(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/OutputStream;)J

    .line 73
    return-void
.end method

.method public static copyRange(Ljava/io/InputStream;JLjava/io/OutputStream;)J
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "len"    # J
    .param p3, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p3

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copyRange(Ljava/io/InputStream;JLjava/io/OutputStream;I)J
    .locals 8
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "length"    # J
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    const/4 v0, 0x1

    if-lt p4, v0, :cond_2

    .line 139
    int-to-long v0, p4

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 140
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 141
    .local v1, "n":I
    const-wide/16 v2, 0x0

    .line 142
    .local v2, "count":J
    :goto_0
    cmp-long v4, v2, p1

    if-gez v4, :cond_1

    sub-long v4, p1, v2

    array-length v6, v0

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    move v1, v4

    const/4 v6, -0x1

    if-eq v6, v4, :cond_1

    .line 143
    if-eqz p3, :cond_0

    .line 144
    invoke-virtual {p3, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 146
    :cond_0
    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_0

    .line 148
    :cond_1
    return-wide v2

    .line 137
    .end local v0    # "buffer":[B
    .end local v1    # "n":I
    .end local v2    # "count":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufferSize must be bigger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static read(Ljava/io/File;[B)I
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    .line 167
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    array-length v2, p1

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 167
    :cond_0
    return v1

    .line 166
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public static readFully(Ljava/io/InputStream;[B)I
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    if-ltz p3, :cond_0

    if-ltz p2, :cond_0

    add-int v0, p3, p2

    array-length v1, p1

    if-gt v0, v1, :cond_0

    add-int v0, p3, p2

    if-ltz v0, :cond_0

    .line 203
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->read(Ljava/io/InputStream;[BII)I

    move-result v0

    return v0

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public static readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p0, "channel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 220
    .local v0, "expectedLength":I
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 221
    .local v1, "read":I
    if-lt v1, v0, :cond_0

    .line 224
    return-void

    .line 222
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public static readRange(Ljava/io/InputStream;I)[B
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 238
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    const-wide/16 v2, 0x0

    int-to-long v4, p1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J

    .line 239
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static readRange(Ljava/nio/channels/ReadableByteChannel;I)[B
    .locals 6
    .param p0, "input"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 254
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x2000

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 255
    .local v1, "b":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 256
    .local v2, "read":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 258
    sub-int v3, p1, v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 259
    invoke-interface {p0, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 260
    .local v3, "readCount":I
    if-gtz v3, :cond_0

    .line 261
    goto :goto_1

    .line 263
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 264
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 265
    add-int/2addr v2, v3

    .line 266
    .end local v3    # "readCount":I
    goto :goto_0

    .line 267
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static skip(Ljava/io/InputStream;J)J
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "toSkip"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    new-instance v0, Lorg/apache/commons/compress/utils/IOUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/compress/utils/IOUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/IOUtils;->skip(Ljava/io/InputStream;JLjava/util/function/Supplier;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method
