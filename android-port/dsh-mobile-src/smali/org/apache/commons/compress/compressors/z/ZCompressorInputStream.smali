.class public Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;
.source "ZCompressorInputStream.java"


# static fields
.field private static final BLOCK_MODE_MASK:I = 0x80

.field private static final MAGIC_1:I = 0x1f

.field private static final MAGIC_2:I = 0x9d

.field private static final MAX_CODE_SIZE_MASK:I = 0x1f


# instance fields
.field private final blockMode:Z

.field private final maxCodeSize:I

.field private totalCodesRead:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "memoryLimitInKb"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    .line 63
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 64
    .local v0, "firstByte":I
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v2, v1}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v2

    long-to-int v2, v2

    .line 65
    .local v2, "secondByte":I
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v3

    long-to-int v1, v3

    .line 66
    .local v1, "thirdByte":I
    const/16 v3, 0x1f

    if-ne v0, v3, :cond_2

    const/16 v3, 0x9d

    if-ne v2, v3, :cond_2

    if-ltz v1, :cond_2

    .line 69
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->blockMode:Z

    .line 70
    and-int/lit8 v3, v1, 0x1f

    iput v3, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->maxCodeSize:I

    .line 71
    iget-boolean v3, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->blockMode:Z

    if-eqz v3, :cond_1

    .line 72
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->setClearCode(I)V

    .line 74
    :cond_1
    iget v3, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->maxCodeSize:I

    invoke-virtual {p0, v3, p2}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->initializeTables(II)V

    .line 75
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->clearEntries()V

    .line 76
    return-void

    .line 67
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Input is not in .Z format"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private clearEntries()V
    .locals 1

    .line 97
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->blockMode:Z

    add-int/lit16 v0, v0, 0x100

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->setTableSize(I)V

    .line 98
    return-void
.end method

.method public static matches([BI)Z
    .locals 4
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 49
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    aget-byte v0, p0, v1

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    aget-byte v2, p0, v0

    const/16 v3, -0x63

    if-ne v2, v3, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private reAlignReading()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->totalCodesRead:J

    const-wide/16 v2, 0x8

    rem-long/2addr v0, v2

    sub-long v0, v2, v0

    .line 164
    .local v0, "codeReadsToThrowAway":J
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 165
    const-wide/16 v0, 0x0

    .line 167
    :cond_0
    const-wide/16 v2, 0x0

    .local v2, "i":J
    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 168
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->readNextCode()I

    .line 167
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    .line 170
    .end local v2    # "i":J
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v2}, Lorg/apache/commons/compress/utils/BitInputStream;->clearBitCache()V

    .line 171
    return-void
.end method


# virtual methods
.method protected addEntry(IB)I
    .locals 4
    .param p1, "previousCode"    # I
    .param p2, "character"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getCodeSize()I

    move-result v1

    shl-int/2addr v0, v1

    .line 88
    .local v0, "maxTableSize":I
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->addEntry(IBI)I

    move-result v1

    .line 89
    .local v1, "r":I
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getTableSize()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getCodeSize()I

    move-result v2

    iget v3, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->maxCodeSize:I

    if-ge v2, v3, :cond_0

    .line 90
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->reAlignReading()V

    .line 91
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->incrementCodeSize()V

    .line 93
    :cond_0
    return v1
.end method

.method protected decompressNextSymbol()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->readNextCode()I

    move-result v0

    .line 122
    .local v0, "code":I
    if-gez v0, :cond_0

    .line 123
    const/4 v1, -0x1

    return v1

    .line 125
    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->blockMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getClearCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 126
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->clearEntries()V

    .line 127
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->reAlignReading()V

    .line 128
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->resetCodeSize()V

    .line 129
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->resetPreviousCode()V

    .line 130
    const/4 v1, 0x0

    return v1

    .line 132
    :cond_1
    const/4 v1, 0x0

    .line 133
    .local v1, "addedUnfinishedEntry":Z
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getTableSize()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 134
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->addRepeatOfPreviousCode()I

    .line 135
    const/4 v1, 0x1

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getTableSize()I

    move-result v2

    if-gt v0, v2, :cond_3

    .line 139
    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->expandCodeToOutputStack(IZ)I

    move-result v2

    return v2

    .line 137
    :cond_3
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->getCodeSize()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Invalid %d bit code 0x%x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected readNextCode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-super {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->readNextCode()I

    move-result v0

    .line 152
    .local v0, "code":I
    if-ltz v0, :cond_0

    .line 153
    iget-wide v1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->totalCodesRead:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->totalCodesRead:J

    .line 155
    :cond_0
    return v0
.end method
