.class final Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;
.super Ljava/io/InputStream;
.source "ExplodingInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# instance fields
.field private bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

.field private final buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

.field private final dictionarySize:I

.field private distanceTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

.field private final in:Ljava/io/InputStream;

.field private lengthTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

.field private literalTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

.field private final minimumMatchLength:I

.field private final numberOfTrees:I

.field private treeSizes:J

.field private uncompressedCount:J


# direct methods
.method constructor <init>(IILjava/io/InputStream;)V
    .locals 2
    .param p1, "dictionarySize"    # I
    .param p2, "numberOfTrees"    # I
    .param p3, "in"    # Ljava/io/InputStream;

    .line 78
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 65
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    const v1, 0x8000

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    .line 79
    const/16 v0, 0x1000

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2000

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The dictionary size must be 4096 or 8192"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    :goto_0
    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    goto :goto_1

    .line 83
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of trees must be 2 or 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_3
    :goto_1
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->dictionarySize:I

    .line 86
    iput p2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->numberOfTrees:I

    .line 87
    iput p2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->minimumMatchLength:I

    .line 88
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->in:Ljava/io/InputStream;

    .line 89
    return-void
.end method

.method private fillBuffer()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->init()V

    .line 107
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextBit()I

    move-result v0

    .line 108
    .local v0, "bit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 115
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->literalTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->literalTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->read(Lorg/apache/commons/compress/archivers/zip/BitStream;)I

    move-result v2

    .local v2, "literal":I
    goto :goto_0

    .line 118
    .end local v2    # "literal":I
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextByte()I

    move-result v2

    .line 121
    .restart local v2    # "literal":I
    :goto_0
    if-ne v2, v1, :cond_2

    .line 123
    return-void

    .line 126
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->put(I)V

    .line 128
    .end local v2    # "literal":I
    goto :goto_2

    .line 130
    :cond_3
    iget v2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->dictionarySize:I

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_4

    const/4 v2, 0x6

    goto :goto_1

    :cond_4
    const/4 v2, 0x7

    .line 131
    .local v2, "distanceLowSize":I
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    invoke-virtual {v3, v2}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextBits(I)J

    move-result-wide v3

    long-to-int v3, v3

    .line 132
    .local v3, "distanceLow":I
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->distanceTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->read(Lorg/apache/commons/compress/archivers/zip/BitStream;)I

    move-result v4

    .line 133
    .local v4, "distanceHigh":I
    if-ne v4, v1, :cond_5

    if-gtz v3, :cond_5

    .line 135
    return-void

    .line 137
    :cond_5
    shl-int v1, v4, v2

    or-int/2addr v1, v3

    .line 139
    .local v1, "distance":I
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->lengthTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    invoke-virtual {v5, v6}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->read(Lorg/apache/commons/compress/archivers/zip/BitStream;)I

    move-result v5

    .line 140
    .local v5, "length":I
    const/16 v6, 0x3f

    if-ne v5, v6, :cond_7

    .line 141
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextBits(I)J

    move-result-wide v6

    .line 142
    .local v6, "nextByte":J
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_6

    .line 144
    return-void

    .line 146
    :cond_6
    invoke-static {v5, v6, v7}, Lorg/apache/commons/compress/utils/ExactMath;->add(IJ)I

    move-result v5

    .line 148
    .end local v6    # "nextByte":J
    :cond_7
    iget v6, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->minimumMatchLength:I

    add-int/2addr v5, v6

    .line 150
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7, v5}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->copy(II)V

    .line 152
    .end local v1    # "distance":I
    .end local v2    # "distanceLowSize":I
    .end local v3    # "distanceLow":I
    .end local v4    # "distanceHigh":I
    .end local v5    # "length":I
    :goto_2
    return-void
.end method

.method private init()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    if-nez v0, :cond_3

    .line 178
    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->in:Ljava/io/InputStream;

    invoke-static {v1}, Lorg/apache/commons/io/input/CloseShieldInputStream;->wrap(Ljava/io/InputStream;)Lorg/apache/commons/io/input/CloseShieldInputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v0

    .line 179
    .local v0, "cis":Lorg/apache/commons/io/input/BoundedInputStream;
    :try_start_0
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->numberOfTrees:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 180
    const/16 v1, 0x100

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->decode(Ljava/io/InputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->literalTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 183
    :cond_0
    const/16 v1, 0x40

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->decode(Ljava/io/InputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->lengthTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 184
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/BinaryTree;->decode(Ljava/io/InputStream;I)Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->distanceTree:Lorg/apache/commons/compress/archivers/zip/BinaryTree;

    .line 185
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->treeSizes:J

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream;->getCount()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->treeSizes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream;->close()V

    .line 188
    .end local v0    # "cis":Lorg/apache/commons/io/input/BoundedInputStream;
    :cond_1
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/BitStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/BitStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    goto :goto_1

    .line 178
    .restart local v0    # "cis":Lorg/apache/commons/io/input/BoundedInputStream;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/commons/io/input/BoundedInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1

    .line 190
    .end local v0    # "cis":Lorg/apache/commons/io/input/BoundedInputStream;
    :cond_3
    :goto_1
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

    .line 96
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 97
    return-void
.end method

.method public getCompressedCount()J
    .locals 4

    .line 159
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->bits:Lorg/apache/commons/compress/archivers/zip/BitStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/BitStream;->getBytesRead()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->treeSizes:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getUncompressedCount()J
    .locals 2

    .line 167
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->uncompressedCount:J

    return-wide v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->available()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->fillBuffer()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "bad IMPLODE stream"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 202
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->buffer:Lorg/apache/commons/compress/archivers/zip/CircularBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/CircularBuffer;->get()I

    move-result v0

    .line 203
    .local v0, "ret":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 204
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->uncompressedCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;->uncompressedCount:J

    .line 206
    :cond_1
    return v0
.end method
