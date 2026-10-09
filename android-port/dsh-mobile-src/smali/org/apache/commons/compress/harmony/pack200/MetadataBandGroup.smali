.class public Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;
.super Lorg/apache/commons/compress/harmony/pack200/BandSet;
.source "MetadataBandGroup.java"


# static fields
.field public static final CONTEXT_CLASS:I = 0x0

.field public static final CONTEXT_FIELD:I = 0x1

.field public static final CONTEXT_METHOD:I = 0x2


# instance fields
.field public T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public anno_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field public caseD_KD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
            "*>;>;"
        }
    .end annotation
.end field

.field public caseF_KF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
            "*>;>;"
        }
    .end annotation
.end field

.field public caseI_KI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
            "*>;>;"
        }
    .end annotation
.end field

.field public caseJ_KJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
            "*>;>;"
        }
    .end annotation
.end field

.field public casearray_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field public casec_RS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPSignature;",
            ">;"
        }
    .end annotation
.end field

.field public caseec_RU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPUTF8;",
            ">;"
        }
    .end annotation
.end field

.field public caseet_RS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPSignature;",
            ">;"
        }
    .end annotation
.end field

.field public cases_RU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPUTF8;",
            ">;"
        }
    .end annotation
.end field

.field private final context:I

.field private final cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

.field public name_RU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPUTF8;",
            ">;"
        }
    .end annotation
.end field

.field public nestname_RU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPUTF8;",
            ">;"
        }
    .end annotation
.end field

.field public nestpair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field public nesttype_RS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPSignature;",
            ">;"
        }
    .end annotation
.end field

.field private numBackwardsCalls:I

.field public pair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field public param_NB:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final type:Ljava/lang/String;

.field public type_RS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPSignature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # I
    .param p3, "cpBands"    # Lorg/apache/commons/compress/harmony/pack200/CpBands;
    .param p4, "segmentHeader"    # Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;
    .param p5, "effort"    # I

    .line 69
    invoke-direct {p0, p5, p4}, Lorg/apache/commons/compress/harmony/pack200/BandSet;-><init>(ILorg/apache/commons/compress/harmony/pack200/SegmentHeader;)V

    .line 37
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->param_NB:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 38
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->anno_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type_RS:Ljava/util/List;

    .line 40
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->name_RU:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->T:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseI_KI:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseD_KD:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseF_KF:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseJ_KJ:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casec_RS:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseet_RS:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseec_RU:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cases_RU:Ljava/util/List;

    .line 51
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casearray_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nesttype_RS:Ljava/util/List;

    .line 53
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestpair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestname_RU:Ljava/util/List;

    .line 70
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    .line 72
    iput p2, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->context:I

    .line 73
    return-void
.end method

