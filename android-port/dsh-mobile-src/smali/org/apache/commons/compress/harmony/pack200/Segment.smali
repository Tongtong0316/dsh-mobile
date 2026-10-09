.class public Lorg/apache/commons/compress/harmony/pack200/Segment;
.super Lorg/objectweb/asm/ClassVisitor;
.source "Segment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentFieldVisitor;,
        Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentMethodVisitor;,
        Lorg/apache/commons/compress/harmony/pack200/Segment$PassException;,
        Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;,
        Lorg/apache/commons/compress/harmony/pack200/Segment$ArrayVisitor;
    }
.end annotation


# static fields
.field public static ASM_API:I


# instance fields
.field private attributeDefinitionBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

.field private bcBands:Lorg/apache/commons/compress/harmony/pack200/BcBands;

.field private classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

.field private cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

.field private currentClassReader:Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

.field private final fieldVisitor:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentFieldVisitor;

.field private fileBands:Lorg/apache/commons/compress/harmony/pack200/FileBands;

.field private icBands:Lorg/apache/commons/compress/harmony/pack200/IcBands;

.field private final methodVisitor:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentMethodVisitor;

.field private nonStandardAttributePrototypes:[Lorg/objectweb/asm/Attribute;

.field private options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

.field private segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

.field private stripDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 454
    const/high16 v0, 0x40000

    sput v0, Lorg/apache/commons/compress/harmony/pack200/Segment;->ASM_API:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 475
    sget v0, Lorg/apache/commons/compress/harmony/pack200/Segment;->ASM_API:I

    invoke-direct {p0, v0}, Lorg/objectweb/asm/ClassVisitor;-><init>(I)V

    .line 463
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentFieldVisitor;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentFieldVisitor;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->fieldVisitor:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentFieldVisitor;

    .line 464
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentMethodVisitor;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentMethodVisitor;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->methodVisitor:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentMethodVisitor;

    .line 476
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/harmony/pack200/Segment;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/pack200/Segment;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/Segment;->addValueAndTag(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/compress/harmony/pack200/Segment;)Lorg/apache/commons/compress/harmony/pack200/ClassBands;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/pack200/Segment;

    .line 40
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/commons/compress/harmony/pack200/Segment;)Lorg/apache/commons/compress/harmony/pack200/PackingOptions;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/pack200/Segment;

    .line 40
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/commons/compress/harmony/pack200/Segment;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/pack200/Segment;

    .line 40
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->passCurrentClass()V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/commons/compress/harmony/pack200/Segment;)Lorg/apache/commons/compress/harmony/pack200/BcBands;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/pack200/Segment;

    .line 40
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->bcBands:Lorg/apache/commons/compress/harmony/pack200/BcBands;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/commons/compress/harmony/pack200/Segment;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/pack200/Segment;

    .line 40
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->stripDebug:Z

    return v0
.end method

