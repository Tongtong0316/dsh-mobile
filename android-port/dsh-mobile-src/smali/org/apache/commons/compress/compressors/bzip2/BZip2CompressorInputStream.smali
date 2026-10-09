.class public Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "BZip2CompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/compressors/bzip2/BZip2Constants;
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    }
.end annotation


# static fields
.field private static final EOF:I = 0x0

.field private static final NO_RAND_PART_A_STATE:I = 0x5

.field private static final NO_RAND_PART_B_STATE:I = 0x6

.field private static final NO_RAND_PART_C_STATE:I = 0x7

.field private static final RAND_PART_A_STATE:I = 0x2

.field private static final RAND_PART_B_STATE:I = 0x3

.field private static final RAND_PART_C_STATE:I = 0x4

.field private static final START_BLOCK_STATE:I = 0x1


# instance fields
.field private bin:Lorg/apache/commons/compress/utils/BitInputStream;

.field private blockRandomised:Z

.field private blockSize100k:I

.field private computedCombinedCRC:I

.field private final crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

.field private currentState:I

.field private data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

.field private final decompressConcatenated:Z

.field private last:I

.field private nInUse:I

.field private origPtr:I

.field private storedBlockCRC:I

.field private storedCombinedCRC:I

.field private su_ch2:I

.field private su_chPrev:I

.field private su_count:I

.field private su_i2:I

.field private su_j2:I

.field private su_rNToGo:I

.field private su_rTPos:I

.field private su_tPos:I

.field private su_z:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 259
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "decompressConcatenated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 227
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 231
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 271
    new-instance v1, Lorg/apache/commons/compress/utils/BitInputStream;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-ne p1, v2, :cond_0

    invoke-static {p1}, Lorg/apache/commons/io/input/CloseShieldInputStream;->wrap(Ljava/io/InputStream;)Lorg/apache/commons/io/input/CloseShieldInputStream;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/compress/utils/BitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 272
    iput-boolean p2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->decompressConcatenated:Z

    .line 273
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->init(Z)Z

    .line 274
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 275
    return-void
.end method

.method private static bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z
    .locals 2
    .param p0, "bin"    # Lorg/apache/commons/compress/utils/BitInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static bsGetInt(Lorg/apache/commons/compress/utils/BitInputStream;)I
    .locals 1
    .param p0, "bin"    # Lorg/apache/commons/compress/utils/BitInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v0

    return v0
.end method