.method static synthetic lambda$tagListToArray$7(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private nextString(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 242
    .local p1, "valuesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private removeOnePair()V
    .locals 4

    .line 362
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->T:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->T:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 363
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_3
    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v1, "J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_6
    const-string v1, "I"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_7
    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_8
    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_9
    const-string v1, "C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_a
    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_b
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 395
    :pswitch_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nesttype_RS:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nesttype_RS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 396
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestpair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestpair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v1

    .line 397
    .local v1, "numPairs":I
    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    .line 398
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_2

    .line 399
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeOnePair()V

    .line 398
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 388
    .end local v1    # "numPairs":I
    .end local v2    # "i":I
    :pswitch_1
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casearray_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casearray_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v1

    .line 389
    .local v1, "arraySize":I
    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    .line 390
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_3
    if-ge v2, v1, :cond_1

    .line 391
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeOnePair()V

    .line 390
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 393
    .end local v2    # "k":I
    :cond_1
    goto :goto_4

    .line 385
    .end local v1    # "arraySize":I
    :pswitch_2
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cases_RU:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cases_RU:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 386
    goto :goto_4

    .line 381
    :pswitch_3
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseet_RS:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseet_RS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 382
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseec_RU:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseet_RS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 383
    goto :goto_4

    .line 378
    :pswitch_4
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseJ_KJ:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseJ_KJ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 379
    goto :goto_4

    .line 375
    :pswitch_5
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseF_KF:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseF_KF:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 376
    goto :goto_4

    .line 372
    :pswitch_6
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseD_KD:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseD_KD:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 373
    goto :goto_4

    .line 369
    :pswitch_7
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseI_KI:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseI_KI:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 370
    nop

    .line 403
    :cond_2
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_b
        0x42 -> :sswitch_a
        0x43 -> :sswitch_9
        0x44 -> :sswitch_8
        0x46 -> :sswitch_7
        0x49 -> :sswitch_6
        0x4a -> :sswitch_5
        0x53 -> :sswitch_4
        0x5a -> :sswitch_3
        0x5b -> :sswitch_2
        0x65 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
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

.method private tagListToArray(Ljava/util/List;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[I"
        }
    .end annotation

    .line 406
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p2, "nameRU":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p5, "caseArrayN":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p6, "nestTypeRS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "nestNameRU":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p8, "nestPairN":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type_RS:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 91
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;)V

    invoke-interface {p2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 93
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 94
    .local v0, "valuesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    .local v2, "tag":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->T:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_2

    :sswitch_1
    const-string v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto :goto_2

    :sswitch_2
    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_2

    :sswitch_3
    const-string v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_4
    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_5
    const-string v3, "J"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_6
    const-string v3, "I"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_7
    const-string v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_8
    const-string v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_9
    const-string v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_a
    const-string v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 127
    :pswitch_0
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cases_RU:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nextString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 122
    :pswitch_1
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseet_RS:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nextString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseec_RU:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nextString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    goto :goto_3

    .line 118
    :pswitch_2
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casec_RS:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nextString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    goto :goto_3

    .line 114
    :pswitch_3
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseJ_KJ:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    goto :goto_3

    .line 110
    :pswitch_4
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseF_KF:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    goto :goto_3

    .line 106
    :pswitch_5
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseD_KD:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    goto :goto_3

    .line 102
    :pswitch_6
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseI_KI:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    nop

    .line 132
    .end local v2    # "tag":Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .line 133
    :cond_1
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 134
    .local v2, "element":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 135
    .local v3, "arraySize":I
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casearray_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v4, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 136
    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    .line 137
    .end local v2    # "element":Ljava/lang/Integer;
    .end local v3    # "arraySize":I
    goto :goto_4

    .line 138
    :cond_2
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;)V

    invoke-interface {p6, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 139
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;)V

    invoke-interface {p7, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 140
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 141
    .local v2, "numPairs":Ljava/lang/Integer;
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestpair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 142
    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    .line 143
    .end local v2    # "numPairs":Ljava/lang/Integer;
    goto :goto_5

    .line 144
    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_a
        0x43 -> :sswitch_9
        0x44 -> :sswitch_8
        0x46 -> :sswitch_7
        0x49 -> :sswitch_6
        0x4a -> :sswitch_5
        0x53 -> :sswitch_4
        0x5a -> :sswitch_3
        0x63 -> :sswitch_2
        0x65 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addParameterAnnotation(I[ILorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .param p1, "numParams"    # I
    .param p2, "annoN"    # [I
    .param p3, "pairN"    # Lorg/apache/commons/compress/harmony/pack200/IntList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I",
            "Lorg/apache/commons/compress/harmony/pack200/IntList;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 164
    .local p4, "typeRS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "nameRU":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p8, "caseArrayN":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p9, "nestTypeRS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p10, "nestNameRU":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p11, "nestPairN":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v0, p0

    move-object v1, p2

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->param_NB:Lorg/apache/commons/compress/harmony/pack200/IntList;

    move v3, p1

    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 165
    array-length v2, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_0

    aget v6, v1, v5

    .line 166
    .local v6, "element":I
    iget-object v7, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->anno_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v7, v6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 165
    .end local v6    # "element":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 168
    :cond_0
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    move-object/from16 v5, p3

    invoke-virtual {v2, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->addAll(Lorg/apache/commons/compress/harmony/pack200/IntList;)V

    .line 169
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;)V

    move-object/from16 v6, p4

    invoke-interface {v6, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 170
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda5;-><init>(Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;)V

    move-object/from16 v7, p5

    invoke-interface {v7, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 171
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 172
    .local v2, "valuesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 173
    .local v9, "tag":Ljava/lang/String;
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->T:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_1
    goto/16 :goto_2

    :sswitch_0
    const-string v10, "s"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0xa

    goto/16 :goto_3

    :sswitch_1
    const-string v10, "e"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x9

    goto :goto_3

    :sswitch_2
    const-string v10, "c"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/16 v10, 0x8

    goto :goto_3

    :sswitch_3
    const-string v10, "Z"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x4

    goto :goto_3

    :sswitch_4
    const-string v10, "S"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x3

    goto :goto_3

    :sswitch_5
    const-string v10, "J"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x7

    goto :goto_3

    :sswitch_6
    const-string v10, "I"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x2

    goto :goto_3

    :sswitch_7
    const-string v10, "F"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x6

    goto :goto_3

    :sswitch_8
    const-string v10, "D"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x5

    goto :goto_3

    :sswitch_9
    const-string v10, "C"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_3

    :sswitch_a
    const-string v10, "B"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v4

    goto :goto_3

    :goto_2
    const/4 v10, -0x1

    :goto_3
    packed-switch v10, :pswitch_data_0

    goto/16 :goto_4

    .line 205
    :pswitch_0
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cases_RU:Ljava/util/List;

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nextString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 200
    :pswitch_1
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseet_RS:Ljava/util/List;

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nextString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseec_RU:Ljava/util/List;

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nextString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    goto :goto_4

    .line 196
    :pswitch_2
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casec_RS:Ljava/util/List;

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nextString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    goto :goto_4

    .line 192
    :pswitch_3
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseJ_KJ:Ljava/util/List;

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    goto :goto_4

    .line 188
    :pswitch_4
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseF_KF:Ljava/util/List;

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    goto :goto_4

    .line 184
    :pswitch_5
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseD_KD:Ljava/util/List;

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    goto :goto_4

    .line 180
    :pswitch_6
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseI_KI:Ljava/util/List;

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    nop

    .line 210
    .end local v9    # "tag":Ljava/lang/String;
    :goto_4
    goto/16 :goto_1

    .line 211
    :cond_2
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 212
    .local v8, "element":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 213
    .local v9, "arraySize":I
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casearray_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v10, v9}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 214
    iget v10, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    add-int/2addr v10, v9

    iput v10, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    .line 215
    .end local v8    # "element":Ljava/lang/Integer;
    .end local v9    # "arraySize":I
    goto :goto_5

    .line 216
    :cond_3
    new-instance v4, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda6;-><init>(Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;)V

    move-object/from16 v8, p9

    invoke-interface {v8, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 217
    new-instance v4, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup$$ExternalSyntheticLambda7;-><init>(Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;)V

    move-object/from16 v9, p10

    invoke-interface {v9, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 218
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 219
    .local v10, "numPairs":Ljava/lang/Integer;
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestpair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 220
    iget v11, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    .line 221
    .end local v10    # "numPairs":Ljava/lang/Integer;
    goto :goto_6

    .line 222
    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_a
        0x43 -> :sswitch_9
        0x44 -> :sswitch_8
        0x46 -> :sswitch_7
        0x49 -> :sswitch_6
        0x4a -> :sswitch_5
        0x53 -> :sswitch_4
        0x5a -> :sswitch_3
        0x63 -> :sswitch_2
        0x65 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasContent()Z
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type_RS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public incrementAnnoN()V
    .locals 2

    .line 234
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->anno_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->anno_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->increment(I)V

    .line 235
    return-void
.end method

.method synthetic lambda$addAnnotation$0$org-apache-commons-compress-harmony-pack200-MetadataBandGroup(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->name_RU:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$addAnnotation$1$org-apache-commons-compress-harmony-pack200-MetadataBandGroup(Ljava/lang/String;)V
    .locals 2
    .param p1, "element"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nesttype_RS:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$addAnnotation$2$org-apache-commons-compress-harmony-pack200-MetadataBandGroup(Ljava/lang/String;)V
    .locals 2
    .param p1, "element"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestname_RU:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$addParameterAnnotation$3$org-apache-commons-compress-harmony-pack200-MetadataBandGroup(Ljava/lang/String;)V
    .locals 2
    .param p1, "desc"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type_RS:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$addParameterAnnotation$4$org-apache-commons-compress-harmony-pack200-MetadataBandGroup(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->name_RU:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$addParameterAnnotation$5$org-apache-commons-compress-harmony-pack200-MetadataBandGroup(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nesttype_RS:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$addParameterAnnotation$6$org-apache-commons-compress-harmony-pack200-MetadataBandGroup(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestname_RU:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public newEntryInAnnoN()V
    .locals 2

    .line 238
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->anno_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 239
    return-void
.end method

.method public numBackwardsCalls()I
    .locals 1

    .line 246
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls:I

    return v0
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 256
    const-string v0, "Writing metadata band group..."

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 259
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->context:I

    if-nez v0, :cond_0

    .line 260
    const-string v0, "Class"

    .local v0, "contextStr":Ljava/lang/String;
    goto :goto_0

    .line 261
    .end local v0    # "contextStr":Ljava/lang/String;
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->context:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 262
    const-string v0, "Field"

    .restart local v0    # "contextStr":Ljava/lang/String;
    goto :goto_0

    .line 264
    .end local v0    # "contextStr":Ljava/lang/String;
    :cond_1
    const-string v0, "Method"

    .line 267
    .restart local v0    # "contextStr":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    const-string v2, "AD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "]"

    const-string v3, " bytes from "

    const-string v4, "Wrote "

    const-string v5, "_"

    if-nez v1, :cond_3

    .line 268
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    const/16 v6, 0x50

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v6, -0x1

    const-string v7, " anno_N["

    if-eq v1, v6, :cond_2

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " param_NB"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->param_NB:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v6

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 271
    .local v1, "encodedBand":[B
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v8, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->param_NB:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 274
    .end local v1    # "encodedBand":[B
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " anno_N"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->anno_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v6

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 275
    .restart local v1    # "encodedBand":[B
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 276
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v8, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->anno_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 278
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type_RS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type_RS:Ljava/util/List;

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v7

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 279
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 280
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type_RS["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type_RS:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pair_N"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v7

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 283
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pair_N["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 286
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " name_RU"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->name_RU:Ljava/util/List;

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v7

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 287
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 288
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " name_RU["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->name_RU:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 290
    .end local v1    # "encodedBand":[B
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " T"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->T:Ljava/util/List;

    invoke-direct {p0, v6}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->tagListToArray(Ljava/util/List;)[I

    move-result-object v6

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 291
    .restart local v1    # "encodedBand":[B
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 292
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " T["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->T:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 294
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " caseI_KI"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseI_KI:Ljava/util/List;

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v7

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 295
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " caseI_KI["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseI_KI:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 298
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " caseD_KD"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseD_KD:Ljava/util/List;

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v7

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 299
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 300
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " caseD_KD["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseD_KD:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " caseF_KF"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseF_KF:Ljava/util/List;

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v7

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 303
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 304
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " caseF_KF["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseF_KF:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 306
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " caseJ_KJ"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseJ_KJ:Ljava/util/List;

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v7

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 307
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " caseJ_KJ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseJ_KJ:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " casec_RS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casec_RS:Ljava/util/List;

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v7

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 311
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 312
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " casec_RS["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casec_RS:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 314
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " caseet_RS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseet_RS:Ljava/util/List;

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v7

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 315
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 316
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " caseet_RS["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseet_RS:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 318
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " caseec_RU"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseec_RU:Ljava/util/List;

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v7

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 319
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 320
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " caseec_RU["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->caseec_RU:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 322
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cases_RU"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cases_RU:Ljava/util/List;

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v7

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 323
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 324
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cases_RU["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cases_RU:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 326
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " casearray_N"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casearray_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v7

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 327
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 328
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " casearray_N["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->casearray_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 330
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nesttype_RS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nesttype_RS:Ljava/util/List;

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v7

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 331
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 332
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nesttype_RS["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nesttype_RS:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 334
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nestpair_N"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestpair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v7

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 335
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 336
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nestpair_N["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestpair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 338
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nestname_RU"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestname_RU:Ljava/util/List;

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v7

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v6, v7, v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v1

    .line 339
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 340
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nestname_RU["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->nestname_RU:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 342
    .end local v0    # "contextStr":Ljava/lang/String;
    .end local v1    # "encodedBand":[B
    :cond_4
    return-void
.end method

.method public removeLatest()V
    .locals 4

    .line 348
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->anno_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->anno_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v0

    .line 349
    .local v0, "latest":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 350
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type_RS:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->type_RS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 351
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pair_N:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v2

    .line 352
    .local v2, "pairs":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 353
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeOnePair()V

    .line 352
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 349
    .end local v2    # "pairs":I
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
