.class public Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "BlockLZ4CompressorOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/compressors/CompressorOutputStream<",
        "Ljava/io/OutputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_BACK_REFERENCE_LENGTH:I = 0x4

.field private static final MIN_OFFSET_OF_LAST_BACK_REFERENCE:I = 0xc


# instance fields
.field private final compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

.field private final expandedBlocks:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "[B>;"
        }
    .end annotation
.end field

.field private finished:Z

.field private final oneByte:[B

.field private final pairs:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 204
    invoke-static {}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->createParameterBuilder()Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->build()Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/lz77support/Parameters;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/lz77support/Parameters;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "params"    # Lorg/apache/commons/compress/compressors/lz77support/Parameters;

    .line 214
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->oneByte:[B

    .line 192
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    .line 196
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    .line 215
    new-instance v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    new-instance v1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;)V

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;-><init>(Lorg/apache/commons/compress/compressors/lz77support/Parameters;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    .line 228
    return-void
.end method

.method private addBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V
    .locals 1
    .param p1, "block"    # Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->getLength()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->writeBlocksAndReturnUnfinishedPair(I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    move-result-object v0

    .line 232
    .local v0, "last":Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->setBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V

    .line 233
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->recordBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V

    .line 234
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->clearUnusedBlocksAndPairs()V

    .line 235
    return-void
.end method

.method private addLiteralBlock(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V
    .locals 2
    .param p1, "block"    # Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getLength()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->writeBlocksAndReturnUnfinishedPair(I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    move-result-object v0

    .line 239
    .local v0, "last":Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->addLiteral(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->recordLiteral([B)V

    .line 240
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->clearUnusedBlocksAndPairs()V

    .line 241
    return-void
.end method

.method private clearUnusedBlocks()V
    .locals 5

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "blockLengths":I
    const/4 v1, 0x0

    .line 246
    .local v1, "blocksToKeep":I
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 247
    .local v3, "b":[B
    add-int/lit8 v1, v1, 0x1

    .line 248
    array-length v4, v3

    add-int/2addr v0, v4

    .line 249
    const/high16 v4, 0x10000

    if-lt v0, v4, :cond_0

    .line 250
    goto :goto_1

    .line 252
    .end local v3    # "b":[B
    :cond_0
    goto :goto_0

    .line 253
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    .line 254
    .local v2, "size":I
    move v3, v1

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 255
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 254
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 257
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private clearUnusedBlocksAndPairs()V
    .locals 0

    .line 260
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->clearUnusedBlocks()V

    .line 261
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->clearUnusedPairs()V

    .line 262
    return-void
.end method

.method private clearUnusedPairs()V
    .locals 6

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "pairLengths":I
    const/4 v1, 0x0

    .line 267
    .local v1, "pairsToKeep":I
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 268
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 269
    .local v3, "p":Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    add-int/lit8 v1, v1, 0x1

    .line 270
    invoke-virtual {v3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->length()I

    move-result v4

    add-int/2addr v0, v4

    .line 271
    const/high16 v4, 0x10000

    if-lt v0, v4, :cond_0

    .line 272
    goto :goto_1

    .line 274
    .end local v3    # "p":Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    :cond_0
    goto :goto_0

    .line 275
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;>;"
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    .line 276
    .local v2, "size":I
    move v3, v1

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 277
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 278
    .local v4, "p":Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    invoke-static {v4}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$000(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 279
    goto :goto_3

    .line 281
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 276
    .end local v4    # "p":Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 283
    .end local v3    # "i":I
    :cond_3
    :goto_3
    return-void
.end method

.method public static createParameterBuilder()Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;
    .locals 3

    .line 181
    const v0, 0xffff

    .line 182
    .local v0, "maxLen":I
    const/high16 v1, 0x10000

    invoke-static {v1}, Lorg/apache/commons/compress/compressors/lz77support/Parameters;->builder(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMinBackReferenceLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v1

    .line 183
    const v2, 0xffff

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMaxBackReferenceLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMaxOffset(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;->withMaxLiteralLength(I)Lorg/apache/commons/compress/compressors/lz77support/Parameters$Builder;

    move-result-object v1

    .line 182
    return-object v1
.end method

.method private expand(II)[B
    .locals 4
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 295
    new-array v0, p2, [B

    .line 296
    .local v0, "expanded":[B
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 297
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 298
    .local v2, "block":[B
    array-length v3, v2

    sub-int/2addr v3, v1

    aget-byte v1, v2, v3

    .line 299
    .local v1, "b":B
    if-eqz v1, :cond_0

    .line 300
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 302
    .end local v1    # "b":B
    .end local v2    # "block":[B
    :cond_0
    goto :goto_0

    .line 303
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandFromList([BII)V

    .line 305
    :goto_0
    return-object v0
.end method

.method private expandFromList([BII)V
    .locals 8
    .param p1, "expanded"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 309
    move v0, p2

    .line 310
    .local v0, "offsetRemaining":I
    move v1, p3

    .line 311
    .local v1, "lengthRemaining":I
    const/4 v2, 0x0

    .line 312
    .local v2, "writeOffset":I
    :goto_0
    if-lez v1, :cond_4

    .line 314
    const/4 v3, 0x0

    .line 317
    .local v3, "block":[B
    if-lez v0, :cond_3

    .line 318
    const/4 v4, 0x0

    .line 319
    .local v4, "blockOffset":I
    iget-object v5, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 320
    .local v6, "b":[B
    array-length v7, v6

    add-int/2addr v7, v4

    if-lt v7, v0, :cond_0

    .line 321
    move-object v3, v6

    .line 322
    goto :goto_2

    .line 324
    :cond_0
    array-length v7, v6

    add-int/2addr v4, v7

    .line 325
    .end local v6    # "b":[B
    goto :goto_1

    .line 326
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 330
    array-length v5, v3

    add-int/2addr v5, v4

    sub-int/2addr v5, v0

    .line 331
    .local v5, "copyOffset":I
    array-length v6, v3

    sub-int/2addr v6, v5

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 332
    .local v4, "copyLen":I
    goto :goto_3

    .line 328
    .end local v5    # "copyOffset":I
    .local v4, "blockOffset":I
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find a block containing offset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 334
    .end local v4    # "blockOffset":I
    :cond_3
    move-object v3, p1

    .line 335
    neg-int v5, v0

    .line 336
    .restart local v5    # "copyOffset":I
    add-int v4, v2, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 338
    .local v4, "copyLen":I
    :goto_3
    invoke-static {v3, v5, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    sub-int/2addr v0, v4

    .line 340
    sub-int/2addr v1, v4

    .line 341
    add-int/2addr v2, v4

    .line 342
    .end local v3    # "block":[B
    .end local v4    # "copyLen":I
    .end local v5    # "copyOffset":I
    goto :goto_0

    .line 343
    :cond_4
    return-void
.end method

.method private recordBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V
    .locals 3
    .param p1, "block"    # Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;

    .line 375
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->getOffset()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->getLength()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expand(II)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 376
    return-void
.end method

.method private recordLiteral([B)V
    .locals 1
    .param p1, "b"    # [B

    .line 379
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expandedBlocks:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 380
    return-void
.end method

.method private rewriteLastPairs()V
    .locals 11

    .line 383
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 384
    .local v0, "lastPairs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 385
    .local v1, "pairLength":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 386
    .local v2, "offset":I
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 387
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 388
    .local v4, "p":Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    invoke-static {v4}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$000(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 389
    goto :goto_1

    .line 391
    :cond_0
    invoke-virtual {v4}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->length()I

    move-result v5

    .line 392
    .local v5, "len":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 393
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 394
    add-int/2addr v2, v5

    .line 395
    const/16 v6, 0xc

    if-lt v2, v6, :cond_1

    .line 396
    goto :goto_1

    .line 398
    .end local v4    # "p":Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    .end local v5    # "len":I
    :cond_1
    goto :goto_0

    .line 399
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;>;"
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$$ExternalSyntheticLambda1;-><init>(Ljava/util/Deque;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->forEach(Ljava/util/function/Consumer;)V

    .line 424
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 425
    .local v3, "lastPairsSize":I
    const/4 v4, 0x0

    .line 426
    .local v4, "toExpand":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_3

    .line 427
    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v4, v6

    .line 426
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 429
    .end local v5    # "i":I
    :cond_3
    new-instance v5, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    invoke-direct {v5}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;-><init>()V

    .line 430
    .local v5, "replacement":Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    if-lez v4, :cond_4

    .line 431
    invoke-direct {p0, v4, v4}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expand(II)[B

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$100(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;[B)V

    .line 433
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 434
    .local v7, "splitCandidate":Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    rsub-int/lit8 v8, v4, 0xc

    .line 435
    .local v8, "stillNeeded":I
    invoke-virtual {v7}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->hasBackReference()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v7}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$200(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)I

    move-result v6

    .line 436
    .local v6, "brLen":I
    :cond_5
    invoke-virtual {v7}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->hasBackReference()Z

    move-result v9

    if-eqz v9, :cond_6

    add-int/lit8 v9, v8, 0x4

    if-lt v6, v9, :cond_6

    .line 437
    add-int v9, v4, v8

    invoke-direct {p0, v9, v8}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expand(II)[B

    move-result-object v9

    invoke-static {v5, v9}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$100(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;[B)V

    .line 438
    iget-object v9, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    sub-int v10, v6, v8

    invoke-static {v7, v10}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$300(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 440
    :cond_6
    invoke-virtual {v7}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->hasBackReference()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 441
    add-int v9, v4, v6

    invoke-direct {p0, v9, v6}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->expand(II)[B

    move-result-object v9

    invoke-static {v5, v9}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$100(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;[B)V

    .line 443
    :cond_7
    invoke-static {v7, v5}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$400(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)V

    .line 445
    :goto_3
    iget-object v9, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v9, v5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 446
    return-void
.end method

.method private writeBlocksAndReturnUnfinishedPair(I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->writeWritablePairs(I)V

    .line 461
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 462
    .local v0, "last":Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->hasBackReference()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    :cond_0
    new-instance v1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    invoke-direct {v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;-><init>()V

    move-object v0, v1

    .line 464
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 466
    :cond_1
    return-object v0
.end method

.method private writeFinalLiteralBlock()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->rewriteLastPairs()V

    .line 471
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 472
    .local v1, "p":Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    invoke-static {v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$000(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 473
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->writeTo(Ljava/io/OutputStream;)V

    .line 475
    .end local v1    # "p":Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    :cond_0
    goto :goto_0

    .line 476
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 477
    return-void
.end method

.method private writeWritablePairs(I)V
    .locals 4
    .param p1, "lengthOfBlocksAfterLastPair"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    move v0, p1

    .line 481
    .local v0, "unwrittenLength":I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 482
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 483
    .local v2, "p":Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    invoke-static {v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$000(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    goto :goto_1

    .line 486
    :cond_0
    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 487
    .end local v2    # "p":Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    goto :goto_0

    .line 488
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;>;"
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->pairs:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 489
    .restart local v2    # "p":Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    invoke-static {v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->access$000(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 490
    goto :goto_2

    .line 492
    :cond_2
    invoke-virtual {v2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->length()I

    move-result v3

    sub-int/2addr v0, v3

    .line 493
    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->canBeWritten(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 494
    goto :goto_3

    .line 496
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->writeTo(Ljava/io/OutputStream;)V

    .line 497
    .end local v2    # "p":Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    goto :goto_2

    .line 498
    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 291
    nop

    .line 292
    return-void

    .line 290
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 291
    throw v0
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->finish()V

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->finished:Z

    .line 355
    :cond_0
    return-void
.end method

.method synthetic lambda$new$0$org-apache-commons-compress-compressors-lz4-BlockLZ4CompressorOutputStream(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V
    .locals 2
    .param p1, "block"    # Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$1;->$SwitchMap$org$apache$commons$compress$compressors$lz77support$LZ77Compressor$Block$BlockType:[I

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;->getType()Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 224
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->writeFinalLiteralBlock()V

    goto :goto_0

    .line 221
    :pswitch_1
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->addBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V

    .line 222
    goto :goto_0

    .line 218
    :pswitch_2
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->addLiteralBlock(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    .line 219
    nop

    .line 227
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public prefill([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 367
    if-lez p3, :cond_0

    .line 368
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 369
    .local v0, "b":[B
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->prefill([B)V

    .line 370
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->recordLiteral([B)V

    .line 372
    .end local v0    # "b":[B
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->oneByte:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 456
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->oneByte:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->write([B)V

    .line 457
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;->compressor:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;->compress([BII)V

    .line 451
    return-void
.end method
