.class public Lorg/apache/commons/io/input/RandomAccessFileInputStream;
.super Ljava/io/InputStream;
.source "RandomAccessFileInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;
    }
.end annotation


# instance fields
.field private final closeOnClose:Z

.field private final randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/RandomAccessFileInputStream;-><init>(Ljava/io/RandomAccessFile;Z)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;Z)V
    .locals 1
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "closeOnClose"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 154
    const-string v0, "file"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    iput-object v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 155
    iput-boolean p2, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->closeOnClose:Z

    .line 156
    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;
    .locals 1

    .line 128
    new-instance v0, Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/RandomAccessFileInputStream$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->availableLong()J

    move-result-wide v0

    .line 169
    .local v0, "avail":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 170
    const v2, 0x7fffffff

    return v2

    .line 172
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public availableLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 188
    iget-boolean v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->closeOnClose:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 191
    :cond_0
    return-void
.end method

.method public getRandomAccessFile()Ljava/io/RandomAccessFile;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method public isCloseOnClose()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->closeOnClose:Z

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
    iget-object v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public skip(J)J
    .locals 10
    .param p1, "skipCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 229
    return-wide v0

    .line 231
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 232
    .local v2, "filePointer":J
    iget-object v4, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    .line 233
    .local v4, "fileLength":J
    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 234
    return-wide v0

    .line 236
    :cond_1
    add-long v6, v2, p1

    .line 237
    .local v6, "targetPos":J
    cmp-long v8, v6, v4

    if-lez v8, :cond_2

    const-wide/16 v8, 0x1

    sub-long v8, v4, v8

    goto :goto_0

    :cond_2
    move-wide v8, v6

    .line 238
    .local v8, "newPos":J
    :goto_0
    cmp-long v0, v8, v0

    if-lez v0, :cond_3

    .line 239
    iget-object v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 241
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/io/input/RandomAccessFileInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    sub-long/2addr v0, v2

    return-wide v0
.end method
