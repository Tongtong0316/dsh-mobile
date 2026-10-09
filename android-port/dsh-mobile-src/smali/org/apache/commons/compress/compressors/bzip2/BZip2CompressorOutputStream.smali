.class public Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "BZip2CompressorOutputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/compressors/bzip2/BZip2Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/compressors/CompressorOutputStream<",
        "Ljava/io/OutputStream;",
        ">;",
        "Lorg/apache/commons/compress/compressors/bzip2/BZip2Constants;"
    }
.end annotation


# static fields
.field private static final GREATER_ICOST:I = 0xf

.field private static final LESSER_ICOST:I = 0x0

.field public static final MAX_BLOCKSIZE:I = 0x9

.field public static final MIN_BLOCKSIZE:I = 0x1


# instance fields
.field private final allowableBlockSize:I

.field private final blockSize100k:I

.field private blockSorter:Lorg/apache/commons/compress/compressors/bzip2/BlockSort;

.field private bsBuff:I

.field private bsLive:I

.field private volatile closed:Z

.field private combinedCRC:I

.field private final crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

.field private currentChar:I

.field private data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

.field private last:I

.field private nInUse:I

.field private nMTF:I

.field private runLength:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 413
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "blockSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 384
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    .line 388
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 430
    const/4 v0, 0x1

    const-string v1, "blockSize("

    if-lt p2, v0, :cond_1

    .line 433
    const/16 v0, 0x9

    if-gt p2, v0, :cond_0

    .line 436
    iput p2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    .line 438
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    const v1, 0x186a0

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->allowableBlockSize:I

    .line 439
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->init()V

    .line 440
    return-void

    .line 434
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > 9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") < 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blockSort()V
    .locals 3

    .line 443
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSorter:Lorg/apache/commons/compress/compressors/bzip2/BlockSort;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->blockSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    .line 444
    return-void
.end method

.method private bsFinishedWithStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    nop

    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    if-lez v0, :cond_0

    .line 448
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    shr-int/lit8 v0, v0, 0x18

    .line 449
    .local v0, "ch":I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 450
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 451
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    add-int/lit8 v1, v1, -0x8

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 452
    .end local v0    # "ch":I
    goto :goto_0

    .line 453
    :cond_0
    return-void
.end method

.method private bsPutInt(I)V
    .locals 2
    .param p1, "u"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 457
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 458
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 459
    and-int/lit16 v0, p1, 0xff

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 460
    return-void
.end method

.method private bsPutUByte(I)V
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 464
    return-void
.end method

.method private bsW(II)V
    .locals 4
    .param p1, "n"    # I
    .param p2, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 468
    .local v0, "outShadow":Ljava/io/OutputStream;
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 469
    .local v1, "bsLiveShadow":I
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 471
    .local v2, "bsBuffShadow":I
    :goto_0
    const/16 v3, 0x8

    if-lt v1, v3, :cond_0

    .line 472
    shr-int/lit8 v3, v2, 0x18

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 473
    shl-int/lit8 v2, v2, 0x8

    .line 474
    add-int/lit8 v1, v1, -0x8

    goto :goto_0

    .line 477
    :cond_0
    rsub-int/lit8 v3, v1, 0x20

    sub-int/2addr v3, p1

    shl-int v3, p2, v3

    or-int/2addr v3, v2

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 478
    add-int v3, v1, p1

    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 479
    return-void
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->closed:Z

    if-nez v0, :cond_0

    .line 485
    return-void

    .line 483
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static chooseBlockSize(J)I
    .locals 4
    .param p0, "inputLength"    # J

    .line 214
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/32 v0, 0x203a0

    div-long v0, p0, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x9

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    :goto_0
    return v0
.end method

.method private endBlock()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->getValue()I

    move-result v0

    .line 500
    .local v0, "blockCRC":I
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    ushr-int/lit8 v3, v3, 0x1f

    or-int/2addr v1, v3

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    .line 501
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    xor-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    .line 504
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 505
    return-void

    .line 509
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSort()V

    .line 517
    const/16 v1, 0x31

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 518
    const/16 v1, 0x41

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 519
    const/16 v1, 0x59

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 520
    const/16 v3, 0x26

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 521
    const/16 v3, 0x53

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 522
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 525
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutInt(I)V

    .line 528
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 531
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->moveToFrontCodeAndSend()V

    .line 532
    return-void
.end method

.method private endCompression()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 540
    const/16 v0, 0x72

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 541
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 542
    const/16 v0, 0x38

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 543
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 544
    const/16 v0, 0x90

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 546
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutInt(I)V

    .line 547
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsFinishedWithStream()V

    .line 548
    return-void
.end method