.method private addValueAndTag(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 480
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 481
    const-string v0, "I"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 483
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 484
    const-string v0, "D"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 486
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 487
    const-string v0, "F"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 489
    :cond_2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 490
    const-string v0, "J"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 492
    :cond_3
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    .line 493
    const-string v0, "B"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    move-object v0, p1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 495
    :cond_4
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_5

    .line 496
    const-string v0, "C"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    :cond_5
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_6

    .line 499
    const-string v0, "S"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    move-object v0, p1

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 501
    :cond_6
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 502
    const-string v0, "Z"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 504
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 505
    const-string v0, "s"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 507
    :cond_8
    instance-of v0, p1, Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_9

    .line 508
    const-string v0, "c"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    move-object v0, p1

    check-cast v0, Lorg/objectweb/asm/Type;

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_9
    :goto_0
    return-void
.end method

.method private passCurrentClass()V
    .locals 1

    .line 626
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Segment$PassException;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment$PassException;-><init>()V

    throw v0
.end method

.method private processClasses(Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;[Lorg/objectweb/asm/Attribute;)V
    .locals 9
    .param p1, "segmentUnit"    # Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;
    .param p2, "attributes"    # [Lorg/objectweb/asm/Attribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->classListSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setClass_count(I)V

    .line 631
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->getClassList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    .line 632
    .local v1, "classReader":Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;
    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->currentClassReader:Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    .line 633
    const/4 v2, 0x0

    .line 634
    .local v2, "flags":I
    iget-boolean v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->stripDebug:Z

    if-eqz v3, :cond_0

    .line 635
    or-int/lit8 v2, v2, 0x2

    .line 638
    :cond_0
    :try_start_0
    invoke-virtual {v1, p0, p2, v2}, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->accept(Lorg/objectweb/asm/ClassVisitor;[Lorg/objectweb/asm/Attribute;I)V
    :try_end_0
    .catch Lorg/apache/commons/compress/harmony/pack200/Segment$PassException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    goto :goto_3

    .line 639
    :catch_0
    move-exception v3

    .line 642
    .local v3, "pe":Lorg/apache/commons/compress/harmony/pack200/Segment$PassException;
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->removeCurrentClass()V

    .line 643
    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->getFileName()Ljava/lang/String;

    move-result-object v4

    .line 644
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    invoke-virtual {v5, v4}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->addPassFile(Ljava/lang/String;)V

    .line 645
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v5, v4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->addCPUtf8(Ljava/lang/String;)V

    .line 646
    const/4 v5, 0x0

    .line 647
    .local v5, "found":Z
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->getFileList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;

    .line 648
    .local v7, "file":Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;
    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 649
    const/4 v5, 0x1

    .line 650
    iget-object v6, v1, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->b:[B

    invoke-virtual {v7, v6}, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->setContents([B)V

    .line 651
    goto :goto_2

    .line 653
    .end local v7    # "file":Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;
    :cond_1
    goto :goto_1

    .line 654
    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    .line 658
    .end local v1    # "classReader":Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;
    .end local v2    # "flags":I
    .end local v3    # "pe":Lorg/apache/commons/compress/harmony/pack200/Segment$PassException;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "found":Z
    :goto_3
    goto :goto_0

    .line 655
    .restart local v1    # "classReader":Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;
    .restart local v2    # "flags":I
    .restart local v3    # "pe":Lorg/apache/commons/compress/harmony/pack200/Segment$PassException;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "found":Z
    :cond_3
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error passing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    .end local v1    # "classReader":Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;
    .end local v2    # "flags":I
    .end local v3    # "pe":Lorg/apache/commons/compress/harmony/pack200/Segment$PassException;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "found":Z
    :cond_4
    return-void
.end method


# virtual methods
.method public getAttrBands()Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;
    .locals 1

    .line 514
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->attributeDefinitionBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    return-object v0
.end method

.method public getClassBands()Lorg/apache/commons/compress/harmony/pack200/ClassBands;
    .locals 1

    .line 518
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    return-object v0
.end method

.method public getCpBands()Lorg/apache/commons/compress/harmony/pack200/CpBands;
    .locals 1

    .line 522
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    return-object v0
.end method

.method public getCurrentClassReader()Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;
    .locals 1

    .line 526
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->currentClassReader:Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    return-object v0
.end method

.method public getIcBands()Lorg/apache/commons/compress/harmony/pack200/IcBands;
    .locals 1

    .line 530
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->icBands:Lorg/apache/commons/compress/harmony/pack200/IcBands;

    return-object v0
.end method

.method public getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;
    .locals 1

    .line 534
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    return-object v0
.end method

.method public lastConstantHadWideIndex()Z
    .locals 1

    .line 538
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->currentClassReader:Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->lastConstantHadWideIndex()Z

    move-result v0

    return v0
.end method

.method public pack(Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;Ljava/io/OutputStream;Lorg/apache/commons/compress/harmony/pack200/PackingOptions;)V
    .locals 8
    .param p1, "segmentUnit"    # Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "options"    # Lorg/apache/commons/compress/harmony/pack200/PackingOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 551
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    .line 552
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->isStripDebug()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->stripDebug:Z

    .line 553
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getEffort()I

    move-result v0

    .line 554
    .local v0, "effort":I
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getUnknownAttributePrototypes()[Lorg/objectweb/asm/Attribute;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->nonStandardAttributePrototypes:[Lorg/objectweb/asm/Attribute;

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to pack a new segment with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->fileListSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " files including "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->classListSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " classes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 558
    const-string v1, "Initialize a header for the segment"

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 559
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-direct {v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    .line 560
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->fileListSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setFile_count(I)V

    .line 561
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    iget-boolean v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->stripDebug:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setHave_all_code_flags(Z)V

    .line 562
    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->isKeepDeflateHint()Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {p3}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getDeflateHint()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setDeflate_hint(Z)V

    .line 566
    :cond_0
    const-string v1, "Setup constant pool bands for the segment"

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 567
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/compress/harmony/pack200/CpBands;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;I)V

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    .line 569
    const-string v1, "Setup attribute definition bands for the segment"

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 570
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->nonStandardAttributePrototypes:[Lorg/objectweb/asm/Attribute;

    invoke-direct {v1, p0, v0, v2}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;I[Lorg/objectweb/asm/Attribute;)V

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->attributeDefinitionBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    .line 572
    const-string v1, "Setup internal class bands for the segment"

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 573
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/IcBands;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/commons/compress/harmony/pack200/IcBands;-><init>(Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/CpBands;I)V

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->icBands:Lorg/apache/commons/compress/harmony/pack200/IcBands;

    .line 575
    const-string v1, "Setup class bands for the segment"

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 576
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->classListSize()I

    move-result v2

    iget-boolean v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->stripDebug:Z

    invoke-direct {v1, p0, v2, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;IIZ)V

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    .line 578
    const-string v1, "Setup byte code bands for the segment"

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 579
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/BcBands;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {v1, v2, p0, v0}, Lorg/apache/commons/compress/harmony/pack200/BcBands;-><init>(Lorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/Segment;I)V

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->bcBands:Lorg/apache/commons/compress/harmony/pack200/BcBands;

    .line 581
    const-string v1, "Setup file bands for the segment"

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 582
    new-instance v7, Lorg/apache/commons/compress/harmony/pack200/FileBands;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-object v1, v7

    move-object v4, p3

    move-object v5, p1

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/pack200/FileBands;-><init>(Lorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/PackingOptions;Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;I)V

    iput-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/pack200/FileBands;

    .line 584
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->nonStandardAttributePrototypes:[Lorg/objectweb/asm/Attribute;

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->processClasses(Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;[Lorg/objectweb/asm/Attribute;)V

    .line 586
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->finaliseBands()V

    .line 587
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->attributeDefinitionBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->finaliseBands()V

    .line 588
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->icBands:Lorg/apache/commons/compress/harmony/pack200/IcBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IcBands;->finaliseBands()V

    .line 589
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->finaliseBands()V

    .line 590
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->bcBands:Lorg/apache/commons/compress/harmony/pack200/BcBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->finaliseBands()V

    .line 591
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/pack200/FileBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/FileBands;->finaliseBands()V

    .line 597
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 599
    .local v1, "bandsOutputStream":Ljava/io/ByteArrayOutputStream;
    const-string v2, "Packing..."

    invoke-static {v2}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 600
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->numClassesProcessed()I

    move-result v2

    .line 601
    .local v2, "finalNumberOfClasses":I
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v3, v2}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setClass_count(I)V

    .line 602
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->pack(Ljava/io/OutputStream;)V

    .line 603
    if-lez v2, :cond_1

    .line 604
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->attributeDefinitionBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->pack(Ljava/io/OutputStream;)V

    .line 605
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->icBands:Lorg/apache/commons/compress/harmony/pack200/IcBands;

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/harmony/pack200/IcBands;->pack(Ljava/io/OutputStream;)V

    .line 606
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->pack(Ljava/io/OutputStream;)V

    .line 607
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->bcBands:Lorg/apache/commons/compress/harmony/pack200/BcBands;

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->pack(Ljava/io/OutputStream;)V

    .line 609
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/pack200/FileBands;

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/harmony/pack200/FileBands;->pack(Ljava/io/OutputStream;)V

    .line 611
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 612
    .local v3, "headerOutputStream":Ljava/io/ByteArrayOutputStream;
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v4, v3}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->pack(Ljava/io/OutputStream;)V

    .line 614
    invoke-virtual {v3, p2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 615
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 617
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->addPackedByteAmount(I)V

    .line 618
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->addPackedByteAmount(I)V

    .line 620
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrote total of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->getPackedByteAmount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 621
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transmitted "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->fileListSize()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " files of "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->getByteAmount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " input bytes in a segment of "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 622
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$SegmentUnit;->getPackedByteAmount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 621
    invoke-static {v4}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->bcBands:Lorg/apache/commons/compress/harmony/pack200/BcBands;

    invoke-virtual {v0, p3, p5}, Lorg/apache/commons/compress/harmony/pack200/BcBands;->setCurrentClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->addMajorVersion(I)V

    .line 665
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addClass(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 670
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentAnnotationVisitor;-><init>(Lorg/apache/commons/compress/harmony/pack200/Segment;ILjava/lang/String;Z)V

    return-object v0
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .locals 6
    .param p1, "attribute"    # Lorg/objectweb/asm/Attribute;

    .line 675
    invoke-virtual {p1}, Lorg/objectweb/asm/Attribute;->isUnknown()Z

    move-result v0

    const-string v1, "Unknown attribute encountered"

    const-string v2, "error"

    const-string v3, "pass"

    if-eqz v0, :cond_2

    .line 676
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getUnknownAttributeAction()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 678
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->passCurrentClass()V

    goto :goto_0

    .line 679
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 682
    .end local v0    # "action":Ljava/lang/String;
    :goto_0
    goto :goto_2

    .line 680
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 682
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    instance-of v0, p1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    if-eqz v0, :cond_6

    .line 683
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    .line 684
    .local v0, "newAttribute":Lorg/apache/commons/compress/harmony/pack200/NewAttribute;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->isUnknown(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 685
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->options:Lorg/apache/commons/compress/harmony/pack200/PackingOptions;

    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getUnknownClassAttributeAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 686
    .local v4, "action":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 687
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->passCurrentClass()V

    goto :goto_1

    .line 688
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 689
    :cond_4
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 692
    .end local v4    # "action":Ljava/lang/String;
    :cond_5
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addClassAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V

    .line 693
    .end local v0    # "newAttribute":Lorg/apache/commons/compress/harmony/pack200/NewAttribute;
    nop

    .line 696
    :goto_2
    return-void

    .line 694
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected attribute encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lorg/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitEnd()V
    .locals 1

    .line 700
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->endOfClass()V

    .line 701
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;
    .locals 6
    .param p1, "flags"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 705
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 706
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->fieldVisitor:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentFieldVisitor;

    return-object v0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "flags"    # I

    .line 711
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->icBands:Lorg/apache/commons/compress/harmony/pack200/IcBands;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/pack200/IcBands;->addInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 712
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;
    .locals 6
    .param p1, "flags"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 716
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->methodVisitor:Lorg/apache/commons/compress/harmony/pack200/Segment$SegmentMethodVisitor;

    return-object v0
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 722
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addEnclosingMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 728
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->stripDebug:Z

    if-nez v0, :cond_0

    .line 729
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->addSourceFile(Ljava/lang/String;)V

    .line 731
    :cond_0
    return-void
.end method
