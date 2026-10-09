.class Lorg/tukaani/xz/CountingOutputStream;
.super Lorg/tukaani/xz/FinishableOutputStream;
.source "CountingOutputStream.java"


# instance fields
.field private final out:Ljava/io/OutputStream;

.field private size:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 22
    invoke-direct {p0}, Lorg/tukaani/xz/FinishableOutputStream;-><init>()V

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tukaani/xz/CountingOutputStream;->size:J

    .line 23
    iput-object p1, p0, Lorg/tukaani/xz/CountingOutputStream;->out:Ljava/io/OutputStream;

    .line 24
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/tukaani/xz/CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 48
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/tukaani/xz/CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 43
    return-void
.end method

.method public getSize()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lorg/tukaani/xz/CountingOutputStream;->size:J

    return-wide v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/tukaani/xz/CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 29
    iget-wide v0, p0, Lorg/tukaani/xz/CountingOutputStream;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 30
    iget-wide v0, p0, Lorg/tukaani/xz/CountingOutputStream;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tukaani/xz/CountingOutputStream;->size:J

    .line 31
    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/tukaani/xz/CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 36
    iget-wide v0, p0, Lorg/tukaani/xz/CountingOutputStream;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 37
    iget-wide v0, p0, Lorg/tukaani/xz/CountingOutputStream;->size:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tukaani/xz/CountingOutputStream;->size:J

    .line 38
    :cond_0
    return-void
.end method
