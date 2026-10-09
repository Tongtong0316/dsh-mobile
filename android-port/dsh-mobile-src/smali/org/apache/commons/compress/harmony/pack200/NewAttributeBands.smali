.class public Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
.super Lorg/apache/commons/compress/harmony/pack200/BandSet;
.source "NewAttributeBands.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;,
        Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;,
        Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;,
        Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;,
        Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;,
        Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;,
        Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Union;,
        Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;,
        Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;
    }
.end annotation


# instance fields
.field protected attributeLayoutElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;",
            ">;"
        }
    .end annotation
.end field

.field private backwardsCallCounts:[I

.field private final cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

.field private final def:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

.field private lastPIntegral:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

.field private usedAtLeastOnce:Z


# direct methods
.method public constructor <init>(ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;)V
    .locals 0
    .param p1, "effort"    # I
    .param p2, "cpBands"    # Lorg/apache/commons/compress/harmony/pack200/CpBands;
    .param p3, "header"    # Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;
    .param p4, "def"    # Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 531
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/compress/harmony/pack200/BandSet;-><init>(ILorg/apache/commons/compress/harmony/pack200/SegmentHeader;)V

    .line 532
    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->def:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    .line 533
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    .line 534
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->parseLayout()V

    .line 535
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;)[I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 38
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->backwardsCallCounts:[I

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getCodec(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;ILjava/io/InputStream;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/io/InputStream;

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->readInteger(ILjava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;)Lorg/apache/commons/compress/harmony/pack200/CpBands;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 38
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    .param p1, "x1"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->readNextLayoutElement(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;

    move-result-object v0

    return-object v0
.end method

.method private getCodec(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .locals 1
    .param p1, "layoutElement"    # Ljava/lang/String;

    .line 555
    const/16 v0, 0x4f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 556
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-object v0

    .line 558
    :cond_0
    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 559
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-object v0

    .line 561
    :cond_1
    const/16 v0, 0x53

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    const-string v0, "KS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 562
    const-string v0, "RS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 563
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->SIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-object v0

    .line 565
    :cond_2
    const/16 v0, 0x42

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 566
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-object v0

    .line 568
    :cond_3
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    return-object v0
.end method

.method private getStreamUpToMatchingBracket(Ljava/io/StringReader;)Ljava/io/StringReader;
    .locals 5
    .param p1, "reader"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, -0x1

    .line 585
    .local v1, "foundBracket":I
    :goto_0
    if-eqz v1, :cond_4

    .line 586
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v2

    .line 587
    .local v2, "read":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 588
    goto :goto_1

    .line 590
    :cond_0
    int-to-char v3, v2

    .line 591
    .local v3, "c":C
    const/16 v4, 0x5d

    if-ne v3, v4, :cond_1

    .line 592
    add-int/lit8 v1, v1, 0x1

    .line 594
    :cond_1
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_2

    .line 595
    add-int/lit8 v1, v1, -0x1

    .line 597
    :cond_2
    if-eqz v1, :cond_3

    .line 598
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 600
    .end local v2    # "read":I
    .end local v3    # "c":C
    :cond_3
    goto :goto_0

    .line 601
    :cond_4
    :goto_1
    new-instance v2, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private parseLayout()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->def:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    iget-object v0, v0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;->layout:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getUnderlyingString()Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, "layout":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    if-nez v1, :cond_1

    .line 622
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    .line 623
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 625
    .local v1, "reader":Ljava/io/StringReader;
    :goto_0
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->readNextAttributeElement(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;

    move-result-object v2

    move-object v3, v2

    .local v3, "e":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    if-eqz v2, :cond_0

    .line 626
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 628
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->resolveCalls()V

    .line 630
    .end local v1    # "reader":Ljava/io/StringReader;
    .end local v3    # "e":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    :cond_1
    return-void
.end method

.method private readBody(Ljava/io/StringReader;)Ljava/util/List;
    .locals 3
    .param p1, "reader"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/StringReader;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 640
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v0, "layoutElements":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;>;"
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->readNextLayoutElement(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;

    move-result-object v1

    move-object v2, v1

    .local v2, "e":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;
    if-eqz v1, :cond_0

    .line 643
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 645
    :cond_0
    return-object v0
.end method

.method private readInteger(ILjava/io/InputStream;)I
    .locals 5
    .param p1, "i"    # I
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 652
    shl-int/lit8 v2, v0, 0x8

    :try_start_0
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    or-int v0, v2, v3

    .line 655
    nop

    .line 650
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    :catch_0
    move-exception v2

    .line 654
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/io/UncheckedIOException;

    const-string v4, "Error reading unknown attribute"

    invoke-direct {v3, v4, v2}, Ljava/io/UncheckedIOException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v3

    .line 658
    .end local v1    # "j":I
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 659
    int-to-byte v0, v0

    .line 661
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 662
    int-to-short v0, v0

    .line 664
    :cond_2
    return v0
.end method

.method private readNextAttributeElement(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    .locals 3
    .param p1, "reader"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 668
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/StringReader;->mark(I)V

    .line 669
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v0

    .line 670
    .local v0, "next":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 671
    const/4 v1, 0x0

    return-object v1

    .line 673
    :cond_0
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1

    .line 674
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getStreamUpToMatchingBracket(Ljava/io/StringReader;)Ljava/io/StringReader;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->readBody(Ljava/io/StringReader;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/util/List;)V

    return-object v1

    .line 676
    :cond_1
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 677
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->readNextLayoutElement(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;

    move-result-object v1

    return-object v1
.end method

.method private readNextLayoutElement(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;
    .locals 8
    .param p1, "reader"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 681
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v0

    .line 682
    .local v0, "nextChar":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 683
    return-object v2

    .line 686
    :cond_0
    const-string v1, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 759
    return-object v2

    .line 722
    :sswitch_0
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, "int_type":Ljava/lang/String;
    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 726
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 728
    .local v2, "unionCases":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;>;"
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->readNextUnionCase(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;

    move-result-object v3

    move-object v5, v3

    .local v5, "c":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;
    if-eqz v3, :cond_2

    .line 729
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 731
    :cond_2
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 732
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 733
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 734
    const/4 v3, 0x0

    .line 735
    .local v3, "body":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;>;"
    invoke-virtual {p1, v4}, Ljava/io/StringReader;->mark(I)V

    .line 736
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v4

    int-to-char v4, v4

    .line 737
    .local v4, "next":C
    const/16 v6, 0x5d

    if-eq v4, v6, :cond_3

    .line 738
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 739
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getStreamUpToMatchingBracket(Ljava/io/StringReader;)Ljava/io/StringReader;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->readBody(Ljava/io/StringReader;)Ljava/util/List;

    move-result-object v3

    .line 741
    :cond_3
    new-instance v6, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Union;

    invoke-direct {v6, p0, v1, v2, v3}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Union;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v6

    .line 697
    .end local v1    # "int_type":Ljava/lang/String;
    .end local v2    # "unionCases":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;>;"
    .end local v3    # "body":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;>;"
    .end local v4    # "next":C
    .end local v5    # "c":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;
    :sswitch_1
    invoke-virtual {p1, v4}, Ljava/io/StringReader;->mark(I)V

    .line 698
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v1

    const/16 v2, 0x4f

    if-eq v1, v2, :cond_4

    .line 699
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 700
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->lastPIntegral:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    .line 701
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->lastPIntegral:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    return-object v1

    .line 703
    :cond_4
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->lastPIntegral:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/lang/String;Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;)V

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->lastPIntegral:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    .line 704
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->lastPIntegral:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    return-object v1

    .line 706
    :sswitch_2
    invoke-virtual {p1, v4}, Ljava/io/StringReader;->mark(I)V

    .line 707
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v1

    const/16 v2, 0x53

    if-eq v1, v2, :cond_5

    .line 708
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 709
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "O"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->lastPIntegral:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/lang/String;Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;)V

    return-object v1

    .line 711
    :cond_5
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->lastPIntegral:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/lang/String;Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;)V

    return-object v1

    .line 715
    :sswitch_3
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v2

    int-to-char v2, v2

    .line 716
    .local v2, "uint_type":C
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 717
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->readUpToMatchingBracket(Ljava/io/StringReader;)Ljava/lang/String;

    move-result-object v3

    .line 718
    .local v3, "str":Ljava/lang/String;
    new-instance v4, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, p0, v1, v3}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 751
    .end local v2    # "uint_type":C
    .end local v3    # "str":Ljava/lang/String;
    :sswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 752
    .local v1, "string":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v2

    int-to-char v2, v2

    .line 753
    .local v2, "nxt":C
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 754
    const/16 v3, 0x4e

    if-ne v2, v3, :cond_6

    .line 755
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 757
    :cond_6
    new-instance v3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Reference;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/lang/String;)V

    return-object v3

    .line 695
    .end local v1    # "string":Ljava/lang/StringBuilder;
    .end local v2    # "nxt":C
    :sswitch_5
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    new-instance v2, Ljava/lang/String;

    int-to-char v5, v0

    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v6

    int-to-char v6, v6

    const/4 v7, 0x2

    new-array v7, v7, [C

    aput-char v5, v7, v3

    aput-char v6, v7, v4

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/lang/String;)V

    return-object v1

    .line 692
    :sswitch_6
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    new-instance v2, Ljava/lang/String;

    int-to-char v5, v0

    new-array v4, v4, [C

    aput-char v5, v4, v3

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, p0, v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/lang/String;)V

    return-object v1

    .line 745
    :sswitch_7
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->readNumber(Ljava/io/StringReader;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 746
    .local v1, "number":I
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 747
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;

    invoke-direct {v2, p0, v1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;I)V

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_7
        0x42 -> :sswitch_6
        0x46 -> :sswitch_5
        0x48 -> :sswitch_6
        0x49 -> :sswitch_6
        0x4b -> :sswitch_4
        0x4e -> :sswitch_3
        0x4f -> :sswitch_2
        0x50 -> :sswitch_1
        0x52 -> :sswitch_4
        0x53 -> :sswitch_5
        0x54 -> :sswitch_0
        0x56 -> :sswitch_6
    .end sparse-switch
.end method

.method private readNextUnionCase(Ljava/io/StringReader;)Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;
    .locals 6
    .param p1, "reader"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 770
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/io/StringReader;->mark(I)V

    .line 771
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 772
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v0

    .line 773
    .local v0, "next":I
    int-to-char v1, v0

    .line 774
    .local v1, "ch":C
    const/16 v2, 0x29

    if-eq v1, v2, :cond_4

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 778
    :cond_0
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 779
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 780
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .local v2, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->readNumber(Ljava/io/StringReader;)Ljava/lang/Integer;

    move-result-object v3

    .line 784
    .local v3, "nextTag":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    .line 785
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 788
    :cond_2
    if-nez v3, :cond_1

    .line 789
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    .line 790
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/io/StringReader;->mark(I)V

    .line 791
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v4

    int-to-char v1, v4

    .line 792
    const/16 v4, 0x5d

    if-ne v1, v4, :cond_3

    .line 793
    new-instance v4, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;

    invoke-direct {v4, p0, v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/util/List;)V

    return-object v4

    .line 795
    :cond_3
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 796
    new-instance v4, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getStreamUpToMatchingBracket(Ljava/io/StringReader;)Ljava/io/StringReader;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->readBody(Ljava/io/StringReader;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, p0, v2, v5}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/util/List;Ljava/util/List;)V

    return-object v4

    .line 775
    .end local v2    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "nextTag":Ljava/lang/Integer;
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 776
    const/4 v2, 0x0

    return-object v2
.end method

.method private readNumber(Ljava/io/StringReader;)Ljava/lang/Integer;
    .locals 8
    .param p1, "stream"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 807
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/StringReader;->mark(I)V

    .line 808
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v1

    int-to-char v1, v1

    .line 809
    .local v1, "first":C
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 810
    .local v0, "negative":Z
    :goto_0
    if-nez v0, :cond_1

    .line 811
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 813
    :cond_1
    const/16 v2, 0x64

    invoke-virtual {p1, v2}, Ljava/io/StringReader;->mark(I)V

    .line 815
    const/4 v2, 0x0

    .line 816
    .local v2, "length":I
    :goto_1
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v3

    move v4, v3

    .local v4, "i":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    int-to-char v3, v4

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 817
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 819
    :cond_2
    invoke-virtual {p1}, Ljava/io/StringReader;->reset()V

    .line 820
    if-nez v2, :cond_3

    .line 821
    const/4 v3, 0x0

    return-object v3

    .line 823
    :cond_3
    new-array v3, v2, [C

    .line 824
    .local v3, "digits":[C
    invoke-virtual {p1, v3}, Ljava/io/StringReader;->read([C)I

    move-result v5

    .line 825
    .local v5, "read":I
    array-length v6, v3

    if-ne v5, v6, :cond_5

    .line 828
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_4

    const-string v7, "-"

    goto :goto_2

    :cond_4
    const-string v7, ""

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/compress/utils/ParsingUtils;->parseIntValue(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    .line 826
    :cond_5
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Error reading from the input stream"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private readUpToMatchingBracket(Ljava/io/StringReader;)Ljava/lang/String;
    .locals 5
    .param p1, "reader"    # Ljava/io/StringReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 840
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, -0x1

    .line 841
    .local v1, "foundBracket":I
    :goto_0
    if-eqz v1, :cond_4

    .line 842
    invoke-virtual {p1}, Ljava/io/StringReader;->read()I

    move-result v2

    .line 843
    .local v2, "read":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 844
    goto :goto_1

    .line 846
    :cond_0
    int-to-char v3, v2

    .line 847
    .local v3, "c":C
    const/16 v4, 0x5d

    if-ne v3, v4, :cond_1

    .line 848
    add-int/lit8 v1, v1, 0x1

    .line 850
    :cond_1
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_2

    .line 851
    add-int/lit8 v1, v1, -0x1

    .line 853
    :cond_2
    if-eqz v1, :cond_3

    .line 854
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 856
    .end local v2    # "read":I
    .end local v3    # "c":C
    :cond_3
    goto :goto_0

    .line 857
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private resolveCalls()V
    .locals 6

    .line 878
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 879
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;

    .line 880
    .local v1, "element":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    instance-of v2, v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;

    if-eqz v2, :cond_0

    .line 881
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;

    .line 882
    .local v2, "callable":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;
    invoke-static {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;->access$500(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;)Ljava/util/List;

    move-result-object v3

    .line 883
    .local v3, "body":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;

    .line 885
    .local v5, "layoutElement":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;
    invoke-direct {p0, v0, v2, v5}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->resolveCallsForElement(ILorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;)V

    .line 886
    .end local v5    # "layoutElement":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;
    goto :goto_1

    .line 878
    .end local v1    # "element":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    .end local v2    # "callable":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;
    .end local v3    # "body":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 889
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .line 890
    .local v0, "backwardsCallableIndex":I
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;

    .line 891
    .local v2, "attributeLayoutElement":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    instance-of v3, v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;

    if-eqz v3, :cond_2

    .line 892
    move-object v3, v2

    check-cast v3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;

    .line 893
    .local v3, "callable":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;
    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;->access$600(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 894
    invoke-virtual {v3, v0}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;->setBackwardsCallableIndex(I)V

    .line 895
    add-int/lit8 v0, v0, 0x1

    .line 898
    .end local v2    # "attributeLayoutElement":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    .end local v3    # "callable":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;
    :cond_2
    goto :goto_2

    .line 899
    :cond_3
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->backwardsCallCounts:[I

    .line 900
    return-void
.end method

.method private resolveCallsForElement(ILorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "currentCallable"    # Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;
    .param p3, "layoutElement"    # Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;

    .line 903
    instance-of v0, p3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;

    if-eqz v0, :cond_5

    .line 904
    move-object v0, p3

    check-cast v0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;

    .line 905
    .local v0, "call":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;
    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;->access$700(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;)I

    move-result v1

    .line 906
    .local v1, "index":I
    if-nez v1, :cond_0

    .line 907
    invoke-virtual {v0, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;->setCallable(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;)V

    goto :goto_4

    .line 908
    :cond_0
    if-lez v1, :cond_3

    .line 909
    add-int/lit8 v2, p1, 0x1

    .local v2, "k":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 910
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;

    .line 911
    .local v3, "el":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    instance-of v4, v3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;

    if-eqz v4, :cond_1

    .line 912
    add-int/lit8 v1, v1, -0x1

    .line 913
    if-nez v1, :cond_1

    .line 914
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;

    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;->setCallable(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;)V

    .line 915
    goto :goto_1

    .line 909
    .end local v3    # "el":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "k":I
    :cond_2
    :goto_1
    goto :goto_4

    .line 920
    :cond_3
    add-int/lit8 v2, p1, -0x1

    .restart local v2    # "k":I
    :goto_2
    if-ltz v2, :cond_6

    .line 921
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;

    .line 922
    .restart local v3    # "el":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    instance-of v4, v3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;

    if-eqz v4, :cond_4

    .line 923
    add-int/lit8 v1, v1, 0x1

    .line 924
    if-nez v1, :cond_4

    .line 925
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;

    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;->setCallable(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;)V

    .line 926
    goto :goto_4

    .line 920
    .end local v3    # "el":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 931
    .end local v0    # "call":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Call;
    .end local v1    # "index":I
    .end local v2    # "k":I
    :cond_5
    instance-of v0, p3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;

    if-eqz v0, :cond_6

    .line 932
    move-object v0, p3

    check-cast v0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;->access$800(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Replication;)Ljava/util/List;

    move-result-object v0

    .line 933
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;

    .line 934
    .local v2, "child":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;
    invoke-direct {p0, p1, p2, v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->resolveCallsForElement(ILorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Callable;Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;)V

    .line 935
    .end local v2    # "child":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;
    goto :goto_3

    .line 931
    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;>;"
    :cond_6
    :goto_4
    nop

    .line 937
    :cond_7
    return-void
.end method


# virtual methods
.method public addAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V
    .locals 3
    .param p1, "attribute"    # Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->usedAtLeastOnce:Z

    .line 539
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 540
    .local v0, "stream":Ljava/io/InputStream;
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;

    .line 541
    .local v2, "attributeLayoutElement":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    invoke-interface {v2, p1, v0}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;->addAttributeToBand(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;Ljava/io/InputStream;)V

    .line 542
    .end local v2    # "attributeLayoutElement":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    goto :goto_0

    .line 543
    :cond_0
    return-void
.end method

.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .line 546
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->def:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    iget-object v0, v0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;->name:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getUnderlyingString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlagIndex()I
    .locals 1

    .line 572
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->def:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    iget v0, v0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;->index:I

    return v0
.end method

.method public isUsedAtLeastOnce()Z
    .locals 1

    .line 605
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->usedAtLeastOnce:Z

    return v0
.end method

.method public numBackwardsCalls()[I
    .locals 1

    .line 609
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->backwardsCallCounts:[I

    return-object v0
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;

    .line 615
    .local v1, "attributeLayoutElement":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    invoke-interface {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;->pack(Ljava/io/OutputStream;)V

    .line 616
    .end local v1    # "attributeLayoutElement":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    goto :goto_0

    .line 617
    :cond_0
    return-void
.end method

.method public renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V
    .locals 2
    .param p1, "bciRenumbering"    # Lorg/apache/commons/compress/harmony/pack200/IntList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/harmony/pack200/IntList;",
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/Label;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 867
    .local p2, "labelsToOffsets":Ljava/util/Map;, "Ljava/util/Map<Lorg/objectweb/asm/Label;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->attributeLayoutElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;

    .line 868
    .local v1, "attributeLayoutElement":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    invoke-interface {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;->renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 869
    .end local v1    # "attributeLayoutElement":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$AttributeLayoutElement;
    goto :goto_0

    .line 870
    :cond_0
    return-void
.end method
