.class public Lorg/apache/commons/compress/utils/BoundedInputStream;
.super Lorg/apache/commons/io/input/BoundedInputStream;
.source "BoundedInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # J

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/input/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/utils/BoundedInputStream;->setPropagateClose(Z)V

    .line 40
    return-void
.end method


# virtual methods
.method public getBytesRemaining()J
    .locals 4

    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/BoundedInputStream;->getMaxCount()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/BoundedInputStream;->getCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method
