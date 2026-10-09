.class Lorg/tukaani/xz/CountingInputStream;
.super Lorg/tukaani/xz/CloseIgnoringInputStream;
.source "CountingInputStream.java"


# instance fields
.field private size:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 19
    invoke-direct {p0, p1}, Lorg/tukaani/xz/CloseIgnoringInputStream;-><init>(Ljava/io/InputStream;)V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    .line 20
    return-void
.end method


# virtual methods
.method public getSize()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    return-wide v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/tukaani/xz/CountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 25
    .local v0, "ret":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v1, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 26
    iget-wide v1, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    .line 28
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/tukaani/xz/CountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 34
    .local v0, "ret":I
    if-lez v0, :cond_0

    iget-wide v1, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 35
    iget-wide v1, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    .line 37
    :cond_0
    return v0
.end method
