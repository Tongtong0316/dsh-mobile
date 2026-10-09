.class abstract Lorg/apache/commons/compress/archivers/zip/RandomAccessOutputStream;
.super Ljava/io/OutputStream;
.source "RandomAccessOutputStream.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract position()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    int-to-byte v0, p1

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/RandomAccessOutputStream;->write([B)V

    .line 39
    return-void
.end method

.method abstract writeFully([BIIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeFully([BJ)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    const/4 v2, 0x0

    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/RandomAccessOutputStream;->writeFully([BIIJ)V

    .line 61
    return-void
.end method
