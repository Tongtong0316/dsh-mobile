.class public Lorg/apache/commons/io/output/ChunkedOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ChunkedOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/output/ChunkedOutputStream$Builder;
    }
.end annotation


# instance fields
.field private final chunkSize:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/output/ChunkedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "chunkSize"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 128
    if-lez p2, :cond_0

    .line 131
    iput p2, p0, Lorg/apache/commons/io/output/ChunkedOutputStream;->chunkSize:I

    .line 132
    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "chunkSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static builder()Lorg/apache/commons/io/output/ChunkedOutputStream$Builder;
    .locals 1

    .line 98
    new-instance v0, Lorg/apache/commons/io/output/ChunkedOutputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/output/ChunkedOutputStream$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method getChunkSize()I
    .locals 1

    .line 135
    iget v0, p0, Lorg/apache/commons/io/output/ChunkedOutputStream;->chunkSize:I

    return v0
.end method

.method public write([BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    move v0, p3

    .line 150
    .local v0, "bytes":I
    move v1, p2

    .line 151
    .local v1, "dstOffset":I
    :goto_0
    if-lez v0, :cond_0

    .line 152
    iget v2, p0, Lorg/apache/commons/io/output/ChunkedOutputStream;->chunkSize:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 153
    .local v2, "chunk":I
    iget-object v3, p0, Lorg/apache/commons/io/output/ChunkedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 154
    sub-int/2addr v0, v2

    .line 155
    add-int/2addr v1, v2

    .line 156
    .end local v2    # "chunk":I
    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method
