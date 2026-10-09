.class public Lorg/apache/commons/lang3/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final CR:Ljava/lang/String; = "\r"

.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final INDEX_NOT_FOUND:I = -0x1

.field public static final LF:Ljava/lang/String; = "\n"

.field private static final PAD_LIMIT:I = 0x2000

.field public static final SPACE:Ljava/lang/String; = " "

.field private static final STRIP_ACCENTS_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method public static synthetic $r8$lambda$M_le4cjozvSUo8fw8_kv0TaxEx0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->toStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 188
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/StringUtils;->STRIP_ACCENTS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9601
    return-void
.end method

.method public static abbreviate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I

    .line 222
    const-string v0, "..."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "maxWidth"    # I

    .line 261
    const-string v0, "..."

    invoke-static {p0, v0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "abbrevMarker"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I

    .line 301
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "abbrevMarker"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "maxWidth"    # I

    .line 341
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 342
    invoke-static {p0, v1, p3}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 344
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object p0, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isAnyEmpty([Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    return-object p0

    .line 347
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 348
    .local v0, "abbrevMarkerLength":I
    add-int/lit8 v3, v0, 0x1

    .line 349
    .local v3, "minAbbrevWidth":I
    add-int v4, v0, v0

    add-int/2addr v4, v2

    .line 351
    .local v4, "minAbbrevWidthOffset":I
    if-lt p3, v3, :cond_8

    .line 354
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 355
    .local v2, "strLen":I
    if-gt v2, p3, :cond_2

    .line 356
    return-object p0

    .line 358
    :cond_2
    if-le p2, v2, :cond_3

    .line 359
    move p2, v2

    .line 361
    :cond_3
    sub-int v5, v2, p2

    sub-int v6, p3, v0

    if-ge v5, v6, :cond_4

    .line 362
    sub-int v5, p3, v0

    sub-int p2, v2, v5

    .line 364
    :cond_4
    add-int/lit8 v5, v0, 0x1

    if-gt p2, v5, :cond_5

    .line 365
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v6, p3, v0

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 367
    :cond_5
    if-lt p3, v4, :cond_7

    .line 370
    add-int v1, p2, p3

    sub-int/2addr v1, v0

    if-ge v1, v2, :cond_6

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sub-int v6, p3, v0

    invoke-static {v5, p1, v6}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 373
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v5, p3, v0

    sub-int v5, v2, v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 368
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Minimum abbreviation width with offset is %d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    .end local v2    # "strLen":I
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "Minimum abbreviation width is %d"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "middle"    # Ljava/lang/String;
    .param p2, "length"    # I

    .line 406
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isAnyEmpty([Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    if-ge p2, v1, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p2, v0

    .line 410
    .local v0, "targetSting":I
    div-int/lit8 v1, v0, 0x2

    rem-int/lit8 v3, v0, 0x2

    add-int/2addr v1, v3

    .line 411
    .local v1, "startOffset":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    .line 412
    .local v3, "endOffset":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 407
    .end local v0    # "targetSting":I
    .end local v1    # "startOffset":I
    .end local v3    # "endOffset":I
    :cond_1
    :goto_0
    return-object p0
.end method

.method private static varargs appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z
    .param p3, "suffixes"    # [Ljava/lang/CharSequence;

    .line 427
    if-eqz p0, :cond_3

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 430
    :cond_0
    invoke-static {p3}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    .line 432
    .local v2, "s":Ljava/lang/CharSequence;
    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 433
    return-object p0

    .line 431
    .end local v2    # "s":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 428
    :cond_3
    :goto_1
    return-object p0
.end method

.method public static varargs appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/CharSequence;
    .param p2, "suffixes"    # [Ljava/lang/CharSequence;

    .line 475
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs appendIfMissingIgnoreCase(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/CharSequence;
    .param p2, "suffixes"    # [Ljava/lang/CharSequence;

    .line 513
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .line 538
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 539
    .local v0, "strLen":I
    if-nez v0, :cond_0

    .line 540
    return-object p0

    .line 543
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 544
    .local v2, "firstCodepoint":I
    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v3

    .line 545
    .local v3, "newCodePoint":I
    if-ne v2, v3, :cond_1

    .line 547
    return-object p0

    .line 550
    :cond_1
    new-array v4, v0, [I

    .line 551
    .local v4, "newCodePoints":[I
    const/4 v5, 0x0

    .line 552
    .local v5, "outOffset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outOffset":I
    .local v6, "outOffset":I
    aput v3, v4, v5

    .line 553
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .local v5, "inOffset":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 554
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 555
    .local v7, "codePoint":I
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "outOffset":I
    .local v8, "outOffset":I
    aput v7, v4, v6

    .line 556
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 557
    .end local v7    # "codePoint":I
    move v6, v8

    goto :goto_0

    .line 558
    .end local v5    # "inOffset":I
    .end local v8    # "outOffset":I
    .restart local v6    # "outOffset":I
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v1, v6}, Ljava/lang/String;-><init>([III)V

    return-object v5
.end method

.method public static center(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 585
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->center(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static center(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 613
    if-eqz p0, :cond_2

    if-gtz p1, :cond_0

    goto :goto_0

    .line 616
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 617
    .local v0, "strLen":I
    sub-int v1, p1, v0

    .line 618
    .local v1, "pads":I
    if-gtz v1, :cond_1

    .line 619
    return-object p0

    .line 621
    :cond_1
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 622
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 614
    .end local v0    # "strLen":I
    .end local v1    # "pads":I
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 652
    if-eqz p0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_0

    .line 655
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    const-string p2, " "

    .line 658
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 659
    .local v0, "strLen":I
    sub-int v1, p1, v0

    .line 660
    .local v1, "pads":I
    if-gtz v1, :cond_2

    .line 661
    return-object p0

    .line 663
    :cond_2
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 664
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 653
    .end local v0    # "strLen":I
    .end local v1    # "pads":I
    :cond_3
    :goto_0
    return-object p0
.end method

.method public static chomp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 693
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    return-object p0

    .line 697
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/16 v3, 0xd

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 698
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 699
    .local v0, "ch":C
    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 702
    :cond_1
    return-object p0

    .line 700
    :cond_2
    :goto_0
    const-string v1, ""

    return-object v1

    .line 705
    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    .line 706
    .local v0, "lastIdx":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 708
    .local v4, "last":C
    if-ne v4, v2, :cond_4

    .line 709
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_5

    .line 710
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 712
    :cond_4
    if-eq v4, v3, :cond_5

    .line 713
    add-int/lit8 v0, v0, 0x1

    .line 715
    :cond_5
    :goto_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 747
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static chop(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .line 774
    if-nez p0, :cond_0

    .line 775
    const/4 v0, 0x0

    return-object v0

    .line 777
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 778
    .local v0, "strLen":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 779
    const-string v1, ""

    return-object v1

    .line 781
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .line 782
    .local v1, "lastIdx":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 783
    .local v3, "ret":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 784
    .local v4, "last":C
    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2

    .line 785
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 787
    :cond_2
    return-object v3
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 823
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;
    .param p2, "nullIsLess"    # Z

    .line 861
    if-ne p0, p1, :cond_0

    .line 862
    const/4 v0, 0x0

    return v0

    .line 864
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-nez p0, :cond_2

    .line 865
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 867
    :cond_2
    if-nez p1, :cond_4

    .line 868
    if-eqz p2, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 870
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 911
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;
    .param p2, "nullIsLess"    # Z

    .line 954
    if-ne p0, p1, :cond_0

    .line 955
    const/4 v0, 0x0

    return v0

    .line 957
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-nez p0, :cond_2

    .line 958
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 960
    :cond_2
    if-nez p1, :cond_4

    .line 961
    if-eqz p2, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 963
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static contains(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .line 1016
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1017
    return v1

    .line 1019
    :cond_0
    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .line 989
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 992
    :cond_0
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 990
    :cond_2
    :goto_0
    return v0
.end method

.method public static containsAny(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/CharSequence;

    .line 1106
    if-nez p1, :cond_0

    .line 1107
    const/4 v0, 0x0

    return v0

    .line 1109
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSequenceUtils;->toCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsAny(Ljava/lang/CharSequence;[C)Z

    move-result v0

    return v0
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[C)Z
    .locals 11
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .line 1048
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1051
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1052
    .local v0, "csLength":I
    array-length v2, p1

    .line 1053
    .local v2, "searchLength":I
    add-int/lit8 v3, v0, -0x1

    .line 1054
    .local v3, "csLast":I
    add-int/lit8 v4, v2, -0x1

    .line 1055
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_5

    .line 1056
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1057
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v2, :cond_4

    .line 1058
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_3

    .line 1059
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_1

    .line 1061
    return v9

    .line 1063
    :cond_1
    if-ne v7, v4, :cond_2

    .line 1065
    return v9

    .line 1067
    :cond_2
    if-ge v5, v3, :cond_3

    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v10, v5, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_3

    .line 1068
    return v9

    .line 1057
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1055
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1073
    .end local v5    # "i":I
    :cond_5
    return v1

    .line 1049
    .end local v0    # "csLength":I
    .end local v2    # "searchLength":I
    .end local v3    # "csLast":I
    .end local v4    # "searchLast":I
    :cond_6
    :goto_2
    return v1
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchCharSequences"    # [Ljava/lang/CharSequence;

    .line 1137
    new-instance v0, Lorg/apache/commons/lang3/StringUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/lang3/StringUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, p0, p1}, Lorg/apache/commons/lang3/StringUtils;->containsAny(Lorg/apache/commons/lang3/function/ToBooleanBiFunction;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static varargs containsAny(Lorg/apache/commons/lang3/function/ToBooleanBiFunction;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "searchCharSequences"    # [Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/ToBooleanBiFunction<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            ")Z"
        }
    .end annotation

    .line 1156
    .local p0, "test":Lorg/apache/commons/lang3/function/ToBooleanBiFunction;, "Lorg/apache/commons/lang3/function/ToBooleanBiFunction<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1159
    :cond_0
    array-length v0, p2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 1160
    .local v3, "searchCharSequence":Ljava/lang/CharSequence;
    invoke-interface {p0, p1, v3}, Lorg/apache/commons/lang3/function/ToBooleanBiFunction;->applyAsBoolean(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1161
    const/4 v0, 0x1

    return v0

    .line 1159
    .end local v3    # "searchCharSequence":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1164
    :cond_2
    return v1

    .line 1157
    :cond_3
    :goto_1
    return v1
.end method

.method public static varargs containsAnyIgnoreCase(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchCharSequences"    # [Ljava/lang/CharSequence;

    .line 1194
    new-instance v0, Lorg/apache/commons/lang3/StringUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/commons/lang3/StringUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, p0, p1}, Lorg/apache/commons/lang3/StringUtils;->containsAny(Lorg/apache/commons/lang3/function/ToBooleanBiFunction;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 10
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .line 1222
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1225
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 1226
    .local v7, "len":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v8, v1, v7

    .line 1227
    .local v8, "max":I
    const/4 v1, 0x0

    move v9, v1

    .local v9, "i":I
    :goto_0
    if-gt v9, v8, :cond_2

    .line 1228
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v3, v9

    move-object v4, p1

    move v6, v7

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1229
    const/4 v0, 0x1

    return v0

    .line 1227
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1232
    .end local v9    # "i":I
    :cond_2
    return v0

    .line 1223
    .end local v7    # "len":I
    .end local v8    # "max":I
    :cond_3
    :goto_1
    return v0
.end method

.method public static containsNone(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "invalidChars"    # Ljava/lang/String;

    .line 1311
    if-nez p1, :cond_0

    .line 1312
    const/4 v0, 0x1

    return v0

    .line 1314
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsNone(Ljava/lang/CharSequence;[C)Z

    move-result v0

    return v0
.end method

.method public static varargs containsNone(Ljava/lang/CharSequence;[C)Z
    .locals 11
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .line 1259
    const/4 v0, 0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 1262
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1263
    .local v1, "csLen":I
    add-int/lit8 v2, v1, -0x1

    .line 1264
    .local v2, "csLast":I
    array-length v3, p1

    .line 1265
    .local v3, "searchLen":I
    add-int/lit8 v4, v3, -0x1

    .line 1266
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_5

    .line 1267
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1268
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_4

    .line 1269
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_3

    .line 1270
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_1

    .line 1272
    return v9

    .line 1274
    :cond_1
    if-ne v7, v4, :cond_2

    .line 1276
    return v9

    .line 1278
    :cond_2
    if-ge v5, v2, :cond_3

    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v10, v5, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_3

    .line 1279
    return v9

    .line 1268
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1266
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1284
    .end local v5    # "i":I
    :cond_5
    return v0

    .line 1260
    .end local v1    # "csLen":I
    .end local v2    # "csLast":I
    .end local v3    # "searchLen":I
    .end local v4    # "searchLast":I
    :cond_6
    :goto_2
    return v0
.end method

.method public static containsOnly(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "validChars"    # Ljava/lang/String;

    .line 1377
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1380
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->containsOnly(Ljava/lang/CharSequence;[C)Z

    move-result v0

    return v0

    .line 1378
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs containsOnly(Ljava/lang/CharSequence;[C)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "valid"    # [C

    .line 1341
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p0, :cond_0

    goto :goto_0

    .line 1344
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1345
    return v2

    .line 1347
    :cond_1
    array-length v1, p1

    if-nez v1, :cond_2

    .line 1348
    return v0

    .line 1350
    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOfAnyBut(Ljava/lang/CharSequence;[C)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 1342
    :cond_4
    :goto_0
    return v0
.end method

.method public static containsWhitespace(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "seq"    # Ljava/lang/CharSequence;

    .line 1395
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1396
    return v1

    .line 1398
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1399
    .local v0, "strLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1400
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1401
    const/4 v1, 0x1

    return v1

    .line 1399
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1404
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method private static convertRemainingAccentCharacters(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p0, "decomposed"    # Ljava/lang/StringBuilder;

    .line 1408
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1409
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 1410
    .local v1, "charAt":C
    const/16 v2, 0x75

    const/16 v3, 0x69

    const/16 v4, 0x55

    const/16 v5, 0x49

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 1457
    :sswitch_0
    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1458
    goto :goto_1

    .line 1440
    :sswitch_1
    invoke-virtual {p0, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1441
    goto :goto_1

    .line 1437
    :sswitch_2
    invoke-virtual {p0, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1438
    goto :goto_1

    .line 1453
    :sswitch_3
    invoke-virtual {p0, v0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1454
    goto :goto_1

    .line 1434
    :sswitch_4
    invoke-virtual {p0, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1435
    goto :goto_1

    .line 1449
    :sswitch_5
    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1450
    goto :goto_1

    .line 1431
    :sswitch_6
    invoke-virtual {p0, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1432
    goto :goto_1

    .line 1445
    :sswitch_7
    invoke-virtual {p0, v0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1446
    goto :goto_1

    .line 1428
    :sswitch_8
    invoke-virtual {p0, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1429
    goto :goto_1

    .line 1466
    :sswitch_9
    const/16 v2, 0x74

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1467
    goto :goto_1

    .line 1462
    :sswitch_a
    const/16 v2, 0x54

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1463
    goto :goto_1

    .line 1415
    :sswitch_b
    const/16 v2, 0x6c

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1416
    goto :goto_1

    .line 1412
    :sswitch_c
    const/16 v2, 0x4c

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1413
    goto :goto_1

    .line 1424
    :sswitch_d
    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1425
    goto :goto_1

    .line 1420
    :sswitch_e
    const/16 v2, 0x44

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1421
    nop

    .line 1408
    .end local v1    # "charAt":C
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1472
    .end local v0    # "i":I
    :cond_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x110 -> :sswitch_e
        0x111 -> :sswitch_d
        0x141 -> :sswitch_c
        0x142 -> :sswitch_b
        0x166 -> :sswitch_a
        0x167 -> :sswitch_9
        0x197 -> :sswitch_8
        0x244 -> :sswitch_7
        0x268 -> :sswitch_6
        0x289 -> :sswitch_5
        0x1d7b -> :sswitch_4
        0x1d7e -> :sswitch_3
        0x1da4 -> :sswitch_2
        0x1da7 -> :sswitch_1
        0x1db6 -> :sswitch_0
    .end sparse-switch
.end method

.method public static countMatches(Ljava/lang/CharSequence;C)I
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .line 1494
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1495
    const/4 v0, 0x0

    return v0

    .line 1497
    :cond_0
    const/4 v0, 0x0

    .line 1499
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1500
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_1

    .line 1501
    add-int/lit8 v0, v0, 0x1

    .line 1499
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1504
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "sub"    # Ljava/lang/CharSequence;

    .line 1530
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1533
    :cond_0
    const/4 v0, 0x0

    .line 1534
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1535
    .local v1, "idx":I
    :goto_0
    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    move v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1536
    add-int/lit8 v0, v0, 0x1

    .line 1537
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 1539
    :cond_1
    return v0

    .line 1531
    .end local v0    # "count":I
    .end local v1    # "idx":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 1563
    .local p0, "str":Ljava/lang/CharSequence;, "TT;"
    .local p1, "defaultStr":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static defaultIfEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 1585
    .local p0, "str":Ljava/lang/CharSequence;, "TT;"
    .local p1, "defaultStr":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 1605
    const-string v0, ""

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "nullDefault"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1636
    invoke-static {p0, p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 1654
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1655
    return-object p0

    .line 1657
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1658
    .local v0, "sz":I
    new-array v1, v0, [C

    .line 1659
    .local v1, "chs":[C
    const/4 v2, 0x0

    .line 1660
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1661
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1662
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "count":I
    .local v4, "count":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v1, v2

    move v2, v4

    .line 1660
    .end local v4    # "count":I
    .restart local v2    # "count":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1665
    .end local v3    # "i":I
    :cond_2
    if-ne v2, v0, :cond_3

    .line 1666
    return-object p0

    .line 1668
    :cond_3
    if-nez v2, :cond_4

    .line 1669
    const-string v3, ""

    return-object v3

    .line 1671
    :cond_4
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method

.method public static difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 1703
    if-nez p0, :cond_0

    .line 1704
    return-object p1

    .line 1706
    :cond_0
    if-nez p1, :cond_1

    .line 1707
    return-object p0

    .line 1709
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 1710
    .local v0, "at":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1711
    const-string v1, ""

    return-object v1

    .line 1713
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .line 1741
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 8
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z

    .line 1756
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1759
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 1760
    return v0

    .line 1762
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1763
    .local v0, "strOffset":I
    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object v2, p0

    move v3, p2

    move v4, v0

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    return v1

    .line 1757
    .end local v0    # "strOffset":I
    :cond_2
    :goto_0
    if-ne p0, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static varargs endsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .line 1788
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1791
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 1792
    .local v3, "searchString":Ljava/lang/CharSequence;
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1793
    const/4 v0, 0x1

    return v0

    .line 1791
    .end local v3    # "searchString":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1796
    :cond_2
    return v1

    .line 1789
    :cond_3
    :goto_1
    return v1
.end method

.method public static endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .line 1823
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;

    .line 1849
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1850
    return v0

    .line 1852
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_1

    .line 1855
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1856
    return v1

    .line 1858
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1859
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1862
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1863
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 1864
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_4

    .line 1865
    return v1

    .line 1863
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1868
    .end local v3    # "i":I
    :cond_5
    return v0

    .line 1853
    .end local v2    # "length":I
    :cond_6
    :goto_1
    return v1
.end method

.method public static varargs equalsAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .line 1891
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1892
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1893
    .local v3, "next":Ljava/lang/CharSequence;
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1894
    const/4 v0, 0x1

    return v0

    .line 1892
    .end local v3    # "next":Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1898
    :cond_1
    return v1
.end method

.method public static varargs equalsAnyIgnoreCase(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .line 1921
    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1922
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1923
    .local v3, "next":Ljava/lang/CharSequence;
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1924
    const/4 v0, 0x1

    return v0

    .line 1922
    .end local v3    # "next":Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1928
    :cond_1
    return v1
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 9
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;

    .line 1953
    if-ne p0, p1, :cond_0

    .line 1954
    const/4 v0, 0x1

    return v0

    .line 1956
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 1959
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1960
    return v0

    .line 1962
    :cond_2
    const/4 v7, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    return v0

    .line 1957
    :cond_3
    :goto_0
    return v0
.end method

.method public static varargs firstNonBlank([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1992
    .local p0, "values":[Ljava/lang/CharSequence;, "[TT;"
    if-eqz p0, :cond_1

    .line 1993
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 1994
    .local v2, "val":Ljava/lang/CharSequence;, "TT;"
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1995
    return-object v2

    .line 1993
    .end local v2    # "val":Ljava/lang/CharSequence;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1999
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs firstNonEmpty([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 2027
    .local p0, "values":[Ljava/lang/CharSequence;, "[TT;"
    if-eqz p0, :cond_1

    .line 2028
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2029
    .local v2, "val":Ljava/lang/CharSequence;, "TT;"
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2030
    return-object v2

    .line 2028
    .end local v2    # "val":Ljava/lang/CharSequence;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2034
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2061
    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/Charsets;->toCharsetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 2047
    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static varargs getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "strs"    # [Ljava/lang/String;

    .line 2098
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2099
    return-object v1

    .line 2101
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->indexOfDifference([Ljava/lang/CharSequence;)I

    move-result v0

    .line 2102
    .local v0, "smallestIndexOfDiff":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 2104
    aget-object v2, p0, v3

    if-nez v2, :cond_1

    .line 2105
    return-object v1

    .line 2107
    :cond_1
    aget-object v1, p0, v3

    return-object v1

    .line 2109
    :cond_2
    if-nez v0, :cond_3

    .line 2111
    return-object v1

    .line 2114
    :cond_3
    aget-object v1, p0, v3

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 2140
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2141
    return-object p0

    .line 2143
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2144
    .local v0, "sz":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2145
    .local v1, "strDigits":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2146
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2147
    .local v3, "tempChar":C
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2148
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2145
    .end local v3    # "tempChar":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2151
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getFuzzyDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/Locale;)I
    .locals 10
    .param p0, "term"    # Ljava/lang/CharSequence;
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2185
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 2188
    if-eqz p2, :cond_4

    .line 2196
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2197
    .local v0, "termLowerCase":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2200
    .local v1, "queryLowerCase":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2204
    .local v2, "score":I
    const/4 v3, 0x0

    .line 2207
    .local v3, "termIndex":I
    const/high16 v4, -0x80000000

    .line 2209
    .local v4, "previousMatchingCharacterIndex":I
    const/4 v5, 0x0

    .local v5, "queryIndex":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 2210
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2212
    .local v6, "queryChar":C
    const/4 v7, 0x0

    .line 2213
    .local v7, "termCharacterMatchFound":Z
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_2

    if-nez v7, :cond_2

    .line 2214
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 2216
    .local v8, "termChar":C
    if-ne v6, v8, :cond_1

    .line 2218
    add-int/lit8 v2, v2, 0x1

    .line 2222
    add-int/lit8 v9, v4, 0x1

    if-ne v9, v3, :cond_0

    .line 2223
    add-int/lit8 v2, v2, 0x2

    .line 2226
    :cond_0
    move v4, v3

    .line 2230
    const/4 v7, 0x1

    .line 2213
    .end local v8    # "termChar":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2209
    .end local v6    # "queryChar":C
    .end local v7    # "termCharacterMatchFound":Z
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2235
    .end local v5    # "queryIndex":I
    :cond_3
    return v2

    .line 2189
    .end local v0    # "termLowerCase":Ljava/lang/String;
    .end local v1    # "queryLowerCase":Ljava/lang/String;
    .end local v2    # "score":I
    .end local v3    # "termIndex":I
    .end local v4    # "previousMatchingCharacterIndex":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Locale must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2186
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getIfBlank(Ljava/lang/CharSequence;Ljava/util/function/Supplier;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2264
    .local p0, "str":Ljava/lang/CharSequence;, "TT;"
    .local p1, "defaultSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/function/Suppliers;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static getIfEmpty(Ljava/lang/CharSequence;Ljava/util/function/Supplier;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2292
    .local p0, "str":Ljava/lang/CharSequence;, "TT;"
    .local p1, "defaultSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/function/Suppliers;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static getJaroWinklerDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)D
    .locals 13
    .param p0, "first"    # Ljava/lang/CharSequence;
    .param p1, "second"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2332
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 2334
    .local v0, "DEFAULT_SCALING_FACTOR":D
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 2338
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I

    move-result-object v2

    .line 2339
    .local v2, "mtp":[I
    const/4 v3, 0x0

    aget v3, v2, v3

    int-to-double v3, v3

    .line 2340
    .local v3, "m":D
    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-nez v7, :cond_0

    .line 2341
    return-wide v5

    .line 2343
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    int-to-double v5, v5

    div-double v5, v3, v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    int-to-double v7, v7

    div-double v7, v3, v7

    add-double/2addr v5, v7

    const/4 v7, 0x1

    aget v7, v2, v7

    int-to-double v7, v7

    sub-double v7, v3, v7

    div-double/2addr v7, v3

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    div-double/2addr v5, v7

    .line 2344
    .local v5, "j":D
    const-wide v7, 0x3fe6666666666666L    # 0.7

    cmpg-double v7, v5, v7

    if-gez v7, :cond_1

    move-wide v7, v5

    goto :goto_0

    :cond_1
    const/4 v7, 0x3

    aget v7, v2, v7

    int-to-double v7, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    div-double v7, v9, v7

    const-wide v11, 0x3fb999999999999aL    # 0.1

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    const/4 v11, 0x2

    aget v11, v2, v11

    int-to-double v11, v11

    mul-double/2addr v7, v11

    sub-double/2addr v9, v5

    mul-double/2addr v7, v9

    add-double/2addr v7, v5

    .line 2345
    .local v7, "jw":D
    :goto_0
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double v11, v7, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-double v11, v11

    div-double/2addr v11, v9

    return-wide v11

    .line 2335
    .end local v2    # "mtp":[I
    .end local v3    # "m":D
    .end local v5    # "j":D
    .end local v7    # "jw":D
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Strings must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 13
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "t"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2385
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 2389
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2390
    .local v0, "n":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2392
    .local v1, "m":I
    if-nez v0, :cond_0

    .line 2393
    return v1

    .line 2395
    :cond_0
    if-nez v1, :cond_1

    .line 2396
    return v0

    .line 2399
    :cond_1
    if-le v0, v1, :cond_2

    .line 2401
    move-object v2, p0

    .line 2402
    .local v2, "tmp":Ljava/lang/CharSequence;
    move-object p0, p1

    .line 2403
    move-object p1, v2

    .line 2404
    move v0, v1

    .line 2405
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2408
    .end local v2    # "tmp":Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [I

    .line 2418
    .local v2, "p":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-gt v3, v0, :cond_3

    .line 2419
    aput v3, v2, v3

    .line 2418
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2422
    :cond_3
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_1
    if-gt v4, v1, :cond_6

    .line 2423
    const/4 v5, 0x0

    aget v6, v2, v5

    .line 2424
    .local v6, "upperleft":I
    add-int/lit8 v7, v4, -0x1

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 2425
    .local v7, "jOfT":C
    aput v4, v2, v5

    .line 2427
    const/4 v3, 0x1

    :goto_2
    if-gt v3, v0, :cond_5

    .line 2428
    aget v8, v2, v3

    .line 2429
    .local v8, "upper":I
    add-int/lit8 v9, v3, -0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v7, :cond_4

    move v9, v5

    goto :goto_3

    :cond_4
    move v9, v10

    .line 2431
    .local v9, "cost":I
    :goto_3
    add-int/lit8 v11, v3, -0x1

    aget v11, v2, v11

    add-int/2addr v11, v10

    aget v12, v2, v3

    add-int/2addr v12, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v11, v6, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aput v10, v2, v3

    .line 2432
    move v6, v8

    .line 2427
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2422
    .end local v8    # "upper":I
    .end local v9    # "cost":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2436
    .end local v6    # "upperleft":I
    .end local v7    # "jOfT":C
    :cond_6
    aget v5, v2, v0

    return v5

    .line 2386
    .end local v0    # "n":I
    .end local v1    # "m":I
    .end local v2    # "p":[I
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 16
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "t"    # Ljava/lang/CharSequence;
    .param p2, "threshold"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2476
    move/from16 v0, p2

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    .line 2479
    if-ltz v0, :cond_e

    .line 2527
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2528
    .local v1, "n":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2531
    .local v2, "m":I
    const/4 v3, -0x1

    if-nez v1, :cond_1

    .line 2532
    if-gt v2, v0, :cond_0

    move v3, v2

    :cond_0
    return v3

    .line 2534
    :cond_1
    if-nez v2, :cond_3

    .line 2535
    if-gt v1, v0, :cond_2

    move v3, v1

    :cond_2
    return v3

    .line 2537
    :cond_3
    sub-int v4, v1, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v0, :cond_4

    .line 2539
    return v3

    .line 2542
    :cond_4
    if-le v1, v2, :cond_5

    .line 2544
    move-object/from16 v4, p0

    .line 2545
    .local v4, "tmp":Ljava/lang/CharSequence;
    move-object/from16 v5, p1

    .line 2546
    .end local p0    # "s":Ljava/lang/CharSequence;
    .local v5, "s":Ljava/lang/CharSequence;
    move-object v6, v4

    .line 2547
    .end local p1    # "t":Ljava/lang/CharSequence;
    .local v6, "t":Ljava/lang/CharSequence;
    move v1, v2

    .line 2548
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v2

    goto :goto_0

    .line 2542
    .end local v4    # "tmp":Ljava/lang/CharSequence;
    .end local v5    # "s":Ljava/lang/CharSequence;
    .end local v6    # "t":Ljava/lang/CharSequence;
    .restart local p0    # "s":Ljava/lang/CharSequence;
    .restart local p1    # "t":Ljava/lang/CharSequence;
    :cond_5
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 2551
    .end local p0    # "s":Ljava/lang/CharSequence;
    .end local p1    # "t":Ljava/lang/CharSequence;
    .restart local v5    # "s":Ljava/lang/CharSequence;
    .restart local v6    # "t":Ljava/lang/CharSequence;
    :goto_0
    add-int/lit8 v4, v1, 0x1

    new-array v4, v4, [I

    .line 2552
    .local v4, "p":[I
    add-int/lit8 v7, v1, 0x1

    new-array v7, v7, [I

    .line 2556
    .local v7, "d":[I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 2557
    .local v8, "boundary":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v8, :cond_6

    .line 2558
    aput v10, v4, v10

    .line 2557
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2562
    .end local v10    # "i":I
    :cond_6
    array-length v10, v4

    const v11, 0x7fffffff

    invoke-static {v4, v8, v10, v11}, Ljava/util/Arrays;->fill([IIII)V

    .line 2563
    invoke-static {v7, v11}, Ljava/util/Arrays;->fill([II)V

    .line 2566
    const/4 v10, 0x1

    .local v10, "j":I
    :goto_2
    if-gt v10, v2, :cond_c

    .line 2567
    add-int/lit8 v12, v10, -0x1

    invoke-interface {v6, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    .line 2568
    .local v12, "jOfT":C
    const/4 v13, 0x0

    aput v10, v7, v13

    .line 2571
    sub-int v13, v10, v0

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 2572
    .local v13, "min":I
    sub-int v14, v11, v0

    if-le v10, v14, :cond_7

    move v14, v1

    goto :goto_3

    :cond_7
    add-int v14, v10, v0

    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 2575
    .local v14, "max":I
    :goto_3
    if-le v13, v14, :cond_8

    .line 2576
    return v3

    .line 2580
    :cond_8
    if-le v13, v9, :cond_9

    .line 2581
    add-int/lit8 v15, v13, -0x1

    aput v11, v7, v15

    .line 2585
    :cond_9
    move v15, v13

    .local v15, "i":I
    :goto_4
    if-gt v15, v14, :cond_b

    .line 2586
    add-int/lit8 v11, v15, -0x1

    invoke-interface {v5, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v11, v12, :cond_a

    .line 2588
    add-int/lit8 v11, v15, -0x1

    aget v11, v4, v11

    aput v11, v7, v15

    goto :goto_5

    .line 2591
    :cond_a
    add-int/lit8 v11, v15, -0x1

    aget v11, v7, v11

    aget v3, v4, v15

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v11, v15, -0x1

    aget v11, v4, v11

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v9

    aput v3, v7, v15

    .line 2585
    :goto_5
    add-int/lit8 v15, v15, 0x1

    const/4 v3, -0x1

    const v11, 0x7fffffff

    goto :goto_4

    .line 2596
    .end local v15    # "i":I
    :cond_b
    move-object v3, v4

    .line 2597
    .local v3, "tmp":[I
    move-object v4, v7

    .line 2598
    move-object v7, v3

    .line 2566
    .end local v12    # "jOfT":C
    .end local v13    # "min":I
    .end local v14    # "max":I
    add-int/lit8 v10, v10, 0x1

    const/4 v3, -0x1

    const v11, 0x7fffffff

    goto :goto_2

    .line 2603
    .end local v3    # "tmp":[I
    .end local v10    # "j":I
    :cond_c
    aget v3, v4, v1

    if-gt v3, v0, :cond_d

    .line 2604
    aget v3, v4, v1

    return v3

    .line 2606
    :cond_d
    const/4 v3, -0x1

    return v3

    .line 2480
    .end local v1    # "n":I
    .end local v2    # "m":I
    .end local v4    # "p":[I
    .end local v5    # "s":Ljava/lang/CharSequence;
    .end local v6    # "t":Ljava/lang/CharSequence;
    .end local v7    # "d":[I
    .end local v8    # "boundary":I
    .restart local p0    # "s":Ljava/lang/CharSequence;
    .restart local p1    # "t":Ljava/lang/CharSequence;
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Threshold must not be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2477
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Strings must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static indexOf(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .line 2718
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2719
    const/4 v0, -0x1

    return v0

    .line 2721
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;II)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "startPos"    # I

    .line 2777
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2778
    const/4 v0, -0x1

    return v0

    .line 2780
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .line 2634
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2637
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 2635
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 2674
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2677
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 2675
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOfAny(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/String;

    .line 2908
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2911
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOfAny(Ljava/lang/CharSequence;[C)I

    move-result v0

    return v0

    .line 2909
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[C)I
    .locals 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .line 2807
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2810
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2811
    .local v0, "csLen":I
    add-int/lit8 v2, v0, -0x1

    .line 2812
    .local v2, "csLast":I
    array-length v3, p1

    .line 2813
    .local v3, "searchLen":I
    add-int/lit8 v4, v3, -0x1

    .line 2814
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_5

    .line 2815
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 2816
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_4

    .line 2817
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_3

    .line 2818
    if-ge v5, v2, :cond_2

    if-ge v7, v4, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    .line 2822
    :cond_1
    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v5, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_3

    .line 2823
    return v5

    .line 2819
    :cond_2
    :goto_2
    return v5

    .line 2816
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2814
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2828
    .end local v5    # "i":I
    :cond_5
    return v1

    .line 2808
    .end local v0    # "csLen":I
    .end local v2    # "csLast":I
    .end local v3    # "searchLen":I
    .end local v4    # "searchLast":I
    :cond_6
    :goto_3
    return v1
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .locals 7
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStrs"    # [Ljava/lang/CharSequence;

    .line 2859
    const/4 v0, -0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_3

    .line 2864
    :cond_0
    const v1, 0x7fffffff

    .line 2867
    .local v1, "ret":I
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, p1, v4

    .line 2868
    .local v5, "search":Ljava/lang/CharSequence;
    if-nez v5, :cond_1

    .line 2869
    goto :goto_1

    .line 2871
    :cond_1
    invoke-static {p0, v5, v3}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v6

    .line 2872
    .local v6, "tmp":I
    if-ne v6, v0, :cond_2

    .line 2873
    goto :goto_1

    .line 2876
    :cond_2
    if-ge v6, v1, :cond_3

    .line 2877
    move v1, v6

    .line 2867
    .end local v5    # "search":Ljava/lang/CharSequence;
    .end local v6    # "tmp":I
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2881
    :cond_4
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0

    .line 2860
    .end local v1    # "ret":I
    :cond_6
    :goto_3
    return v0
.end method

.method public static indexOfAnyBut(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 7
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/CharSequence;

    .line 2988
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_5

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2991
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2992
    .local v0, "strLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 2993
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 2994
    .local v3, "ch":C
    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v5

    if-ltz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v4

    .line 2995
    .local v5, "chFound":Z
    :goto_1
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v0, :cond_2

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2996
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 2997
    .local v6, "ch2":C
    if-eqz v5, :cond_3

    invoke-static {p1, v6, v4}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v4

    if-gez v4, :cond_3

    .line 2998
    return v2

    .line 3000
    .end local v6    # "ch2":C
    :cond_2
    if-nez v5, :cond_3

    .line 3001
    return v2

    .line 3000
    :cond_3
    nop

    .line 2992
    .end local v3    # "ch":C
    .end local v5    # "chFound":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3004
    .end local v2    # "i":I
    :cond_4
    return v1

    .line 2989
    .end local v0    # "strLen":I
    :cond_5
    :goto_2
    return v1
.end method

.method public static varargs indexOfAnyBut(Ljava/lang/CharSequence;[C)I
    .locals 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .line 2939
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2942
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2943
    .local v0, "csLen":I
    add-int/lit8 v2, v0, -0x1

    .line 2944
    .local v2, "csLast":I
    array-length v3, p1

    .line 2945
    .local v3, "searchLen":I
    add-int/lit8 v4, v3, -0x1

    .line 2947
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_5

    .line 2948
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 2949
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_4

    .line 2950
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_3

    .line 2951
    if-ge v5, v2, :cond_2

    if-ge v7, v4, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2952
    goto :goto_2

    .line 2954
    :cond_1
    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v5, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_3

    .line 2955
    nop

    .line 2947
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2949
    .restart local v6    # "ch":C
    .restart local v7    # "j":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2959
    .end local v7    # "j":I
    :cond_4
    return v5

    .line 2961
    .end local v5    # "i":I
    .end local v6    # "ch":C
    :cond_5
    return v1

    .line 2940
    .end local v0    # "csLen":I
    .end local v2    # "csLast":I
    .end local v3    # "searchLen":I
    .end local v4    # "searchLast":I
    :cond_6
    :goto_3
    return v1
.end method

.method public static indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;

    .line 3123
    const/4 v0, -0x1

    if-ne p0, p1, :cond_0

    .line 3124
    return v0

    .line 3126
    :cond_0
    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_3

    .line 3130
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3131
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    .line 3132
    goto :goto_1

    .line 3130
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3135
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    goto :goto_2

    .line 3138
    :cond_4
    return v0

    .line 3136
    :cond_5
    :goto_2
    return v1

    .line 3127
    .end local v1    # "i":I
    :cond_6
    :goto_3
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs indexOfDifference([Ljava/lang/CharSequence;)I
    .locals 12
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 3040
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-gt v0, v1, :cond_0

    .line 3041
    return v2

    .line 3043
    :cond_0
    const/4 v0, 0x0

    .line 3044
    .local v0, "anyStringNull":Z
    const/4 v1, 0x1

    .line 3045
    .local v1, "allStringsNull":Z
    array-length v3, p0

    .line 3046
    .local v3, "arrayLen":I
    const v4, 0x7fffffff

    .line 3047
    .local v4, "shortestStrLen":I
    const/4 v5, 0x0

    .line 3052
    .local v5, "longestStrLen":I
    array-length v6, p0

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_2

    aget-object v9, p0, v8

    .line 3053
    .local v9, "cs":Ljava/lang/CharSequence;
    if-nez v9, :cond_1

    .line 3054
    const/4 v0, 0x1

    .line 3055
    const/4 v4, 0x0

    goto :goto_1

    .line 3057
    :cond_1
    const/4 v1, 0x0

    .line 3058
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3059
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3052
    .end local v9    # "cs":Ljava/lang/CharSequence;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3064
    :cond_2
    if-nez v1, :cond_a

    if-nez v5, :cond_3

    if-nez v0, :cond_3

    goto :goto_6

    .line 3069
    :cond_3
    if-nez v4, :cond_4

    .line 3070
    return v7

    .line 3074
    :cond_4
    const/4 v6, -0x1

    .line 3075
    .local v6, "firstDiff":I
    const/4 v8, 0x0

    .local v8, "stringPos":I
    :goto_2
    if-ge v8, v4, :cond_8

    .line 3076
    aget-object v9, p0, v7

    invoke-interface {v9, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 3077
    .local v9, "comparisonChar":C
    const/4 v10, 0x1

    .local v10, "arrayPos":I
    :goto_3
    if-ge v10, v3, :cond_6

    .line 3078
    aget-object v11, p0, v10

    invoke-interface {v11, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-eq v11, v9, :cond_5

    .line 3079
    move v6, v8

    .line 3080
    goto :goto_4

    .line 3077
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 3083
    .end local v10    # "arrayPos":I
    :cond_6
    :goto_4
    if-eq v6, v2, :cond_7

    .line 3084
    goto :goto_5

    .line 3075
    .end local v9    # "comparisonChar":C
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 3088
    .end local v8    # "stringPos":I
    :cond_8
    :goto_5
    if-ne v6, v2, :cond_9

    if-eq v4, v5, :cond_9

    .line 3092
    return v4

    .line 3094
    :cond_9
    return v6

    .line 3065
    .end local v6    # "firstDiff":I
    :cond_a
    :goto_6
    return v2
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .line 3168
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 9
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 3204
    const/4 v0, -0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 3207
    :cond_0
    if-gez p2, :cond_1

    .line 3208
    const/4 p2, 0x0

    .line 3210
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 3211
    .local v1, "endLimit":I
    if-le p2, v1, :cond_2

    .line 3212
    return v0

    .line 3214
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 3215
    return p2

    .line 3217
    :cond_3
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 3218
    const/4 v7, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v4, 0x1

    move-object v3, p0

    move v5, v2

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3219
    return v2

    .line 3217
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3222
    .end local v2    # "i":I
    :cond_5
    return v0

    .line 3205
    .end local v1    # "endLimit":I
    :cond_6
    :goto_1
    return v0
.end method

.method public static varargs isAllBlank([Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 3247
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3248
    return v1

    .line 3250
    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p0, v3

    .line 3251
    .local v4, "cs":Ljava/lang/CharSequence;
    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3252
    return v2

    .line 3250
    .end local v4    # "cs":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3255
    :cond_2
    return v1
.end method

.method public static varargs isAllEmpty([Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 3278
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3279
    return v1

    .line 3281
    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p0, v3

    .line 3282
    .local v4, "cs":Ljava/lang/CharSequence;
    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3283
    return v2

    .line 3281
    .end local v4    # "cs":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3286
    :cond_2
    return v1
.end method

.method public static isAllLowerCase(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3312
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3313
    return v1

    .line 3315
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3316
    .local v0, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3317
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3318
    return v1

    .line 3316
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3321
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isAllUpperCase(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3347
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3348
    return v1

    .line 3350
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3351
    .local v0, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3352
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3353
    return v1

    .line 3351
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3356
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isAlpha(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3380
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3381
    return v1

    .line 3383
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3384
    .local v0, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3385
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3386
    return v1

    .line 3384
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3389
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isAlphaSpace(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3486
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3487
    return v0

    .line 3489
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3490
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3491
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 3492
    .local v3, "nowChar":C
    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3493
    return v0

    .line 3490
    .end local v3    # "nowChar":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3496
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isAlphanumeric(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3415
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3416
    return v1

    .line 3418
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3419
    .local v0, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3420
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3421
    return v1

    .line 3419
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3424
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isAlphanumericSpace(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3450
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3451
    return v0

    .line 3453
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3454
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3455
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 3456
    .local v3, "nowChar":C
    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3457
    return v0

    .line 3454
    .end local v3    # "nowChar":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3460
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static varargs isAnyBlank([Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 3523
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3524
    return v1

    .line 3526
    :cond_0
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 3527
    .local v3, "cs":Ljava/lang/CharSequence;
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3528
    const/4 v0, 0x1

    return v0

    .line 3526
    .end local v3    # "cs":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3531
    :cond_2
    return v1
.end method

.method public static varargs isAnyEmpty([Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 3555
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3556
    return v1

    .line 3558
    :cond_0
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 3559
    .local v3, "cs":Ljava/lang/CharSequence;
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3560
    const/4 v0, 0x1

    return v0

    .line 3558
    .end local v3    # "cs":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3563
    :cond_2
    return v1
.end method

.method public static isAsciiPrintable(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3593
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3594
    return v0

    .line 3596
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3597
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3598
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/lang3/CharUtils;->isAsciiPrintable(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3599
    return v0

    .line 3597
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3602
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3624
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 3625
    .local v0, "strLen":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3626
    return v1

    .line 3628
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3629
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3630
    const/4 v1, 0x0

    return v1

    .line 3628
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3633
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3656
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isMixedCase(Ljava/lang/CharSequence;)Z
    .locals 8
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3683
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 3686
    :cond_0
    const/4 v0, 0x0

    .line 3687
    .local v0, "containsUppercase":Z
    const/4 v3, 0x0

    .line 3688
    .local v3, "containsLowercase":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 3689
    .local v4, "sz":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 3690
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 3691
    .local v6, "nowChar":C
    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3692
    const/4 v0, 0x1

    goto :goto_1

    .line 3693
    :cond_1
    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3694
    const/4 v3, 0x1

    .line 3696
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 3697
    return v2

    .line 3689
    .end local v6    # "nowChar":C
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3700
    .end local v5    # "i":I
    :cond_4
    return v1

    .line 3684
    .end local v0    # "containsUppercase":Z
    .end local v3    # "containsLowercase":Z
    .end local v4    # "sz":I
    :cond_5
    :goto_2
    return v1
.end method

.method public static varargs isNoneBlank([Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 3727
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isAnyBlank([Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static varargs isNoneEmpty([Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 3751
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isAnyEmpty([Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotBlank(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3774
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3793
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNumeric(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3828
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3829
    return v1

    .line 3831
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3832
    .local v0, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3833
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3834
    return v1

    .line 3832
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3837
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isNumericSpace(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3867
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3868
    return v0

    .line 3870
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3871
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3872
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 3873
    .local v3, "nowChar":C
    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3874
    return v0

    .line 3871
    .end local v3    # "nowChar":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3877
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isWhitespace(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3903
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3904
    return v0

    .line 3906
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3907
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3908
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3909
    return v0

    .line 3907
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3912
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static join(Ljava/lang/Iterable;C)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4378
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4396
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static join(Ljava/util/Iterator;C)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4415
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-nez p0, :cond_0

    .line 4416
    const/4 v0, 0x0

    return-object v0

    .line 4418
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    .line 4419
    return-object v1

    .line 4421
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang3/stream/Streams;->of(Ljava/util/Iterator;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->toStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/lang3/StringUtils$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lorg/apache/commons/lang3/StringUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v2, v1, v1, v3}, Lorg/apache/commons/lang3/stream/LangCollectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4439
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-nez p0, :cond_0

    .line 4440
    const/4 v0, 0x0

    return-object v0

    .line 4442
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    .line 4443
    return-object v1

    .line 4445
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang3/stream/Streams;->of(Ljava/util/Iterator;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->toStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/lang3/StringUtils$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lorg/apache/commons/lang3/StringUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v2, v1, v1, v3}, Lorg/apache/commons/lang3/stream/LangCollectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static join(Ljava/util/List;CII)Ljava/lang/String;
    .locals 3
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;CII)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4475
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p0, :cond_0

    .line 4476
    const/4 v0, 0x0

    return-object v0

    .line 4478
    :cond_0
    sub-int v0, p3, p2

    .line 4479
    .local v0, "noOfItems":I
    if-gtz v0, :cond_1

    .line 4480
    const-string v1, ""

    return-object v1

    .line 4482
    :cond_1
    invoke-interface {p0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 4483
    .local v1, "subList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4513
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p0, :cond_0

    .line 4514
    const/4 v0, 0x0

    return-object v0

    .line 4516
    :cond_0
    sub-int v0, p3, p2

    .line 4517
    .local v0, "noOfItems":I
    if-gtz v0, :cond_1

    .line 4518
    const-string v1, ""

    return-object v1

    .line 4520
    :cond_1
    invoke-interface {p0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 4521
    .local v1, "subList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join([BC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [B
    .param p1, "delimiter"    # C

    .line 4012
    if-nez p0, :cond_0

    .line 4013
    const/4 v0, 0x0

    return-object v0

    .line 4015
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([BCII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([BCII)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [B
    .param p1, "delimiter"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4048
    if-nez p0, :cond_0

    .line 4049
    const/4 v0, 0x0

    return-object v0

    .line 4051
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4052
    const-string v0, ""

    return-object v0

    .line 4054
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4055
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 4056
    aget-byte v2, p0, v1

    .line 4057
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4058
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4055
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4060
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static join([CC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [C
    .param p1, "delimiter"    # C

    .line 4087
    if-nez p0, :cond_0

    .line 4088
    const/4 v0, 0x0

    return-object v0

    .line 4090
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([CCII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([CCII)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [C
    .param p1, "delimiter"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4123
    if-nez p0, :cond_0

    .line 4124
    const/4 v0, 0x0

    return-object v0

    .line 4126
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4127
    const-string v0, ""

    return-object v0

    .line 4129
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4130
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 4131
    aget-char v2, p0, v1

    .line 4132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4133
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4135
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static join([DC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [D
    .param p1, "delimiter"    # C

    .line 4162
    if-nez p0, :cond_0

    .line 4163
    const/4 v0, 0x0

    return-object v0

    .line 4165
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([DCII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([DCII)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [D
    .param p1, "delimiter"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4198
    if-nez p0, :cond_0

    .line 4199
    const/4 v0, 0x0

    return-object v0

    .line 4201
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4202
    const-string v0, ""

    return-object v0

    .line 4204
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4205
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 4206
    aget-wide v2, p0, v1

    .line 4207
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4208
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4210
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static join([FC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [F
    .param p1, "delimiter"    # C

    .line 4237
    if-nez p0, :cond_0

    .line 4238
    const/4 v0, 0x0

    return-object v0

    .line 4240
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([FCII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([FCII)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [F
    .param p1, "delimiter"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4273
    if-nez p0, :cond_0

    .line 4274
    const/4 v0, 0x0

    return-object v0

    .line 4276
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4277
    const-string v0, ""

    return-object v0

    .line 4279
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4280
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 4281
    aget v2, p0, v1

    .line 4282
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4283
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4285
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static join([IC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [I
    .param p1, "separator"    # C

    .line 4312
    if-nez p0, :cond_0

    .line 4313
    const/4 v0, 0x0

    return-object v0

    .line 4315
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([ICII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([ICII)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [I
    .param p1, "delimiter"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4348
    if-nez p0, :cond_0

    .line 4349
    const/4 v0, 0x0

    return-object v0

    .line 4351
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4352
    const-string v0, ""

    return-object v0

    .line 4354
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4355
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 4356
    aget v2, p0, v1

    .line 4357
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4358
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4355
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4360
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static join([JC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [J
    .param p1, "separator"    # C

    .line 4548
    if-nez p0, :cond_0

    .line 4549
    const/4 v0, 0x0

    return-object v0

    .line 4551
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([JCII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([JCII)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [J
    .param p1, "delimiter"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4584
    if-nez p0, :cond_0

    .line 4585
    const/4 v0, 0x0

    return-object v0

    .line 4587
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4588
    const-string v0, ""

    return-object v0

    .line 4590
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4591
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 4592
    aget-wide v2, p0, v1

    .line 4593
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4594
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4591
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4596
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs join([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 4824
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "delimiter"    # C

    .line 4622
    if-nez p0, :cond_0

    .line 4623
    const/4 v0, 0x0

    return-object v0

    .line 4625
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;CII)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "delimiter"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4655
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "delimiter"    # Ljava/lang/String;

    .line 4682
    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->toStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "delimiter"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4721
    if-eqz p0, :cond_0

    .line 4722
    nop

    .line 4721
    invoke-static {p0}, Lorg/apache/commons/lang3/stream/Streams;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v0

    const/4 v1, 0x0

    sub-int v2, p3, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/lang3/StringUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/commons/lang3/StringUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 4722
    const-string v2, ""

    invoke-static {p1, v2, v2, v1}, Lorg/apache/commons/lang3/stream/LangCollectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4721
    :goto_0
    return-object v0
.end method

.method public static join([SC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [S
    .param p1, "delimiter"    # C

    .line 4749
    if-nez p0, :cond_0

    .line 4750
    const/4 v0, 0x0

    return-object v0

    .line 4752
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([SCII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([SCII)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [S
    .param p1, "delimiter"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4785
    if-nez p0, :cond_0

    .line 4786
    const/4 v0, 0x0

    return-object v0

    .line 4788
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4789
    const-string v0, ""

    return-object v0

    .line 4791
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4792
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 4793
    aget-short v2, p0, v1

    .line 4794
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4795
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4792
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4797
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static join([ZC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "delimiter"    # C

    .line 3938
    if-nez p0, :cond_0

    .line 3939
    const/4 v0, 0x0

    return-object v0

    .line 3941
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->join([ZCII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([ZCII)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "delimiter"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 3973
    if-nez p0, :cond_0

    .line 3974
    const/4 v0, 0x0

    return-object v0

    .line 3976
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 3977
    const-string v0, ""

    return-object v0

    .line 3979
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x5

    array-length v2, p0

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3980
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 3981
    aget-boolean v2, p0, v1

    .line 3982
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3983
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3980
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3985
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs joinWith(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "delimiter"    # Ljava/lang/String;
    .param p1, "array"    # [Ljava/lang/Object;

    .line 4848
    if-eqz p1, :cond_0

    .line 4851
    invoke-static {p1, p0}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4849
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object varargs must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$stripAll$0([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "strs"    # [Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;
    .param p2, "i"    # I

    .line 8248
    aget-object v0, p0, p2

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .line 4958
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4959
    const/4 v0, -0x1

    return v0

    .line 4961
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;II)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "startPos"    # I

    .line 5009
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5010
    const/4 v0, -0x1

    return v0

    .line 5012
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .line 4878
    if-nez p0, :cond_0

    .line 4879
    const/4 v0, -0x1

    return v0

    .line 4881
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 4920
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static varargs lastIndexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .locals 5
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStrs"    # [Ljava/lang/CharSequence;

    .line 5042
    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 5045
    :cond_0
    const/4 v0, -0x1

    .line 5047
    .local v0, "ret":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 5048
    .local v3, "search":Ljava/lang/CharSequence;
    if-nez v3, :cond_1

    .line 5049
    goto :goto_1

    .line 5051
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p0, v3, v4}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    .line 5052
    .local v4, "tmp":I
    if-le v4, v0, :cond_2

    .line 5053
    move v0, v4

    .line 5047
    .end local v3    # "search":Ljava/lang/CharSequence;
    .end local v4    # "tmp":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5056
    :cond_3
    return v0

    .line 5043
    .end local v0    # "ret":I
    :cond_4
    :goto_2
    const/4 v0, -0x1

    return v0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .line 5083
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5086
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 5084
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 10
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 5122
    const/4 v0, -0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 5125
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 5126
    .local v7, "searchStrLength":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 5127
    .local v8, "strLength":I
    sub-int v1, v8, v7

    if-le p2, v1, :cond_1

    .line 5128
    sub-int p2, v8, v7

    .line 5130
    :cond_1
    if-gez p2, :cond_2

    .line 5131
    return v0

    .line 5133
    :cond_2
    if-nez v7, :cond_3

    .line 5134
    return p2

    .line 5137
    :cond_3
    move v1, p2

    move v9, v1

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_5

    .line 5138
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v3, v9

    move-object v4, p1

    move v6, v7

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5139
    return v9

    .line 5137
    :cond_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 5142
    .end local v9    # "i":I
    :cond_5
    return v0

    .line 5123
    .end local v7    # "searchStrLength":I
    .end local v8    # "strLength":I
    :cond_6
    :goto_1
    return v0
.end method

.method public static lastOrdinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "ordinal"    # I

    .line 5180
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method public static left(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 5204
    if-nez p0, :cond_0

    .line 5205
    const/4 v0, 0x0

    return-object v0

    .line 5207
    :cond_0
    if-gez p1, :cond_1

    .line 5208
    const-string v0, ""

    return-object v0

    .line 5210
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_2

    .line 5211
    return-object p0

    .line 5213
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 5236
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 5261
    if-nez p0, :cond_0

    .line 5262
    const/4 v0, 0x0

    return-object v0

    .line 5264
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 5265
    .local v0, "pads":I
    if-gtz v0, :cond_1

    .line 5266
    return-object p0

    .line 5268
    :cond_1
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 5269
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5271
    :cond_2
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 5298
    if-nez p0, :cond_0

    .line 5299
    const/4 v0, 0x0

    return-object v0

    .line 5301
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5302
    const-string p2, " "

    .line 5304
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 5305
    .local v0, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5306
    .local v1, "strLen":I
    sub-int v2, p1, v1

    .line 5307
    .local v2, "pads":I
    if-gtz v2, :cond_2

    .line 5308
    return-object p0

    .line 5310
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    const/16 v4, 0x2000

    if-gt v2, v4, :cond_3

    .line 5311
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {p0, p1, v3}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 5314
    :cond_3
    if-ne v2, v0, :cond_4

    .line 5315
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 5317
    :cond_4
    if-ge v2, v0, :cond_5

    .line 5318
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 5320
    :cond_5
    new-array v3, v2, [C

    .line 5321
    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 5322
    .local v4, "padChars":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_6

    .line 5323
    rem-int v6, v5, v0

    aget-char v6, v4, v6

    aput-char v6, v3, v5

    .line 5322
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5325
    .end local v5    # "i":I
    :cond_6
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static length(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5340
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 5363
    if-nez p0, :cond_0

    .line 5364
    const/4 v0, 0x0

    return-object v0

    .line 5366
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 5386
    if-nez p0, :cond_0

    .line 5387
    const/4 v0, 0x0

    return-object v0

    .line 5389
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I
    .locals 14
    .param p0, "first"    # Ljava/lang/CharSequence;
    .param p1, "second"    # Ljava/lang/CharSequence;

    .line 5395
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 5396
    move-object v0, p0

    .line 5397
    .local v0, "max":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "min":Ljava/lang/CharSequence;
    goto :goto_0

    .line 5399
    .end local v0    # "max":Ljava/lang/CharSequence;
    .end local v1    # "min":Ljava/lang/CharSequence;
    :cond_0
    move-object v0, p1

    .line 5400
    .restart local v0    # "max":Ljava/lang/CharSequence;
    move-object v1, p0

    .line 5402
    .restart local v1    # "min":Ljava/lang/CharSequence;
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5403
    .local v2, "range":I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    new-array v5, v5, [I

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lorg/apache/commons/lang3/ArrayFill;->fill([II)[I

    move-result-object v5

    .line 5404
    .local v5, "matchIndexes":[I
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    new-array v7, v7, [Z

    .line 5405
    .local v7, "matchFlags":[Z
    const/4 v8, 0x0

    .line 5406
    .local v8, "matches":I
    const/4 v9, 0x0

    .local v9, "mi":I
    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 5407
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 5408
    .local v10, "c1":C
    sub-int v11, v9, v2

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    .local v11, "xi":I
    add-int v12, v9, v2

    add-int/2addr v12, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .local v12, "xn":I
    :goto_2
    if-ge v11, v12, :cond_2

    .line 5409
    aget-boolean v13, v7, v11

    if-nez v13, :cond_1

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v10, v13, :cond_1

    .line 5410
    aput v11, v5, v9

    .line 5411
    aput-boolean v3, v7, v11

    .line 5412
    add-int/lit8 v8, v8, 0x1

    .line 5413
    goto :goto_3

    .line 5408
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 5406
    .end local v10    # "c1":C
    .end local v11    # "xi":I
    .end local v12    # "xn":I
    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 5417
    .end local v9    # "mi":I
    :cond_3
    new-array v3, v8, [C

    .line 5418
    .local v3, "ms1":[C
    new-array v4, v8, [C

    .line 5419
    .local v4, "ms2":[C
    const/4 v9, 0x0

    .local v9, "i":I
    const/4 v10, 0x0

    .local v10, "si":I
    :goto_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v9, v11, :cond_5

    .line 5420
    aget v11, v5, v9

    if-eq v11, v6, :cond_4

    .line 5421
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    aput-char v11, v3, v10

    .line 5422
    add-int/lit8 v10, v10, 0x1

    .line 5419
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 5425
    .end local v9    # "i":I
    .end local v10    # "si":I
    :cond_5
    const/4 v6, 0x0

    .local v6, "i":I
    const/4 v9, 0x0

    .local v9, "si":I
    :goto_5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v6, v10, :cond_7

    .line 5426
    aget-boolean v10, v7, v6

    if-eqz v10, :cond_6

    .line 5427
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    aput-char v10, v4, v9

    .line 5428
    add-int/lit8 v9, v9, 0x1

    .line 5425
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 5431
    .end local v6    # "i":I
    .end local v9    # "si":I
    :cond_7
    const/4 v6, 0x0

    .line 5432
    .local v6, "transpositions":I
    const/4 v9, 0x0

    .local v9, "mi":I
    :goto_6
    array-length v10, v3

    if-ge v9, v10, :cond_9

    .line 5433
    aget-char v10, v3, v9

    aget-char v11, v4, v9

    if-eq v10, v11, :cond_8

    .line 5434
    add-int/lit8 v6, v6, 0x1

    .line 5432
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 5437
    .end local v9    # "mi":I
    :cond_9
    const/4 v9, 0x0

    .line 5438
    .local v9, "prefix":I
    const/4 v10, 0x0

    .local v10, "mi":I
    :goto_7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v10, v11, :cond_b

    .line 5439
    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-eq v11, v12, :cond_a

    .line 5440
    goto :goto_8

    .line 5442
    :cond_a
    add-int/lit8 v9, v9, 0x1

    .line 5438
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 5444
    .end local v10    # "mi":I
    :cond_b
    :goto_8
    div-int/lit8 v10, v6, 0x2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    filled-new-array {v8, v10, v9, v11}, [I

    move-result-object v10

    return-object v10
.end method

.method public static mid(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "len"    # I

    .line 5473
    if-nez p0, :cond_0

    .line 5474
    const/4 v0, 0x0

    return-object v0

    .line 5476
    :cond_0
    if-ltz p2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 5479
    :cond_1
    if-gez p1, :cond_2

    .line 5480
    const/4 p1, 0x0

    .line 5482
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, p2

    if-gt v0, v1, :cond_3

    .line 5483
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5485
    :cond_3
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5477
    :cond_4
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static normalizeSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;

    .line 5531
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5532
    return-object p0

    .line 5534
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 5535
    .local v0, "size":I
    new-array v1, v0, [C

    .line 5536
    .local v1, "newChars":[C
    const/4 v2, 0x0

    .line 5537
    .local v2, "count":I
    const/4 v3, 0x0

    .line 5538
    .local v3, "whitespacesCount":I
    const/4 v4, 0x1

    .line 5539
    .local v4, "startWhitespaces":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x0

    if-ge v5, v0, :cond_4

    .line 5540
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 5541
    .local v7, "actualChar":C
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    .line 5542
    .local v8, "isWhitespace":Z
    if-eqz v8, :cond_2

    .line 5543
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 5544
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "count":I
    .local v9, "count":I
    const-string v10, " "

    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v1, v2

    move v2, v9

    .line 5546
    .end local v9    # "count":I
    .restart local v2    # "count":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5548
    :cond_2
    const/4 v4, 0x0

    .line 5549
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "count":I
    .local v6, "count":I
    const/16 v9, 0xa0

    if-ne v7, v9, :cond_3

    const/16 v9, 0x20

    goto :goto_1

    :cond_3
    move v9, v7

    :goto_1
    aput-char v9, v1, v2

    .line 5550
    const/4 v2, 0x0

    move v3, v2

    move v2, v6

    .line 5539
    .end local v6    # "count":I
    .end local v7    # "actualChar":C
    .end local v8    # "isWhitespace":Z
    .restart local v2    # "count":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5553
    .end local v5    # "i":I
    :cond_4
    if-eqz v4, :cond_5

    .line 5554
    const-string v5, ""

    return-object v5

    .line 5556
    :cond_5
    new-instance v5, Ljava/lang/String;

    if-lez v3, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    move v7, v6

    :goto_3
    sub-int v7, v2, v7

    invoke-direct {v5, v1, v6, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "ordinal"    # I

    .line 5610
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method private static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "ordinal"    # I
    .param p3, "lastIndex"    # Z

    .line 5629
    const/4 v0, -0x1

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    if-gtz p2, :cond_0

    goto :goto_2

    .line 5632
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 5633
    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5635
    :cond_2
    const/4 v1, 0x0

    .line 5638
    .local v1, "found":I
    if-eqz p3, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5640
    .local v0, "index":I
    :cond_3
    if-eqz p3, :cond_4

    .line 5641
    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, p1, v2}, Lorg/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_1

    .line 5643
    :cond_4
    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, p1, v2}, Lorg/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 5645
    :goto_1
    if-gez v0, :cond_5

    .line 5646
    return v0

    .line 5648
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 5649
    if-lt v1, p2, :cond_3

    .line 5650
    return v0

    .line 5630
    .end local v0    # "index":I
    .end local v1    # "found":I
    :cond_6
    :goto_2
    return v0
.end method

.method public static overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "overlay"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 5683
    if-nez p0, :cond_0

    .line 5684
    const/4 v0, 0x0

    return-object v0

    .line 5686
    :cond_0
    if-nez p1, :cond_1

    .line 5687
    const-string p1, ""

    .line 5689
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 5690
    .local v0, "len":I
    if-gez p2, :cond_2

    .line 5691
    const/4 p2, 0x0

    .line 5693
    :cond_2
    if-le p2, v0, :cond_3

    .line 5694
    move p2, v0

    .line 5696
    :cond_3
    if-gez p3, :cond_4

    .line 5697
    const/4 p3, 0x0

    .line 5699
    :cond_4
    if-le p3, v0, :cond_5

    .line 5700
    move p3, v0

    .line 5702
    :cond_5
    if-le p2, p3, :cond_6

    .line 5703
    move v1, p2

    .line 5704
    .local v1, "temp":I
    move p2, p3

    .line 5705
    move p3, v1

    .line 5707
    .end local v1    # "temp":I
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5709
    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5707
    return-object v1
.end method

.method private static varargs prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z
    .param p3, "prefixes"    # [Ljava/lang/CharSequence;

    .line 5724
    if-eqz p0, :cond_3

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5727
    :cond_0
    invoke-static {p3}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5728
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    .line 5729
    .local v2, "p":Ljava/lang/CharSequence;
    invoke-static {p0, v2, p2}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5730
    return-object p0

    .line 5728
    .end local v2    # "p":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5734
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5725
    :cond_3
    :goto_1
    return-object p0
.end method

.method public static varargs prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "prefixes"    # [Ljava/lang/CharSequence;

    .line 5772
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs prependIfMissingIgnoreCase(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "prefixes"    # [Ljava/lang/CharSequence;

    .line 5810
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/lang3/StringUtils;->prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static remove(Ljava/lang/String;C)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # C

    .line 5833
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 5836
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 5837
    .local v0, "chars":[C
    const/4 v1, 0x0

    .line 5838
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 5839
    aget-char v3, v0, v2

    if-eq v3, p1, :cond_1

    .line 5840
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pos":I
    .local v3, "pos":I
    aget-char v4, v0, v2

    aput-char v4, v0, v1

    move v1, v3

    .line 5838
    .end local v3    # "pos":I
    .restart local v1    # "pos":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5843
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 5834
    .end local v0    # "chars":[C
    .end local v1    # "pos":I
    :cond_3
    :goto_1
    return-object p0
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 5870
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5873
    :cond_0
    const-string v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5871
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static removeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5923
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RegExUtils;->removeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 5951
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5954
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5955
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5957
    :cond_1
    return-object p0

    .line 5952
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 5987
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5990
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5991
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5993
    :cond_1
    return-object p0

    .line 5988
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static removeFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6042
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 6077
    const-string v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6113
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RegExUtils;->removePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeStart(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # C

    .line 6140
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6141
    return-object p0

    .line 6143
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 6171
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6174
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6175
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6177
    :cond_1
    return-object p0

    .line 6172
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 6206
    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6207
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6209
    :cond_0
    return-object p0
.end method

.method public static repeat(CI)Ljava/lang/String;
    .locals 2
    .param p0, "ch"    # C
    .param p1, "repeat"    # I

    .line 6235
    if-gtz p1, :cond_0

    .line 6236
    const-string v0, ""

    return-object v0

    .line 6238
    :cond_0
    new-instance v0, Ljava/lang/String;

    new-array v1, p1, [C

    invoke-static {v1, p0}, Lorg/apache/commons/lang3/ArrayFill;->fill([CC)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "repeat"    # I

    .line 6261
    if-nez p0, :cond_0

    .line 6262
    const/4 v0, 0x0

    return-object v0

    .line 6264
    :cond_0
    if-gtz p1, :cond_1

    .line 6265
    const-string v0, ""

    return-object v0

    .line 6267
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 6268
    .local v0, "inputLength":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    if-nez v0, :cond_2

    goto :goto_2

    .line 6271
    :cond_2
    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    const/16 v3, 0x2000

    if-gt p1, v3, :cond_3

    .line 6272
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p1}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6275
    :cond_3
    mul-int v3, v0, p1

    .line 6276
    .local v3, "outputLength":I
    packed-switch v0, :pswitch_data_0

    .line 6289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6290
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    goto :goto_1

    .line 6280
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :pswitch_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 6281
    .local v2, "ch0":C
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 6282
    .local v1, "ch1":C
    new-array v4, v3, [C

    .line 6283
    .local v4, "output2":[C
    mul-int/lit8 v5, p1, 0x2

    add-int/lit8 v5, v5, -0x2

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_4

    .line 6284
    aput-char v2, v4, v5

    .line 6285
    add-int/lit8 v6, v5, 0x1

    aput-char v1, v4, v6

    .line 6283
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 6287
    .end local v5    # "i":I
    :cond_4
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 6278
    .end local v1    # "ch1":C
    .end local v2    # "ch0":C
    .end local v4    # "output2":[C
    :pswitch_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p1}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6290
    .local v1, "buf":Ljava/lang/StringBuilder;
    .local v2, "i":I
    :goto_1
    if-ge v2, p1, :cond_5

    .line 6291
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6290
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6293
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 6269
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "outputLength":I
    :cond_6
    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "repeat"    # I

    .line 6318
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6322
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6323
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6319
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {p0, p2}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 6350
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "max"    # I

    .line 6382
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "max"    # I
    .param p4, "ignoreCase"    # Z

    .line 6417
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p2, :cond_8

    if-nez p3, :cond_0

    goto :goto_5

    .line 6420
    :cond_0
    if-eqz p4, :cond_1

    .line 6421
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 6423
    :cond_1
    const/4 v0, 0x0

    .line 6424
    .local v0, "start":I
    if-eqz p4, :cond_2

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    .line 6425
    .local v1, "end":I
    :goto_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 6426
    return-object p0

    .line 6428
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 6429
    .local v3, "replLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 6430
    .local v4, "increase":I
    if-gez p3, :cond_4

    const/16 v5, 0x10

    goto :goto_1

    :cond_4
    const/16 v5, 0x40

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_1
    mul-int/2addr v4, v5

    .line 6431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6432
    .local v5, "buf":Ljava/lang/StringBuilder;
    :goto_2
    if-eq v1, v2, :cond_7

    .line 6433
    invoke-virtual {v5, p0, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6434
    add-int v0, v1, v3

    .line 6435
    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_5

    .line 6436
    goto :goto_4

    .line 6438
    :cond_5
    if-eqz p4, :cond_6

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v6

    goto :goto_3

    :cond_6
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v6

    :goto_3
    move v1, v6

    goto :goto_2

    .line 6440
    :cond_7
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5, p0, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 6441
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 6418
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v3    # "replLength":I
    .end local v4    # "increase":I
    .end local v5    # "buf":Ljava/lang/StringBuilder;
    :cond_8
    :goto_5
    return-object p0
.end method

.method public static replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6496
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/RegExUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceChars(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C
    .param p2, "replaceChar"    # C

    .line 6520
    if-nez p0, :cond_0

    .line 6521
    const/4 v0, 0x0

    return-object v0

    .line 6523
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;
    .param p2, "replaceChars"    # Ljava/lang/String;

    .line 6563
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 6566
    :cond_0
    if-nez p2, :cond_1

    .line 6567
    const-string p2, ""

    .line 6569
    :cond_1
    const/4 v0, 0x0

    .line 6570
    .local v0, "modified":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 6571
    .local v1, "replaceCharsLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 6572
    .local v2, "strLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6573
    .local v3, "buf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 6574
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 6575
    .local v5, "ch":C
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 6576
    .local v6, "index":I
    if-ltz v6, :cond_2

    .line 6577
    const/4 v0, 0x1

    .line 6578
    if-ge v6, v1, :cond_3

    .line 6579
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6582
    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6573
    .end local v5    # "ch":C
    .end local v6    # "index":I
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6585
    .end local v4    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 6586
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 6588
    :cond_5
    return-object p0

    .line 6564
    .end local v0    # "modified":Z
    .end local v1    # "replaceCharsLength":I
    .end local v2    # "strLength":I
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    :cond_6
    :goto_2
    return-object p0
.end method

.method public static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .line 6629
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 17
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;
    .param p3, "repeat"    # Z
    .param p4, "timeToLive"    # I

    .line 6687
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    if-gez v4, :cond_1

    .line 6688
    new-instance v5, Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6689
    .local v5, "searchSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6690
    .local v6, "replacementSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5, v6}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 6691
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 6692
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Aborting to protect against StackOverflowError - output of one loop is the input of another"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 6697
    .end local v5    # "searchSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "replacementSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_2

    if-ne v4, v6, :cond_2

    goto/16 :goto_a

    .line 6701
    :cond_2
    array-length v5, v1

    .line 6702
    .local v5, "searchLength":I
    array-length v7, v2

    .line 6705
    .local v7, "replacementLength":I
    if-ne v5, v7, :cond_16

    .line 6713
    new-array v8, v5, [Z

    .line 6716
    .local v8, "noMoreMatchesForReplIndex":[Z
    const/4 v9, -0x1

    .line 6717
    .local v9, "textIndex":I
    const/4 v10, -0x1

    .line 6722
    .local v10, "replaceIndex":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    const/4 v12, 0x1

    if-ge v11, v5, :cond_7

    .line 6723
    aget-boolean v13, v8, v11

    if-nez v13, :cond_6

    aget-object v13, v1, v11

    invoke-static {v13}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    aget-object v13, v2, v11

    if-nez v13, :cond_3

    .line 6724
    goto :goto_2

    .line 6726
    :cond_3
    aget-object v13, v1, v11

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 6729
    .local v13, "tempIndex":I
    if-ne v13, v6, :cond_4

    .line 6730
    aput-boolean v12, v8, v11

    goto :goto_2

    .line 6731
    :cond_4
    if-eq v9, v6, :cond_5

    if-ge v13, v9, :cond_6

    .line 6732
    :cond_5
    move v9, v13

    .line 6733
    move v10, v11

    .line 6722
    .end local v13    # "tempIndex":I
    :cond_6
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 6739
    .end local v11    # "i":I
    :cond_7
    if-ne v9, v6, :cond_8

    .line 6740
    return-object v0

    .line 6743
    :cond_8
    const/4 v11, 0x0

    .line 6746
    .local v11, "start":I
    const/4 v13, 0x0

    .line 6749
    .local v13, "increase":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    array-length v15, v1

    if-ge v14, v15, :cond_b

    .line 6750
    aget-object v15, v1, v14

    if-eqz v15, :cond_a

    aget-object v15, v2, v14

    if-nez v15, :cond_9

    .line 6751
    goto :goto_4

    .line 6753
    :cond_9
    aget-object v15, v2, v14

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    aget-object v16, v1, v14

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    sub-int v15, v15, v16

    .line 6754
    .local v15, "greater":I
    if-lez v15, :cond_a

    .line 6755
    mul-int/lit8 v16, v15, 0x3

    add-int v13, v13, v16

    .line 6749
    .end local v15    # "greater":I
    :cond_a
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 6759
    .end local v14    # "i":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    div-int/lit8 v14, v14, 0x5

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 6761
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v13

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6763
    .local v14, "buf":Ljava/lang/StringBuilder;
    :goto_5
    if-eq v9, v6, :cond_13

    .line 6765
    move v15, v11

    .local v15, "i":I
    :goto_6
    if-ge v15, v9, :cond_c

    .line 6766
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6765
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x1

    goto :goto_6

    .line 6768
    .end local v15    # "i":I
    :cond_c
    aget-object v12, v2, v10

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6770
    aget-object v12, v1, v10

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int v11, v9, v12

    .line 6772
    const/4 v9, -0x1

    .line 6773
    const/4 v10, -0x1

    .line 6776
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_7
    if-ge v12, v5, :cond_12

    .line 6777
    aget-boolean v15, v8, v12

    if-nez v15, :cond_10

    aget-object v15, v1, v12

    invoke-static {v15}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_10

    aget-object v15, v2, v12

    if-nez v15, :cond_d

    .line 6778
    const/16 v16, 0x1

    goto :goto_8

    .line 6780
    :cond_d
    aget-object v15, v1, v12

    invoke-virtual {v0, v15, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v15

    .line 6783
    .local v15, "tempIndex":I
    if-ne v15, v6, :cond_e

    .line 6784
    const/16 v16, 0x1

    aput-boolean v16, v8, v12

    goto :goto_8

    .line 6785
    :cond_e
    const/16 v16, 0x1

    if-eq v9, v6, :cond_f

    if-ge v15, v9, :cond_11

    .line 6786
    :cond_f
    move v9, v15

    .line 6787
    move v10, v12

    goto :goto_8

    .line 6777
    .end local v15    # "tempIndex":I
    :cond_10
    const/16 v16, 0x1

    .line 6776
    :cond_11
    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_12
    const/16 v16, 0x1

    move/from16 v12, v16

    .end local v12    # "i":I
    goto :goto_5

    .line 6793
    :cond_13
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 6794
    .local v6, "textLength":I
    move v12, v11

    .restart local v12    # "i":I
    :goto_9
    if-ge v12, v6, :cond_14

    .line 6795
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6794
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 6797
    .end local v12    # "i":I
    :cond_14
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 6798
    .local v12, "result":Ljava/lang/String;
    if-nez v3, :cond_15

    .line 6799
    return-object v12

    .line 6802
    :cond_15
    add-int/lit8 v15, v4, -0x1

    invoke-static {v12, v1, v2, v3, v15}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v15

    return-object v15

    .line 6706
    .end local v6    # "textLength":I
    .end local v8    # "noMoreMatchesForReplIndex":[Z
    .end local v9    # "textIndex":I
    .end local v10    # "replaceIndex":I
    .end local v11    # "start":I
    .end local v12    # "result":Ljava/lang/String;
    .end local v13    # "increase":I
    .end local v14    # "buf":Ljava/lang/StringBuilder;
    :cond_16
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Search and Replace array lengths don\'t match: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " vs "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 6698
    .end local v5    # "searchLength":I
    .end local v7    # "replacementLength":I
    :cond_17
    :goto_a
    return-object v0
.end method

.method public static replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .line 6846
    const/4 v0, 0x1

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6899
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/RegExUtils;->replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 6927
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "max"    # I

    .line 6960
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 6987
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceOnceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 7016
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replacePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7062
    invoke-static {p0, p1, p2}, Lorg/apache/commons/lang3/RegExUtils;->replacePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 7080
    if-nez p0, :cond_0

    .line 7081
    const/4 v0, 0x0

    return-object v0

    .line 7083
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 7106
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 7107
    .local v0, "strs":[Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->reverse([Ljava/lang/Object;)V

    .line 7108
    invoke-static {v0, p1}, Lorg/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static right(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 7132
    if-nez p0, :cond_0

    .line 7133
    const/4 v0, 0x0

    return-object v0

    .line 7135
    :cond_0
    if-gez p1, :cond_1

    .line 7136
    const-string v0, ""

    return-object v0

    .line 7138
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_2

    .line 7139
    return-object p0

    .line 7141
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 7164
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 7189
    if-nez p0, :cond_0

    .line 7190
    const/4 v0, 0x0

    return-object v0

    .line 7192
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 7193
    .local v0, "pads":I
    if-gtz v0, :cond_1

    .line 7194
    return-object p0

    .line 7196
    :cond_1
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 7197
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 7199
    :cond_2
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 7226
    if-nez p0, :cond_0

    .line 7227
    const/4 v0, 0x0

    return-object v0

    .line 7229
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7230
    const-string p2, " "

    .line 7232
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 7233
    .local v0, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 7234
    .local v1, "strLen":I
    sub-int v2, p1, v1

    .line 7235
    .local v2, "pads":I
    if-gtz v2, :cond_2

    .line 7236
    return-object p0

    .line 7238
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    const/16 v4, 0x2000

    if-gt v2, v4, :cond_3

    .line 7239
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {p0, p1, v3}, Lorg/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 7242
    :cond_3
    if-ne v2, v0, :cond_4

    .line 7243
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 7245
    :cond_4
    if-ge v2, v0, :cond_5

    .line 7246
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 7248
    :cond_5
    new-array v3, v2, [C

    .line 7249
    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 7250
    .local v4, "padChars":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_6

    .line 7251
    rem-int v6, v5, v0

    aget-char v6, v4, v6

    aput-char v6, v3, v5

    .line 7250
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7253
    .end local v5    # "i":I
    :cond_6
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static rotate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "shift"    # I

    .line 7283
    if-nez p0, :cond_0

    .line 7284
    const/4 v0, 0x0

    return-object v0

    .line 7287
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 7288
    .local v0, "strLen":I
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    rem-int v1, p1, v0

    if-nez v1, :cond_1

    goto :goto_0

    .line 7292
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7293
    .local v1, "builder":Ljava/lang/StringBuilder;
    rem-int v2, p1, v0

    neg-int v2, v2

    .line 7294
    .local v2, "offset":I
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7295
    const/4 v3, 0x0

    invoke-static {p0, v3, v2}, Lorg/apache/commons/lang3/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 7289
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "offset":I
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 7322
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 7350
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .line 7379
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 7413
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 7436
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "camelCase"    # Z

    .line 7454
    if-nez p0, :cond_0

    .line 7455
    const/4 v0, 0x0

    return-object v0

    .line 7457
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7458
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 7460
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 7461
    .local v0, "c":[C
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7462
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 7463
    .local v2, "tokenStart":I
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v3

    .line 7464
    .local v3, "currentType":I
    add-int/lit8 v4, v2, 0x1

    .local v4, "pos":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 7465
    aget-char v5, v0, v4

    invoke-static {v5}, Ljava/lang/Character;->getType(C)I

    move-result v5

    .line 7466
    .local v5, "type":I
    if-ne v5, v3, :cond_2

    .line 7467
    goto :goto_2

    .line 7469
    :cond_2
    if-eqz p1, :cond_4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    const/4 v6, 0x1

    if-ne v3, v6, :cond_4

    .line 7470
    add-int/lit8 v6, v4, -0x1

    .line 7471
    .local v6, "newTokenStart":I
    if-eq v6, v2, :cond_3

    .line 7472
    new-instance v7, Ljava/lang/String;

    sub-int v8, v6, v2

    invoke-direct {v7, v0, v2, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7473
    move v2, v6

    .line 7475
    .end local v6    # "newTokenStart":I
    :cond_3
    goto :goto_1

    .line 7476
    :cond_4
    new-instance v6, Ljava/lang/String;

    sub-int v7, v4, v2

    invoke-direct {v6, v0, v2, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7477
    move v2, v4

    .line 7479
    :goto_1
    move v3, v5

    .line 7464
    .end local v5    # "type":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7481
    .end local v4    # "pos":I
    :cond_5
    new-instance v4, Ljava/lang/String;

    array-length v5, v0

    sub-int/2addr v5, v2

    invoke-direct {v4, v0, v2, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7482
    sget-object v4, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public static splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 7510
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 7537
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 7568
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 7597
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 7630
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .line 7649
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 7650
    return-object v0

    .line 7653
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 7655
    .local v1, "len":I
    if-nez v1, :cond_1

    .line 7656
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 7659
    :cond_1
    if-eqz p1, :cond_9

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 7664
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 7666
    .local v0, "separatorLength":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7667
    .local v3, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 7668
    .local v4, "numberOfSubstrings":I
    const/4 v5, 0x0

    .line 7669
    .local v5, "beg":I
    const/4 v6, 0x0

    .line 7670
    .local v6, "end":I
    :goto_0
    if-ge v6, v1, :cond_8

    .line 7671
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 7673
    const/4 v7, -0x1

    if-le v6, v7, :cond_7

    .line 7674
    if-le v6, v5, :cond_4

    .line 7675
    add-int/lit8 v4, v4, 0x1

    .line 7677
    if-ne v4, p2, :cond_3

    .line 7678
    move v6, v1

    .line 7679
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7683
    :cond_3
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7688
    add-int v5, v6, v0

    goto :goto_0

    .line 7692
    :cond_4
    if-eqz p3, :cond_6

    .line 7693
    add-int/lit8 v4, v4, 0x1

    .line 7694
    if-ne v4, p2, :cond_5

    .line 7695
    move v6, v1

    .line 7696
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7698
    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7701
    :cond_6
    :goto_1
    add-int v5, v6, v0

    goto :goto_0

    .line 7705
    :cond_7
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7706
    move v6, v1

    goto :goto_0

    .line 7710
    :cond_8
    sget-object v2, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 7661
    .end local v0    # "separatorLength":I
    .end local v3    # "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "numberOfSubstrings":I
    .end local v5    # "beg":I
    .end local v6    # "end":I
    :cond_9
    :goto_2
    invoke-static {p0, v0, p2, p3}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 7738
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 7774
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .line 7811
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 7851
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C
    .param p2, "preserveAllTokens"    # Z

    .line 7868
    if-nez p0, :cond_0

    .line 7869
    const/4 v0, 0x0

    return-object v0

    .line 7871
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 7872
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 7873
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v1

    .line 7875
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7876
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 7877
    .local v2, "i":I
    const/4 v3, 0x0

    .line 7878
    .local v3, "start":I
    const/4 v4, 0x0

    .line 7879
    .local v4, "match":Z
    const/4 v5, 0x0

    .line 7880
    .local v5, "lastMatch":Z
    :goto_0
    if-ge v2, v0, :cond_5

    .line 7881
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_4

    .line 7882
    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    .line 7883
    :cond_2
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7884
    const/4 v4, 0x0

    .line 7885
    const/4 v5, 0x1

    .line 7887
    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 7888
    goto :goto_0

    .line 7890
    :cond_4
    const/4 v5, 0x0

    .line 7891
    const/4 v4, 0x1

    .line 7892
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7894
    :cond_5
    if-nez v4, :cond_6

    if-eqz p2, :cond_7

    if-eqz v5, :cond_7

    .line 7895
    :cond_6
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7897
    :cond_7
    sget-object v6, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method private static splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .line 7919
    if-nez p0, :cond_0

    .line 7920
    const/4 v0, 0x0

    return-object v0

    .line 7922
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 7923
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 7924
    sget-object v1, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v1

    .line 7926
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7927
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 7928
    .local v2, "sizePlus1":I
    const/4 v3, 0x0

    .line 7929
    .local v3, "i":I
    const/4 v4, 0x0

    .line 7930
    .local v4, "start":I
    const/4 v5, 0x0

    .line 7931
    .local v5, "match":Z
    const/4 v6, 0x0

    .line 7932
    .local v6, "lastMatch":Z
    const/4 v7, 0x1

    if-nez p1, :cond_6

    .line 7934
    :goto_0
    if-ge v3, v0, :cond_11

    .line 7935
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 7936
    if-nez v5, :cond_2

    if-eqz p3, :cond_4

    .line 7937
    :cond_2
    const/4 v6, 0x1

    .line 7938
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "sizePlus1":I
    .local v8, "sizePlus1":I
    if-ne v2, p2, :cond_3

    .line 7939
    move v2, v0

    .line 7940
    .end local v3    # "i":I
    .local v2, "i":I
    const/4 v6, 0x0

    move v3, v2

    .line 7942
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_3
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7943
    const/4 v2, 0x0

    move v5, v2

    move v2, v8

    .line 7945
    .end local v8    # "sizePlus1":I
    .local v2, "sizePlus1":I
    :cond_4
    add-int/2addr v3, v7

    move v4, v3

    .line 7946
    goto :goto_0

    .line 7948
    :cond_5
    const/4 v6, 0x0

    .line 7949
    const/4 v5, 0x1

    .line 7950
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7952
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v7, :cond_c

    .line 7954
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 7955
    .local v8, "sep":C
    :goto_1
    if-ge v3, v0, :cond_b

    .line 7956
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_a

    .line 7957
    if-nez v5, :cond_7

    if-eqz p3, :cond_9

    .line 7958
    :cond_7
    const/4 v6, 0x1

    .line 7959
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "sizePlus1":I
    .local v9, "sizePlus1":I
    if-ne v2, p2, :cond_8

    .line 7960
    move v2, v0

    .line 7961
    .end local v3    # "i":I
    .local v2, "i":I
    const/4 v6, 0x0

    move v3, v2

    .line 7963
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_8
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7964
    const/4 v2, 0x0

    move v5, v2

    move v2, v9

    .line 7966
    .end local v9    # "sizePlus1":I
    .local v2, "sizePlus1":I
    :cond_9
    add-int/2addr v3, v7

    move v4, v3

    .line 7967
    goto :goto_1

    .line 7969
    :cond_a
    const/4 v6, 0x0

    .line 7970
    const/4 v5, 0x1

    .line 7971
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7973
    .end local v8    # "sep":C
    :cond_b
    goto :goto_3

    .line 7975
    :cond_c
    :goto_2
    if-ge v3, v0, :cond_11

    .line 7976
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_10

    .line 7977
    if-nez v5, :cond_d

    if-eqz p3, :cond_f

    .line 7978
    :cond_d
    const/4 v6, 0x1

    .line 7979
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "sizePlus1":I
    .local v8, "sizePlus1":I
    if-ne v2, p2, :cond_e

    .line 7980
    move v2, v0

    .line 7981
    .end local v3    # "i":I
    .local v2, "i":I
    const/4 v6, 0x0

    move v3, v2

    .line 7983
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_e
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7984
    const/4 v2, 0x0

    move v5, v2

    move v2, v8

    .line 7986
    .end local v8    # "sizePlus1":I
    .local v2, "sizePlus1":I
    :cond_f
    add-int/2addr v3, v7

    move v4, v3

    .line 7987
    goto :goto_2

    .line 7989
    :cond_10
    const/4 v6, 0x0

    .line 7990
    const/4 v5, 0x1

    .line 7991
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 7994
    :cond_11
    :goto_3
    if-nez v5, :cond_12

    if-eqz p3, :cond_13

    if-eqz v6, :cond_13

    .line 7995
    :cond_12
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7997
    :cond_13
    sget-object v7, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method

.method public static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .line 8023
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 8
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z

    .line 8038
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 8042
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 8043
    .local v7, "preLen":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v7, v1, :cond_1

    .line 8044
    return v0

    .line 8046
    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p2

    move-object v4, p1

    move v6, v7

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    return v0

    .line 8039
    .end local v7    # "preLen":I
    :cond_2
    :goto_0
    if-ne p0, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static varargs startsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .line 8072
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 8075
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 8076
    .local v3, "searchString":Ljava/lang/CharSequence;
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8077
    const/4 v0, 0x1

    return v0

    .line 8075
    .end local v3    # "searchString":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8080
    :cond_2
    return v1

    .line 8073
    :cond_3
    :goto_1
    return v1
.end method

.method public static startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .line 8106
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 8132
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 8162
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8163
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAccents(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .line 8186
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8187
    return-object p0

    .line 8189
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8190
    .local v0, "decomposed":Ljava/lang/StringBuilder;
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->convertRemainingAccentCharacters(Ljava/lang/StringBuilder;)V

    .line 8191
    sget-object v1, Lorg/apache/commons/lang3/StringUtils;->STRIP_ACCENTS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs stripAll([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "strs"    # [Ljava/lang/String;

    .line 8214
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "strs"    # [Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 8243
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 8244
    .local v0, "strsLen":I
    if-nez v0, :cond_0

    .line 8245
    return-object p0

    .line 8247
    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    .line 8248
    .local v1, "newArr":[Ljava/lang/String;
    new-instance v2, Lorg/apache/commons/lang3/StringUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/apache/commons/lang3/StringUtils$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 8249
    return-object v1
.end method

.method public static stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 8278
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 8279
    .local v0, "end":I
    if-nez v0, :cond_0

    .line 8280
    return-object p0

    .line 8283
    :cond_0
    if-nez p1, :cond_1

    .line 8284
    :goto_0
    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8285
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8287
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8288
    return-object p0

    .line 8290
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 8291
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 8294
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 8322
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 8323
    .local v0, "strLen":I
    if-nez v0, :cond_0

    .line 8324
    return-object p0

    .line 8326
    :cond_0
    const/4 v1, 0x0

    .line 8327
    .local v1, "start":I
    if-nez p1, :cond_1

    .line 8328
    :goto_0
    if-eq v1, v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8329
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8331
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8332
    return-object p0

    .line 8334
    :cond_2
    :goto_1
    if-eq v1, v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 8335
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8338
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static stripToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 8364
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stripToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 8391
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 8392
    return-object v0

    .line 8394
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8395
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I

    .line 8423
    if-nez p0, :cond_0

    .line 8424
    const/4 v0, 0x0

    return-object v0

    .line 8428
    :cond_0
    if-gez p1, :cond_1

    .line 8429
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 8432
    :cond_1
    if-gez p1, :cond_2

    .line 8433
    const/4 p1, 0x0

    .line 8435
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_3

    .line 8436
    const-string v0, ""

    return-object v0

    .line 8439
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 8478
    if-nez p0, :cond_0

    .line 8479
    const/4 v0, 0x0

    return-object v0

    .line 8483
    :cond_0
    if-gez p2, :cond_1

    .line 8484
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    .line 8486
    :cond_1
    if-gez p1, :cond_2

    .line 8487
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 8491
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 8492
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 8496
    :cond_3
    if-le p1, p2, :cond_4

    .line 8497
    const-string v0, ""

    return-object v0

    .line 8500
    :cond_4
    if-gez p1, :cond_5

    .line 8501
    const/4 p1, 0x0

    .line 8503
    :cond_5
    if-gez p2, :cond_6

    .line 8504
    const/4 p2, 0x0

    .line 8507
    :cond_6
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringAfter(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # I

    .line 8536
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8537
    return-object p0

    .line 8539
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 8540
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 8541
    const-string v1, ""

    return-object v1

    .line 8543
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 8575
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8576
    return-object p0

    .line 8578
    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    .line 8579
    return-object v0

    .line 8581
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 8582
    .local v1, "pos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 8583
    return-object v0

    .line 8585
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringAfterLast(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # I

    .line 8615
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8616
    return-object p0

    .line 8618
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 8619
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 8622
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 8620
    :cond_2
    :goto_0
    const-string v1, ""

    return-object v1
.end method

.method public static substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 8655
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8656
    return-object p0

    .line 8658
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 8659
    return-object v1

    .line 8661
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 8662
    .local v0, "pos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 8665
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 8663
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static substringBefore(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # I

    .line 8694
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8695
    return-object p0

    .line 8697
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 8698
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 8699
    return-object p0

    .line 8701
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 8732
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 8735
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8736
    const-string v0, ""

    return-object v0

    .line 8738
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 8739
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 8740
    return-object p0

    .line 8742
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 8733
    .end local v0    # "pos":I
    :cond_3
    :goto_0
    return-object p0
.end method

.method public static substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 8773
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8776
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 8777
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 8778
    return-object p0

    .line 8780
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 8774
    .end local v0    # "pos":I
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .line 8805
    invoke-static {p0, p1, p1}, Lorg/apache/commons/lang3/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .line 8836
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ObjectUtils;->allNotNull([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8837
    return-object v1

    .line 8839
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 8840
    .local v0, "start":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 8841
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 8842
    .local v3, "end":I
    if-eq v3, v2, :cond_1

    .line 8843
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 8846
    .end local v3    # "end":I
    :cond_1
    return-object v1
.end method

.method public static substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .line 8872
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 8875
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 8876
    .local v1, "strLen":I
    if-nez v1, :cond_1

    .line 8877
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 8879
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 8880
    .local v2, "closeLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 8881
    .local v3, "openLen":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8882
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 8883
    .local v5, "pos":I
    :goto_0
    sub-int v6, v1, v2

    if-ge v5, v6, :cond_4

    .line 8884
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 8885
    .local v6, "start":I
    if-gez v6, :cond_2

    .line 8886
    goto :goto_1

    .line 8888
    :cond_2
    add-int/2addr v6, v3

    .line 8889
    invoke-virtual {p0, p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 8890
    .local v7, "end":I
    if-gez v7, :cond_3

    .line 8891
    goto :goto_1

    .line 8893
    :cond_3
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8894
    add-int v5, v7, v2

    .line 8895
    .end local v6    # "start":I
    .end local v7    # "end":I
    goto :goto_0

    .line 8896
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 8897
    return-object v0

    .line 8899
    :cond_5
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 8873
    .end local v1    # "strLen":I
    .end local v2    # "closeLen":I
    .end local v3    # "openLen":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "pos":I
    :cond_6
    :goto_2
    return-object v0
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .line 8930
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8931
    return-object p0

    .line 8934
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 8935
    .local v0, "strLen":I
    new-array v1, v0, [I

    .line 8936
    .local v1, "newCodePoints":[I
    const/4 v2, 0x0

    .line 8937
    .local v2, "outOffset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 8938
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 8940
    .local v4, "oldCodepoint":I
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 8942
    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8943
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v5

    .local v5, "newCodePoint":I
    goto :goto_2

    .line 8945
    .end local v5    # "newCodePoint":I
    :cond_2
    move v5, v4

    .restart local v5    # "newCodePoint":I
    goto :goto_2

    .line 8941
    .end local v5    # "newCodePoint":I
    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    .line 8947
    .restart local v5    # "newCodePoint":I
    :goto_2
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outOffset":I
    .local v6, "outOffset":I
    aput v5, v1, v2

    .line 8948
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v3, v2

    .line 8949
    .end local v4    # "oldCodepoint":I
    .end local v5    # "newCodePoint":I
    move v2, v6

    goto :goto_0

    .line 8950
    .end local v3    # "i":I
    .end local v6    # "outOffset":I
    .restart local v2    # "outOffset":I
    :cond_4
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([III)V

    return-object v3
.end method

.method public static toCodePoints(Ljava/lang/CharSequence;)[I
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 8970
    if-nez p0, :cond_0

    .line 8971
    const/4 v0, 0x0

    return-object v0

    .line 8973
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 8974
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v0

    .line 8977
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8978
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    new-array v1, v1, [I

    .line 8979
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 8980
    .local v2, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 8981
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    aput v4, v1, v3

    .line 8982
    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 8980
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8984
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method public static toEncodedString([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 9001
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/lang3/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static toRootLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    .line 9012
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static toRootUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    .line 9023
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9043
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/lang3/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static toStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 9047
    const-string v0, ""

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 9074
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 9099
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 9125
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9126
    .local v0, "ts":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static truncate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I

    .line 9162
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/commons/lang3/StringUtils;->truncate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static truncate(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "maxWidth"    # I

    .line 9226
    if-ltz p1, :cond_4

    .line 9229
    if-ltz p2, :cond_3

    .line 9232
    if-nez p0, :cond_0

    .line 9233
    const/4 v0, 0x0

    return-object v0

    .line 9235
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 9236
    const-string v0, ""

    return-object v0

    .line 9238
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 9239
    add-int v0, p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 9240
    .local v0, "ix":I
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 9242
    .end local v0    # "ix":I
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9230
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxWith cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9227
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .line 9267
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 9268
    .local v0, "strLen":I
    if-nez v0, :cond_0

    .line 9269
    return-object p0

    .line 9272
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 9273
    .local v2, "firstCodePoint":I
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v3

    .line 9274
    .local v3, "newCodePoint":I
    if-ne v2, v3, :cond_1

    .line 9276
    return-object p0

    .line 9279
    :cond_1
    new-array v4, v0, [I

    .line 9280
    .local v4, "newCodePoints":[I
    const/4 v5, 0x0

    .line 9281
    .local v5, "outOffset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outOffset":I
    .local v6, "outOffset":I
    aput v3, v4, v5

    .line 9282
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .local v5, "inOffset":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 9283
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 9284
    .local v7, "codePoint":I
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "outOffset":I
    .local v8, "outOffset":I
    aput v7, v4, v6

    .line 9285
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 9286
    .end local v7    # "codePoint":I
    move v6, v8

    goto :goto_0

    .line 9287
    .end local v5    # "inOffset":I
    .end local v8    # "outOffset":I
    .restart local v6    # "outOffset":I
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v1, v6}, Ljava/lang/String;-><init>([III)V

    return-object v5
.end method

.method public static unwrap(Ljava/lang/String;C)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapChar"    # C

    .line 9315
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 9319
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_1

    .line 9320
    const/4 v0, 0x0

    .line 9321
    .local v0, "startIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    .line 9323
    .local v2, "endIndex":I
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 9326
    .end local v0    # "startIndex":I
    .end local v2    # "endIndex":I
    :cond_1
    return-object p0

    .line 9316
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static unwrap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapToken"    # Ljava/lang/String;

    .line 9355
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 9359
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9360
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9363
    :cond_1
    return-object p0

    .line 9356
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static upperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 9386
    if-nez p0, :cond_0

    .line 9387
    const/4 v0, 0x0

    return-object v0

    .line 9389
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 9409
    if-nez p0, :cond_0

    .line 9410
    const/4 v0, 0x0

    return-object v0

    .line 9412
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf([C)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # [C

    .line 9424
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static wrap(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapWith"    # C

    .line 9448
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 9452
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9449
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static wrap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapWith"    # Ljava/lang/String;

    .line 9484
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9488
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9485
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static wrapIfMissing(Ljava/lang/String;C)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapWith"    # C

    .line 9517
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 9520
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    if-eq v1, p1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 9521
    .local v1, "wrapStart":Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, p1, :cond_2

    move v0, v2

    .line 9522
    .local v0, "wrapEnd":Z
    :cond_2
    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 9523
    return-object p0

    .line 9526
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9527
    .local v2, "builder":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_4

    .line 9528
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9530
    :cond_4
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9531
    if-eqz v0, :cond_5

    .line 9532
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9534
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 9518
    .end local v0    # "wrapEnd":Z
    .end local v1    # "wrapStart":Z
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_6
    :goto_1
    return-object p0
.end method

.method public static wrapIfMissing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapWith"    # Ljava/lang/String;

    .line 9567
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9571
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 9572
    .local v0, "wrapStart":Z
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 9573
    .local v1, "wrapEnd":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 9574
    return-object p0

    .line 9577
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9578
    .local v2, "builder":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_2

    .line 9579
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9581
    :cond_2
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9582
    if-eqz v1, :cond_3

    .line 9583
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9585
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 9568
    .end local v0    # "wrapStart":Z
    .end local v1    # "wrapEnd":Z
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    :goto_0
    return-object p0
.end method
