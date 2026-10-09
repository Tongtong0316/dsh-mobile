.class public Lorg/apache/commons/codec/language/ColognePhonetic;
.super Ljava/lang/Object;
.source "ColognePhonetic.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;,
        Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;,
        Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;
    }
.end annotation


# static fields
.field private static final AEIJOUY:[C

.field private static final AHKLOQRUX:[C

.field private static final AHKOQUX:[C

.field private static final CHAR_IGNORE:C = '-'

.field private static final CKQ:[C

.field private static final CSZ:[C

.field private static final DTX:[C

.field private static final FPVW:[C

.field private static final GKQ:[C

.field private static final SZ:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 279
    const/4 v0, 0x7

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/commons/codec/language/ColognePhonetic;->AEIJOUY:[C

    .line 280
    const/4 v1, 0x3

    new-array v2, v1, [C

    fill-array-data v2, :array_1

    sput-object v2, Lorg/apache/commons/codec/language/ColognePhonetic;->CSZ:[C

    .line 281
    const/4 v2, 0x4

    new-array v2, v2, [C

    fill-array-data v2, :array_2

    sput-object v2, Lorg/apache/commons/codec/language/ColognePhonetic;->FPVW:[C

    .line 282
    new-array v2, v1, [C

    fill-array-data v2, :array_3

    sput-object v2, Lorg/apache/commons/codec/language/ColognePhonetic;->GKQ:[C

    .line 283
    new-array v2, v1, [C

    fill-array-data v2, :array_4

    sput-object v2, Lorg/apache/commons/codec/language/ColognePhonetic;->CKQ:[C

    .line 284
    const/16 v2, 0x9

    new-array v2, v2, [C

    fill-array-data v2, :array_5

    sput-object v2, Lorg/apache/commons/codec/language/ColognePhonetic;->AHKLOQRUX:[C

    .line 286
    const/4 v2, 0x2

    new-array v2, v2, [C

    fill-array-data v2, :array_6

    sput-object v2, Lorg/apache/commons/codec/language/ColognePhonetic;->SZ:[C

    .line 288
    new-array v0, v0, [C

    fill-array-data v0, :array_7

    sput-object v0, Lorg/apache/commons/codec/language/ColognePhonetic;->AHKOQUX:[C

    .line 290
    new-array v0, v1, [C

    fill-array-data v0, :array_8

    sput-object v0, Lorg/apache/commons/codec/language/ColognePhonetic;->DTX:[C

    return-void

    :array_0
    .array-data 2
        0x41s
        0x45s
        0x49s
        0x4as
        0x4fs
        0x55s
        0x59s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x43s
        0x53s
        0x5as
    .end array-data

    nop

    :array_2
    .array-data 2
        0x46s
        0x50s
        0x56s
        0x57s
    .end array-data

    :array_3
    .array-data 2
        0x47s
        0x4bs
        0x51s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x43s
        0x4bs
        0x51s
    .end array-data

    nop

    :array_5
    .array-data 2
        0x41s
        0x48s
        0x4bs
        0x4cs
        0x4fs
        0x51s
        0x52s
        0x55s
        0x58s
    .end array-data

    nop

    :array_6
    .array-data 2
        0x53s
        0x5as
    .end array-data

    :array_7
    .array-data 2
        0x41s
        0x48s
        0x4bs
        0x4fs
        0x51s
        0x55s
        0x58s
    .end array-data

    nop

    :array_8
    .array-data 2
        0x44s
        0x54s
        0x58s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arrayContains([CC)Z
    .locals 4
    .param p0, "arr"    # [C
    .param p1, "key"    # C

    .line 298
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-char v3, p0, v2

    .line 299
    .local v3, "element":C
    if-ne v3, p1, :cond_0

    .line 300
    const/4 v0, 0x1

    return v0

    .line 298
    .end local v3    # "element":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    :cond_1
    return v1
.end method

.method private preprocess(Ljava/lang/String;)[C
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 438
    sget-object v0, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 440
    .local v0, "chrs":[C
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 441
    aget-char v2, v0, v1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 446
    :sswitch_0
    const/16 v2, 0x55

    aput-char v2, v0, v1

    .line 447
    goto :goto_1

    .line 449
    :sswitch_1
    const/16 v2, 0x4f

    aput-char v2, v0, v1

    .line 450
    goto :goto_1

    .line 443
    :sswitch_2
    const/16 v2, 0x41

    aput-char v2, v0, v1

    .line 444
    nop

    .line 440
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .end local v1    # "index":I
    :cond_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_2
        0xd6 -> :sswitch_1
        0xdc -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public colognePhonetic(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .line 318
    if-nez p1, :cond_0

    .line 319
    const/4 v0, 0x0

    return-object v0

    .line 322
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;

    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/ColognePhonetic;->preprocess(Ljava/lang/String;)[C

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;-><init>(Lorg/apache/commons/codec/language/ColognePhonetic;[C)V

    .line 323
    .local v0, "input":Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;
    new-instance v1, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;

    invoke-virtual {v0}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;-><init>(Lorg/apache/commons/codec/language/ColognePhonetic;I)V

    .line 327
    .local v1, "output":Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;
    const/16 v2, 0x2d

    .line 330
    .local v2, "lastChar":C
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 331
    invoke-virtual {v0}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->removeNext()C

    move-result v3

    .line 333
    .local v3, "chr":C
    invoke-virtual {v0}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 334
    invoke-virtual {v0}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->getNextChar()C

    move-result v4

    .local v4, "nextChar":C
    goto :goto_1

    .line 336
    .end local v4    # "nextChar":C
    :cond_2
    const/16 v4, 0x2d

    .line 339
    .restart local v4    # "nextChar":C
    :goto_1
    const/16 v5, 0x41

    if-lt v3, v5, :cond_1

    const/16 v5, 0x5a

    if-le v3, v5, :cond_3

    .line 340
    goto :goto_0

    .line 343
    :cond_3
    sget-object v6, Lorg/apache/commons/codec/language/ColognePhonetic;->AEIJOUY:[C

    invoke-static {v6, v3}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 344
    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->put(C)V

    goto/16 :goto_5

    .line 345
    :cond_4
    const/16 v6, 0x42

    if-eq v3, v6, :cond_13

    const/16 v6, 0x50

    if-ne v3, v6, :cond_5

    const/16 v6, 0x48

    if-eq v4, v6, :cond_5

    goto/16 :goto_4

    .line 347
    :cond_5
    const/16 v6, 0x44

    if-eq v3, v6, :cond_6

    const/16 v6, 0x54

    if-ne v3, v6, :cond_7

    :cond_6
    sget-object v6, Lorg/apache/commons/codec/language/ColognePhonetic;->CSZ:[C

    invoke-static {v6, v4}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v6

    if-nez v6, :cond_7

    .line 348
    const/16 v5, 0x32

    invoke-virtual {v1, v5}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->put(C)V

    goto/16 :goto_5

    .line 349
    :cond_7
    sget-object v6, Lorg/apache/commons/codec/language/ColognePhonetic;->FPVW:[C

    invoke-static {v6, v3}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 350
    const/16 v5, 0x33

    invoke-virtual {v1, v5}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->put(C)V

    goto/16 :goto_5

    .line 351
    :cond_8
    sget-object v6, Lorg/apache/commons/codec/language/ColognePhonetic;->GKQ:[C

    invoke-static {v6, v3}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v6

    const/16 v7, 0x34

    if-eqz v6, :cond_9

    .line 352
    invoke-virtual {v1, v7}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->put(C)V

    goto/16 :goto_5

    .line 353
    :cond_9
    const/16 v6, 0x58

    const/16 v8, 0x38

    if-ne v3, v6, :cond_a

    sget-object v6, Lorg/apache/commons/codec/language/ColognePhonetic;->CKQ:[C

    invoke-static {v6, v2}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v6

    if-nez v6, :cond_a

    .line 354
    invoke-virtual {v1, v7}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->put(C)V

    .line 355
    invoke-virtual {v1, v8}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->put(C)V

    goto/16 :goto_5

    .line 356
    :cond_a
    const/16 v6, 0x53

    if-eq v3, v6, :cond_12

    if-ne v3, v5, :cond_b

    goto :goto_3

    .line 358
    :cond_b
    const/16 v5, 0x43

    if-ne v3, v5, :cond_10

    .line 359
    invoke-virtual {v1}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 360
    sget-object v5, Lorg/apache/commons/codec/language/ColognePhonetic;->AHKLOQRUX:[C

    invoke-static {v5, v4}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 361
    invoke-virtual {v1, v7}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->put(C)V

    goto :goto_5

    .line 363
    :cond_c
    invoke-virtual {v1, v8}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->put(C)V

    goto :goto_5

    .line 365
    :cond_d
    sget-object v5, Lorg/apache/commons/codec/language/ColognePhonetic;->SZ:[C

    invoke-static {v5, v2}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v5

    if-nez v5, :cond_f

    sget-object v5, Lorg/apache/commons/codec/language/ColognePhonetic;->AHKOQUX:[C

    invoke-static {v5, v4}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_2

    .line 368
    :cond_e
    invoke-virtual {v1, v7}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->put(C)V

    goto :goto_5

    .line 366
    :cond_f
    :goto_2
    invoke-virtual {v1, v8}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->put(C)V

    goto :goto_5

    .line 370
    :cond_10
    sget-object v5, Lorg/apache/commons/codec/language/ColognePhonetic;->DTX:[C

    invoke-static {v5, v3}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 371
    invoke-virtual {v1, v8}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->put(C)V

    goto :goto_5

    .line 373
    :cond_11
    sparse-switch v3, :sswitch_data_0

    goto :goto_5

    .line 375
    :sswitch_0
    const/16 v5, 0x37

    invoke-virtual {v1, v5}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->put(C)V

    .line 376
    goto :goto_5

    .line 382
    :sswitch_1
    const/16 v5, 0x36

    invoke-virtual {v1, v5}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->put(C)V

    .line 383
    goto :goto_5

    .line 378
    :sswitch_2
    const/16 v5, 0x35

    invoke-virtual {v1, v5}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->put(C)V

    .line 379
    goto :goto_5

    .line 385
    :sswitch_3
    const/16 v5, 0x2d

    invoke-virtual {v1, v5}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->put(C)V

    .line 386
    goto :goto_5

    .line 357
    :cond_12
    :goto_3
    invoke-virtual {v1, v8}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->put(C)V

    goto :goto_5

    .line 346
    :cond_13
    :goto_4
    const/16 v5, 0x31

    invoke-virtual {v1, v5}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->put(C)V

    .line 392
    :goto_5
    move v2, v3

    goto/16 :goto_0

    .line 394
    .end local v3    # "chr":C
    .end local v4    # "nextChar":C
    :cond_14
    invoke-virtual {v1}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x48 -> :sswitch_3
        0x4c -> :sswitch_2
        0x4d -> :sswitch_1
        0x4e -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 399
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 406
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/ColognePhonetic;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 400
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This method\'s parameter was expected to be of the type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    .line 401
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". But actually it was of the type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 403
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 411
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEncodeEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;

    .line 423
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
