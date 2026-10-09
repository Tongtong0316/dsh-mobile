.class public Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;
.super Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.source "X0017_StrongEncryptionHeader.java"


# static fields
.field static final HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# instance fields
.field private algId:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

.field private bitlen:I

.field private erdData:[B

.field private flags:I

.field private format:I

.field private hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

.field private hashSize:I

.field private ivData:[B

.field private keyBlob:[B

.field private rcount:J

.field private recipientKeyHash:[B

.field private vCRC32:[B

.field private vData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 260
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 287
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 288
    return-void
.end method

.method private assertDynamicLengthFits(Ljava/lang/String;III)V
    .locals 3
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "dynamicLength"    # I
    .param p3, "prefixLength"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 291
    add-int v0, p3, p2

    if-gt v0, p4, :cond_0

    .line 295
    return-void

    .line 292
    :cond_0
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid X0017_StrongEncryptionHeader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t fit into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes of data at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getEncryptionAlgorithm()Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->algId:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    return-object v0
.end method

.method public getHashAlgorithm()Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    return-object v0
.end method

.method public getRecordCount()J
    .locals 2

    .line 321
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    return-wide v0
.end method

.method public parseCentralDirectoryFormat([BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 333
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertMinimalLength(II)V

    .line 335
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->format:I

    .line 336
    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->algId:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 337
    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->bitlen:I

    .line 338
    add-int/lit8 v0, p2, 0x6

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->flags:I

    .line 339
    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    .line 341
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 342
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertMinimalLength(II)V

    .line 343
    add-int/lit8 v0, p2, 0xc

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 344
    add-int/lit8 v0, p2, 0xe

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    .line 346
    :cond_0
    return-void
.end method

.method public parseFileFormat([BII)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 361
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertMinimalLength(II)V

    .line 362
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v1

    .line 363
    .local v1, "ivSize":I
    const-string v2, "ivSize"

    invoke-direct {p0, v2, v1, v0, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertDynamicLengthFits(Ljava/lang/String;III)V

    .line 364
    add-int/lit8 v2, p2, 0x4

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertMinimalLength(II)V

    .line 366
    add-int/lit8 v2, p2, 0x4

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->ivData:[B

    .line 368
    add-int/lit8 v2, v1, 0x10

    invoke-virtual {p0, v2, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertMinimalLength(II)V

    .line 370
    add-int v2, p2, v1

    add-int/lit8 v2, v2, 0x6

    invoke-static {p1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->format:I

    .line 371
    add-int v2, p2, v1

    add-int/lit8 v2, v2, 0x8

    invoke-static {p1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->algId:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 372
    add-int v2, p2, v1

    add-int/lit8 v2, v2, 0xa

    invoke-static {p1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->bitlen:I

    .line 373
    add-int v2, p2, v1

    add-int/lit8 v2, v2, 0xc

    invoke-static {p1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->flags:I

    .line 375
    add-int v2, p2, v1

    add-int/lit8 v2, v2, 0xe

    invoke-static {p1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v2

    .line 376
    .local v2, "erdSize":I
    add-int/lit8 v3, v1, 0x10

    const-string v4, "erdSize"

    invoke-direct {p0, v4, v2, v3, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertDynamicLengthFits(Ljava/lang/String;III)V

    .line 377
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x10

    invoke-virtual {p0, v3, v2}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertMinimalLength(II)V

    .line 378
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x10

    invoke-static {p1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->erdData:[B

    .line 380
    add-int/lit8 v3, v1, 0x14

    add-int/2addr v3, v2

    invoke-virtual {p0, v3, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertMinimalLength(II)V

    .line 381
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v2

    invoke-static {p1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    .line 382
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->rcount:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const-string v4, " is too small to hold CRC"

    const-string v5, "Invalid X0017_StrongEncryptionHeader: vSize "

    const-string v6, "vSize"

    if-nez v3, :cond_1

    .line 383
    add-int/lit8 v3, v1, 0x14

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertMinimalLength(II)V

    .line 384
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v2

    invoke-static {p1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v3

    .line 385
    .local v3, "vSize":I
    add-int/lit8 v7, v1, 0x16

    add-int/2addr v7, v2

    invoke-direct {p0, v6, v3, v7, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertDynamicLengthFits(Ljava/lang/String;III)V

    .line 386
    if-lt v3, v0, :cond_0

    .line 389
    add-int v4, p2, v1

    add-int/lit8 v4, v4, 0x16

    add-int/2addr v4, v2

    add-int/lit8 v5, v3, -0x4

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertMinimalLength(II)V

    .line 390
    add-int v4, p2, v1

    add-int/lit8 v4, v4, 0x16

    add-int/2addr v4, v2

    add-int/lit8 v5, v3, -0x4

    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vData:[B

    .line 391
    add-int v4, p2, v1

    add-int/lit8 v4, v4, 0x16

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    sub-int/2addr v4, v0

    invoke-virtual {p0, v4, v0}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertMinimalLength(II)V

    .line 392
    add-int v4, p2, v1

    add-int/lit8 v4, v4, 0x16

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    sub-int/2addr v4, v0

    invoke-static {p1, v4, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vCRC32:[B

    .line 393
    .end local v3    # "vSize":I
    goto/16 :goto_0

    .line 387
    .restart local v3    # "vSize":I
    :cond_0
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    .end local v3    # "vSize":I
    :cond_1
    add-int/lit8 v3, v1, 0x14

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {p0, v3, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertMinimalLength(II)V

    .line 395
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v2

    invoke-static {p1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashAlg:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 396
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x16

    add-int/2addr v3, v2

    invoke-static {p1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    .line 397
    add-int v3, p2, v1

    add-int/lit8 v3, v3, 0x18

    add-int/2addr v3, v2

    invoke-static {p1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v3

    .line 399
    .local v3, "resize":I
    iget v7, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    if-lt v3, v7, :cond_3

    .line 403
    add-int/lit8 v7, v1, 0x18

    add-int/2addr v7, v2

    const-string v8, "resize"

    invoke-direct {p0, v8, v3, v7, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertDynamicLengthFits(Ljava/lang/String;III)V

    .line 405
    add-int v7, p2, v1

    add-int/lit8 v7, v7, 0x18

    add-int/2addr v7, v2

    iget v8, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    invoke-static {p1, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    iput-object v7, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->recipientKeyHash:[B

    .line 406
    add-int v7, p2, v1

    add-int/lit8 v7, v7, 0x18

    add-int/2addr v7, v2

    iget v8, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    add-int/2addr v7, v8

    iget v8, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    sub-int v8, v3, v8

    invoke-static {p1, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    iput-object v7, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->keyBlob:[B

    .line 408
    add-int/lit8 v7, v1, 0x1a

    add-int/2addr v7, v2

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v7, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertMinimalLength(II)V

    .line 409
    add-int v7, p2, v1

    add-int/lit8 v7, v7, 0x1a

    add-int/2addr v7, v2

    add-int/2addr v7, v3

    invoke-static {p1, v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v7

    .line 410
    .local v7, "vSize":I
    if-lt v7, v0, :cond_2

    .line 414
    add-int/lit8 v4, v1, 0x16

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    invoke-direct {p0, v6, v7, v4, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->assertDynamicLengthFits(Ljava/lang/String;III)V

    .line 416
    add-int v4, p2, v1

    add-int/lit8 v4, v4, 0x16

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/lit8 v5, v7, -0x4

    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vData:[B

    .line 417
    add-int v4, p2, v1

    add-int/lit8 v4, v4, 0x16

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    add-int/2addr v4, v7

    sub-int/2addr v4, v0

    invoke-static {p1, v4, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->vCRC32:[B

    .line 421
    .end local v3    # "resize":I
    .end local v7    # "vSize":I
    :goto_0
    return-void

    .line 411
    .restart local v3    # "resize":I
    .restart local v7    # "vSize":I
    :cond_2
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    .end local v7    # "vSize":I
    :cond_3
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid X0017_StrongEncryptionHeader: resize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is too small to hold hashSize"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->hashSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 425
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->parseFromCentralDirectoryData([BII)V

    .line 426
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->parseCentralDirectoryFormat([BII)V

    .line 427
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 431
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->parseFromLocalFileData([BII)V

    .line 432
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/X0017_StrongEncryptionHeader;->parseFileFormat([BII)V

    .line 433
    return-void
.end method
