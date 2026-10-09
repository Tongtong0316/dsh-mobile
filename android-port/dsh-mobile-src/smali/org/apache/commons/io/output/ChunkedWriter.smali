.class public Lorg/apache/commons/io/output/ChunkedWriter;
.super Ljava/io/FilterWriter;
.source "ChunkedWriter.java"


# static fields
.field private static final DEFAULT_CHUNK_SIZE:I = 0x2000


# instance fields
.field private final chunkSize:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;

    .line 49
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/output/ChunkedWriter;-><init>(Ljava/io/Writer;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "chunkSize"    # I

    .line 60
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 61
    if-lez p2, :cond_0

    .line 64
    iput p2, p0, Lorg/apache/commons/io/output/ChunkedWriter;->chunkSize:I

    .line 65
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public write([CII)V
    .locals 4
    .param p1, "data"    # [C
    .param p2, "srcOffset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    move v0, p3

    .line 79
    .local v0, "bytes":I
    move v1, p2

    .line 80
    .local v1, "dstOffset":I
    :goto_0
    if-lez v0, :cond_0

    .line 81
    iget v2, p0, Lorg/apache/commons/io/output/ChunkedWriter;->chunkSize:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 82
    .local v2, "chunk":I
    iget-object v3, p0, Lorg/apache/commons/io/output/ChunkedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v3, p1, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 83
    sub-int/2addr v0, v2

    .line 84
    add-int/2addr v1, v2

    .line 85
    .end local v2    # "chunk":I
    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method
