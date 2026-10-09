.class final Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
.super Ljava/lang/Object;
.source "BlockLZ4CompressorOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pair"
.end annotation


# instance fields
.field private brLength:I

.field private brOffset:I

.field private literalLength:I

.field private final literals:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "[B>;"
        }
    .end annotation
.end field

.field private written:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literals:Ljava/util/Deque;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->hasBeenWritten()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;[B)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    .param p1, "x1"    # [B

    .line 42
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->prependLiteral([B)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->backReferenceLength()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    .param p1, "x1"    # I

    .line 42
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->splitWithNewBackReferenceLengthOf(I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    .param p1, "x1"    # Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 42
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->prependTo(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)V

    return-void
.end method

.method private backReferenceLength()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brLength:I

    return v0
.end method

.method private hasBeenWritten()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->written:Z

    return v0
.end method

.method private static lengths(II)I
    .locals 3
    .param p0, "litLength"    # I
    .param p1, "brLength"    # I

    .line 45
    const/16 v0, 0xf

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 46
    .local v1, "l":I
    const/4 v2, 0x4

    if-ge p1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x13

    if-ge p1, v2, :cond_1

    add-int/lit8 v0, p1, -0x4

    .line 47
    .local v0, "br":I
    :cond_1
    :goto_0
    shl-int/lit8 v2, v1, 0x4

    or-int/2addr v2, v0

    return v2
.end method

.method private literalLength()I
    .locals 4

    .line 95
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literalLength:I

    if-eqz v0, :cond_0

    .line 96
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literalLength:I

    return v0

    .line 98
    :cond_0
    const/4 v0, 0x0

    .line 99
    .local v0, "length":I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literals:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 100
    .local v2, "b":[B
    array-length v3, v2

    add-int/2addr v0, v3

    .line 101
    .end local v2    # "b":[B
    goto :goto_0

    .line 102
    :cond_1
    iput v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literalLength:I

    return v0
.end method

.method private prependLiteral([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 106
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literals:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 107
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literalLength:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literalLength:I

    .line 108
    return-void
.end method

.method private prependTo(Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;)V
    .locals 2
    .param p1, "other"    # Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    .line 111
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literals:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 112
    .local v0, "listBackwards":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {p1, v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->prependLiteral([B)V

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method private splitWithNewBackReferenceLengthOf(I)Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    .locals 3
    .param p1, "newBackReferenceLength"    # I

    .line 126
    new-instance v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;-><init>()V

    .line 127
    .local v0, "p":Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literals:Ljava/util/Deque;

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literals:Ljava/util/Deque;

    invoke-interface {v1, v2}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    .line 128
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brOffset:I

    iput v1, v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brOffset:I

    .line 129
    iput p1, v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brLength:I

    .line 130
    return-object v0
.end method

.method private static writeLength(ILjava/io/OutputStream;)V
    .locals 1
    .param p0, "length"    # I
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    nop

    :goto_0
    const/16 v0, 0xff

    if-lt p0, v0, :cond_0

    .line 52
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 53
    add-int/lit16 p0, p0, -0xff

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 56
    return-void
.end method


# virtual methods
.method addLiteral(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)[B
    .locals 4
    .param p1, "block"    # Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;

    .line 67
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getOffset()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->getLength()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 68
    .local v0, "copy":[B
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literals:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 69
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literalLength:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literalLength:I

    .line 70
    return-object v0
.end method

.method canBeWritten(I)Z
    .locals 1
    .param p1, "lengthOfBlocksAfterThisPair"    # I

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->hasBackReference()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasBackReference()Z
    .locals 1

    .line 82
    iget v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brOffset:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method length()I
    .locals 2

    .line 90
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literalLength()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brLength:I

    add-int/2addr v0, v1

    return v0
.end method

.method setBackReference(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V
    .locals 1
    .param p1, "block"    # Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;

    .line 118
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->hasBackReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->getOffset()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brOffset:I

    .line 122
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;->getLength()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brLength:I

    .line 123
    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literalLength()I

    move-result v0

    .line 135
    .local v0, "litLength":I
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brLength:I

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->lengths(II)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 136
    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 137
    add-int/lit8 v2, v0, -0xf

    invoke-static {v2, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->writeLength(ILjava/io/OutputStream;)V

    .line 139
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->literals:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 140
    .local v3, "b":[B
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 141
    .end local v3    # "b":[B
    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->hasBackReference()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brOffset:I

    int-to-long v2, v2

    const/4 v4, 0x2

    invoke-static {p1, v2, v3, v4}, Lorg/apache/commons/compress/utils/ByteUtils;->toLittleEndian(Ljava/io/OutputStream;JI)V

    .line 144
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brLength:I

    add-int/lit8 v2, v2, -0x4

    if-lt v2, v1, :cond_2

    .line 145
    iget v2, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->brLength:I

    add-int/lit8 v2, v2, -0x4

    sub-int/2addr v2, v1

    invoke-static {v2, p1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->writeLength(ILjava/io/OutputStream;)V

    .line 148
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream$Pair;->written:Z

    .line 149
    return-void
.end method
