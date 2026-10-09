.class public Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;
.super Ljava/io/InputStream;
.source "UnsynchronizedFilterInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream$Builder;
    }
.end annotation


# instance fields
.field protected volatile inputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 118
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 119
    iput-object p1, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    .line 120
    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream$Builder;
    .locals 1

    .line 105
    new-instance v0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

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

    .line 140
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 141
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readLimit"    # I

    .line 156
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 157
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

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

    .line 182
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 226
    return-void
.end method

.method public skip(J)J
    .locals 2
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lorg/apache/commons/io/input/UnsynchronizedFilterInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
