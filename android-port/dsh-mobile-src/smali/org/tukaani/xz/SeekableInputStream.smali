.class public abstract Lorg/tukaani/xz/SeekableInputStream;
.super Ljava/io/InputStream;
.source "SeekableInputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract length()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract position()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract seek(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 38
    return-wide v0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lorg/tukaani/xz/SeekableInputStream;->length()J

    move-result-wide v2

    .line 41
    .local v2, "size":J
    invoke-virtual {p0}, Lorg/tukaani/xz/SeekableInputStream;->position()J

    move-result-wide v4

    .line 42
    .local v4, "pos":J
    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    .line 43
    return-wide v0

    .line 45
    :cond_1
    sub-long v0, v2, v4

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    .line 46
    sub-long p1, v2, v4

    .line 48
    :cond_2
    add-long v0, v4, p1

    invoke-virtual {p0, v0, v1}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    .line 49
    return-wide p1
.end method