.method private generateMTFValues()V
    .locals 22

    .line 580
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 581
    .local v1, "lastShadow":I
    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 582
    .local v2, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v3, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    .line 583
    .local v3, "inUse":[Z
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 584
    .local v4, "block":[B
    iget-object v5, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 585
    .local v5, "fmap":[I
    iget-object v6, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    .line 586
    .local v6, "sfmap":[C
    iget-object v7, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mtfFreq:[I

    .line 587
    .local v7, "mtfFreq":[I
    iget-object v8, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->unseqToSeq:[B

    .line 588
    .local v8, "unseqToSeq":[B
    iget-object v9, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->generateMTFValues_yy:[B

    .line 591
    .local v9, "yy":[B
    const/4 v10, 0x0

    .line 592
    .local v10, "nInUseShadow":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/16 v12, 0x100

    if-ge v11, v12, :cond_1

    .line 593
    aget-boolean v12, v3, v11

    if-eqz v12, :cond_0

    .line 594
    int-to-byte v12, v10

    aput-byte v12, v8, v11

    .line 595
    add-int/lit8 v10, v10, 0x1

    .line 592
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 598
    .end local v11    # "i":I
    :cond_1
    iput v10, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nInUse:I

    .line 600
    add-int/lit8 v11, v10, 0x1

    .line 602
    .local v11, "eob":I
    add-int/lit8 v12, v11, 0x1

    const/4 v13, 0x0

    invoke-static {v7, v13, v12, v13}, Ljava/util/Arrays;->fill([IIII)V

    .line 604
    move v12, v10

    .local v12, "i":I
    :goto_1
    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_2

    .line 605
    int-to-byte v14, v12

    aput-byte v14, v9, v12

    goto :goto_1

    .line 608
    .end local v12    # "i":I
    :cond_2
    const/4 v12, 0x0

    .line 609
    .local v12, "wr":I
    const/4 v14, 0x0

    .line 611
    .local v14, "zPend":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    const/16 v17, 0x1

    if-gt v15, v1, :cond_8

    .line 612
    aget v18, v5, v15

    aget-byte v13, v4, v18

    and-int/lit16 v13, v13, 0xff

    aget-byte v13, v8, v13

    .line 613
    .local v13, "ll_i":B
    const/16 v16, 0x0

    aget-byte v18, v9, v16

    .line 614
    .local v18, "tmp":B
    const/16 v20, 0x0

    move/from16 v21, v1

    move/from16 v1, v18

    .line 616
    .end local v18    # "tmp":B
    .local v1, "tmp":B
    .local v20, "j":I
    .local v21, "lastShadow":I
    :goto_3
    if-eq v13, v1, :cond_3

    .line 617
    add-int/lit8 v20, v20, 0x1

    .line 618
    move/from16 v18, v1

    .line 619
    .local v18, "tmp2":B
    aget-byte v1, v9, v20

    .line 620
    aput-byte v18, v9, v20

    .line 621
    .end local v18    # "tmp2":B
    goto :goto_3

    .line 622
    :cond_3
    const/16 v16, 0x0

    aput-byte v1, v9, v16

    .line 624
    if-nez v20, :cond_4

    .line 625
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 627
    :cond_4
    if-lez v14, :cond_7

    .line 628
    add-int/lit8 v14, v14, -0x1

    .line 630
    :goto_4
    and-int/lit8 v18, v14, 0x1

    if-nez v18, :cond_5

    .line 631
    const/16 v16, 0x0

    aput-char v16, v6, v12

    .line 632
    add-int/lit8 v12, v12, 0x1

    .line 633
    aget v18, v7, v16

    add-int/lit8 v18, v18, 0x1

    aput v18, v7, v16

    goto :goto_5

    .line 635
    :cond_5
    aput-char v17, v6, v12

    .line 636
    add-int/lit8 v12, v12, 0x1

    .line 637
    aget v18, v7, v17

    add-int/lit8 v18, v18, 0x1

    aput v18, v7, v17

    .line 640
    :goto_5
    move/from16 v18, v1

    const/4 v1, 0x2

    .end local v1    # "tmp":B
    .local v18, "tmp":B
    if-ge v14, v1, :cond_6

    .line 641
    nop

    .line 645
    const/4 v14, 0x0

    goto :goto_6

    .line 643
    :cond_6
    add-int/lit8 v1, v14, -0x2

    shr-int/lit8 v14, v1, 0x1

    move/from16 v1, v18

    goto :goto_4

    .line 627
    .end local v18    # "tmp":B
    .restart local v1    # "tmp":B
    :cond_7
    move/from16 v18, v1

    .line 647
    .end local v1    # "tmp":B
    .restart local v18    # "tmp":B
    :goto_6
    add-int/lit8 v1, v20, 0x1

    int-to-char v1, v1

    aput-char v1, v6, v12

    .line 648
    add-int/lit8 v12, v12, 0x1

    .line 649
    add-int/lit8 v1, v20, 0x1

    aget v19, v7, v1

    add-int/lit8 v19, v19, 0x1

    aput v19, v7, v1

    .line 611
    .end local v13    # "ll_i":B
    .end local v18    # "tmp":B
    .end local v20    # "j":I
    :goto_7
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v21

    const/4 v13, 0x0

    goto :goto_2

    .end local v21    # "lastShadow":I
    .local v1, "lastShadow":I
    :cond_8
    move/from16 v21, v1

    .line 653
    .end local v1    # "lastShadow":I
    .end local v15    # "i":I
    .restart local v21    # "lastShadow":I
    if-lez v14, :cond_b

    .line 654
    add-int/lit8 v14, v14, -0x1

    .line 656
    :goto_8
    and-int/lit8 v1, v14, 0x1

    if-nez v1, :cond_9

    .line 657
    const/4 v1, 0x0

    aput-char v1, v6, v12

    .line 658
    add-int/lit8 v12, v12, 0x1

    .line 659
    aget v13, v7, v1

    add-int/lit8 v13, v13, 0x1

    aput v13, v7, v1

    goto :goto_9

    .line 661
    :cond_9
    const/4 v1, 0x0

    aput-char v17, v6, v12

    .line 662
    add-int/lit8 v12, v12, 0x1

    .line 663
    aget v13, v7, v17

    add-int/lit8 v13, v13, 0x1

    aput v13, v7, v17

    .line 666
    :goto_9
    const/4 v13, 0x2

    if-ge v14, v13, :cond_a

    .line 667
    goto :goto_a

    .line 669
    :cond_a
    add-int/lit8 v15, v14, -0x2

    shr-int/lit8 v14, v15, 0x1

    goto :goto_8

    .line 673
    :cond_b
    :goto_a
    int-to-char v1, v11

    aput-char v1, v6, v12

    .line 674
    aget v1, v7, v11

    add-int/lit8 v1, v1, 0x1

    aput v1, v7, v11

    .line 675
    add-int/lit8 v1, v12, 0x1

    iput v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    .line 676
    return-void
.end method

.method private static hbAssignCodes([I[BIII)V
    .locals 4
    .param p0, "code"    # [I
    .param p1, "length"    # [B
    .param p2, "minLen"    # I
    .param p3, "maxLen"    # I
    .param p4, "alphaSize"    # I

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "vec":I
    move v1, p2

    .local v1, "n":I
    :goto_0
    if-gt v1, p3, :cond_2

    .line 220
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p4, :cond_1

    .line 221
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    if-ne v3, v1, :cond_0

    .line 222
    aput v0, p0, v2

    .line 223
    add-int/lit8 v0, v0, 0x1

    .line 220
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 226
    .end local v2    # "i":I
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "n":I
    :cond_2
    return-void
.end method

.method private static hbMakeCodeLengths([B[ILorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;II)V
    .locals 17
    .param p0, "len"    # [B
    .param p1, "freq"    # [I
    .param p2, "dat"    # Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .param p3, "alphaSize"    # I
    .param p4, "maxLen"    # I

    .line 234
    move-object/from16 v0, p2

    move/from16 v1, p3

    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->heap:[I

    .line 235
    .local v2, "heap":[I
    iget-object v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->weight:[I

    .line 236
    .local v3, "weight":[I
    iget-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->parent:[I

    .line 238
    .local v4, "parent":[I
    move/from16 v5, p3

    .local v5, "i":I
    :goto_0
    const/4 v6, -0x1

    add-int/2addr v5, v6

    const/4 v7, 0x1

    if-ltz v5, :cond_1

    .line 239
    add-int/lit8 v6, v5, 0x1

    aget v8, p1, v5

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    aget v7, p1, v5

    :goto_1
    shl-int/lit8 v7, v7, 0x8

    aput v7, v3, v6

    goto :goto_0

    .line 242
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x1

    .local v5, "tooLong":Z
    :goto_2
    if-eqz v5, :cond_11

    .line 243
    const/4 v5, 0x0

    .line 245
    move/from16 v8, p3

    .line 246
    .local v8, "nNodes":I
    const/4 v9, 0x0

    .line 247
    .local v9, "nHeap":I
    const/4 v10, 0x0

    aput v10, v2, v10

    .line 248
    aput v10, v3, v10

    .line 249
    const/4 v11, -0x2

    aput v11, v4, v10

    .line 251
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_3
    if-gt v10, v1, :cond_3

    .line 252
    aput v6, v4, v10

    .line 253
    add-int/lit8 v9, v9, 0x1

    .line 254
    aput v10, v2, v9

    .line 256
    move v11, v9

    .line 257
    .local v11, "zz":I
    aget v12, v2, v11

    .line 258
    .local v12, "tmp":I
    :goto_4
    aget v13, v3, v12

    shr-int/lit8 v14, v11, 0x1

    aget v14, v2, v14

    aget v14, v3, v14

    if-ge v13, v14, :cond_2

    .line 259
    shr-int/lit8 v13, v11, 0x1

    aget v13, v2, v13

    aput v13, v2, v11

    .line 260
    shr-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 262
    :cond_2
    aput v12, v2, v11

    .line 251
    .end local v11    # "zz":I
    .end local v12    # "tmp":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 265
    .end local v10    # "i":I
    :cond_3
    :goto_5
    if-le v9, v7, :cond_b

    .line 266
    aget v10, v2, v7

    .line 267
    .local v10, "n1":I
    aget v11, v2, v9

    aput v11, v2, v7

    .line 268
    add-int/lit8 v11, v9, -0x1

    .line 270
    .end local v9    # "nHeap":I
    .local v11, "nHeap":I
    const/4 v9, 0x0

    .line 271
    .local v9, "yy":I
    const/4 v12, 0x1

    .line 272
    .local v12, "zz":I
    aget v13, v2, v7

    .line 275
    .local v13, "tmp":I
    :goto_6
    shl-int/lit8 v9, v12, 0x1

    .line 277
    if-le v9, v11, :cond_4

    .line 278
    goto :goto_7

    .line 281
    :cond_4
    if-ge v9, v11, :cond_5

    add-int/lit8 v14, v9, 0x1

    aget v14, v2, v14

    aget v14, v3, v14

    aget v15, v2, v9

    aget v15, v3, v15

    if-ge v14, v15, :cond_5

    .line 282
    add-int/lit8 v9, v9, 0x1

    .line 285
    :cond_5
    aget v14, v3, v13

    aget v15, v2, v9

    aget v15, v3, v15

    if-ge v14, v15, :cond_a

    .line 286
    nop

    .line 293
    :goto_7
    aput v13, v2, v12

    .line 295
    aget v14, v2, v7

    .line 296
    .local v14, "n2":I
    aget v15, v2, v11

    aput v15, v2, v7

    .line 297
    add-int/lit8 v15, v11, -0x1

    .line 299
    .end local v11    # "nHeap":I
    .local v15, "nHeap":I
    const/4 v9, 0x0

    .line 300
    const/4 v11, 0x1

    .line 301
    .end local v12    # "zz":I
    .local v11, "zz":I
    aget v16, v2, v7

    .line 304
    .end local v13    # "tmp":I
    .local v16, "tmp":I
    :goto_8
    shl-int/lit8 v9, v11, 0x1

    .line 306
    if-le v9, v15, :cond_6

    .line 307
    goto :goto_9

    .line 310
    :cond_6
    if-ge v9, v15, :cond_7

    add-int/lit8 v12, v9, 0x1

    aget v12, v2, v12

    aget v12, v3, v12

    aget v13, v2, v9

    aget v13, v3, v13

    if-ge v12, v13, :cond_7

    .line 311
    add-int/lit8 v9, v9, 0x1

    .line 314
    :cond_7
    aget v12, v3, v16

    aget v13, v2, v9

    aget v13, v3, v13

    if-ge v12, v13, :cond_9

    .line 315
    nop

    .line 322
    :goto_9
    aput v16, v2, v11

    .line 323
    add-int/lit8 v8, v8, 0x1

    .line 324
    aput v8, v4, v14

    aput v8, v4, v10

    .line 326
    aget v12, v3, v10

    .line 327
    .local v12, "weight_n1":I
    aget v13, v3, v14

    .line 328
    .local v13, "weight_n2":I
    and-int/lit16 v6, v12, -0x100

    and-int/lit16 v7, v13, -0x100

    add-int/2addr v6, v7

    and-int/lit16 v7, v12, 0xff

    and-int/lit16 v0, v13, 0xff

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v7, 0x1

    add-int/2addr v0, v7

    or-int/2addr v0, v6

    aput v0, v3, v8

    .line 330
    const/4 v0, -0x1

    aput v0, v4, v8

    .line 331
    add-int/lit8 v6, v15, 0x1

    .line 332
    .end local v15    # "nHeap":I
    .local v6, "nHeap":I
    aput v8, v2, v6

    .line 334
    const/4 v7, 0x0

    .line 335
    .end local v16    # "tmp":I
    .local v7, "tmp":I
    move v11, v6

    .line 336
    aget v7, v2, v11

    .line 337
    aget v15, v3, v7

    .line 338
    .local v15, "weight_tmp":I
    :goto_a
    shr-int/lit8 v16, v11, 0x1

    aget v16, v2, v16

    aget v0, v3, v16

    if-ge v15, v0, :cond_8

    .line 339
    shr-int/lit8 v0, v11, 0x1

    aget v0, v2, v0

    aput v0, v2, v11

    .line 340
    shr-int/lit8 v11, v11, 0x1

    const/4 v0, -0x1

    goto :goto_a

    .line 342
    :cond_8
    aput v7, v2, v11

    .line 344
    .end local v7    # "tmp":I
    .end local v9    # "yy":I
    .end local v10    # "n1":I
    .end local v11    # "zz":I
    .end local v12    # "weight_n1":I
    .end local v13    # "weight_n2":I
    .end local v14    # "n2":I
    .end local v15    # "weight_tmp":I
    move-object/from16 v0, p2

    move v9, v6

    const/4 v6, -0x1

    const/4 v7, 0x1

    goto/16 :goto_5

    .line 318
    .end local v6    # "nHeap":I
    .restart local v9    # "yy":I
    .restart local v10    # "n1":I
    .restart local v11    # "zz":I
    .restart local v14    # "n2":I
    .local v15, "nHeap":I
    .restart local v16    # "tmp":I
    :cond_9
    aget v0, v2, v9

    aput v0, v2, v11

    .line 319
    move v11, v9

    move-object/from16 v0, p2

    const/4 v6, -0x1

    const/4 v7, 0x1

    goto :goto_8

    .line 289
    .end local v14    # "n2":I
    .end local v15    # "nHeap":I
    .end local v16    # "tmp":I
    .local v11, "nHeap":I
    .local v12, "zz":I
    .local v13, "tmp":I
    :cond_a
    aget v0, v2, v9

    aput v0, v2, v12

    .line 290
    move v12, v9

    move-object/from16 v0, p2

    const/4 v6, -0x1

    const/4 v7, 0x1

    goto/16 :goto_6

    .line 346
    .end local v10    # "n1":I
    .end local v11    # "nHeap":I
    .end local v12    # "zz":I
    .end local v13    # "tmp":I
    .local v9, "nHeap":I
    :cond_b
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    if-gt v0, v1, :cond_e

    .line 347
    const/4 v6, 0x0

    .line 348
    .local v6, "j":I
    move v7, v0

    .line 350
    .local v7, "k":I
    :goto_c
    aget v10, v4, v7

    move v11, v10

    .local v11, "parent_k":I
    if-ltz v10, :cond_c

    .line 351
    move v7, v11

    .line 352
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 355
    .end local v11    # "parent_k":I
    :cond_c
    add-int/lit8 v10, v0, -0x1

    int-to-byte v11, v6

    aput-byte v11, p0, v10

    .line 356
    move/from16 v10, p4

    if-le v6, v10, :cond_d

    .line 357
    const/4 v5, 0x1

    .line 346
    .end local v6    # "j":I
    .end local v7    # "k":I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_e
    move/from16 v10, p4

    .line 361
    .end local v0    # "i":I
    if-eqz v5, :cond_10

    .line 362
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_d
    if-ge v0, v1, :cond_f

    .line 363
    aget v6, v3, v0

    shr-int/lit8 v6, v6, 0x8

    .line 364
    .restart local v6    # "j":I
    shr-int/lit8 v7, v6, 0x1

    const/4 v11, 0x1

    add-int/2addr v7, v11

    .line 365
    .end local v6    # "j":I
    .local v7, "j":I
    shl-int/lit8 v6, v7, 0x8

    aput v6, v3, v0

    .line 362
    .end local v7    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_f
    const/4 v11, 0x1

    goto :goto_e

    .line 361
    .end local v0    # "i":I
    :cond_10
    const/4 v11, 0x1

    .line 368
    .end local v8    # "nNodes":I
    .end local v9    # "nHeap":I
    :goto_e
    move-object/from16 v0, p2

    move v7, v11

    const/4 v6, -0x1

    goto/16 :goto_2

    .line 242
    :cond_11
    move/from16 v10, p4

    .line 369
    .end local v5    # "tooLong":Z
    return-void
.end method

.method private init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    const/16 v0, 0x42

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 695
    const/16 v0, 0x5a

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 697
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 698
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;-><init>(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSorter:Lorg/apache/commons/compress/compressors/bzip2/BlockSort;

    .line 701
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 702
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    add-int/lit8 v0, v0, 0x30

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsPutUByte(I)V

    .line 704
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->combinedCRC:I

    .line 705
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->initBlock()V

    .line 706
    return-void
.end method

.method private initBlock()V
    .locals 4

    .line 710
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->reset()V

    .line 711
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 714
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    .line 715
    .local v1, "inUse":[Z
    const/16 v2, 0x100

    .local v2, "i":I
    :goto_0
    add-int/2addr v2, v0

    if-ltz v2, :cond_0

    .line 716
    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    goto :goto_0

    .line 719
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private moveToFrontCodeAndSend()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->origPtr:I

    const/16 v1, 0x18

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 723
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->generateMTFValues()V

    .line 724
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues()V

    .line 725
    return-void
.end method

.method private sendMTFValues()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 728
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 729
    .local v0, "len":[[B
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nInUse:I

    const/4 v2, 0x2

    add-int/2addr v1, v2

    .line 731
    .local v1, "alphaSize":I
    const/4 v3, 0x6

    .local v3, "t":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    .line 732
    aget-object v4, v0, v3

    .line 733
    .local v4, "len_t":[B
    move v5, v1

    .local v5, "v":I
    :goto_1
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_0

    .line 734
    const/16 v6, 0xf

    aput-byte v6, v4, v5

    goto :goto_1

    .line 736
    .end local v4    # "len_t":[B
    .end local v5    # "v":I
    :cond_0
    goto :goto_0

    .line 740
    .end local v3    # "t":I
    :cond_1
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    const/16 v4, 0xc8

    if-ge v3, v4, :cond_2

    goto :goto_2

    :cond_2
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    const/16 v3, 0x258

    if-ge v2, v3, :cond_3

    const/4 v2, 0x3

    goto :goto_2

    :cond_3
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    const/16 v3, 0x4b0

    if-ge v2, v3, :cond_4

    const/4 v2, 0x4

    goto :goto_2

    :cond_4
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    const/16 v3, 0x960

    if-ge v2, v3, :cond_5

    const/4 v2, 0x5

    goto :goto_2

    :cond_5
    const/4 v2, 0x6

    .line 743
    .local v2, "nGroups":I
    :goto_2
    invoke-direct {p0, v2, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues0(II)V

    .line 748
    invoke-direct {p0, v2, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues1(II)I

    move-result v3

    .line 751
    .local v3, "nSelectors":I
    invoke-direct {p0, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues2(II)V

    .line 754
    invoke-direct {p0, v2, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues3(II)V

    .line 757
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues4()V

    .line 760
    invoke-direct {p0, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues5(II)V

    .line 763
    invoke-direct {p0, v2, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues6(II)V

    .line 766
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->sendMTFValues7()V

    .line 767
    return-void
.end method

.method private sendMTFValues0(II)V
    .locals 11
    .param p1, "nGroups"    # I
    .param p2, "alphaSize"    # I

    .line 770
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 771
    .local v0, "len":[[B
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mtfFreq:[I

    .line 773
    .local v1, "mtfFreq":[I
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    .line 774
    .local v2, "remF":I
    const/4 v3, 0x0

    .line 776
    .local v3, "gs":I
    move v4, p1

    .local v4, "nPart":I
    :goto_0
    if-lez v4, :cond_4

    .line 777
    div-int v5, v2, v4

    .line 778
    .local v5, "tFreq":I
    add-int/lit8 v6, v3, -0x1

    .line 779
    .local v6, "ge":I
    const/4 v7, 0x0

    .line 781
    .local v7, "aFreq":I
    add-int/lit8 v8, p2, -0x1

    .local v8, "a":I
    :goto_1
    if-ge v7, v5, :cond_0

    if-ge v6, v8, :cond_0

    .line 782
    add-int/lit8 v6, v6, 0x1

    aget v9, v1, v6

    add-int/2addr v7, v9

    goto :goto_1

    .line 785
    .end local v8    # "a":I
    :cond_0
    if-le v6, v3, :cond_1

    if-eq v4, p1, :cond_1

    const/4 v8, 0x1

    if-eq v4, v8, :cond_1

    sub-int v9, p1, v4

    and-int/2addr v8, v9

    if-eqz v8, :cond_1

    .line 786
    add-int/lit8 v8, v6, -0x1

    .end local v6    # "ge":I
    .local v8, "ge":I
    aget v6, v1, v6

    sub-int/2addr v7, v6

    move v6, v8

    .line 789
    .end local v8    # "ge":I
    .restart local v6    # "ge":I
    :cond_1
    add-int/lit8 v8, v4, -0x1

    aget-object v8, v0, v8

    .line 790
    .local v8, "len_np":[B
    move v9, p2

    .local v9, "v":I
    :goto_2
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_3

    .line 791
    if-lt v9, v3, :cond_2

    if-gt v9, v6, :cond_2

    .line 792
    const/4 v10, 0x0

    aput-byte v10, v8, v9

    goto :goto_2

    .line 794
    :cond_2
    const/16 v10, 0xf

    aput-byte v10, v8, v9

    goto :goto_2

    .line 798
    .end local v9    # "v":I
    :cond_3
    add-int/lit8 v3, v6, 0x1

    .line 799
    sub-int/2addr v2, v7

    .line 776
    .end local v5    # "tFreq":I
    .end local v6    # "ge":I
    .end local v7    # "aFreq":I
    .end local v8    # "len_np":[B
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 801
    .end local v4    # "nPart":I
    :cond_4
    return-void
.end method

.method private sendMTFValues1(II)I
    .locals 38
    .param p1, "nGroups"    # I
    .param p2, "alphaSize"    # I

    .line 804
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 805
    .local v2, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v3, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_rfreq:[[I

    .line 806
    .local v3, "rfreq":[[I
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_fave:[I

    .line 807
    .local v4, "fave":[I
    iget-object v5, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_cost:[S

    .line 808
    .local v5, "cost":[S
    iget-object v6, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    .line 809
    .local v6, "sfmap":[C
    iget-object v7, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selector:[B

    .line 810
    .local v7, "selector":[B
    iget-object v8, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 811
    .local v8, "len":[[B
    const/4 v9, 0x0

    aget-object v10, v8, v9

    .line 812
    .local v10, "len_0":[B
    const/4 v11, 0x1

    aget-object v12, v8, v11

    .line 813
    .local v12, "len_1":[B
    const/4 v13, 0x2

    aget-object v14, v8, v13

    .line 814
    .local v14, "len_2":[B
    const/4 v15, 0x3

    aget-object v16, v8, v15

    .line 815
    .local v16, "len_3":[B
    const/4 v15, 0x4

    aget-object v18, v8, v15

    .line 816
    .local v18, "len_4":[B
    const/16 v19, 0x5

    aget-object v20, v8, v19

    .line 817
    .local v20, "len_5":[B
    iget v13, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    .line 819
    .local v13, "nMTFShadow":I
    const/16 v22, 0x0

    .line 821
    .local v22, "nSelectors":I
    const/16 v23, 0x0

    move/from16 v11, v23

    .local v11, "iter":I
    :goto_0
    if-ge v11, v15, :cond_c

    .line 822
    move/from16 v24, p1

    .local v24, "t":I
    :goto_1
    add-int/lit8 v24, v24, -0x1

    if-ltz v24, :cond_1

    .line 823
    aput v9, v4, v24

    .line 824
    aget-object v25, v3, v24

    .line 825
    .local v25, "rfreqt":[I
    move/from16 v26, p2

    .local v26, "i":I
    :goto_2
    add-int/lit8 v26, v26, -0x1

    if-ltz v26, :cond_0

    .line 826
    aput v9, v25, v26

    goto :goto_2

    .line 828
    .end local v25    # "rfreqt":[I
    .end local v26    # "i":I
    :cond_0
    goto :goto_1

    .line 830
    .end local v24    # "t":I
    :cond_1
    const/16 v22, 0x0

    .line 832
    const/16 v24, 0x0

    move/from16 v15, v24

    .local v15, "gs":I
    :goto_3
    iget v9, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    if-ge v15, v9, :cond_a

    .line 838
    add-int/lit8 v9, v15, 0x32

    const/16 v23, 0x1

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v26, v2

    .end local v2    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .local v26, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    add-int/lit8 v2, v13, -0x1

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 840
    .local v2, "ge":I
    const/4 v9, -0x1

    .line 841
    .local v9, "mask":B
    move/from16 v27, v9

    .end local v9    # "mask":B
    .local v27, "mask":B
    const/4 v9, 0x6

    if-ne v1, v9, :cond_3

    .line 844
    const/4 v9, 0x0

    .line 845
    .local v9, "cost0":S
    const/16 v28, 0x0

    .line 846
    .local v28, "cost1":S
    const/16 v29, 0x0

    .line 847
    .local v29, "cost2":S
    const/16 v30, 0x0

    .line 848
    .local v30, "cost3":S
    const/16 v31, 0x0

    .line 849
    .local v31, "cost4":S
    const/16 v32, 0x0

    .line 851
    .local v32, "cost5":S
    move/from16 v33, v15

    move/from16 v37, v33

    move/from16 v33, v13

    move/from16 v13, v37

    .local v13, "i":I
    .local v33, "nMTFShadow":I
    :goto_4
    if-gt v13, v2, :cond_2

    .line 852
    aget-char v34, v6, v13

    .line 853
    .local v34, "icv":I
    aget-byte v35, v10, v34

    move-object/from16 v36, v10

    .end local v10    # "len_0":[B
    .local v36, "len_0":[B
    and-int/lit8 v10, v35, -0x1

    int-to-short v10, v10

    add-int/2addr v10, v9

    int-to-short v9, v10

    .line 854
    aget-byte v10, v12, v34

    and-int/lit8 v10, v10, -0x1

    int-to-short v10, v10

    add-int v10, v28, v10

    int-to-short v10, v10

    .line 855
    .end local v28    # "cost1":S
    .local v10, "cost1":S
    aget-byte v28, v14, v34

    move/from16 v35, v9

    .end local v9    # "cost0":S
    .local v35, "cost0":S
    and-int/lit8 v9, v28, -0x1

    int-to-short v9, v9

    add-int v9, v29, v9

    int-to-short v9, v9

    .line 856
    .end local v29    # "cost2":S
    .local v9, "cost2":S
    aget-byte v28, v16, v34

    move/from16 v29, v9

    .end local v9    # "cost2":S
    .restart local v29    # "cost2":S
    and-int/lit8 v9, v28, -0x1

    int-to-short v9, v9

    add-int v9, v30, v9

    int-to-short v9, v9

    .line 857
    .end local v30    # "cost3":S
    .local v9, "cost3":S
    aget-byte v28, v18, v34

    move/from16 v30, v9

    .end local v9    # "cost3":S
    .restart local v30    # "cost3":S
    and-int/lit8 v9, v28, -0x1

    int-to-short v9, v9

    add-int v9, v31, v9

    int-to-short v9, v9

    .line 858
    .end local v31    # "cost4":S
    .local v9, "cost4":S
    aget-byte v28, v20, v34

    move/from16 v31, v9

    .end local v9    # "cost4":S
    .restart local v31    # "cost4":S
    and-int/lit8 v9, v28, -0x1

    int-to-short v9, v9

    add-int v9, v32, v9

    int-to-short v9, v9

    .line 851
    .end local v32    # "cost5":S
    .end local v34    # "icv":I
    .local v9, "cost5":S
    add-int/lit8 v13, v13, 0x1

    move/from16 v32, v9

    move/from16 v28, v10

    move/from16 v9, v35

    move-object/from16 v10, v36

    goto :goto_4

    .end local v35    # "cost0":S
    .end local v36    # "len_0":[B
    .local v9, "cost0":S
    .local v10, "len_0":[B
    .restart local v28    # "cost1":S
    .restart local v32    # "cost5":S
    :cond_2
    move-object/from16 v36, v10

    .line 861
    .end local v10    # "len_0":[B
    .end local v13    # "i":I
    .restart local v36    # "len_0":[B
    const/4 v10, 0x0

    aput-short v9, v5, v10

    .line 862
    const/4 v10, 0x1

    aput-short v28, v5, v10

    .line 863
    const/4 v10, 0x2

    aput-short v29, v5, v10

    .line 864
    const/4 v13, 0x3

    aput-short v30, v5, v13

    .line 865
    const/16 v17, 0x4

    aput-short v31, v5, v17

    .line 866
    aput-short v32, v5, v19

    .line 868
    .end local v9    # "cost0":S
    .end local v28    # "cost1":S
    .end local v29    # "cost2":S
    .end local v30    # "cost3":S
    .end local v31    # "cost4":S
    .end local v32    # "cost5":S
    const/16 v21, 0x0

    goto :goto_8

    .line 869
    .end local v33    # "nMTFShadow":I
    .end local v36    # "len_0":[B
    .restart local v10    # "len_0":[B
    .local v13, "nMTFShadow":I
    :cond_3
    move-object/from16 v36, v10

    move/from16 v33, v13

    const/4 v10, 0x2

    const/4 v13, 0x3

    const/16 v17, 0x4

    .end local v10    # "len_0":[B
    .end local v13    # "nMTFShadow":I
    .restart local v33    # "nMTFShadow":I
    .restart local v36    # "len_0":[B
    move/from16 v9, p1

    .local v9, "t":I
    :goto_5
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_4

    .line 870
    const/16 v21, 0x0

    aput-short v21, v5, v9

    goto :goto_5

    .line 869
    :cond_4
    const/16 v21, 0x0

    .line 873
    .end local v9    # "t":I
    move v9, v15

    .local v9, "i":I
    :goto_6
    if-gt v9, v2, :cond_6

    .line 874
    aget-char v24, v6, v9

    .line 875
    .local v24, "icv":I
    move/from16 v25, p1

    .local v25, "t":I
    :goto_7
    add-int/lit8 v25, v25, -0x1

    if-ltz v25, :cond_5

    .line 876
    aget-short v28, v5, v25

    aget-object v29, v8, v25

    aget-byte v29, v29, v24

    and-int/lit8 v10, v29, -0x1

    int-to-short v10, v10

    add-int v10, v28, v10

    int-to-short v10, v10

    aput-short v10, v5, v25

    const/4 v10, 0x2

    goto :goto_7

    .line 873
    .end local v24    # "icv":I
    .end local v25    # "t":I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x2

    goto :goto_6

    .line 884
    .end local v9    # "i":I
    :cond_6
    :goto_8
    const/4 v9, -0x1

    .line 885
    .local v9, "bt":I
    move/from16 v10, p1

    .local v10, "t":I
    const v24, 0x3b9ac9ff

    move/from16 v13, v24

    .local v13, "bc":I
    :goto_9
    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_8

    .line 886
    move-object/from16 v25, v12

    .end local v12    # "len_1":[B
    .local v25, "len_1":[B
    aget-short v12, v5, v10

    .line 887
    .local v12, "cost_t":I
    if-ge v12, v13, :cond_7

    .line 888
    move v13, v12

    .line 889
    move v9, v10

    .line 891
    .end local v12    # "cost_t":I
    :cond_7
    move-object/from16 v12, v25

    goto :goto_9

    .line 885
    .end local v25    # "len_1":[B
    .local v12, "len_1":[B
    :cond_8
    move-object/from16 v25, v12

    .line 893
    .end local v10    # "t":I
    .end local v12    # "len_1":[B
    .end local v13    # "bc":I
    .restart local v25    # "len_1":[B
    aget v10, v4, v9

    const/4 v12, 0x1

    add-int/2addr v10, v12

    aput v10, v4, v9

    .line 894
    int-to-byte v10, v9

    aput-byte v10, v7, v22

    .line 895
    add-int/lit8 v22, v22, 0x1

    .line 900
    aget-object v10, v3, v9

    .line 901
    .local v10, "rfreq_bt":[I
    move v12, v15

    .local v12, "i":I
    :goto_a
    if-gt v12, v2, :cond_9

    .line 902
    aget-char v13, v6, v12

    aget v28, v10, v13

    const/16 v23, 0x1

    add-int/lit8 v28, v28, 0x1

    aput v28, v10, v13

    .line 901
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_9
    const/16 v23, 0x1

    .line 905
    .end local v12    # "i":I
    add-int/lit8 v15, v2, 0x1

    .line 906
    .end local v2    # "ge":I
    .end local v9    # "bt":I
    .end local v10    # "rfreq_bt":[I
    .end local v27    # "mask":B
    move/from16 v9, v21

    move-object/from16 v12, v25

    move-object/from16 v2, v26

    move/from16 v13, v33

    move-object/from16 v10, v36

    goto/16 :goto_3

    .line 832
    .end local v25    # "len_1":[B
    .end local v26    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .end local v33    # "nMTFShadow":I
    .end local v36    # "len_0":[B
    .local v2, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .local v10, "len_0":[B
    .local v12, "len_1":[B
    .local v13, "nMTFShadow":I
    :cond_a
    move-object/from16 v26, v2

    move-object/from16 v36, v10

    move-object/from16 v25, v12

    move/from16 v33, v13

    const/16 v17, 0x4

    const/16 v21, 0x0

    const/16 v23, 0x1

    .line 911
    .end local v2    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .end local v10    # "len_0":[B
    .end local v12    # "len_1":[B
    .end local v13    # "nMTFShadow":I
    .end local v15    # "gs":I
    .restart local v25    # "len_1":[B
    .restart local v26    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .restart local v33    # "nMTFShadow":I
    .restart local v36    # "len_0":[B
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_b
    if-ge v2, v1, :cond_b

    .line 912
    aget-object v9, v8, v2

    aget-object v10, v3, v2

    iget-object v12, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    const/16 v13, 0x14

    move/from16 v15, p2

    invoke-static {v9, v10, v12, v15, v13}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->hbMakeCodeLengths([B[ILorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;II)V

    .line 911
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_b
    move/from16 v15, p2

    .line 821
    .end local v2    # "t":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v15, v17

    move/from16 v9, v21

    move-object/from16 v12, v25

    move-object/from16 v2, v26

    move/from16 v13, v33

    move-object/from16 v10, v36

    goto/16 :goto_0

    .line 916
    .end local v11    # "iter":I
    .end local v25    # "len_1":[B
    .end local v26    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .end local v33    # "nMTFShadow":I
    .end local v36    # "len_0":[B
    .local v2, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .restart local v10    # "len_0":[B
    .restart local v12    # "len_1":[B
    .restart local v13    # "nMTFShadow":I
    :cond_c
    return v22
.end method

.method private sendMTFValues2(II)V
    .locals 8
    .param p1, "nGroups"    # I
    .param p2, "nSelectors"    # I

    .line 922
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 923
    .local v0, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues2_pos:[B

    .line 925
    .local v1, "pos":[B
    move v2, p1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 926
    int-to-byte v3, v2

    aput-byte v3, v1, v2

    goto :goto_0

    .line 929
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, p2, :cond_2

    .line 930
    iget-object v3, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selector:[B

    aget-byte v3, v3, v2

    .line 931
    .local v3, "ll_i":B
    const/4 v4, 0x0

    aget-byte v5, v1, v4

    .line 932
    .local v5, "tmp":B
    const/4 v6, 0x0

    .line 934
    .local v6, "j":I
    :goto_2
    if-eq v3, v5, :cond_1

    .line 935
    add-int/lit8 v6, v6, 0x1

    .line 936
    move v7, v5

    .line 937
    .local v7, "tmp2":B
    aget-byte v5, v1, v6

    .line 938
    aput-byte v7, v1, v6

    .line 939
    .end local v7    # "tmp2":B
    goto :goto_2

    .line 941
    :cond_1
    aput-byte v5, v1, v4

    .line 942
    iget-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selectorMtf:[B

    int-to-byte v7, v6

    aput-byte v7, v4, v2

    .line 929
    .end local v3    # "ll_i":B
    .end local v5    # "tmp":B
    .end local v6    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 944
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private sendMTFValues3(II)V
    .locals 8
    .param p1, "nGroups"    # I
    .param p2, "alphaSize"    # I

    .line 947
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_code:[[I

    .line 948
    .local v0, "code":[[I
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 950
    .local v1, "len":[[B
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_0
    if-ge v2, p1, :cond_3

    .line 951
    const/16 v3, 0x20

    .line 952
    .local v3, "minLen":I
    const/4 v4, 0x0

    .line 953
    .local v4, "maxLen":I
    aget-object v5, v1, v2

    .line 954
    .local v5, "len_t":[B
    move v6, p2

    .local v6, "i":I
    :goto_1
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_2

    .line 955
    aget-byte v7, v5, v6

    and-int/lit16 v7, v7, 0xff

    .line 956
    .local v7, "l":I
    if-le v7, v4, :cond_0

    .line 957
    move v4, v7

    .line 959
    :cond_0
    if-ge v7, v3, :cond_1

    .line 960
    move v3, v7

    .line 962
    .end local v7    # "l":I
    :cond_1
    goto :goto_1

    .line 967
    .end local v6    # "i":I
    :cond_2
    aget-object v6, v0, v2

    aget-object v7, v1, v2

    invoke-static {v6, v7, v3, v4, p2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->hbAssignCodes([I[BIII)V

    .line 950
    .end local v3    # "minLen":I
    .end local v4    # "maxLen":I
    .end local v5    # "len_t":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 969
    .end local v2    # "t":I
    :cond_3
    return-void
.end method

.method private sendMTFValues4()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 972
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    .line 973
    .local v0, "inUse":[Z
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sentMTFValues4_inUse16:[Z

    .line 975
    .local v1, "inUse16":[Z
    const/16 v2, 0x10

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    if-ltz v2, :cond_2

    .line 976
    const/4 v4, 0x0

    aput-boolean v4, v1, v2

    .line 977
    mul-int/lit8 v4, v2, 0x10

    .line 978
    .local v4, "i16":I
    const/16 v5, 0x10

    .local v5, "j":I
    :cond_0
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_1

    .line 979
    add-int v6, v4, v5

    aget-boolean v6, v0, v6

    if-eqz v6, :cond_0

    .line 980
    aput-boolean v3, v1, v2

    .line 981
    nop

    .line 984
    .end local v4    # "i16":I
    .end local v5    # "j":I
    :cond_1
    goto :goto_0

    .line 986
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    const/16 v4, 0x10

    if-ge v2, v4, :cond_3

    .line 987
    aget-boolean v4, v1, v2

    invoke-direct {p0, v3, v4}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 986
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 990
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 991
    .local v2, "outShadow":Ljava/io/OutputStream;
    iget v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 992
    .local v5, "bsLiveShadow":I
    iget v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 994
    .local v6, "bsBuffShadow":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v4, :cond_7

    .line 995
    aget-boolean v8, v1, v7

    if-eqz v8, :cond_6

    .line 996
    mul-int/lit8 v8, v7, 0x10

    .line 997
    .local v8, "i16":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    if-ge v9, v4, :cond_6

    .line 999
    :goto_4
    const/16 v10, 0x8

    if-lt v5, v10, :cond_4

    .line 1000
    shr-int/lit8 v10, v6, 0x18

    invoke-virtual {v2, v10}, Ljava/io/OutputStream;->write(I)V

    .line 1001
    shl-int/lit8 v6, v6, 0x8

    .line 1002
    add-int/lit8 v5, v5, -0x8

    goto :goto_4

    .line 1004
    :cond_4
    add-int v10, v8, v9

    aget-boolean v10, v0, v10

    if-eqz v10, :cond_5

    .line 1005
    rsub-int/lit8 v10, v5, 0x20

    sub-int/2addr v10, v3

    shl-int v10, v3, v10

    or-int/2addr v6, v10

    .line 1007
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 997
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 994
    .end local v8    # "i16":I
    .end local v9    # "j":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1012
    .end local v7    # "i":I
    :cond_7
    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1013
    iput v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1014
    return-void
.end method

.method private sendMTFValues5(II)V
    .locals 9
    .param p1, "nGroups"    # I
    .param p2, "nSelectors"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1017
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 1018
    const/16 v0, 0xf

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsW(II)V

    .line 1020
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 1021
    .local v0, "outShadow":Ljava/io/OutputStream;
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v1, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selectorMtf:[B

    .line 1023
    .local v1, "selectorMtf":[B
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1024
    .local v2, "bsLiveShadow":I
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1026
    .local v3, "bsBuffShadow":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p2, :cond_3

    .line 1027
    const/4 v5, 0x0

    .local v5, "j":I
    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    .local v6, "hj":I
    :goto_1
    const/16 v7, 0x8

    if-ge v5, v6, :cond_1

    .line 1029
    :goto_2
    if-lt v2, v7, :cond_0

    .line 1030
    shr-int/lit8 v8, v3, 0x18

    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write(I)V

    .line 1031
    shl-int/lit8 v3, v3, 0x8

    .line 1032
    add-int/lit8 v2, v2, -0x8

    goto :goto_2

    .line 1034
    :cond_0
    rsub-int/lit8 v7, v2, 0x20

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    shl-int v7, v8, v7

    or-int/2addr v3, v7

    .line 1035
    add-int/lit8 v2, v2, 0x1

    .line 1027
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1039
    .end local v5    # "j":I
    .end local v6    # "hj":I
    :cond_1
    :goto_3
    if-lt v2, v7, :cond_2

    .line 1040
    shr-int/lit8 v5, v3, 0x18

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write(I)V

    .line 1041
    shl-int/lit8 v3, v3, 0x8

    .line 1042
    add-int/lit8 v2, v2, -0x8

    goto :goto_3

    .line 1045
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 1026
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1048
    .end local v4    # "i":I
    :cond_3
    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1049
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1050
    return-void
.end method

.method private sendMTFValues6(II)V
    .locals 13
    .param p1, "nGroups"    # I
    .param p2, "alphaSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1053
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    iget-object v0, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 1054
    .local v0, "len":[[B
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 1056
    .local v1, "outShadow":Ljava/io/OutputStream;
    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1057
    .local v2, "bsLiveShadow":I
    iget v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1059
    .local v3, "bsBuffShadow":I
    const/4 v4, 0x0

    .local v4, "t":I
    :goto_0
    if-ge v4, p1, :cond_7

    .line 1060
    aget-object v5, v0, v4

    .line 1061
    .local v5, "len_t":[B
    const/4 v6, 0x0

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    .line 1064
    .local v6, "curr":I
    :goto_1
    const/16 v7, 0x8

    if-lt v2, v7, :cond_0

    .line 1065
    shr-int/lit8 v7, v3, 0x18

    invoke-virtual {v1, v7}, Ljava/io/OutputStream;->write(I)V

    .line 1066
    shl-int/lit8 v3, v3, 0x8

    .line 1067
    add-int/lit8 v2, v2, -0x8

    goto :goto_1

    .line 1069
    :cond_0
    rsub-int/lit8 v8, v2, 0x20

    add-int/lit8 v8, v8, -0x5

    shl-int v8, v6, v8

    or-int/2addr v3, v8

    .line 1070
    add-int/lit8 v2, v2, 0x5

    .line 1072
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, p2, :cond_6

    .line 1073
    aget-byte v9, v5, v8

    and-int/lit16 v9, v9, 0xff

    .line 1074
    .local v9, "lti":I
    :goto_3
    const/4 v10, 0x2

    if-ge v6, v9, :cond_2

    .line 1076
    :goto_4
    if-lt v2, v7, :cond_1

    .line 1077
    shr-int/lit8 v11, v3, 0x18

    invoke-virtual {v1, v11}, Ljava/io/OutputStream;->write(I)V

    .line 1078
    shl-int/lit8 v3, v3, 0x8

    .line 1079
    add-int/lit8 v2, v2, -0x8

    goto :goto_4

    .line 1081
    :cond_1
    rsub-int/lit8 v11, v2, 0x20

    sub-int/2addr v11, v10

    shl-int/2addr v10, v11

    or-int/2addr v3, v10

    .line 1082
    add-int/lit8 v2, v2, 0x2

    .line 1084
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1087
    :cond_2
    :goto_5
    if-le v6, v9, :cond_4

    .line 1089
    :goto_6
    if-lt v2, v7, :cond_3

    .line 1090
    shr-int/lit8 v11, v3, 0x18

    invoke-virtual {v1, v11}, Ljava/io/OutputStream;->write(I)V

    .line 1091
    shl-int/lit8 v3, v3, 0x8

    .line 1092
    add-int/lit8 v2, v2, -0x8

    goto :goto_6

    .line 1094
    :cond_3
    rsub-int/lit8 v11, v2, 0x20

    sub-int/2addr v11, v10

    const/4 v12, 0x3

    shl-int v11, v12, v11

    or-int/2addr v3, v11

    .line 1095
    add-int/lit8 v2, v2, 0x2

    .line 1097
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 1101
    :cond_4
    :goto_7
    if-lt v2, v7, :cond_5

    .line 1102
    shr-int/lit8 v10, v3, 0x18

    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    .line 1103
    shl-int/lit8 v3, v3, 0x8

    .line 1104
    add-int/lit8 v2, v2, -0x8

    goto :goto_7

    .line 1107
    :cond_5
    nop

    .end local v9    # "lti":I
    add-int/lit8 v2, v2, 0x1

    .line 1072
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1059
    .end local v5    # "len_t":[B
    .end local v6    # "curr":I
    .end local v8    # "i":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1111
    .end local v4    # "t":I
    :cond_7
    iput v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1112
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1113
    return-void
.end method

.method private sendMTFValues7()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1116
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 1117
    .local v1, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v2, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 1118
    .local v2, "len":[[B
    iget-object v3, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_code:[[I

    .line 1119
    .local v3, "code":[[I
    iget-object v4, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 1120
    .local v4, "outShadow":Ljava/io/OutputStream;
    iget-object v5, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selector:[B

    .line 1121
    .local v5, "selector":[B
    iget-object v6, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    .line 1122
    .local v6, "sfmap":[C
    iget v7, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->nMTF:I

    .line 1124
    .local v7, "nMTFShadow":I
    const/4 v8, 0x0

    .line 1126
    .local v8, "selCtr":I
    iget v9, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1127
    .local v9, "bsLiveShadow":I
    iget v10, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1129
    .local v10, "bsBuffShadow":I
    const/4 v11, 0x0

    .local v11, "gs":I
    :goto_0
    if-ge v11, v7, :cond_2

    .line 1130
    add-int/lit8 v12, v11, 0x32

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v13, v7, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1131
    .local v12, "ge":I
    aget-byte v13, v5, v8

    and-int/lit16 v13, v13, 0xff

    .line 1132
    .local v13, "selector_selCtr":I
    aget-object v14, v3, v13

    .line 1133
    .local v14, "code_selCtr":[I
    aget-object v15, v2, v13

    .line 1135
    .local v15, "len_selCtr":[B
    :goto_1
    if-gt v11, v12, :cond_1

    .line 1136
    aget-char v16, v6, v11

    .line 1142
    .local v16, "sfmap_i":I
    :goto_2
    move-object/from16 v17, v1

    .end local v1    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .local v17, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    const/16 v1, 0x8

    if-lt v9, v1, :cond_0

    .line 1143
    shr-int/lit8 v1, v10, 0x18

    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1144
    shl-int/lit8 v10, v10, 0x8

    .line 1145
    add-int/lit8 v9, v9, -0x8

    move-object/from16 v1, v17

    goto :goto_2

    .line 1147
    :cond_0
    aget-byte v1, v15, v16

    and-int/lit16 v1, v1, 0xff

    .line 1148
    .local v1, "n":I
    aget v18, v14, v16

    rsub-int/lit8 v19, v9, 0x20

    sub-int v19, v19, v1

    shl-int v18, v18, v19

    or-int v10, v10, v18

    .line 1149
    add-int/2addr v9, v1

    .line 1151
    nop

    .end local v1    # "n":I
    .end local v16    # "sfmap_i":I
    add-int/lit8 v11, v11, 0x1

    .line 1152
    move-object/from16 v1, v17

    goto :goto_1

    .line 1154
    .end local v17    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .local v1, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    :cond_1
    move-object/from16 v17, v1

    .end local v1    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .restart local v17    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    add-int/lit8 v11, v12, 0x1

    .line 1155
    nop

    .end local v12    # "ge":I
    .end local v13    # "selector_selCtr":I
    .end local v14    # "code_selCtr":[I
    .end local v15    # "len_selCtr":[B
    add-int/lit8 v8, v8, 0x1

    .line 1156
    goto :goto_0

    .line 1158
    .end local v11    # "gs":I
    .end local v17    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .restart local v1    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    :cond_2
    iput v10, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsBuff:I

    .line 1159
    iput v9, v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->bsLive:I

    .line 1160
    return-void
.end method

.method private write0(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1189
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1190
    and-int/lit16 p1, p1, 0xff

    .line 1191
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    if-ne v0, p1, :cond_0

    .line 1192
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    const/16 v1, 0xfe

    if-le v0, v1, :cond_2

    .line 1193
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->writeRun()V

    .line 1194
    iput v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 1195
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    goto :goto_0

    .line 1199
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->writeRun()V

    .line 1200
    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    .line 1201
    iput p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    goto :goto_0

    .line 1204
    :cond_1
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 1205
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    .line 1207
    :cond_2
    :goto_0
    return-void
.end method

.method private writeRun()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1223
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 1225
    .local v0, "lastShadow":I
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->allowableBlockSize:I

    if-ge v0, v1, :cond_0

    .line 1226
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 1227
    .local v1, "currentCharShadow":I
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 1228
    .local v2, "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    iget-object v3, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    .line 1229
    int-to-byte v3, v1

    .line 1231
    .local v3, "ch":B
    iget v5, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    .line 1232
    .local v5, "runLengthShadow":I
    iget-object v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->crc:Lorg/apache/commons/compress/compressors/bzip2/CRC;

    invoke-virtual {v6, v1, v5}, Lorg/apache/commons/compress/compressors/bzip2/CRC;->update(II)V

    .line 1234
    packed-switch v5, :pswitch_data_0

    .line 1256
    add-int/lit8 v5, v5, -0x4

    .line 1257
    iget-object v6, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    aput-boolean v4, v6, v5

    .line 1258
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 1259
    .local v4, "block":[B
    add-int/lit8 v6, v0, 0x2

    aput-byte v3, v4, v6

    .line 1260
    add-int/lit8 v6, v0, 0x3

    aput-byte v3, v4, v6

    .line 1261
    add-int/lit8 v6, v0, 0x4

    aput-byte v3, v4, v6

    .line 1262
    add-int/lit8 v6, v0, 0x5

    aput-byte v3, v4, v6

    .line 1263
    add-int/lit8 v6, v0, 0x6

    int-to-byte v7, v5

    aput-byte v7, v4, v6

    .line 1264
    add-int/lit8 v6, v0, 0x5

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    goto :goto_0

    .line 1247
    .end local v4    # "block":[B
    :pswitch_0
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 1248
    .restart local v4    # "block":[B
    add-int/lit8 v6, v0, 0x2

    aput-byte v3, v4, v6

    .line 1249
    add-int/lit8 v6, v0, 0x3

    aput-byte v3, v4, v6

    .line 1250
    add-int/lit8 v6, v0, 0x4

    aput-byte v3, v4, v6

    .line 1251
    add-int/lit8 v6, v0, 0x3

    iput v6, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 1253
    .end local v4    # "block":[B
    goto :goto_0

    .line 1241
    :pswitch_1
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v6, v0, 0x2

    aput-byte v3, v4, v6

    .line 1242
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v6, v0, 0x3

    aput-byte v3, v4, v6

    .line 1243
    add-int/lit8 v4, v0, 0x2

    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 1244
    goto :goto_0

    .line 1236
    :pswitch_2
    iget-object v4, v2, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v6, v0, 0x2

    aput-byte v3, v4, v6

    .line 1237
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->last:I

    .line 1238
    nop

    .line 1269
    .end local v1    # "currentCharShadow":I
    .end local v2    # "dataShadow":Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .end local v3    # "ch":B
    .end local v5    # "runLengthShadow":I
    :goto_0
    goto :goto_1

    .line 1270
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->endBlock()V

    .line 1271
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->initBlock()V

    .line 1272
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->writeRun()V

    .line 1274
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->closed:Z

    if-nez v0, :cond_0

    .line 491
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V

    .line 494
    goto :goto_0

    .line 493
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V

    .line 494
    throw v0

    .line 496
    :cond_0
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->closed:Z

    if-nez v0, :cond_1

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->closed:Z

    .line 554
    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->runLength:I

    if-lez v1, :cond_0

    .line 555
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->writeRun()V

    .line 557
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->currentChar:I

    .line 558
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->endBlock()V

    .line 559
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->endCompression()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSorter:Lorg/apache/commons/compress/compressors/bzip2/BlockSort;

    .line 562
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 563
    goto :goto_0

    .line 561
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSorter:Lorg/apache/commons/compress/compressors/bzip2/BlockSort;

    .line 562
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->data:Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 563
    throw v1

    .line 565
    :cond_1
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 570
    invoke-super {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;->flush()V

    .line 572
    :cond_0
    return-void
.end method

.method public final getBlockSize()I
    .locals 1

    .line 684
    iget v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->blockSize100k:I

    return v0
.end method

.method public write(I)V
    .locals 0
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1181
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->checkClosed()V

    .line 1182
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->write0(I)V

    .line 1183
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "offs"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1164
    const-string v0, ") < 0."

    const-string v1, "offs("

    if-ltz p2, :cond_3

    .line 1167
    if-ltz p3, :cond_2

    .line 1170
    add-int v0, p2, p3

    array-length v2, p1

    if-gt v0, v2, :cond_1

    .line 1173
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->checkClosed()V

    .line 1174
    add-int v0, p2, p3

    .local v0, "hi":I
    :goto_0
    if-ge p2, v0, :cond_0

    .line 1175
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "offs":I
    .local v1, "offs":I
    aget-byte p2, p1, p2

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;->write0(I)V

    move p2, v1

    goto :goto_0

    .line 1177
    .end local v0    # "hi":I
    .end local v1    # "offs":I
    .restart local p2    # "offs":I
    :cond_0
    return-void

    .line 1171
    :cond_1
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

    const-string v2, ") > buf.length("

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

    .line 1168
    :cond_2
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

    .line 1165
    :cond_3
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