.method private static bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C
    .locals 1
    .param p0, "bin"    # Lorg/apache/commons/compress/utils/BitInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method private static bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I
    .locals 4
    .param p0, "bin"    # Lorg/apache/commons/compress/utils/BitInputStream;
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v0

    .line 140
    .local v0, "thech":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 143
    long-to-int v2, v0

    return v2

    .line 141
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static checkBounds(IILjava/lang/String;)V
    .locals 3
    .param p0, "checkVal"    # I
    .param p1, "limitExclusive"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    const-string v0, "Corrupted input, "

    if-ltz p0, :cond_1

    .line 150
    if-ge p0, p1, :cond_0

    .line 153
    return-void

    .line 151
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " value too big"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " value negative"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private complete()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetInt(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 293
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 294
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    if-ne v1, v2, :cond_2

    .line 299
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->decompressConcatenated:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->init(Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 295
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BZip2 CRC error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createHuffmanDecodingTables(II)V
    .locals 20
    .param p1, "alphaSize"    # I
    .param p2, "nGroups"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 307
    .local v1, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    iget-object v2, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    .line 308
    .local v2, "len":[[C
    iget-object v3, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    .line 309
    .local v3, "minLens":[I
    iget-object v4, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    .line 310
    .local v4, "limit":[[I
    iget-object v5, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 311
    .local v5, "base":[[I
    iget-object v6, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    .line 313
    .local v6, "perm":[[I
    const/4 v7, 0x0

    .local v7, "t":I
    :goto_0
    move/from16 v8, p2

    if-ge v7, v8, :cond_3

    .line 314
    const/16 v9, 0x20

    .line 315
    .local v9, "minLen":I
    const/4 v10, 0x0

    .line 316
    .local v10, "maxLen":I
    aget-object v11, v2, v7

    .line 317
    .local v11, "len_t":[C
    move/from16 v12, p1

    .local v12, "i":I
    :goto_1
    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_2

    .line 318
    aget-char v13, v11, v12

    .line 319
    .local v13, "lent":C
    if-le v13, v10, :cond_0

    .line 320
    move v10, v13

    .line 322
    :cond_0
    if-ge v13, v9, :cond_1

    .line 323
    move v9, v13

    .line 325
    .end local v13    # "lent":C
    :cond_1
    goto :goto_1

    .line 326
    .end local v12    # "i":I
    :cond_2
    aget-object v13, v4, v7

    aget-object v14, v5, v7

    aget-object v15, v6, v7

    aget-object v16, v2, v7

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, p1

    invoke-static/range {v13 .. v19}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->hbCreateDecodeTables([I[I[I[CIII)V

    .line 327
    aput v9, v3, v7

    .line 313
    .end local v9    # "minLen":I
    .end local v10    # "maxLen":I
    .end local v11    # "len_t":[C
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 329
    .end local v7    # "t":I
    :cond_3
    return-void
.end method

.method private endBlock()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->getValue()I

    move-result v0

    .line 334
    .local v0, "computedBlockCRC":I
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    if-ne v1, v0, :cond_0

    .line 341
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    shl-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    ushr-int/lit8 v2, v2, 0x1f

    or-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 342
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    xor-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 343
    return-void

    .line 337
    :cond_0
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    shl-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedCombinedCRC:I

    ushr-int/lit8 v2, v2, 0x1f

    or-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 338
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    xor-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 339
    new-instance v1, Ljava/io/IOException;

    const-string v2, "BZip2 CRC error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getAndMoveToFrontDecode()V
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 347
    .local v1, "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    const/16 v2, 0x18

    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v2

    iput v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    .line 348
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->recvDecodingTables()V

    .line 349
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 350
    .local v2, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    iget-object v3, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 351
    .local v3, "ll8":[B
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    .line 352
    .local v4, "unzftab":[I
    iget-object v5, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    .line 353
    .local v5, "selector":[B
    iget-object v6, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    .line 354
    .local v6, "seqToUnseq":[B
    iget-object v7, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->getAndMoveToFrontDecode_yy:[C

    .line 355
    .local v7, "yy":[C
    iget-object v8, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    .line 356
    .local v8, "minLens":[I
    iget-object v9, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    .line 357
    .local v9, "limit":[[I
    iget-object v10, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 358
    .local v10, "base":[[I
    iget-object v11, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    .line 359
    .local v11, "perm":[[I
    iget v12, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    const v13, 0x186a0

    mul-int/2addr v12, v13

    .line 365
    .local v12, "limitLast":I
    const/16 v13, 0x100

    .local v13, "i":I
    :goto_0
    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x0

    if-ltz v13, :cond_0

    .line 366
    int-to-char v15, v13

    aput-char v15, v7, v13

    .line 367
    aput v14, v4, v13

    goto :goto_0

    .line 370
    .end local v13    # "i":I
    :cond_0
    const/4 v13, 0x0

    .line 371
    .local v13, "groupNo":I
    const/16 v15, 0x31

    .line 372
    .local v15, "groupPos":I
    iget v14, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    move-object/from16 v17, v2

    .end local v2    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    .local v17, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    const/4 v2, 0x1

    add-int/2addr v14, v2

    .line 373
    .local v14, "eob":I
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->getAndMoveToFrontDecode0()I

    move-result v18

    .line 374
    .local v18, "nextSym":I
    const/16 v19, -0x1

    .line 375
    .local v19, "lastShadow":I
    aget-byte v2, v5, v13

    and-int/lit16 v2, v2, 0xff

    .line 376
    .local v2, "zt":I
    move/from16 v21, v13

    .end local v13    # "groupNo":I
    .local v21, "groupNo":I
    const/4 v13, 0x6

    move/from16 v22, v15

    .end local v15    # "groupPos":I
    .local v22, "groupPos":I
    const-string v15, "zt"

    invoke-static {v2, v13, v15}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 377
    aget-object v23, v10, v2

    .line 378
    .local v23, "base_zt":[I
    aget-object v24, v9, v2

    .line 379
    .local v24, "limit_zt":[I
    aget-object v25, v11, v2

    .line 380
    .local v25, "perm_zt":[I
    aget v26, v8, v2

    move/from16 v13, v18

    move/from16 v38, v19

    move/from16 v19, v2

    move/from16 v2, v38

    .line 382
    .end local v18    # "nextSym":I
    .local v2, "lastShadow":I
    .local v13, "nextSym":I
    .local v19, "zt":I
    .local v26, "minLens_zt":I
    :goto_1
    if-eq v13, v14, :cond_d

    .line 383
    move/from16 v27, v14

    .end local v14    # "eob":I
    .local v27, "eob":I
    const-string v14, "zvec"

    const-string v0, "groupNo"

    move-object/from16 v28, v14

    const-string v14, " exceeds "

    move-object/from16 v30, v14

    const-string v14, "yy"

    move-object/from16 v31, v1

    .end local v1    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .local v31, "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    const-string v1, "zn"

    move-object/from16 v32, v1

    if-eqz v13, :cond_7

    const/4 v1, 0x1

    if-ne v13, v1, :cond_1

    move/from16 v33, v12

    move/from16 v34, v13

    move-object/from16 v13, v28

    move-object/from16 v1, v31

    move-object/from16 v12, v32

    goto/16 :goto_6

    .line 435
    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v12, :cond_6

    .line 438
    const/16 v1, 0x101

    move/from16 v33, v12

    .end local v12    # "limitLast":I
    .local v33, "limitLast":I
    const-string v12, "nextSym"

    invoke-static {v13, v1, v12}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 440
    add-int/lit8 v1, v13, -0x1

    aget-char v1, v7, v1

    .line 441
    .local v1, "tmp":C
    const/16 v12, 0x100

    invoke-static {v1, v12, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 442
    aget-byte v12, v6, v1

    and-int/lit16 v12, v12, 0xff

    aget v14, v4, v12

    const/16 v20, 0x1

    add-int/lit8 v14, v14, 0x1

    aput v14, v4, v12

    .line 443
    aget-byte v12, v6, v1

    aput-byte v12, v3, v2

    .line 448
    const/16 v12, 0x10

    if-gt v13, v12, :cond_3

    .line 449
    add-int/lit8 v12, v13, -0x1

    .local v12, "j":I
    :goto_2
    if-lez v12, :cond_2

    .line 450
    add-int/lit8 v14, v12, -0x1

    .end local v12    # "j":I
    .local v14, "j":I
    aget-char v30, v7, v14

    aput-char v30, v7, v12

    move v12, v14

    goto :goto_2

    .end local v14    # "j":I
    :cond_2
    move/from16 v34, v13

    const/4 v14, 0x0

    goto :goto_3

    .line 453
    :cond_3
    add-int/lit8 v12, v13, -0x1

    move/from16 v34, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    .end local v13    # "nextSym":I
    .local v34, "nextSym":I
    invoke-static {v7, v14, v7, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    :goto_3
    aput-char v1, v7, v14

    .line 458
    if-nez v22, :cond_4

    .line 459
    const/16 v12, 0x31

    .line 460
    .end local v22    # "groupPos":I
    .local v12, "groupPos":I
    add-int/lit8 v13, v21, 0x1

    const/16 v14, 0x4652

    .end local v21    # "groupNo":I
    .local v13, "groupNo":I
    invoke-static {v13, v14, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 461
    aget-byte v0, v5, v13

    and-int/lit16 v0, v0, 0xff

    .line 462
    .end local v19    # "zt":I
    .local v0, "zt":I
    const/4 v14, 0x6

    invoke-static {v0, v14, v15}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 463
    aget-object v14, v10, v0

    .line 464
    .end local v23    # "base_zt":[I
    .local v14, "base_zt":[I
    aget-object v19, v9, v0

    .line 465
    .end local v24    # "limit_zt":[I
    .local v19, "limit_zt":[I
    aget-object v21, v11, v0

    .line 466
    .end local v25    # "perm_zt":[I
    .local v21, "perm_zt":[I
    aget v22, v8, v0

    move-object/from16 v23, v14

    move-object/from16 v24, v19

    move-object/from16 v25, v21

    move/from16 v26, v22

    move/from16 v19, v0

    move/from16 v22, v12

    move/from16 v21, v13

    .end local v26    # "minLens_zt":I
    .local v22, "minLens_zt":I
    goto :goto_4

    .line 468
    .end local v0    # "zt":I
    .end local v12    # "groupPos":I
    .end local v13    # "groupNo":I
    .end local v14    # "base_zt":[I
    .local v19, "zt":I
    .local v21, "groupNo":I
    .local v22, "groupPos":I
    .restart local v23    # "base_zt":[I
    .restart local v24    # "limit_zt":[I
    .restart local v25    # "perm_zt":[I
    .restart local v26    # "minLens_zt":I
    :cond_4
    add-int/lit8 v22, v22, -0x1

    .line 471
    :goto_4
    move/from16 v0, v26

    .line 472
    .local v0, "zn":I
    move-object/from16 v12, v32

    const/16 v13, 0x102

    invoke-static {v0, v13, v12}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 473
    move-object/from16 v14, v31

    .end local v31    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .local v14, "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    invoke-static {v14, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v29

    move/from16 v13, v29

    .line 474
    .local v13, "zvec":I
    :goto_5
    move/from16 v29, v1

    .end local v1    # "tmp":C
    .local v29, "tmp":C
    aget v1, v24, v0

    if-le v13, v1, :cond_5

    .line 475
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x102

    invoke-static {v0, v1, v12}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 476
    shl-int/lit8 v30, v13, 0x1

    const/4 v1, 0x1

    invoke-static {v14, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v31

    or-int v13, v30, v31

    move/from16 v1, v29

    goto :goto_5

    .line 478
    :cond_5
    aget v1, v23, v0

    sub-int v1, v13, v1

    .line 479
    .local v1, "idx":I
    move-object/from16 v12, v28

    move/from16 v28, v0

    const/16 v0, 0x102

    .end local v0    # "zn":I
    .local v28, "zn":I
    invoke-static {v1, v0, v12}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 480
    aget v13, v25, v1

    .line 481
    .end local v1    # "idx":I
    .end local v28    # "zn":I
    .end local v29    # "tmp":C
    .end local v34    # "nextSym":I
    .local v13, "nextSym":I
    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v14, v27

    move/from16 v12, v33

    goto/16 :goto_1

    .line 436
    .end local v14    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .end local v33    # "limitLast":I
    .local v12, "limitLast":I
    .restart local v31    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    :cond_6
    move/from16 v33, v12

    move/from16 v34, v13

    .end local v12    # "limitLast":I
    .end local v13    # "nextSym":I
    .restart local v33    # "limitLast":I
    .restart local v34    # "nextSym":I
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Block overrun in MTF, "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v13, v30

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v12, v33

    .end local v33    # "limitLast":I
    .restart local v12    # "limitLast":I
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    .end local v34    # "nextSym":I
    .restart local v13    # "nextSym":I
    :cond_7
    move/from16 v33, v12

    move/from16 v34, v13

    move-object/from16 v13, v28

    move-object/from16 v1, v31

    move-object/from16 v12, v32

    .line 384
    .end local v12    # "limitLast":I
    .end local v13    # "nextSym":I
    .end local v31    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .local v1, "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .restart local v33    # "limitLast":I
    .restart local v34    # "nextSym":I
    :goto_6
    const/16 v28, -0x1

    .line 386
    .local v28, "s":I
    const/16 v31, 0x1

    move-object/from16 v32, v3

    move/from16 v3, v34

    move/from16 v38, v28

    move/from16 v28, v2

    move/from16 v2, v38

    .line 387
    .end local v34    # "nextSym":I
    .local v2, "s":I
    .local v3, "nextSym":I
    .local v28, "lastShadow":I
    .local v31, "n":I
    .local v32, "ll8":[B
    :goto_7
    if-nez v3, :cond_8

    .line 388
    add-int v2, v2, v31

    move-object/from16 v35, v4

    goto :goto_8

    .line 389
    :cond_8
    move-object/from16 v35, v4

    const/4 v4, 0x1

    .end local v4    # "unzftab":[I
    .local v35, "unzftab":[I
    if-ne v3, v4, :cond_b

    .line 390
    shl-int/lit8 v4, v31, 0x1

    add-int/2addr v2, v4

    .line 395
    :goto_8
    if-nez v22, :cond_9

    .line 396
    const/16 v4, 0x31

    .line 397
    .end local v22    # "groupPos":I
    .local v4, "groupPos":I
    move/from16 v34, v2

    .end local v2    # "s":I
    .local v34, "s":I
    add-int/lit8 v2, v21, 0x1

    move/from16 v36, v3

    const/16 v3, 0x4652

    .end local v3    # "nextSym":I
    .end local v21    # "groupNo":I
    .local v2, "groupNo":I
    .local v36, "nextSym":I
    invoke-static {v2, v3, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 398
    aget-byte v3, v5, v2

    and-int/lit16 v3, v3, 0xff

    .line 399
    .end local v19    # "zt":I
    .local v3, "zt":I
    move-object/from16 v37, v0

    const/4 v0, 0x6

    invoke-static {v3, v0, v15}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 400
    aget-object v23, v10, v3

    .line 401
    aget-object v24, v9, v3

    .line 402
    aget-object v25, v11, v3

    .line 403
    aget v26, v8, v3

    move/from16 v21, v2

    move/from16 v19, v3

    move/from16 v22, v4

    goto :goto_9

    .line 405
    .end local v4    # "groupPos":I
    .end local v34    # "s":I
    .end local v36    # "nextSym":I
    .local v2, "s":I
    .local v3, "nextSym":I
    .restart local v19    # "zt":I
    .restart local v21    # "groupNo":I
    .restart local v22    # "groupPos":I
    :cond_9
    move-object/from16 v37, v0

    move/from16 v34, v2

    move/from16 v36, v3

    const/4 v0, 0x6

    .end local v2    # "s":I
    .end local v3    # "nextSym":I
    .restart local v34    # "s":I
    .restart local v36    # "nextSym":I
    add-int/lit8 v22, v22, -0x1

    .line 408
    :goto_9
    move/from16 v2, v26

    .line 409
    .local v2, "zn":I
    const/16 v3, 0x102

    invoke-static {v2, v3, v12}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 410
    invoke-static {v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v4

    .line 411
    .local v4, "zvec":I
    :goto_a
    aget v0, v24, v2

    if-le v4, v0, :cond_a

    .line 412
    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v3, v12}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 413
    shl-int/lit8 v0, v4, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v20

    or-int v4, v0, v20

    const/4 v0, 0x6

    const/16 v3, 0x102

    goto :goto_a

    .line 415
    :cond_a
    const/4 v3, 0x1

    aget v0, v23, v2

    sub-int v0, v4, v0

    .line 416
    .local v0, "tmp":I
    const/16 v3, 0x102

    invoke-static {v0, v3, v13}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 417
    aget v0, v25, v0

    .line 386
    .end local v2    # "zn":I
    .end local v4    # "zvec":I
    .end local v36    # "nextSym":I
    .local v0, "nextSym":I
    shl-int/lit8 v31, v31, 0x1

    move v3, v0

    move/from16 v2, v34

    move-object/from16 v4, v35

    move-object/from16 v0, v37

    goto :goto_7

    .line 389
    .end local v0    # "nextSym":I
    .end local v34    # "s":I
    .local v2, "s":I
    .restart local v3    # "nextSym":I
    :cond_b
    move/from16 v36, v3

    .line 419
    .end local v3    # "nextSym":I
    .end local v31    # "n":I
    .restart local v36    # "nextSym":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v3, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    array-length v3, v3

    const-string v4, "s"

    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 421
    const/4 v3, 0x0

    aget-char v4, v7, v3

    .line 422
    .local v4, "yy0":I
    const/16 v12, 0x100

    invoke-static {v4, v12, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 423
    aget-byte v12, v6, v4

    .line 424
    .local v12, "ch":B
    and-int/lit16 v13, v12, 0xff

    aget v14, v35, v13

    add-int/lit8 v16, v2, 0x1

    add-int v14, v14, v16

    aput v14, v35, v13

    .line 426
    add-int/lit8 v13, v28, 0x1

    .end local v28    # "lastShadow":I
    .local v13, "lastShadow":I
    move v14, v13

    .line 427
    .local v14, "from":I
    add-int/2addr v13, v2

    .line 428
    iget-object v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v3, v3, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    array-length v3, v3

    move-object/from16 v31, v1

    .end local v1    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .local v31, "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    const-string v1, "lastShadow"

    invoke-static {v13, v3, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 429
    add-int/lit8 v1, v13, 0x1

    move-object/from16 v3, v32

    .end local v32    # "ll8":[B
    .local v3, "ll8":[B
    invoke-static {v3, v14, v1, v12}, Ljava/util/Arrays;->fill([BIIB)V

    .line 431
    move/from16 v1, v33

    .end local v33    # "limitLast":I
    .local v1, "limitLast":I
    if-ge v13, v1, :cond_c

    .line 434
    .end local v2    # "s":I
    .end local v4    # "yy0":I
    .end local v12    # "ch":B
    .end local v14    # "from":I
    move v12, v1

    move v2, v13

    move/from16 v14, v27

    move-object/from16 v1, v31

    move-object/from16 v4, v35

    move/from16 v13, v36

    goto/16 :goto_1

    .line 432
    .restart local v2    # "s":I
    .restart local v4    # "yy0":I
    .restart local v12    # "ch":B
    .restart local v14    # "from":I
    :cond_c
    new-instance v15, Ljava/io/IOException;

    move/from16 v16, v2

    .end local v2    # "s":I
    .local v16, "s":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v3

    .end local v3    # "ll8":[B
    .restart local v32    # "ll8":[B
    const-string v3, "Block overrun while expanding RLE in MTF, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 484
    .end local v16    # "s":I
    .end local v27    # "eob":I
    .end local v31    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .end local v32    # "ll8":[B
    .end local v35    # "unzftab":[I
    .end local v36    # "nextSym":I
    .local v1, "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .local v2, "lastShadow":I
    .restart local v3    # "ll8":[B
    .local v4, "unzftab":[I
    .local v12, "limitLast":I
    .local v13, "nextSym":I
    .local v14, "eob":I
    :cond_d
    iput v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .line 485
    return-void
.end method

.method private getAndMoveToFrontDecode0()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 489
    .local v0, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 490
    .local v1, "zt":I
    const/4 v2, 0x6

    const-string v3, "zt"

    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 491
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    aget-object v2, v2, v1

    .line 492
    .local v2, "limit_zt":[I
    iget-object v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    aget v3, v3, v1

    .line 493
    .local v3, "zn":I
    const/16 v4, 0x102

    const-string v5, "zn"

    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 494
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-static {v6, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v6

    .line 495
    .local v6, "zvec":I
    :goto_0
    aget v7, v2, v3

    if-le v6, v7, :cond_0

    .line 496
    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 497
    shl-int/lit8 v7, v6, 0x1

    iget-object v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v8

    or-int v6, v7, v8

    goto :goto_0

    .line 499
    :cond_0
    iget-object v5, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    aget-object v5, v5, v1

    aget v5, v5, v3

    sub-int v5, v6, v5

    .line 500
    .local v5, "tmp":I
    const-string v7, "zvec"

    invoke-static {v5, v4, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 502
    iget-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    aget-object v4, v4, v1

    aget v4, v4, v5

    return v4
.end method

.method private static hbCreateDecodeTables([I[I[I[CIII)V
    .locals 5
    .param p0, "limit"    # [I
    .param p1, "base"    # [I
    .param p2, "perm"    # [I
    .param p3, "length"    # [C
    .param p4, "minLen"    # I
    .param p5, "maxLen"    # I
    .param p6, "alphaSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    move v0, p4

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "pp":I
    :goto_0
    if-gt v0, p5, :cond_2

    .line 161
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p6, :cond_1

    .line 162
    aget-char v3, p3, v2

    if-ne v3, v0, :cond_0

    .line 163
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pp":I
    .local v3, "pp":I
    aput v2, p2, v1

    move v1, v3

    .line 161
    .end local v3    # "pp":I
    .restart local v1    # "pp":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 160
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "i":I
    .end local v1    # "pp":I
    :cond_2
    const/16 v0, 0x17

    .restart local v0    # "i":I
    :goto_2
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 169
    aput v1, p1, v0

    .line 170
    aput v1, p0, v0

    goto :goto_2

    .line 173
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, p6, :cond_4

    .line 174
    aget-char v2, p3, v0

    .line 175
    .local v2, "l":I
    const/16 v3, 0x102

    const-string v4, "length"

    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 176
    add-int/lit8 v3, v2, 0x1

    aget v4, p1, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, p1, v3

    .line 173
    .end local v2    # "l":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 179
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "i":I
    aget v1, p1, v1

    .local v1, "b":I
    :goto_4
    const/16 v2, 0x17

    if-ge v0, v2, :cond_5

    .line 180
    aget v2, p1, v0

    add-int/2addr v1, v2

    .line 181
    aput v1, p1, v0

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 184
    .end local v0    # "i":I
    .end local v1    # "b":I
    :cond_5
    move v0, p4

    .restart local v0    # "i":I
    const/4 v1, 0x0

    .local v1, "vec":I
    aget v2, p1, v0

    .local v2, "b":I
    :goto_5
    if-gt v0, p5, :cond_6

    .line 185
    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    .line 186
    .local v3, "nb":I
    sub-int v4, v3, v2

    add-int/2addr v1, v4

    .line 187
    move v2, v3

    .line 188
    add-int/lit8 v4, v1, -0x1

    aput v4, p0, v0

    .line 189
    shl-int/lit8 v1, v1, 0x1

    .line 184
    .end local v3    # "nb":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 192
    .end local v0    # "i":I
    .end local v1    # "vec":I
    .end local v2    # "b":I
    :cond_6
    add-int/lit8 v0, p4, 0x1

    .restart local v0    # "i":I
    :goto_6
    if-gt v0, p5, :cond_7

    .line 193
    add-int/lit8 v1, v0, -0x1

    aget v1, p0, v1

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x1

    aget v2, p1, v0

    sub-int/2addr v1, v2

    aput v1, p1, v0

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 195
    .end local v0    # "i":I
    :cond_7
    return-void
.end method

.method private init(Z)Z
    .locals 6
    .param p1, "isFirstStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    if-eqz v0, :cond_6

    .line 518
    if-nez p1, :cond_0

    .line 519
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->clearBitCache()V

    .line 522
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v0

    .line 523
    .local v0, "magic0":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 524
    return v2

    .line 526
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v1

    .line 527
    .local v1, "magic1":I
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v3

    .line 529
    .local v3, "magic2":I
    const/16 v4, 0x42

    if-ne v0, v4, :cond_4

    const/16 v4, 0x5a

    if-ne v1, v4, :cond_4

    const/16 v4, 0x68

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 533
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v4

    .line 534
    .local v4, "blockSize":I
    const/16 v5, 0x31

    if-lt v4, v5, :cond_3

    const/16 v5, 0x39

    if-gt v4, v5, :cond_3

    .line 538
    add-int/lit8 v5, v4, -0x30

    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    .line 540
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->computedCombinedCRC:I

    .line 542
    const/4 v2, 0x1

    return v2

    .line 535
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v5, "BZip2 block size is invalid"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 530
    .end local v4    # "blockSize":I
    :cond_4
    :goto_0
    new-instance v2, Ljava/io/IOException;

    if-eqz p1, :cond_5

    const-string v4, "Stream is not in the BZip2 format"

    goto :goto_1

    :cond_5
    const-string v4, "Garbage after a valid BZip2 stream"

    :goto_1
    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 515
    .end local v0    # "magic0":I
    .end local v1    # "magic1":I
    .end local v3    # "magic2":I
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No InputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initBlock()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 556
    .local v0, "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    :cond_0
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v1

    .line 557
    .local v1, "magic0":C
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v2

    .line 558
    .local v2, "magic1":C
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v3

    .line 559
    .local v3, "magic2":C
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v4

    .line 560
    .local v4, "magic3":C
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v5

    .line 561
    .local v5, "magic4":C
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetUByte(Lorg/apache/commons/compress/utils/BitInputStream;)C

    move-result v6

    .line 564
    .local v6, "magic5":C
    const/16 v7, 0x17

    if-ne v1, v7, :cond_2

    const/16 v7, 0x72

    if-ne v2, v7, :cond_2

    const/16 v7, 0x45

    if-ne v3, v7, :cond_2

    const/16 v7, 0x38

    if-ne v4, v7, :cond_2

    const/16 v7, 0x50

    if-ne v5, v7, :cond_2

    const/16 v7, 0x90

    if-eq v6, v7, :cond_1

    .line 565
    goto :goto_0

    .line 571
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->complete()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 572
    return-void

    .line 576
    :cond_2
    :goto_0
    const/16 v7, 0x31

    const/4 v8, 0x0

    if-ne v1, v7, :cond_5

    const/16 v7, 0x41

    if-ne v2, v7, :cond_5

    const/16 v7, 0x59

    if-ne v3, v7, :cond_5

    const/16 v9, 0x26

    if-ne v4, v9, :cond_5

    const/16 v9, 0x53

    if-ne v5, v9, :cond_5

    if-ne v6, v7, :cond_5

    .line 586
    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetInt(Lorg/apache/commons/compress/utils/BitInputStream;)I

    move-result v7

    iput v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->storedBlockCRC:I

    .line 587
    const/4 v7, 0x1

    invoke-static {v0, v7}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v9

    if-ne v9, v7, :cond_3

    move v8, v7

    :cond_3
    iput-boolean v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockRandomised:Z

    .line 592
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    if-nez v8, :cond_4

    .line 593
    new-instance v8, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget v9, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockSize100k:I

    invoke-direct {v8, v9}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;-><init>(I)V

    iput-object v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 597
    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->getAndMoveToFrontDecode()V

    .line 599
    iget-object v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v8}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->reset()V

    .line 600
    iput v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 601
    return-void

    .line 583
    :cond_5
    iput v8, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 584
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Bad block header"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private makeMaps()V
    .locals 6

    .line 604
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    .line 605
    .local v0, "inUse":[Z
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    .line 607
    .local v1, "seqToUnseq":[B
    const/4 v2, 0x0

    .line 609
    .local v2, "nInUseShadow":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x100

    if-ge v3, v4, :cond_1

    .line 610
    aget-boolean v4, v0, v3

    if-eqz v4, :cond_0

    .line 611
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "nInUseShadow":I
    .local v4, "nInUseShadow":I
    int-to-byte v5, v3

    aput-byte v5, v1, v2

    move v2, v4

    .line 609
    .end local v4    # "nInUseShadow":I
    .restart local v2    # "nInUseShadow":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 615
    .end local v3    # "i":I
    :cond_1
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    .line 616
    return-void
.end method

.method public static matches([BI)Z
    .locals 4
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 207
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    aget-byte v0, p0, v1

    const/16 v2, 0x42

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    aget-byte v2, p0, v0

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x68

    if-ne v2, v3, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private read0()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 663
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    packed-switch v0, :pswitch_data_0

    .line 689
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 686
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartC()I

    move-result v0

    return v0

    .line 683
    :pswitch_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartB()I

    move-result v0

    return v0

    .line 680
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 677
    :pswitch_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartC()I

    move-result v0

    return v0

    .line 674
    :pswitch_4
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartB()I

    move-result v0

    return v0

    .line 671
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 668
    :pswitch_6
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    move-result v0

    return v0

    .line 665
    :pswitch_7
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readNextByte(Lorg/apache/commons/compress/utils/BitInputStream;)I
    .locals 3
    .param p1, "in"    # Lorg/apache/commons/compress/utils/BitInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v0

    .line 695
    .local v0, "b":J
    long-to-int v2, v0

    return v2
.end method

.method private recvDecodingTables()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 699
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 700
    .local v1, "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 701
    .local v2, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    iget-object v3, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    .line 702
    .local v3, "inUse":[Z
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->recvDecodingTables_pos:[B

    .line 703
    .local v4, "pos":[B
    iget-object v5, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    .line 704
    .local v5, "selector":[B
    iget-object v6, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selectorMtf:[B

    .line 706
    .local v6, "selectorMtf":[B
    const/4 v7, 0x0

    .line 709
    .local v7, "inUse16":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v9, 0x10

    const/4 v10, 0x1

    if-ge v8, v9, :cond_1

    .line 710
    invoke-static {v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 711
    shl-int v9, v10, v8

    or-int/2addr v7, v9

    .line 709
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 715
    .end local v8    # "i":I
    :cond_1
    const/4 v8, 0x0

    invoke-static {v3, v8}, Ljava/util/Arrays;->fill([ZZ)V

    .line 716
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v9, :cond_4

    .line 717
    shl-int v12, v10, v11

    and-int/2addr v12, v7

    if-eqz v12, :cond_3

    .line 718
    shl-int/lit8 v12, v11, 0x4

    .line 719
    .local v12, "i16":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    if-ge v13, v9, :cond_3

    .line 720
    invoke-static {v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 721
    add-int v14, v12, v13

    aput-boolean v10, v3, v14

    .line 719
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 716
    .end local v12    # "i16":I
    .end local v13    # "j":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 727
    .end local v11    # "i":I
    :cond_4
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->makeMaps()V

    .line 728
    iget v9, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->nInUse:I

    add-int/lit8 v9, v9, 0x2

    .line 730
    .local v9, "alphaSize":I
    const/4 v11, 0x3

    invoke-static {v1, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v11

    .line 731
    .local v11, "nGroups":I
    const/16 v12, 0xf

    invoke-static {v1, v12}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v12

    .line 732
    .local v12, "selectors":I
    if-ltz v12, :cond_f

    .line 735
    const/16 v13, 0x103

    const-string v14, "alphaSize"

    invoke-static {v9, v13, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 736
    const/4 v13, 0x7

    const-string v14, "nGroups"

    invoke-static {v11, v13, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 742
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    const/16 v14, 0x4652

    if-ge v13, v12, :cond_7

    .line 743
    const/4 v15, 0x0

    .line 744
    .local v15, "j":I
    :goto_4
    invoke-static {v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 745
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 747
    :cond_5
    if-ge v13, v14, :cond_6

    .line 748
    int-to-byte v14, v15

    aput-byte v14, v6, v13

    .line 742
    .end local v15    # "j":I
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 751
    .end local v13    # "i":I
    :cond_7
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 754
    .local v13, "nSelectors":I
    move v14, v11

    .local v14, "v":I
    :goto_5
    const/4 v15, -0x1

    add-int/2addr v14, v15

    if-ltz v14, :cond_8

    .line 755
    int-to-byte v15, v14

    aput-byte v15, v4, v14

    goto :goto_5

    .line 758
    .end local v14    # "v":I
    :cond_8
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    if-ge v14, v13, :cond_a

    .line 759
    aget-byte v10, v6, v14

    and-int/lit16 v10, v10, 0xff

    .line 760
    .local v10, "v":I
    const/4 v15, 0x6

    const-string v8, "selectorMtf"

    invoke-static {v10, v15, v8}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 761
    aget-byte v8, v4, v10

    .line 762
    .local v8, "tmp":B
    :goto_7
    if-lez v10, :cond_9

    .line 764
    add-int/lit8 v15, v10, -0x1

    aget-byte v15, v4, v15

    aput-byte v15, v4, v10

    .line 765
    add-int/lit8 v10, v10, -0x1

    goto :goto_7

    .line 767
    :cond_9
    const/4 v15, 0x0

    aput-byte v8, v4, v15

    .line 768
    aput-byte v8, v5, v14

    .line 758
    .end local v8    # "tmp":B
    .end local v10    # "v":I
    add-int/lit8 v14, v14, 0x1

    move v8, v15

    const/4 v10, 0x1

    const/4 v15, -0x1

    goto :goto_6

    .line 771
    .end local v14    # "i":I
    :cond_a
    iget-object v8, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    .line 774
    .local v8, "len":[[C
    const/4 v10, 0x0

    .local v10, "t":I
    :goto_8
    if-ge v10, v11, :cond_e

    .line 775
    const/4 v14, 0x5

    invoke-static {v1, v14}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsR(Lorg/apache/commons/compress/utils/BitInputStream;I)I

    move-result v14

    .line 776
    .local v14, "curr":I
    aget-object v15, v8, v10

    .line 777
    .local v15, "len_t":[C
    const/16 v17, 0x0

    move/from16 v19, v17

    move-object/from16 v17, v2

    move/from16 v2, v19

    .local v2, "i":I
    .local v17, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    :goto_9
    if-ge v2, v9, :cond_d

    .line 778
    :goto_a
    invoke-static {v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 779
    invoke-static {v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bsGetBit(Lorg/apache/commons/compress/utils/BitInputStream;)Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, -0x1

    goto :goto_b

    :cond_b
    const/16 v18, 0x1

    :goto_b
    add-int v14, v14, v18

    goto :goto_a

    .line 781
    :cond_c
    move-object/from16 v18, v1

    .end local v1    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .local v18, "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    int-to-char v1, v14

    aput-char v1, v15, v2

    .line 777
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v18

    goto :goto_9

    .end local v18    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .restart local v1    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    :cond_d
    move-object/from16 v18, v1

    .line 774
    .end local v1    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .end local v2    # "i":I
    .end local v14    # "curr":I
    .end local v15    # "len_t":[C
    .restart local v18    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v17

    goto :goto_8

    .line 786
    .end local v10    # "t":I
    .end local v17    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    .end local v18    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .restart local v1    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .local v2, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    :cond_e
    invoke-direct {v0, v9, v11}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->createHuffmanDecodingTables(II)V

    .line 787
    return-void

    .line 733
    .end local v8    # "len":[[C
    .end local v13    # "nSelectors":I
    :cond_f
    move-object/from16 v18, v1

    move-object/from16 v17, v2

    .end local v1    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    .end local v2    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    .restart local v17    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
    .restart local v18    # "bin":Lorg/apache/commons/compress/utils/BitInputStream;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Corrupted input, nSelectors value negative"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setupBlock()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 790
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 794
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->cftab:[I

    .line 795
    .local v0, "cftab":[I
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 796
    .local v1, "ttLen":I
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->initTT(I)[I

    move-result-object v3

    .line 797
    .local v3, "tt":[I
    iget-object v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v4, v4, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 798
    .local v4, "ll8":[B
    const/4 v5, 0x0

    aput v5, v0, v5

    .line 799
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v6, v6, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    const/16 v7, 0x100

    invoke-static {v6, v5, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 801
    const/4 v2, 0x1

    .local v2, "i":I
    aget v6, v0, v5

    .local v6, "c":I
    :goto_0
    if-gt v2, v7, :cond_1

    .line 802
    aget v8, v0, v2

    add-int/2addr v6, v8

    .line 803
    aput v6, v0, v2

    .line 801
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 806
    .end local v2    # "i":I
    .end local v6    # "c":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    iget v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    .local v6, "lastShadow":I
    :goto_1
    if-gt v2, v6, :cond_2

    .line 807
    aget-byte v8, v4, v2

    and-int/lit16 v8, v8, 0xff

    aget v9, v0, v8

    add-int/lit8 v10, v9, 0x1

    aput v10, v0, v8

    move v8, v9

    .line 808
    .local v8, "tmp":I
    const-string v9, "tt index"

    invoke-static {v8, v1, v9}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 809
    aput v2, v3, v8

    .line 806
    .end local v8    # "tmp":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 812
    .end local v2    # "i":I
    .end local v6    # "lastShadow":I
    :cond_2
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    if-ltz v2, :cond_4

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    array-length v6, v3

    if-ge v2, v6, :cond_4

    .line 816
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->origPtr:I

    aget v2, v3, v2

    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 817
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 818
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 819
    iput v7, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 821
    iget-boolean v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->blockRandomised:Z

    if-eqz v2, :cond_3

    .line 822
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 823
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    .line 824
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    move-result v2

    return v2

    .line 826
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    move-result v2

    return v2

    .line 813
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v5, "Stream corrupted"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 791
    .end local v0    # "cftab":[I
    .end local v1    # "ttLen":I
    .end local v3    # "tt":[I
    .end local v4    # "ll8":[B
    :cond_5
    :goto_2
    const/4 v0, -0x1

    return v0
.end method

.method private setupNoRandPartA()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 830
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    if-gt v0, v1, :cond_0

    .line 831
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    .line 832
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 833
    .local v0, "su_ch2Shadow":I
    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 834
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v2, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    array-length v2, v2

    const-string v3, "su_tPos"

    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 835
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 836
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 837
    const/4 v1, 0x6

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 838
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->update(I)V

    .line 839
    return v0

    .line 841
    .end local v0    # "su_ch2Shadow":I
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 842
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->endBlock()V

    .line 843
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 844
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    move-result v0

    return v0
.end method

.method private setupNoRandPartB()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 848
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 849
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 850
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    move-result v0

    return v0

    .line 852
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 853
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    array-length v1, v1

    const-string v2, "su_tPos"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 854
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 855
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 856
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 857
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartC()I

    move-result v0

    return v0

    .line 859
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    move-result v0

    return v0
.end method

.method private setupNoRandPartC()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 863
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    iget-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    if-ge v0, v1, :cond_0

    .line 864
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 865
    .local v0, "su_ch2Shadow":I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->update(I)V

    .line 866
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 867
    const/4 v1, 0x7

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 868
    return v0

    .line 870
    .end local v0    # "su_ch2Shadow":I
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 871
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 872
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupNoRandPartA()I

    move-result v0

    return v0
.end method

.method private setupRandPartA()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 876
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->last:I

    if-gt v0, v1, :cond_3

    .line 877
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    .line 878
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 879
    .local v0, "su_ch2Shadow":I
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v2, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    array-length v2, v2

    const-string v3, "su_tPos"

    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 880
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 881
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 882
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    invoke-static {v1}, Lorg/apache/commons/compress/compressors/bzip2/Rand;->rNums(I)I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 883
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    const/16 v4, 0x200

    if-ne v1, v4, :cond_1

    .line 884
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    goto :goto_0

    .line 887
    :cond_0
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    sub-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 889
    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    if-ne v1, v3, :cond_2

    move v2, v3

    :cond_2
    xor-int v1, v0, v2

    move v0, v1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    .line 890
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 891
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 892
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->update(I)V

    .line 893
    return v0

    .line 895
    .end local v0    # "su_ch2Shadow":I
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->endBlock()V

    .line 896
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->initBlock()V

    .line 897
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupBlock()I

    move-result v0

    return v0
.end method

.method private setupRandPartB()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 901
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_chPrev:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 902
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 903
    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 904
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    move-result v0

    return v0

    .line 906
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 907
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 908
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    move-result v0

    return v0

    .line 910
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 911
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v2, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    array-length v2, v2

    const-string v4, "su_tPos"

    invoke-static {v0, v2, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->checkBounds(IILjava/lang/String;)V

    .line 912
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_tPos:I

    .line 913
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 914
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    invoke-static {v0}, Lorg/apache/commons/compress/compressors/bzip2/Rand;->rNums(I)I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 915
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    const/16 v4, 0x200

    if-ne v0, v4, :cond_3

    .line 916
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rTPos:I

    goto :goto_0

    .line 919
    :cond_2
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    .line 921
    :cond_3
    :goto_0
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 922
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 923
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_rNToGo:I

    if-ne v0, v3, :cond_4

    .line 924
    iget-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    xor-int/2addr v0, v3

    int-to-char v0, v0

    iput-char v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    .line 926
    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartC()I

    move-result v0

    return v0
.end method

.method private setupRandPartC()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 930
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    iget-char v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_z:C

    if-ge v0, v1, :cond_0

    .line 931
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->update(I)V

    .line 932
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_j2:I

    .line 933
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_ch2:I

    return v0

    .line 935
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->currentState:I

    .line 936
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_i2:I

    .line 937
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->su_count:I

    .line 938
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->setupRandPartA()I

    move-result v0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 280
    .local v0, "inShadow":Lorg/apache/commons/compress/utils/BitInputStream;
    if-eqz v0, :cond_0

    .line 282
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 285
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 286
    goto :goto_0

    .line 284
    :catchall_0
    move-exception v2

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;

    .line 285
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    .line 286
    throw v2

    .line 288
    :cond_0
    :goto_0
    return-void
.end method

.method public getCompressedCount()J
    .locals 2

    .line 510
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    if-eqz v0, :cond_1

    .line 621
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->read0()I

    move-result v0

    .line 622
    .local v0, "r":I
    if-gez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->count(I)V

    .line 623
    return v0

    .line 625
    .end local v0    # "r":I
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "dest"    # [B
    .param p2, "offs"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    const-string v0, ") < 0."

    const-string v1, "offs("

    if-ltz p2, :cond_6

    .line 638
    if-ltz p3, :cond_5

    .line 641
    add-int v0, p2, p3

    array-length v2, p1

    if-gt v0, v2, :cond_4

    .line 644
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->bin:Lorg/apache/commons/compress/utils/BitInputStream;

    if-eqz v0, :cond_3

    .line 647
    if-nez p3, :cond_0

    .line 648
    const/4 v0, 0x0

    return v0

    .line 651
    :cond_0
    add-int v0, p2, p3

    .line 652
    .local v0, "hi":I
    move v1, p2

    .line 654
    .local v1, "destOffs":I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->read0()I

    move-result v2

    move v3, v2

    .local v3, "b":I
    if-ltz v2, :cond_1

    .line 655
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "destOffs":I
    .local v2, "destOffs":I
    int-to-byte v4, v3

    aput-byte v4, p1, v1

    .line 656
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->count(I)V

    move v1, v2

    goto :goto_0

    .line 659
    .end local v2    # "destOffs":I
    .end local v3    # "b":I
    .restart local v1    # "destOffs":I
    :cond_1
    if-ne v1, p2, :cond_2

    const/4 v2, -0x1

    goto :goto_1

    :cond_2
    sub-int v2, v1, p2

    :goto_1
    return v2

    .line 645
    .end local v0    # "hi":I
    .end local v1    # "destOffs":I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") + len("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > dest.length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :cond_5
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "len("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 636
    :cond_6
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
