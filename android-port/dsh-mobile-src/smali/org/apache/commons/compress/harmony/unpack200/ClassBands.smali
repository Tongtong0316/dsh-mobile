.class public Lorg/apache/commons/compress/harmony/unpack200/ClassBands;
.super Lorg/apache/commons/compress/harmony/unpack200/BandSet;
.source "ClassBands.java"


# instance fields
.field private final attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

.field private classAccessFlags:[J

.field private classAttributes:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final classCount:I

.field private classFieldCount:[I

.field private classFlags:[J

.field private classInterfacesInts:[[I

.field private classMethodCount:[I

.field private classSuperInts:[I

.field private classThis:[Ljava/lang/String;

.field private classThisInts:[I

.field private classVersionMajor:[I

.field private classVersionMinor:[I

.field private codeAttributes:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private codeHandlerCatchPO:[[I

.field private codeHandlerClassRCN:[[I

.field private codeHandlerCount:[I

.field private codeHandlerEndPO:[[I

.field private codeHandlerStartP:[[I

.field private codeHasAttributes:[Z

.field private codeMaxNALocals:[I

.field private codeMaxStack:[I

.field private final cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

.field private fieldAccessFlags:[[J

.field private fieldAttributes:[[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private fieldDescr:[[Ljava/lang/String;

.field private fieldDescrInts:[[I

.field private fieldFlags:[[J

.field private icLocal:[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

.field private methodAccessFlags:[[J

.field private methodAttrCalls:[I

.field private methodAttributes:[[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private methodDescr:[[Ljava/lang/String;

.field private methodDescrInts:[[I

.field private methodFlags:[[J

.field private final options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;


# direct methods
.method public static synthetic $r8$lambda$ZpmJ_VNnAu-jaI1Md1zDJiayPjU(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$wBZ5N9SAmxJLRX-vx8hIUeo_fgc()Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V
    .locals 1
    .param p1, "segment"    # Lorg/apache/commons/compress/harmony/unpack200/Segment;

    .line 126
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    .line 127
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getAttrDefinitionBands()Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->getAttributeDefinitionMap()Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    .line 128
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    .line 129
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getClassCount()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    .line 130
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    .line 132
    return-void
.end method

.method private getCallCount([[I[[JI)I
    .locals 12
    .param p1, "methodAttrIndexes"    # [[I
    .param p2, "flags"    # [[J
    .param p3, "context"    # I

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "callCount":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 137
    .local v4, "element":[I
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_0

    aget v7, v4, v6

    .line 138
    .local v7, "index":I
    iget-object v8, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    invoke-virtual {v8, v7, p3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v8

    .line 139
    .local v8, "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result v9

    add-int/2addr v0, v9

    .line 137
    .end local v7    # "index":I
    .end local v8    # "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 136
    .end local v4    # "element":[I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    :cond_1
    const/4 v1, 0x0

    .line 143
    .local v1, "layoutsUsed":I
    array-length v3, p2

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, p2, v4

    .line 144
    .local v5, "flag":[J
    array-length v6, v5

    move v7, v2

    :goto_3
    if-ge v7, v6, :cond_2

    aget-wide v8, v5, v7

    .line 145
    .local v8, "element":J
    int-to-long v10, v1

    or-long/2addr v10, v8

    long-to-int v1, v10

    .line 144
    .end local v8    # "element":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 143
    .end local v5    # "flag":[J
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 148
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    const/16 v3, 0x1a

    if-ge v2, v3, :cond_5

    .line 149
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    and-int/2addr v3, v1

    if-eqz v3, :cond_4

    .line 150
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    invoke-virtual {v3, v2, p3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v3

    .line 151
    .local v3, "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result v4

    add-int/2addr v0, v4

    .line 148
    .end local v3    # "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 154
    .end local v2    # "i":I
    :cond_5
    return v0
.end method

.method static synthetic lambda$parseClassAttrBands$0(I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "i"    # I

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$parseCodeBands$1(I)Ljava/util/List;
    .locals 1
    .param p0, "i"    # I

    .line 741
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private parseClassAttrBands(Ljava/io/InputStream;)V
    .locals 67
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 330
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpUTF8()[Ljava/lang/String;

    move-result-object v8

    .line 331
    .local v8, "cpUTF8":[Ljava/lang/String;
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpClass()[Ljava/lang/String;

    move-result-object v9

    .line 334
    .local v9, "cpClass":[Ljava/lang/String;
    iget v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAttributes:[Ljava/util/ArrayList;

    .line 335
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAttributes:[Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 337
    iget v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasClassFlagsHi()Z

    move-result v5

    const-string v1, "class_flags"

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[J

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    .line 338
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countBit16([J)I

    move-result v0

    .line 339
    .local v0, "classAttrCount":I
    const-string v1, "class_attr_count"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v1, v7, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 340
    .local v1, "classAttrCounts":[I
    const-string v2, "class_attr_indexes"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v2, v7, v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v2

    .line 341
    .local v2, "classAttrIndexes":[[I
    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    filled-new-array {v3}, [[J

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v6, v2, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getCallCount([[I[[JI)I

    move-result v3

    .line 342
    .local v3, "callCount":I
    const-string v5, "class_attr_calls"

    sget-object v10, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v5, v7, v10, v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v5

    .line 344
    .local v5, "classAttrCalls":[I
    iget-object v10, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v11, "Deprecated"

    invoke-virtual {v10, v11, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v10

    .line 346
    .local v10, "deprecatedLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v11, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v12, "SourceFile"

    invoke-virtual {v11, v12, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v11

    .line 347
    .local v11, "sourceFileLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v12, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    invoke-static {v12, v11}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v12

    .line 348
    .local v12, "sourceFileCount":I
    const-string v13, "class_SourceFile_RUN"

    sget-object v14, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v13, v7, v14, v12}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v13

    .line 350
    .local v13, "classSourceFile":[I
    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v15, "EnclosingMethod"

    invoke-virtual {v14, v15, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v14

    .line 351
    .local v14, "enclosingMethodLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    invoke-static {v15, v14}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v15

    .line 352
    .local v15, "enclosingMethodCount":I
    const-string v4, "class_EnclosingMethod_RC"

    move/from16 v16, v0

    .end local v0    # "classAttrCount":I
    .local v16, "classAttrCount":I
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v4, v7, v0, v15}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    .line 353
    .local v0, "enclosingMethodRC":[I
    const-string v4, "class_EnclosingMethod_RDN"

    move-object/from16 v17, v1

    .end local v1    # "classAttrCounts":[I
    .local v17, "classAttrCounts":[I
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v4, v7, v1, v15}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 355
    .local v1, "enclosingMethodRDN":[I
    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move-object/from16 v18, v2

    .end local v2    # "classAttrIndexes":[[I
    .local v18, "classAttrIndexes":[[I
    const-string v2, "Signature"

    move/from16 v19, v3

    const/4 v3, 0x0

    .end local v3    # "callCount":I
    .local v19, "callCount":I
    invoke-virtual {v4, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v2

    .line 356
    .local v2, "signatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    invoke-static {v3, v2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v3

    .line 357
    .local v3, "signatureCount":I
    const-string v4, "class_Signature_RS"

    move/from16 v20, v12

    .end local v12    # "sourceFileCount":I
    .local v20, "sourceFileCount":I
    sget-object v12, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v4, v7, v12, v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v4

    .line 359
    .local v4, "classSignature":[I
    invoke-direct {v6, v7, v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseClassMetadataBands(Ljava/io/InputStream;[I)I

    move-result v12

    .line 361
    .local v12, "backwardsCallsUsed":I
    move/from16 v21, v3

    .end local v3    # "signatureCount":I
    .local v21, "signatureCount":I
    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move/from16 v22, v15

    .end local v15    # "enclosingMethodCount":I
    .local v22, "enclosingMethodCount":I
    const-string v15, "InnerClasses"

    move-object/from16 v23, v8

    const/4 v8, 0x0

    .end local v8    # "cpUTF8":[Ljava/lang/String;
    .local v23, "cpUTF8":[Ljava/lang/String;
    invoke-virtual {v3, v15, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v3

    .line 362
    .local v3, "innerClassLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    invoke-static {v8, v3}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v8

    .line 363
    .local v8, "innerClassCount":I
    const-string v15, "class_InnerClasses_N"

    move-object/from16 v24, v9

    .end local v9    # "cpClass":[Ljava/lang/String;
    .local v24, "cpClass":[Ljava/lang/String;
    sget-object v9, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v15, v7, v9, v8}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v9

    .line 364
    .local v9, "classInnerClassesN":[I
    const-string v15, "class_InnerClasses_RC"

    move/from16 v25, v8

    .end local v8    # "innerClassCount":I
    .local v25, "innerClassCount":I
    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v15, v7, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v8

    .line 365
    .local v8, "classInnerClassesRC":[[I
    const-string v15, "class_InnerClasses_F"

    move-object/from16 v26, v8

    .end local v8    # "classInnerClassesRC":[[I
    .local v26, "classInnerClassesRC":[[I
    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v15, v7, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v8

    .line 366
    .local v8, "classInnerClassesF":[[I
    const/4 v15, 0x0

    .line 367
    .local v15, "flagsCount":I
    move/from16 v27, v15

    .end local v15    # "flagsCount":I
    .local v27, "flagsCount":I
    array-length v15, v8

    move-object/from16 v28, v9

    move/from16 v9, v27

    move-object/from16 v27, v3

    const/4 v3, 0x0

    .end local v3    # "innerClassLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v9, "flagsCount":I
    .local v27, "innerClassLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v28, "classInnerClassesN":[I
    :goto_0
    if-ge v3, v15, :cond_2

    move/from16 v29, v15

    aget-object v15, v8, v3

    .line 368
    .local v15, "element":[I
    move-object/from16 v30, v8

    .end local v8    # "classInnerClassesF":[[I
    .local v30, "classInnerClassesF":[[I
    array-length v8, v15

    move-object/from16 v31, v4

    const/4 v4, 0x0

    .end local v4    # "classSignature":[I
    .local v31, "classSignature":[I
    :goto_1
    if-ge v4, v8, :cond_1

    aget v32, v15, v4

    .line 369
    .local v32, "element2":I
    if-eqz v32, :cond_0

    .line 370
    add-int/lit8 v9, v9, 0x1

    .line 368
    .end local v32    # "element2":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 367
    .end local v15    # "element":[I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move/from16 v15, v29

    move-object/from16 v8, v30

    move-object/from16 v4, v31

    goto :goto_0

    .line 374
    .end local v30    # "classInnerClassesF":[[I
    .end local v31    # "classSignature":[I
    .restart local v4    # "classSignature":[I
    .restart local v8    # "classInnerClassesF":[[I
    :cond_2
    move-object/from16 v31, v4

    move-object/from16 v30, v8

    .end local v4    # "classSignature":[I
    .end local v8    # "classInnerClassesF":[[I
    .restart local v30    # "classInnerClassesF":[[I
    .restart local v31    # "classSignature":[I
    const-string v3, "class_InnerClasses_outer_RCN"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v3, v7, v4, v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    .line 375
    .local v3, "classInnerClassesOuterRCN":[I
    const-string v4, "class_InnerClasses_name_RUN"

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v4, v7, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v4

    .line 377
    .local v4, "classInnerClassesNameRUN":[I
    iget-object v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v15, "class-file version"

    move/from16 v29, v9

    const/4 v9, 0x0

    .end local v9    # "flagsCount":I
    .local v29, "flagsCount":I
    invoke-virtual {v8, v15, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v8

    .line 378
    .local v8, "versionLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    invoke-static {v9, v8}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v9

    .line 379
    .local v9, "versionCount":I
    const-string v15, "class_file_version_minor_H"

    move-object/from16 v32, v8

    .end local v8    # "versionLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v32, "versionLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v15, v7, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v8

    .line 380
    .local v8, "classFileVersionMinorH":[I
    const-string v15, "class_file_version_major_H"

    move-object/from16 v33, v8

    .end local v8    # "classFileVersionMinorH":[I
    .local v33, "classFileVersionMinorH":[I
    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v15, v7, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v8

    .line 381
    .local v8, "classFileVersionMajorH":[I
    if-lez v9, :cond_3

    .line 382
    iget v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    new-array v15, v15, [I

    iput-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classVersionMajor:[I

    .line 383
    iget v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    new-array v15, v15, [I

    iput-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classVersionMinor:[I

    .line 385
    :cond_3
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getDefaultClassMajorVersion()I

    move-result v15

    .line 386
    .local v15, "defaultVersionMajor":I
    move/from16 v34, v9

    .end local v9    # "versionCount":I
    .local v34, "versionCount":I
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getDefaultClassMinorVersion()I

    move-result v9

    .line 389
    .local v9, "defaultVersionMinor":I
    move/from16 v35, v12

    .line 390
    .local v35, "backwardsCallIndex":I
    move/from16 v36, v12

    .end local v12    # "backwardsCallsUsed":I
    .local v36, "backwardsCallsUsed":I
    iget-object v12, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasClassFlagsHi()Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x3e

    goto :goto_2

    :cond_4
    const/16 v12, 0x1f

    .line 391
    .local v12, "limit":I
    :goto_2
    move/from16 v37, v9

    .end local v9    # "defaultVersionMinor":I
    .local v37, "defaultVersionMinor":I
    add-int/lit8 v9, v12, 0x1

    new-array v9, v9, [Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    .line 392
    .local v9, "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    move/from16 v38, v15

    .end local v15    # "defaultVersionMajor":I
    .local v38, "defaultVersionMajor":I
    add-int/lit8 v15, v12, 0x1

    new-array v15, v15, [I

    .line 393
    .local v15, "counts":[I
    move-object/from16 v39, v8

    .end local v8    # "classFileVersionMajorH":[I
    .local v39, "classFileVersionMajorH":[I
    add-int/lit8 v8, v12, 0x1

    new-array v8, v8, [Ljava/util/List;

    .line 394
    .local v8, "otherAttributes":[Ljava/util/List;, "[Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    const/16 v40, 0x0

    move-object/from16 v41, v4

    move/from16 v4, v40

    .local v4, "i":I
    .local v41, "classInnerClassesNameRUN":[I
    :goto_3
    if-ge v4, v12, :cond_6

    .line 395
    move/from16 v40, v12

    .end local v12    # "limit":I
    .local v40, "limit":I
    iget-object v12, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move-object/from16 v42, v3

    const/4 v3, 0x0

    .end local v3    # "classInnerClassesOuterRCN":[I
    .local v42, "classInnerClassesOuterRCN":[I
    invoke-virtual {v12, v4, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v12

    .line 396
    .local v12, "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v3

    if-nez v3, :cond_5

    .line 397
    aput-object v12, v9, v4

    .line 398
    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    invoke-static {v3, v12}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v3

    aput v3, v15, v4

    .line 394
    .end local v12    # "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    move/from16 v12, v40

    move-object/from16 v3, v42

    goto :goto_3

    .end local v40    # "limit":I
    .end local v42    # "classInnerClassesOuterRCN":[I
    .restart local v3    # "classInnerClassesOuterRCN":[I
    .local v12, "limit":I
    :cond_6
    move-object/from16 v42, v3

    move/from16 v40, v12

    .line 401
    .end local v3    # "classInnerClassesOuterRCN":[I
    .end local v4    # "i":I
    .end local v12    # "limit":I
    .restart local v40    # "limit":I
    .restart local v42    # "classInnerClassesOuterRCN":[I
    const/4 v3, 0x0

    move/from16 v4, v35

    .end local v35    # "backwardsCallIndex":I
    .local v3, "i":I
    .local v4, "backwardsCallIndex":I
    :goto_4
    array-length v12, v15

    if-ge v3, v12, :cond_9

    .line 402
    aget v12, v15, v3

    if-lez v12, :cond_8

    .line 403
    iget-object v12, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move-object/from16 v35, v2

    .end local v2    # "signatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v35, "signatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    aget-object v2, v9, v3

    invoke-virtual {v12, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeBands(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    move-result-object v2

    .line 404
    .local v2, "bands":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
    aget v12, v15, v3

    invoke-virtual {v2, v7, v12}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseAttributes(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object v12

    aput-object v12, v8, v3

    .line 405
    aget-object v12, v9, v3

    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result v12

    .line 406
    .local v12, "numBackwardsCallables":I
    if-lez v12, :cond_7

    .line 407
    new-array v7, v12, [I

    .line 408
    .local v7, "backwardsCalls":[I
    move-object/from16 v43, v15

    const/4 v15, 0x0

    .end local v15    # "counts":[I
    .local v43, "counts":[I
    invoke-static {v5, v4, v7, v15, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    invoke-virtual {v2, v7}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->setBackwardsCalls([I)V

    .line 410
    add-int/2addr v4, v12

    goto :goto_5

    .line 406
    .end local v7    # "backwardsCalls":[I
    .end local v43    # "counts":[I
    .restart local v15    # "counts":[I
    :cond_7
    move-object/from16 v43, v15

    .end local v15    # "counts":[I
    .restart local v43    # "counts":[I
    goto :goto_5

    .line 402
    .end local v12    # "numBackwardsCallables":I
    .end local v35    # "signatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v43    # "counts":[I
    .local v2, "signatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v15    # "counts":[I
    :cond_8
    move-object/from16 v35, v2

    move-object/from16 v43, v15

    .line 401
    .end local v2    # "signatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v15    # "counts":[I
    .restart local v35    # "signatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v43    # "counts":[I
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, p1

    move-object/from16 v2, v35

    move-object/from16 v15, v43

    goto :goto_4

    .end local v35    # "signatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v43    # "counts":[I
    .restart local v2    # "signatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v15    # "counts":[I
    :cond_9
    move-object/from16 v35, v2

    move-object/from16 v43, v15

    .line 416
    .end local v2    # "signatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v3    # "i":I
    .end local v15    # "counts":[I
    .restart local v35    # "signatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v43    # "counts":[I
    const/4 v2, 0x0

    .line 417
    .local v2, "sourceFileIndex":I
    const/4 v3, 0x0

    .line 418
    .local v3, "enclosingMethodIndex":I
    const/4 v7, 0x0

    .line 419
    .local v7, "signatureIndex":I
    const/4 v12, 0x0

    .line 420
    .local v12, "innerClassIndex":I
    const/4 v15, 0x0

    .line 421
    .local v15, "innerClassC2NIndex":I
    const/16 v44, 0x0

    .line 422
    .local v44, "versionIndex":I
    move/from16 v45, v2

    .end local v2    # "sourceFileIndex":I
    .local v45, "sourceFileIndex":I
    iget v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    new-array v2, v2, [[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    iput-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->icLocal:[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    .line 423
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    move/from16 v46, v4

    .end local v4    # "backwardsCallIndex":I
    .local v46, "backwardsCallIndex":I
    iget v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    if-ge v2, v4, :cond_1c

    .line 424
    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    move-object/from16 v48, v8

    move-object/from16 v47, v9

    .end local v8    # "otherAttributes":[Ljava/util/List;, "[Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .end local v9    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v47, "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v48, "otherAttributes":[Ljava/util/List;, "[Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    aget-wide v8, v4, v2

    .line 425
    .local v8, "flag":J
    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    move-object/from16 v49, v0

    move-object/from16 v50, v1

    .end local v0    # "enclosingMethodRC":[I
    .end local v1    # "enclosingMethodRDN":[I
    .local v49, "enclosingMethodRC":[I
    .local v50, "enclosingMethodRDN":[I
    aget-wide v0, v4, v2

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 426
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAttributes:[Ljava/util/ArrayList;

    aget-object v0, v0, v2

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/DeprecatedAttribute;

    invoke-direct {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/DeprecatedAttribute;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_a
    invoke-virtual {v11, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 429
    aget v0, v13, v45

    move v4, v2

    .end local v2    # "i":I
    .local v4, "i":I
    int-to-long v1, v0

    .line 430
    .local v1, "result":J
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v0

    invoke-virtual {v11, v1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getValue(JLorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v0

    .line 431
    .local v0, "value":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    if-nez v0, :cond_e

    .line 433
    move-object/from16 v52, v0

    .end local v0    # "value":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v52, "value":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classThis:[Ljava/lang/String;

    aget-object v0, v0, v4

    move-wide/from16 v53, v1

    .end local v1    # "result":J
    .local v53, "result":J
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classThis:[Ljava/lang/String;

    aget-object v1, v1, v4

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "className":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 438
    .local v1, "chars":[C
    const/4 v2, -0x1

    .line 439
    .local v2, "index":I
    const/16 v55, 0x0

    move/from16 v56, v2

    move/from16 v2, v55

    .local v2, "j":I
    .local v56, "index":I
    :goto_7
    move-object/from16 v55, v5

    .end local v5    # "classAttrCalls":[I
    .local v55, "classAttrCalls":[I
    array-length v5, v1

    if-ge v2, v5, :cond_c

    .line 440
    aget-char v5, v1, v2

    move-object/from16 v57, v1

    .end local v1    # "chars":[C
    .local v57, "chars":[C
    const/16 v1, 0x2d

    if-gt v5, v1, :cond_b

    .line 441
    move v1, v2

    .line 442
    .end local v56    # "index":I
    .local v1, "index":I
    goto :goto_8

    .line 439
    .end local v1    # "index":I
    .restart local v56    # "index":I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v55

    move-object/from16 v1, v57

    goto :goto_7

    .end local v57    # "chars":[C
    .local v1, "chars":[C
    :cond_c
    move-object/from16 v57, v1

    .end local v1    # "chars":[C
    .restart local v57    # "chars":[C
    move/from16 v2, v56

    .line 445
    .end local v56    # "index":I
    .local v2, "index":I
    :goto_8
    const/4 v1, -0x1

    if-le v2, v1, :cond_d

    .line 446
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 449
    :cond_d
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v56, v0

    .end local v0    # "className":Ljava/lang/String;
    .local v56, "className":Ljava/lang/String;
    const-string v0, ".java"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v5}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;Z)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    .end local v52    # "value":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v0, "value":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    goto :goto_9

    .line 431
    .end local v2    # "index":I
    .end local v53    # "result":J
    .end local v55    # "classAttrCalls":[I
    .end local v56    # "className":Ljava/lang/String;
    .end local v57    # "chars":[C
    .local v1, "result":J
    .restart local v5    # "classAttrCalls":[I
    :cond_e
    move-object/from16 v52, v0

    move-wide/from16 v53, v1

    move-object/from16 v55, v5

    .line 451
    .end local v1    # "result":J
    .end local v5    # "classAttrCalls":[I
    .restart local v53    # "result":J
    .restart local v55    # "classAttrCalls":[I
    :goto_9
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAttributes:[Ljava/util/ArrayList;

    aget-object v1, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;

    move-object v5, v0

    check-cast v5, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-direct {v2, v5}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    add-int/lit8 v45, v45, 0x1

    goto :goto_a

    .line 428
    .end local v0    # "value":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .end local v4    # "i":I
    .end local v53    # "result":J
    .end local v55    # "classAttrCalls":[I
    .local v2, "i":I
    .restart local v5    # "classAttrCalls":[I
    :cond_f
    move v4, v2

    move-object/from16 v55, v5

    .line 454
    .end local v2    # "i":I
    .end local v5    # "classAttrCalls":[I
    .restart local v4    # "i":I
    .restart local v55    # "classAttrCalls":[I
    :goto_a
    invoke-virtual {v14, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 455
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    aget v1, v49, v3

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v0

    .line 456
    .local v0, "theClass":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    const/4 v1, 0x0

    .line 457
    .local v1, "theMethod":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;
    aget v2, v50, v3

    if-eqz v2, :cond_10

    .line 458
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    aget v5, v50, v3

    const/16 v51, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpNameAndTypeValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    move-result-object v1

    .line 460
    :cond_10
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAttributes:[Ljava/util/ArrayList;

    aget-object v2, v2, v4

    new-instance v5, Lorg/apache/commons/compress/harmony/unpack200/bytecode/EnclosingMethodAttribute;

    invoke-direct {v5, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/EnclosingMethodAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    add-int/lit8 v3, v3, 0x1

    .line 463
    .end local v0    # "theClass":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    .end local v1    # "theMethod":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;
    :cond_11
    move-object/from16 v0, v35

    .end local v35    # "signatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v0, "signatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 464
    aget v1, v31, v7

    int-to-long v1, v1

    .line 465
    .local v1, "result":J
    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getValue(JLorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 466
    .local v5, "value":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    move-object/from16 v35, v0

    .end local v0    # "signatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v35    # "signatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAttributes:[Ljava/util/ArrayList;

    aget-object v0, v0, v4

    move-wide/from16 v51, v1

    .end local v1    # "result":J
    .local v51, "result":J
    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SignatureAttribute;

    invoke-direct {v1, v5}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SignatureAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 463
    .end local v5    # "value":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .end local v35    # "signatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v51    # "result":J
    .restart local v0    # "signatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_12
    move-object/from16 v35, v0

    .line 469
    .end local v0    # "signatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v35    # "signatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :goto_b
    move-object/from16 v0, v27

    .end local v27    # "innerClassLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v0, "innerClassLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 472
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->icLocal:[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    aget v2, v28, v12

    new-array v2, v2, [Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    aput-object v2, v1, v4

    .line 473
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_c
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->icLocal:[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    aget-object v2, v2, v4

    array-length v2, v2

    if-ge v1, v2, :cond_16

    .line 474
    aget-object v2, v26, v12

    aget v2, v2, v1

    .line 475
    .local v2, "icTupleCIndex":I
    const/4 v5, -0x1

    .line 476
    .local v5, "icTupleC2Index":I
    const/16 v27, -0x1

    .line 478
    .local v27, "icTupleNIndex":I
    move-object/from16 v51, v0

    .end local v0    # "innerClassLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v51, "innerClassLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    aget-object v0, v24, v2

    .line 479
    .local v0, "icTupleC":Ljava/lang/String;
    aget-object v52, v30, v12

    aget v52, v52, v1

    .line 480
    .local v52, "icTupleF":I
    const/16 v53, 0x0

    .line 481
    .local v53, "icTupleC2":Ljava/lang/String;
    const/16 v54, 0x0

    .line 483
    .local v54, "icTupleN":Ljava/lang/String;
    if-eqz v52, :cond_13

    .line 484
    aget v5, v42, v15

    .line 485
    aget v27, v41, v15

    .line 486
    aget-object v53, v24, v5

    .line 487
    aget-object v54, v23, v27

    .line 488
    add-int/lit8 v15, v15, 0x1

    move/from16 v65, v3

    move/from16 v66, v7

    goto :goto_e

    .line 491
    :cond_13
    move/from16 v65, v3

    .end local v3    # "enclosingMethodIndex":I
    .local v65, "enclosingMethodIndex":I
    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getIcBands()Lorg/apache/commons/compress/harmony/unpack200/IcBands;

    move-result-object v3

    .line 492
    .local v3, "icBands":Lorg/apache/commons/compress/harmony/unpack200/IcBands;
    move/from16 v56, v5

    .end local v5    # "icTupleC2Index":I
    .local v56, "icTupleC2Index":I
    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->getIcTuples()[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    move-result-object v5

    .line 493
    .local v5, "icAll":[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    move-object/from16 v57, v3

    .end local v3    # "icBands":Lorg/apache/commons/compress/harmony/unpack200/IcBands;
    .local v57, "icBands":Lorg/apache/commons/compress/harmony/unpack200/IcBands;
    array-length v3, v5

    move/from16 v66, v7

    const/4 v7, 0x0

    .end local v7    # "signatureIndex":I
    .local v66, "signatureIndex":I
    :goto_d
    if-ge v7, v3, :cond_15

    aget-object v58, v5, v7

    .line 494
    .local v58, "element":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    move/from16 v59, v3

    invoke-virtual/range {v58 .. v58}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->getC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 495
    invoke-virtual/range {v58 .. v58}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->getF()I

    move-result v52

    .line 496
    invoke-virtual/range {v58 .. v58}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->getC2()Ljava/lang/String;

    move-result-object v53

    .line 497
    invoke-virtual/range {v58 .. v58}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->getN()Ljava/lang/String;

    move-result-object v54

    .line 498
    move/from16 v5, v56

    goto :goto_e

    .line 493
    .end local v58    # "element":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    :cond_14
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v59

    goto :goto_d

    :cond_15
    move/from16 v5, v56

    .line 503
    .end local v56    # "icTupleC2Index":I
    .end local v57    # "icBands":Lorg/apache/commons/compress/harmony/unpack200/IcBands;
    .local v5, "icTupleC2Index":I
    :goto_e
    new-instance v3, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    move-object/from16 v56, v3

    move-object/from16 v57, v0

    move/from16 v58, v52

    move-object/from16 v59, v53

    move-object/from16 v60, v54

    move/from16 v61, v2

    move/from16 v62, v5

    move/from16 v63, v27

    move/from16 v64, v1

    invoke-direct/range {v56 .. v64}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 504
    .local v3, "icTuple":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    iget-object v7, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->icLocal:[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    aget-object v7, v7, v4

    aput-object v3, v7, v1

    .line 473
    .end local v0    # "icTupleC":Ljava/lang/String;
    .end local v2    # "icTupleCIndex":I
    .end local v3    # "icTuple":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    .end local v5    # "icTupleC2Index":I
    .end local v27    # "icTupleNIndex":I
    .end local v52    # "icTupleF":I
    .end local v53    # "icTupleC2":Ljava/lang/String;
    .end local v54    # "icTupleN":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v51

    move/from16 v3, v65

    move/from16 v7, v66

    goto/16 :goto_c

    .end local v51    # "innerClassLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v65    # "enclosingMethodIndex":I
    .end local v66    # "signatureIndex":I
    .local v0, "innerClassLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v3, "enclosingMethodIndex":I
    .restart local v7    # "signatureIndex":I
    :cond_16
    move-object/from16 v51, v0

    move/from16 v65, v3

    move/from16 v66, v7

    .line 506
    .end local v0    # "innerClassLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v1    # "j":I
    .end local v3    # "enclosingMethodIndex":I
    .end local v7    # "signatureIndex":I
    .restart local v51    # "innerClassLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v65    # "enclosingMethodIndex":I
    .restart local v66    # "signatureIndex":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 469
    .end local v51    # "innerClassLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v65    # "enclosingMethodIndex":I
    .end local v66    # "signatureIndex":I
    .restart local v0    # "innerClassLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v3    # "enclosingMethodIndex":I
    .restart local v7    # "signatureIndex":I
    :cond_17
    move-object/from16 v51, v0

    move/from16 v65, v3

    move/from16 v66, v7

    .line 508
    .end local v0    # "innerClassLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v3    # "enclosingMethodIndex":I
    .end local v7    # "signatureIndex":I
    .restart local v51    # "innerClassLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v65    # "enclosingMethodIndex":I
    .restart local v66    # "signatureIndex":I
    :goto_f
    move-object/from16 v0, v32

    .end local v32    # "versionLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v0, "versionLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 509
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classVersionMajor:[I

    aget v2, v39, v44

    aput v2, v1, v4

    .line 510
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classVersionMinor:[I

    aget v2, v33, v44

    aput v2, v1, v4

    .line 511
    add-int/lit8 v44, v44, 0x1

    goto :goto_10

    .line 512
    :cond_18
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classVersionMajor:[I

    if-eqz v1, :cond_19

    .line 514
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classVersionMajor:[I

    aput v38, v1, v4

    .line 515
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classVersionMinor:[I

    aput v37, v1, v4

    .line 518
    :cond_19
    :goto_10
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_11
    move-object/from16 v2, v47

    .end local v47    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v2, "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    array-length v3, v2

    if-ge v1, v3, :cond_1b

    .line 519
    aget-object v3, v2, v1

    if-eqz v3, :cond_1a

    aget-object v3, v2, v1

    invoke-virtual {v3, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 521
    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAttributes:[Ljava/util/ArrayList;

    aget-object v3, v3, v4

    aget-object v5, v48, v1

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    aget-object v3, v48, v1

    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_12

    .line 519
    :cond_1a
    const/4 v7, 0x0

    .line 518
    :goto_12
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v47, v2

    goto :goto_11

    :cond_1b
    const/4 v7, 0x0

    .line 423
    .end local v1    # "j":I
    .end local v8    # "flag":J
    add-int/lit8 v1, v4, 0x1

    move-object/from16 v32, v0

    move-object v9, v2

    move/from16 v4, v46

    move-object/from16 v8, v48

    move-object/from16 v0, v49

    move-object/from16 v27, v51

    move-object/from16 v5, v55

    move/from16 v3, v65

    move/from16 v7, v66

    move v2, v1

    move-object/from16 v1, v50

    .end local v4    # "i":I
    .local v1, "i":I
    goto/16 :goto_6

    .line 526
    .end local v2    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v48    # "otherAttributes":[Ljava/util/List;, "[Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .end local v49    # "enclosingMethodRC":[I
    .end local v50    # "enclosingMethodRDN":[I
    .end local v51    # "innerClassLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v55    # "classAttrCalls":[I
    .end local v65    # "enclosingMethodIndex":I
    .end local v66    # "signatureIndex":I
    .local v0, "enclosingMethodRC":[I
    .local v1, "enclosingMethodRDN":[I
    .restart local v3    # "enclosingMethodIndex":I
    .local v5, "classAttrCalls":[I
    .restart local v7    # "signatureIndex":I
    .local v8, "otherAttributes":[Ljava/util/List;, "[Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .restart local v9    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v27, "innerClassLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v32    # "versionLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_1c
    return-void
.end method

.method private parseClassMetadataBands(Ljava/io/InputStream;[I)I
    .locals 18
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "classAttrCalls"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 538
    move-object/from16 v6, p0

    const/4 v0, 0x0

    .line 539
    .local v0, "numBackwardsCalls":I
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "RVA"

    const/4 v7, 0x0

    aput-object v1, v2, v7

    const-string v1, "RIA"

    const/4 v8, 0x1

    aput-object v1, v2, v8

    .line 541
    .local v2, "RxA":[Ljava/lang/String;
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v3, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v3, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v9

    .line 542
    .local v9, "rvaLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v3, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v3, v7}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v10

    .line 543
    .local v10, "riaLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    invoke-static {v1, v9}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v11

    .line 544
    .local v11, "rvaCount":I
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    invoke-static {v1, v10}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v12

    .line 545
    .local v12, "riaCount":I
    filled-new-array {v11, v12}, [I

    move-result-object v3

    .line 546
    .local v3, "RxACount":[I
    filled-new-array {v7, v7}, [I

    move-result-object v1

    move-object v13, v1

    .line 547
    .local v13, "backwardsCalls":[I
    if-lez v11, :cond_1

    .line 548
    add-int/lit8 v0, v0, 0x1

    .line 549
    aget v1, p2, v7

    aput v1, v13, v7

    .line 550
    if-lez v12, :cond_0

    .line 551
    add-int/lit8 v0, v0, 0x1

    .line 552
    aget v1, p2, v8

    aput v1, v13, v8

    move v14, v0

    goto :goto_0

    .line 550
    :cond_0
    move v14, v0

    goto :goto_0

    .line 554
    :cond_1
    if-lez v12, :cond_2

    .line 555
    add-int/lit8 v0, v0, 0x1

    .line 556
    aget v1, p2, v7

    aput v1, v13, v8

    move v14, v0

    goto :goto_0

    .line 554
    :cond_2
    move v14, v0

    .line 558
    .end local v0    # "numBackwardsCalls":I
    .local v14, "numBackwardsCalls":I
    :goto_0
    const-string v5, "class"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v4, v13

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseMetadata(Ljava/io/InputStream;[Ljava/lang/String;[I[ILjava/lang/String;)[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    move-result-object v0

    .line 559
    .local v0, "mbgs":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    aget-object v1, v0, v7

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getAttributes()Ljava/util/List;

    move-result-object v1

    .line 560
    .local v1, "rvaAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    aget-object v4, v0, v8

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getAttributes()Ljava/util/List;

    move-result-object v4

    .line 561
    .local v4, "riaAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    const/4 v5, 0x0

    .line 562
    .local v5, "rvaAttributesIndex":I
    const/4 v7, 0x0

    .line 563
    .local v7, "riaAttributesIndex":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    array-length v15, v15

    if-ge v8, v15, :cond_5

    .line 564
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "RxA":[Ljava/lang/String;
    .end local v3    # "RxACount":[I
    .local v16, "RxA":[Ljava/lang/String;
    .local v17, "RxACount":[I
    aget-wide v2, v15, v8

    invoke-virtual {v9, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 565
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAttributes:[Ljava/util/ArrayList;

    aget-object v2, v2, v8

    add-int/lit8 v3, v5, 0x1

    .end local v5    # "rvaAttributesIndex":I
    .local v3, "rvaAttributesIndex":I
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v3

    .line 567
    .end local v3    # "rvaAttributesIndex":I
    .restart local v5    # "rvaAttributesIndex":I
    :cond_3
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    move-object v3, v0

    move-object v15, v1

    .end local v0    # "mbgs":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    .end local v1    # "rvaAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .local v3, "mbgs":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    .local v15, "rvaAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    aget-wide v0, v2, v8

    invoke-virtual {v10, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 568
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAttributes:[Ljava/util/ArrayList;

    aget-object v0, v0, v8

    add-int/lit8 v1, v7, 0x1

    .end local v7    # "riaAttributesIndex":I
    .local v1, "riaAttributesIndex":I
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v1

    .line 563
    .end local v1    # "riaAttributesIndex":I
    .restart local v7    # "riaAttributesIndex":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    move-object v0, v3

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto :goto_1

    .line 571
    .end local v8    # "i":I
    .end local v15    # "rvaAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .end local v16    # "RxA":[Ljava/lang/String;
    .end local v17    # "RxACount":[I
    .restart local v0    # "mbgs":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    .local v1, "rvaAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .restart local v2    # "RxA":[Ljava/lang/String;
    .local v3, "RxACount":[I
    :cond_5
    return v14
.end method

.method private parseCodeAttrBands(Ljava/io/InputStream;I)V
    .locals 49
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "codeFlagsCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 575
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasCodeFlagsHi()Z

    move-result v5

    const-string v1, "code_flags"

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[J

    move-result-object v0

    .line 576
    .local v0, "codeFlags":[J
    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countBit16([J)I

    move-result v1

    .line 577
    .local v1, "codeAttrCount":I
    const-string v2, "code_attr_count"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v2, v7, v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v2

    .line 578
    .local v2, "codeAttrCounts":[I
    const-string v3, "code_attr_indexes"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v3, v7, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v3

    .line 579
    .local v3, "codeAttrIndexes":[[I
    const/4 v4, 0x0

    .line 580
    .local v4, "callCount":I
    array-length v5, v3

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x3

    if-ge v9, v5, :cond_1

    aget-object v11, v3, v9

    .line 581
    .local v11, "element":[I
    array-length v12, v11

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_0

    aget v14, v11, v13

    .line 582
    .local v14, "index":I
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    invoke-virtual {v15, v14, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v15

    .line 583
    .local v15, "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result v16

    add-int v4, v4, v16

    .line 581
    .end local v14    # "index":I
    .end local v15    # "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 580
    .end local v11    # "element":[I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 586
    :cond_1
    const-string v5, "code_attr_calls"

    sget-object v9, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v5, v7, v9, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v5

    .line 588
    .local v5, "codeAttrCalls":[I
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v11, "LineNumberTable"

    invoke-virtual {v9, v11, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v9

    .line 589
    .local v9, "lineNumberTableLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    invoke-static {v0, v9}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v11

    .line 590
    .local v11, "lineNumberTableCount":I
    const-string v12, "code_LineNumberTable_N"

    sget-object v13, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v12, v7, v13, v11}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v12

    .line 591
    .local v12, "lineNumberTableN":[I
    const-string v13, "code_LineNumberTable_bci_P"

    sget-object v14, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v13, v7, v14, v12}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v13

    .line 592
    .local v13, "lineNumberTableBciP":[[I
    const-string v14, "code_LineNumberTable_line"

    sget-object v15, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v14, v7, v15, v12}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v14

    .line 594
    .local v14, "lineNumberTableLine":[[I
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v8, "LocalVariableTable"

    invoke-virtual {v15, v8, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v8

    .line 596
    .local v8, "localVariableTableLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move/from16 v17, v1

    .end local v1    # "codeAttrCount":I
    .local v17, "codeAttrCount":I
    const-string v1, "LocalVariableTypeTable"

    invoke-virtual {v15, v1, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v1

    .line 599
    .local v1, "localVariableTypeTableLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    invoke-static {v0, v8}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v15

    .line 600
    .local v15, "lengthLocalVariableNBand":I
    const-string v10, "code_LocalVariableTable_N"

    move-object/from16 v19, v2

    .end local v2    # "codeAttrCounts":[I
    .local v19, "codeAttrCounts":[I
    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v10, v7, v2, v15}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v2

    .line 601
    .local v2, "localVariableTableN":[I
    const-string v10, "code_LocalVariableTable_bci_P"

    move-object/from16 v20, v3

    .end local v3    # "codeAttrIndexes":[[I
    .local v20, "codeAttrIndexes":[[I
    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v10, v7, v3, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v3

    .line 602
    .local v3, "localVariableTableBciP":[[I
    const-string v10, "code_LocalVariableTable_span_O"

    move/from16 v21, v4

    .end local v4    # "callCount":I
    .local v21, "callCount":I
    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v10, v7, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v4

    .line 603
    .local v4, "localVariableTableSpanO":[[I
    const-string v10, "code_LocalVariableTable_name_RU"

    move/from16 v22, v11

    .end local v11    # "lineNumberTableCount":I
    .local v22, "lineNumberTableCount":I
    sget-object v11, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v10, v7, v11, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v10

    .line 604
    .local v10, "localVariableTableNameRU":[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    const-string v11, "code_LocalVariableTable_type_RS"

    move/from16 v23, v15

    .end local v15    # "lengthLocalVariableNBand":I
    .local v23, "lengthLocalVariableNBand":I
    sget-object v15, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v11, v7, v15, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPSignatureReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v11

    .line 605
    .local v11, "localVariableTableTypeRS":[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    const-string v15, "code_LocalVariableTable_slot"

    move-object/from16 v24, v11

    .end local v11    # "localVariableTableTypeRS":[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .local v24, "localVariableTableTypeRS":[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    sget-object v11, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v15, v7, v11, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v11

    .line 607
    .local v11, "localVariableTableSlot":[[I
    invoke-static {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v15

    .line 608
    .local v15, "lengthLocalVariableTypeTableNBand":I
    move-object/from16 v25, v1

    .end local v1    # "localVariableTypeTableLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v25, "localVariableTypeTableLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    const-string v1, "code_LocalVariableTypeTable_N"

    move-object/from16 v26, v11

    .end local v11    # "localVariableTableSlot":[[I
    .local v26, "localVariableTableSlot":[[I
    sget-object v11, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v1, v7, v11, v15}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 609
    .local v1, "localVariableTypeTableN":[I
    const-string v11, "code_LocalVariableTypeTable_bci_P"

    move/from16 v27, v15

    .end local v15    # "lengthLocalVariableTypeTableNBand":I
    .local v27, "lengthLocalVariableTypeTableNBand":I
    sget-object v15, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v11, v7, v15, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v11

    .line 610
    .local v11, "localVariableTypeTableBciP":[[I
    const-string v15, "code_LocalVariableTypeTable_span_O"

    move-object/from16 v28, v11

    .end local v11    # "localVariableTypeTableBciP":[[I
    .local v28, "localVariableTypeTableBciP":[[I
    sget-object v11, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v15, v7, v11, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v11

    .line 611
    .local v11, "localVariableTypeTableSpanO":[[I
    const-string v15, "code_LocalVariableTypeTable_name_RU"

    move-object/from16 v29, v11

    .end local v11    # "localVariableTypeTableSpanO":[[I
    .local v29, "localVariableTypeTableSpanO":[[I
    sget-object v11, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v15, v7, v11, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v11

    .line 613
    .local v11, "localVariableTypeTableNameRU":[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    const-string v15, "code_LocalVariableTypeTable_type_RS"

    move-object/from16 v30, v11

    .end local v11    # "localVariableTypeTableNameRU":[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .local v30, "localVariableTypeTableNameRU":[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    sget-object v11, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v15, v7, v11, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPSignatureReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v11

    .line 615
    .local v11, "localVariableTypeTableTypeRS":[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    const-string v15, "code_LocalVariableTypeTable_slot"

    move-object/from16 v31, v11

    .end local v11    # "localVariableTypeTableTypeRS":[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .local v31, "localVariableTypeTableTypeRS":[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    sget-object v11, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v15, v7, v11, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v11

    .line 618
    .local v11, "localVariableTypeTableSlot":[[I
    const/4 v15, 0x0

    .line 619
    .local v15, "backwardsCallIndex":I
    move/from16 v32, v15

    .end local v15    # "backwardsCallIndex":I
    .local v32, "backwardsCallIndex":I
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasCodeFlagsHi()Z

    move-result v15

    if-eqz v15, :cond_2

    const/16 v15, 0x3e

    goto :goto_2

    :cond_2
    const/16 v15, 0x1f

    .line 620
    .local v15, "limit":I
    :goto_2
    move-object/from16 v33, v11

    .end local v11    # "localVariableTypeTableSlot":[[I
    .local v33, "localVariableTypeTableSlot":[[I
    add-int/lit8 v11, v15, 0x1

    new-array v11, v11, [Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    .line 621
    .local v11, "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    move-object/from16 v34, v1

    .end local v1    # "localVariableTypeTableN":[I
    .local v34, "localVariableTypeTableN":[I
    add-int/lit8 v1, v15, 0x1

    new-array v1, v1, [I

    .line 622
    .local v1, "counts":[I
    move-object/from16 v35, v10

    .end local v10    # "localVariableTableNameRU":[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .local v35, "localVariableTableNameRU":[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    add-int/lit8 v10, v15, 0x1

    new-array v10, v10, [Ljava/util/List;

    .line 623
    .local v10, "otherAttributes":[Ljava/util/List;, "[Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    const/16 v36, 0x0

    move-object/from16 v37, v4

    move/from16 v4, v36

    .local v4, "i":I
    .local v37, "localVariableTableSpanO":[[I
    :goto_3
    if-ge v4, v15, :cond_4

    .line 624
    move/from16 v36, v15

    .end local v15    # "limit":I
    .local v36, "limit":I
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move-object/from16 v38, v3

    const/4 v3, 0x3

    .end local v3    # "localVariableTableBciP":[[I
    .local v38, "localVariableTableBciP":[[I
    invoke-virtual {v15, v4, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v15

    .line 625
    .local v15, "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v18

    if-nez v18, :cond_3

    .line 626
    aput-object v15, v11, v4

    .line 627
    invoke-static {v0, v15}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v18

    aput v18, v1, v4

    .line 623
    .end local v15    # "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    move/from16 v15, v36

    move-object/from16 v3, v38

    goto :goto_3

    .end local v36    # "limit":I
    .end local v38    # "localVariableTableBciP":[[I
    .restart local v3    # "localVariableTableBciP":[[I
    .local v15, "limit":I
    :cond_4
    move-object/from16 v38, v3

    move/from16 v36, v15

    .line 630
    .end local v3    # "localVariableTableBciP":[[I
    .end local v4    # "i":I
    .end local v15    # "limit":I
    .restart local v36    # "limit":I
    .restart local v38    # "localVariableTableBciP":[[I
    const/4 v3, 0x0

    move/from16 v15, v32

    .end local v32    # "backwardsCallIndex":I
    .local v3, "i":I
    .local v15, "backwardsCallIndex":I
    :goto_4
    array-length v4, v1

    if-ge v3, v4, :cond_7

    .line 631
    aget v4, v1, v3

    if-lez v4, :cond_6

    .line 632
    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move-object/from16 v18, v2

    .end local v2    # "localVariableTableN":[I
    .local v18, "localVariableTableN":[I
    aget-object v2, v11, v3

    invoke-virtual {v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeBands(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    move-result-object v2

    .line 633
    .local v2, "bands":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
    aget v4, v1, v3

    invoke-virtual {v2, v7, v4}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseAttributes(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object v4

    aput-object v4, v10, v3

    .line 634
    aget-object v4, v11, v3

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result v4

    .line 635
    .local v4, "numBackwardsCallables":I
    if-lez v4, :cond_5

    .line 636
    move-object/from16 v32, v1

    .end local v1    # "counts":[I
    .local v32, "counts":[I
    new-array v1, v4, [I

    .line 637
    .local v1, "backwardsCalls":[I
    const/4 v7, 0x0

    invoke-static {v5, v15, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 638
    invoke-virtual {v2, v1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->setBackwardsCalls([I)V

    .line 639
    add-int/2addr v15, v4

    goto :goto_5

    .line 635
    .end local v32    # "counts":[I
    .local v1, "counts":[I
    :cond_5
    move-object/from16 v32, v1

    .end local v1    # "counts":[I
    .restart local v32    # "counts":[I
    goto :goto_5

    .line 631
    .end local v4    # "numBackwardsCallables":I
    .end local v18    # "localVariableTableN":[I
    .end local v32    # "counts":[I
    .restart local v1    # "counts":[I
    .local v2, "localVariableTableN":[I
    :cond_6
    move-object/from16 v32, v1

    move-object/from16 v18, v2

    .line 630
    .end local v1    # "counts":[I
    .end local v2    # "localVariableTableN":[I
    .restart local v18    # "localVariableTableN":[I
    .restart local v32    # "counts":[I
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, p1

    move-object/from16 v2, v18

    move-object/from16 v1, v32

    goto :goto_4

    .end local v18    # "localVariableTableN":[I
    .end local v32    # "counts":[I
    .restart local v1    # "counts":[I
    .restart local v2    # "localVariableTableN":[I
    :cond_7
    move-object/from16 v32, v1

    move-object/from16 v18, v2

    .line 644
    .end local v1    # "counts":[I
    .end local v2    # "localVariableTableN":[I
    .end local v3    # "i":I
    .restart local v18    # "localVariableTableN":[I
    .restart local v32    # "counts":[I
    const/4 v1, 0x0

    .line 645
    .local v1, "lineNumberIndex":I
    const/4 v2, 0x0

    .line 646
    .local v2, "lvtIndex":I
    const/4 v3, 0x0

    .line 647
    .local v3, "lvttIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    move/from16 v7, p2

    if-ge v4, v7, :cond_e

    .line 648
    move-object/from16 v40, v10

    move-object/from16 v39, v11

    .end local v10    # "otherAttributes":[Ljava/util/List;, "[Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .end local v11    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v39, "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v40, "otherAttributes":[Ljava/util/List;, "[Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    aget-wide v10, v0, v4

    invoke-virtual {v9, v10, v11}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 649
    new-instance v10, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LineNumberTableAttribute;

    aget v11, v12, v1

    move-object/from16 v41, v5

    .end local v5    # "codeAttrCalls":[I
    .local v41, "codeAttrCalls":[I
    aget-object v5, v13, v1

    aget-object v7, v14, v1

    invoke-direct {v10, v11, v5, v7}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LineNumberTableAttribute;-><init>(I[I[I)V

    move-object v5, v10

    .line 651
    .local v5, "lnta":Lorg/apache/commons/compress/harmony/unpack200/bytecode/LineNumberTableAttribute;
    add-int/lit8 v1, v1, 0x1

    .line 652
    iget-object v7, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeAttributes:[Ljava/util/List;

    aget-object v7, v7, v4

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 648
    .end local v41    # "codeAttrCalls":[I
    .local v5, "codeAttrCalls":[I
    :cond_8
    move-object/from16 v41, v5

    .line 654
    .end local v5    # "codeAttrCalls":[I
    .restart local v41    # "codeAttrCalls":[I
    :goto_7
    aget-wide v10, v0, v4

    invoke-virtual {v8, v10, v11}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 655
    new-instance v5, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTableAttribute;

    aget v43, v18, v2

    aget-object v44, v38, v2

    aget-object v45, v37, v2

    aget-object v46, v35, v2

    aget-object v47, v24, v2

    aget-object v48, v26, v2

    move-object/from16 v42, v5

    invoke-direct/range {v42 .. v48}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTableAttribute;-><init>(I[I[I[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[I)V

    .line 658
    .local v5, "lvta":Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTableAttribute;
    add-int/lit8 v2, v2, 0x1

    .line 659
    iget-object v7, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeAttributes:[Ljava/util/List;

    aget-object v7, v7, v4

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    .end local v5    # "lvta":Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTableAttribute;
    :cond_9
    aget-wide v10, v0, v4

    move-object/from16 v5, v25

    .end local v25    # "localVariableTypeTableLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v5, "localVariableTypeTableLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    invoke-virtual {v5, v10, v11}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 662
    new-instance v7, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTypeTableAttribute;

    aget v43, v34, v3

    aget-object v44, v28, v3

    aget-object v45, v29, v3

    aget-object v46, v30, v3

    aget-object v47, v31, v3

    aget-object v48, v33, v3

    move-object/from16 v42, v7

    invoke-direct/range {v42 .. v48}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTypeTableAttribute;-><init>(I[I[I[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;[I)V

    .line 665
    .local v7, "lvtta":Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTypeTableAttribute;
    add-int/lit8 v3, v3, 0x1

    .line 666
    iget-object v10, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeAttributes:[Ljava/util/List;

    aget-object v10, v10, v4

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    .end local v7    # "lvtta":Lorg/apache/commons/compress/harmony/unpack200/bytecode/LocalVariableTypeTableAttribute;
    :cond_a
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_8
    move-object/from16 v10, v39

    .end local v39    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v10, "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    array-length v11, v10

    if-ge v7, v11, :cond_d

    .line 670
    aget-object v11, v10, v7

    if-eqz v11, :cond_c

    aget-object v11, v10, v7

    move/from16 v25, v1

    move/from16 v39, v2

    .end local v1    # "lineNumberIndex":I
    .end local v2    # "lvtIndex":I
    .local v25, "lineNumberIndex":I
    .local v39, "lvtIndex":I
    aget-wide v1, v0, v4

    invoke-virtual {v11, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 672
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeAttributes:[Ljava/util/List;

    aget-object v1, v1, v4

    aget-object v2, v40, v7

    const/4 v11, 0x0

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    aget-object v1, v40, v7

    invoke-interface {v1, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_9

    .line 670
    :cond_b
    const/4 v11, 0x0

    goto :goto_9

    .end local v25    # "lineNumberIndex":I
    .end local v39    # "lvtIndex":I
    .restart local v1    # "lineNumberIndex":I
    .restart local v2    # "lvtIndex":I
    :cond_c
    move/from16 v25, v1

    move/from16 v39, v2

    const/4 v11, 0x0

    .line 669
    .end local v1    # "lineNumberIndex":I
    .end local v2    # "lvtIndex":I
    .restart local v25    # "lineNumberIndex":I
    .restart local v39    # "lvtIndex":I
    :goto_9
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, v25

    move/from16 v2, v39

    move-object/from16 v39, v10

    goto :goto_8

    .end local v25    # "lineNumberIndex":I
    .end local v39    # "lvtIndex":I
    .restart local v1    # "lineNumberIndex":I
    .restart local v2    # "lvtIndex":I
    :cond_d
    move/from16 v25, v1

    move/from16 v39, v2

    const/4 v11, 0x0

    .line 647
    .end local v1    # "lineNumberIndex":I
    .end local v2    # "lvtIndex":I
    .end local v7    # "j":I
    .restart local v25    # "lineNumberIndex":I
    .restart local v39    # "lvtIndex":I
    add-int/lit8 v4, v4, 0x1

    move-object v11, v10

    move-object/from16 v10, v40

    move-object/from16 v25, v5

    move-object/from16 v5, v41

    goto/16 :goto_6

    .line 678
    .end local v4    # "i":I
    .end local v39    # "lvtIndex":I
    .end local v40    # "otherAttributes":[Ljava/util/List;, "[Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .end local v41    # "codeAttrCalls":[I
    .restart local v1    # "lineNumberIndex":I
    .restart local v2    # "lvtIndex":I
    .local v5, "codeAttrCalls":[I
    .local v10, "otherAttributes":[Ljava/util/List;, "[Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .restart local v11    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v25, "localVariableTypeTableLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_e
    return-void
.end method

.method private parseCodeBands(Ljava/io/InputStream;)V
    .locals 17
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 681
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v3, "Code"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v2

    .line 683
    .local v2, "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    invoke-static {v3, v2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v3

    .line 684
    .local v3, "codeCount":I
    const-string v5, "code_headers"

    sget-object v6, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v5, v1, v6, v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v5

    .line 686
    .local v5, "codeHeaders":[I
    iget-object v6, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasAllCodeFlags()Z

    move-result v6

    .line 687
    .local v6, "allCodeHasFlags":Z
    if-nez v6, :cond_0

    .line 688
    new-array v7, v3, [Z

    iput-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHasAttributes:[Z

    .line 690
    :cond_0
    const/4 v7, 0x0

    .line 691
    .local v7, "codeSpecialHeader":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v9, 0x1

    if-ge v8, v3, :cond_2

    .line 692
    aget v10, v5, v8

    if-nez v10, :cond_1

    .line 693
    add-int/lit8 v7, v7, 0x1

    .line 694
    if-nez v6, :cond_1

    .line 695
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHasAttributes:[Z

    aput-boolean v9, v10, v8

    .line 691
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 699
    .end local v8    # "i":I
    :cond_2
    const-string v8, "code_max_stack"

    sget-object v10, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v8, v1, v10, v7}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v8

    .line 700
    .local v8, "codeMaxStackSpecials":[I
    const-string v10, "code_max_na_locals"

    sget-object v11, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v10, v1, v11, v7}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v10

    .line 701
    .local v10, "codeMaxNALocalsSpecials":[I
    const-string v11, "code_handler_count"

    sget-object v12, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v11, v1, v12, v7}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v11

    .line 703
    .local v11, "codeHandlerCountSpecials":[I
    new-array v12, v3, [I

    iput-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxStack:[I

    .line 704
    new-array v12, v3, [I

    iput-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxNALocals:[I

    .line 705
    new-array v12, v3, [I

    iput-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCount:[I

    .line 706
    const/4 v12, 0x0

    .line 707
    .local v12, "special":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v3, :cond_8

    .line 708
    aget v14, v5, v13

    const/16 v15, 0xff

    and-int/2addr v14, v15

    .line 709
    .local v14, "header":I
    if-ltz v14, :cond_7

    .line 712
    if-nez v14, :cond_3

    .line 713
    iget-object v15, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxStack:[I

    aget v16, v8, v12

    aput v16, v15, v13

    .line 714
    iget-object v15, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxNALocals:[I

    aget v16, v10, v12

    aput v16, v15, v13

    .line 715
    iget-object v15, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCount:[I

    aget v16, v11, v12

    aput v16, v15, v13

    .line 716
    add-int/lit8 v12, v12, 0x1

    move v15, v4

    goto :goto_2

    .line 717
    :cond_3
    const/16 v4, 0x90

    if-gt v14, v4, :cond_4

    .line 718
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxStack:[I

    add-int/lit8 v15, v14, -0x1

    rem-int/lit8 v15, v15, 0xc

    aput v15, v4, v13

    .line 719
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxNALocals:[I

    add-int/lit8 v15, v14, -0x1

    div-int/lit8 v15, v15, 0xc

    aput v15, v4, v13

    .line 720
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCount:[I

    const/4 v15, 0x0

    aput v15, v4, v13

    const/4 v15, 0x2

    goto :goto_2

    .line 721
    :cond_4
    const/16 v4, 0xd0

    if-gt v14, v4, :cond_5

    .line 722
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxStack:[I

    add-int/lit16 v15, v14, -0x91

    rem-int/lit8 v15, v15, 0x8

    aput v15, v4, v13

    .line 723
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxNALocals:[I

    add-int/lit16 v15, v14, -0x91

    div-int/lit8 v15, v15, 0x8

    aput v15, v4, v13

    .line 724
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCount:[I

    aput v9, v4, v13

    const/4 v15, 0x2

    goto :goto_2

    .line 725
    :cond_5
    if-gt v14, v15, :cond_6

    .line 726
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxStack:[I

    add-int/lit16 v15, v14, -0xd1

    rem-int/lit8 v15, v15, 0x7

    aput v15, v4, v13

    .line 727
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxNALocals:[I

    add-int/lit16 v15, v14, -0xd1

    div-int/lit8 v15, v15, 0x7

    aput v15, v4, v13

    .line 728
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCount:[I

    const/4 v15, 0x2

    aput v15, v4, v13

    .line 707
    .end local v14    # "header":I
    :goto_2
    add-int/lit8 v13, v13, 0x1

    move v4, v15

    goto :goto_1

    .line 730
    .restart local v14    # "header":I
    :cond_6
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v9, "Shouldn\'t get here either"

    invoke-direct {v4, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 710
    :cond_7
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v9, "Shouldn\'t get here"

    invoke-direct {v4, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 733
    .end local v13    # "i":I
    .end local v14    # "header":I
    :cond_8
    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCount:[I

    const-string v13, "code_handler_start_P"

    invoke-virtual {v0, v13, v1, v4, v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerStartP:[[I

    .line 734
    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCount:[I

    const-string v13, "code_handler_end_PO"

    invoke-virtual {v0, v13, v1, v4, v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerEndPO:[[I

    .line 735
    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCount:[I

    const-string v13, "code_handler_catch_PO"

    invoke-virtual {v0, v13, v1, v4, v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCatchPO:[[I

    .line 736
    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCount:[I

    const-string v13, "code_handler_class_RCN"

    invoke-virtual {v0, v13, v1, v4, v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerClassRCN:[[I

    .line 738
    if-eqz v6, :cond_9

    move v4, v3

    goto :goto_3

    :cond_9
    move v4, v7

    .line 740
    .local v4, "codeFlagsCount":I
    :goto_3
    new-array v9, v4, [Ljava/util/List;

    iput-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeAttributes:[Ljava/util/List;

    .line 741
    iget-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeAttributes:[Ljava/util/List;

    new-instance v13, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda0;

    invoke-direct {v13}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v9, v13}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 742
    invoke-direct {v0, v1, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCodeAttrBands(Ljava/io/InputStream;I)V

    .line 743
    return-void
.end method

.method private parseFieldAttrBands(Ljava/io/InputStream;)V
    .locals 33
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 746
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFieldCount:[I

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasFieldFlagsHi()Z

    move-result v5

    const-string v1, "field_flags"

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[[J

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    .line 747
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countBit16([[J)I

    move-result v0

    .line 748
    .local v0, "fieldAttrCount":I
    const-string v1, "field_attr_count"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v1, v7, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 749
    .local v1, "fieldAttrCounts":[I
    const-string v2, "field_attr_indexes"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v2, v7, v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v2

    .line 750
    .local v2, "fieldAttrIndexes":[[I
    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    const/4 v4, 0x1

    invoke-direct {v6, v2, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getCallCount([[I[[JI)I

    move-result v3

    .line 751
    .local v3, "callCount":I
    const-string v5, "field_attr_calls"

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v5, v7, v8, v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v5

    .line 754
    .local v5, "fieldAttrCalls":[I
    iget v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    new-array v8, v8, [[Ljava/util/ArrayList;

    iput-object v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    .line 755
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    if-ge v8, v9, :cond_1

    .line 756
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    iget-object v10, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    aget-object v10, v10, v8

    array-length v10, v10

    new-array v10, v10, [Ljava/util/ArrayList;

    aput-object v10, v9, v8

    .line 757
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    iget-object v10, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    aget-object v10, v10, v8

    array-length v10, v10

    if-ge v9, v10, :cond_0

    .line 758
    iget-object v10, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    aget-object v10, v10, v8

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    aput-object v11, v10, v9

    .line 757
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 755
    .end local v9    # "j":I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 762
    .end local v8    # "i":I
    :cond_1
    iget-object v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v9, "ConstantValue"

    invoke-virtual {v8, v9, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v8

    .line 763
    .local v8, "constantValueLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    invoke-static {v9, v8}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v9

    .line 764
    .local v9, "constantCount":I
    const-string v10, "field_ConstantValue_KQ"

    sget-object v11, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v10, v7, v11, v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v10

    .line 765
    .local v10, "field_constantValue_KQ":[I
    const/4 v11, 0x0

    .line 767
    .local v11, "constantValueIndex":I
    iget-object v12, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v13, "Signature"

    invoke-virtual {v12, v13, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v12

    .line 768
    .local v12, "signatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v13, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    invoke-static {v13, v12}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v13

    .line 769
    .local v13, "signatureCount":I
    const-string v14, "field_Signature_RS"

    sget-object v15, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v14, v7, v15, v13}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v14

    .line 770
    .local v14, "fieldSignatureRS":[I
    const/4 v15, 0x0

    .line 772
    .local v15, "signatureIndex":I
    move/from16 v16, v0

    .end local v0    # "fieldAttrCount":I
    .local v16, "fieldAttrCount":I
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move-object/from16 v17, v1

    .end local v1    # "fieldAttrCounts":[I
    .local v17, "fieldAttrCounts":[I
    const-string v1, "Deprecated"

    invoke-virtual {v0, v1, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v0

    .line 774
    .local v0, "deprecatedLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    if-ge v1, v4, :cond_8

    .line 775
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    move-object/from16 v19, v2

    .end local v2    # "fieldAttrIndexes":[[I
    .local v19, "fieldAttrIndexes":[[I
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    aget-object v2, v2, v1

    array-length v2, v2

    if-ge v4, v2, :cond_7

    .line 776
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    aget-object v2, v2, v1

    move/from16 v20, v13

    move-object/from16 v21, v14

    .end local v13    # "signatureCount":I
    .end local v14    # "fieldSignatureRS":[I
    .local v20, "signatureCount":I
    .local v21, "fieldSignatureRS":[I
    aget-wide v13, v2, v4

    .line 777
    .local v13, "flag":J
    invoke-virtual {v0, v13, v14}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 778
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    aget-object v2, v2, v4

    move-object/from16 v22, v0

    .end local v0    # "deprecatedLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v22, "deprecatedLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/DeprecatedAttribute;

    invoke-direct {v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/DeprecatedAttribute;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 777
    .end local v22    # "deprecatedLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v0    # "deprecatedLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_2
    move-object/from16 v22, v0

    .line 780
    .end local v0    # "deprecatedLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v22    # "deprecatedLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :goto_4
    invoke-virtual {v8, v13, v14}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 782
    aget v0, v10, v11

    move/from16 v23, v3

    .end local v3    # "callCount":I
    .local v23, "callCount":I
    int-to-long v2, v0

    .line 783
    .local v2, "result":J
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldDescr:[[Ljava/lang/String;

    aget-object v0, v0, v1

    aget-object v0, v0, v4

    .line 784
    .local v0, "desc":Ljava/lang/String;
    move/from16 v25, v9

    const/16 v9, 0x3a

    .end local v9    # "constantCount":I
    .local v25, "constantCount":I
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v26

    .line 785
    .local v26, "colon":I
    add-int/lit8 v9, v26, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 786
    .local v9, "type":Ljava/lang/String;
    move-object/from16 v27, v0

    .end local v0    # "desc":Ljava/lang/String;
    .local v27, "desc":Ljava/lang/String;
    const-string v0, "B"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "S"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "C"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Z"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 787
    :cond_3
    const-string v9, "I"

    .line 789
    :cond_4
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v0

    invoke-virtual {v8, v2, v3, v9, v0}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getValue(JLjava/lang/String;Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v0

    .line 790
    .local v0, "value":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    move-wide/from16 v28, v2

    .end local v2    # "result":J
    .local v28, "result":J
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    aget-object v2, v2, v4

    new-instance v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantValueAttribute;

    invoke-direct {v3, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ConstantValueAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 780
    .end local v0    # "value":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .end local v23    # "callCount":I
    .end local v25    # "constantCount":I
    .end local v26    # "colon":I
    .end local v27    # "desc":Ljava/lang/String;
    .end local v28    # "result":J
    .restart local v3    # "callCount":I
    .local v9, "constantCount":I
    :cond_5
    move/from16 v23, v3

    move/from16 v25, v9

    .line 793
    .end local v3    # "callCount":I
    .end local v9    # "constantCount":I
    .restart local v23    # "callCount":I
    .restart local v25    # "constantCount":I
    :goto_5
    invoke-virtual {v12, v13, v14}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 795
    aget v0, v21, v15

    int-to-long v2, v0

    .line 796
    .restart local v2    # "result":J
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldDescr:[[Ljava/lang/String;

    aget-object v0, v0, v1

    aget-object v0, v0, v4

    .line 797
    .local v0, "desc":Ljava/lang/String;
    const/16 v9, 0x3a

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 798
    .local v9, "colon":I
    move-object/from16 v24, v8

    .end local v8    # "constantValueLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v24, "constantValueLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    add-int/lit8 v8, v9, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 799
    .local v8, "type":Ljava/lang/String;
    move-object/from16 v26, v0

    .end local v0    # "desc":Ljava/lang/String;
    .local v26, "desc":Ljava/lang/String;
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v0

    invoke-virtual {v12, v2, v3, v8, v0}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getValue(JLjava/lang/String;Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 800
    .local v0, "value":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    move-wide/from16 v27, v2

    .end local v2    # "result":J
    .local v27, "result":J
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    aget-object v2, v2, v4

    new-instance v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SignatureAttribute;

    invoke-direct {v3, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SignatureAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 793
    .end local v0    # "value":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .end local v9    # "colon":I
    .end local v24    # "constantValueLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v26    # "desc":Ljava/lang/String;
    .end local v27    # "result":J
    .local v8, "constantValueLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_6
    move-object/from16 v24, v8

    .line 775
    .end local v8    # "constantValueLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v13    # "flag":J
    .restart local v24    # "constantValueLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :goto_6
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v19

    move/from16 v13, v20

    move-object/from16 v14, v21

    move-object/from16 v0, v22

    move/from16 v3, v23

    move-object/from16 v8, v24

    move/from16 v9, v25

    goto/16 :goto_3

    .end local v20    # "signatureCount":I
    .end local v21    # "fieldSignatureRS":[I
    .end local v22    # "deprecatedLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v23    # "callCount":I
    .end local v24    # "constantValueLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v25    # "constantCount":I
    .local v0, "deprecatedLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v3    # "callCount":I
    .restart local v8    # "constantValueLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v9, "constantCount":I
    .local v13, "signatureCount":I
    .restart local v14    # "fieldSignatureRS":[I
    :cond_7
    move-object/from16 v22, v0

    move/from16 v23, v3

    move-object/from16 v24, v8

    move/from16 v25, v9

    move/from16 v20, v13

    move-object/from16 v21, v14

    .line 774
    .end local v0    # "deprecatedLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v3    # "callCount":I
    .end local v4    # "j":I
    .end local v8    # "constantValueLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v9    # "constantCount":I
    .end local v13    # "signatureCount":I
    .end local v14    # "fieldSignatureRS":[I
    .restart local v20    # "signatureCount":I
    .restart local v21    # "fieldSignatureRS":[I
    .restart local v22    # "deprecatedLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v23    # "callCount":I
    .restart local v24    # "constantValueLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v25    # "constantCount":I
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v19

    const/4 v4, 0x1

    goto/16 :goto_2

    .end local v19    # "fieldAttrIndexes":[[I
    .end local v20    # "signatureCount":I
    .end local v21    # "fieldSignatureRS":[I
    .end local v22    # "deprecatedLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v23    # "callCount":I
    .end local v24    # "constantValueLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v25    # "constantCount":I
    .restart local v0    # "deprecatedLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v2, "fieldAttrIndexes":[[I
    .restart local v3    # "callCount":I
    .restart local v8    # "constantValueLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v9    # "constantCount":I
    .restart local v13    # "signatureCount":I
    .restart local v14    # "fieldSignatureRS":[I
    :cond_8
    move-object/from16 v22, v0

    move-object/from16 v19, v2

    move/from16 v23, v3

    move-object/from16 v24, v8

    move/from16 v25, v9

    move/from16 v20, v13

    move-object/from16 v21, v14

    .line 807
    .end local v0    # "deprecatedLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v1    # "i":I
    .end local v2    # "fieldAttrIndexes":[[I
    .end local v3    # "callCount":I
    .end local v8    # "constantValueLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v9    # "constantCount":I
    .end local v13    # "signatureCount":I
    .end local v14    # "fieldSignatureRS":[I
    .restart local v19    # "fieldAttrIndexes":[[I
    .restart local v20    # "signatureCount":I
    .restart local v21    # "fieldSignatureRS":[I
    .restart local v22    # "deprecatedLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v23    # "callCount":I
    .restart local v24    # "constantValueLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v25    # "constantCount":I
    invoke-direct {v6, v7, v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseFieldMetadataBands(Ljava/io/InputStream;[I)I

    move-result v0

    .line 808
    .local v0, "backwardsCallIndex":I
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasFieldFlagsHi()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x3e

    goto :goto_7

    :cond_9
    const/16 v1, 0x1f

    .line 809
    .local v1, "limit":I
    :goto_7
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    .line 810
    .local v2, "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [I

    .line 811
    .local v3, "counts":[I
    add-int/lit8 v4, v1, 0x1

    new-array v4, v4, [Ljava/util/List;

    .line 812
    .local v4, "otherAttributes":[Ljava/util/List;, "[Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8
    if-ge v8, v1, :cond_b

    .line 813
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const/4 v13, 0x1

    invoke-virtual {v9, v8, v13}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v9

    .line 814
    .local v9, "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v14

    if-nez v14, :cond_a

    .line 815
    aput-object v9, v2, v8

    .line 816
    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    invoke-static {v14, v9}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v14

    aput v14, v3, v8

    .line 812
    .end local v9    # "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 819
    .end local v8    # "i":I
    :cond_b
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9
    array-length v9, v3

    const/4 v13, 0x0

    if-ge v8, v9, :cond_e

    .line 820
    aget v9, v3, v8

    if-lez v9, :cond_d

    .line 821
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    aget-object v14, v2, v8

    invoke-virtual {v9, v14}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeBands(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    move-result-object v9

    .line 822
    .local v9, "bands":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
    aget v14, v3, v8

    invoke-virtual {v9, v7, v14}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseAttributes(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object v14

    aput-object v14, v4, v8

    .line 823
    aget-object v14, v2, v8

    invoke-virtual {v14}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result v14

    .line 824
    .local v14, "numBackwardsCallables":I
    if-lez v14, :cond_c

    .line 825
    move/from16 v18, v1

    .end local v1    # "limit":I
    .local v18, "limit":I
    new-array v1, v14, [I

    .line 826
    .local v1, "backwardsCalls":[I
    invoke-static {v5, v0, v1, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 827
    invoke-virtual {v9, v1}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->setBackwardsCalls([I)V

    .line 828
    add-int/2addr v0, v14

    goto :goto_a

    .line 824
    .end local v18    # "limit":I
    .local v1, "limit":I
    :cond_c
    move/from16 v18, v1

    .end local v1    # "limit":I
    .restart local v18    # "limit":I
    goto :goto_a

    .line 820
    .end local v9    # "bands":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
    .end local v14    # "numBackwardsCallables":I
    .end local v18    # "limit":I
    .restart local v1    # "limit":I
    :cond_d
    move/from16 v18, v1

    .line 819
    .end local v1    # "limit":I
    .restart local v18    # "limit":I
    :goto_a
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v18

    goto :goto_9

    .end local v18    # "limit":I
    .restart local v1    # "limit":I
    :cond_e
    move/from16 v18, v1

    .line 834
    .end local v1    # "limit":I
    .end local v8    # "i":I
    .restart local v18    # "limit":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    if-ge v1, v8, :cond_13

    .line 835
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_c
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    aget-object v9, v9, v1

    array-length v9, v9

    if-ge v8, v9, :cond_12

    .line 836
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    aget-object v9, v9, v1

    aget-wide v13, v9, v8

    .line 837
    .local v13, "flag":J
    const/4 v9, 0x0

    .line 838
    .local v9, "othersAddedAtStart":I
    const/16 v27, 0x0

    move/from16 v32, v27

    move/from16 v27, v0

    move/from16 v0, v32

    .local v0, "k":I
    .local v27, "backwardsCallIndex":I
    :goto_d
    move-object/from16 v28, v3

    .end local v3    # "counts":[I
    .local v28, "counts":[I
    array-length v3, v2

    if-ge v0, v3, :cond_11

    .line 839
    aget-object v3, v2, v0

    if-eqz v3, :cond_10

    aget-object v3, v2, v0

    invoke-virtual {v3, v13, v14}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 841
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getIndex()I

    move-result v3

    move-object/from16 v29, v2

    .end local v2    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v29, "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    const/16 v2, 0xf

    if-ge v3, v2, :cond_f

    .line 842
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    aget-object v2, v2, v8

    add-int/lit8 v3, v9, 0x1

    move/from16 v30, v3

    .end local v9    # "othersAddedAtStart":I
    .local v30, "othersAddedAtStart":I
    aget-object v3, v4, v0

    move-object/from16 v31, v5

    const/4 v5, 0x0

    .end local v5    # "fieldAttrCalls":[I
    .local v31, "fieldAttrCalls":[I
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v2, v9, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move/from16 v9, v30

    goto :goto_e

    .line 844
    .end local v30    # "othersAddedAtStart":I
    .end local v31    # "fieldAttrCalls":[I
    .restart local v5    # "fieldAttrCalls":[I
    .restart local v9    # "othersAddedAtStart":I
    :cond_f
    move-object/from16 v31, v5

    const/4 v5, 0x0

    .end local v5    # "fieldAttrCalls":[I
    .restart local v31    # "fieldAttrCalls":[I
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    aget-object v2, v2, v8

    aget-object v3, v4, v0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    :goto_e
    aget-object v2, v4, v0

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_f

    .line 839
    .end local v29    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v31    # "fieldAttrCalls":[I
    .restart local v2    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v5    # "fieldAttrCalls":[I
    :cond_10
    move-object/from16 v29, v2

    move-object/from16 v31, v5

    const/4 v5, 0x0

    .line 838
    .end local v2    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v5    # "fieldAttrCalls":[I
    .restart local v29    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v31    # "fieldAttrCalls":[I
    :goto_f
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v28

    move-object/from16 v2, v29

    move-object/from16 v5, v31

    goto :goto_d

    .end local v29    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v31    # "fieldAttrCalls":[I
    .restart local v2    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v5    # "fieldAttrCalls":[I
    :cond_11
    move-object/from16 v29, v2

    move-object/from16 v31, v5

    const/4 v5, 0x0

    .line 835
    .end local v0    # "k":I
    .end local v2    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v5    # "fieldAttrCalls":[I
    .end local v9    # "othersAddedAtStart":I
    .end local v13    # "flag":J
    .restart local v29    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v31    # "fieldAttrCalls":[I
    add-int/lit8 v8, v8, 0x1

    move v13, v5

    move/from16 v0, v27

    move-object/from16 v3, v28

    move-object/from16 v5, v31

    goto/16 :goto_c

    .end local v27    # "backwardsCallIndex":I
    .end local v28    # "counts":[I
    .end local v29    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v31    # "fieldAttrCalls":[I
    .local v0, "backwardsCallIndex":I
    .restart local v2    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v3    # "counts":[I
    .restart local v5    # "fieldAttrCalls":[I
    :cond_12
    move/from16 v27, v0

    move-object/from16 v29, v2

    move-object/from16 v28, v3

    move-object/from16 v31, v5

    move v5, v13

    .line 834
    .end local v0    # "backwardsCallIndex":I
    .end local v2    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v3    # "counts":[I
    .end local v5    # "fieldAttrCalls":[I
    .end local v8    # "j":I
    .restart local v27    # "backwardsCallIndex":I
    .restart local v28    # "counts":[I
    .restart local v29    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v31    # "fieldAttrCalls":[I
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v5, v31

    goto/16 :goto_b

    .line 851
    .end local v1    # "i":I
    .end local v27    # "backwardsCallIndex":I
    .end local v28    # "counts":[I
    .end local v29    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v31    # "fieldAttrCalls":[I
    .restart local v0    # "backwardsCallIndex":I
    .restart local v2    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v3    # "counts":[I
    .restart local v5    # "fieldAttrCalls":[I
    :cond_13
    return-void
.end method

.method private parseFieldBands(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 854
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFieldCount:[I

    const-string v2, "field_descr"

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldDescrInts:[[I

    .line 855
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldDescrInts:[[I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpDescriptor()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getReferences([[I[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldDescr:[[Ljava/lang/String;

    .line 856
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseFieldAttrBands(Ljava/io/InputStream;)V

    .line 857
    return-void
.end method

.method private parseFieldMetadataBands(Ljava/io/InputStream;[I)I
    .locals 19
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "fieldAttrCalls"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 860
    move-object/from16 v6, p0

    const/4 v0, 0x0

    .line 861
    .local v0, "backwardsCallsUsed":I
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "RVA"

    const/4 v7, 0x0

    aput-object v1, v2, v7

    const-string v1, "RIA"

    const/4 v8, 0x1

    aput-object v1, v2, v8

    .line 863
    .local v2, "RxA":[Ljava/lang/String;
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v3, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v3, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v9

    .line 864
    .local v9, "rvaLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v3, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v3, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v10

    .line 866
    .local v10, "riaLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    invoke-static {v1, v9}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v11

    .line 867
    .local v11, "rvaCount":I
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    invoke-static {v1, v10}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v12

    .line 868
    .local v12, "riaCount":I
    filled-new-array {v11, v12}, [I

    move-result-object v3

    .line 869
    .local v3, "RxACount":[I
    filled-new-array {v7, v7}, [I

    move-result-object v1

    move-object v13, v1

    .line 870
    .local v13, "backwardsCalls":[I
    if-lez v11, :cond_1

    .line 871
    aget v1, p2, v7

    aput v1, v13, v7

    .line 872
    add-int/lit8 v0, v0, 0x1

    .line 873
    if-lez v12, :cond_0

    .line 874
    aget v1, p2, v8

    aput v1, v13, v8

    .line 875
    add-int/lit8 v0, v0, 0x1

    move v14, v0

    goto :goto_0

    .line 873
    :cond_0
    move v14, v0

    goto :goto_0

    .line 877
    :cond_1
    if-lez v12, :cond_2

    .line 878
    aget v1, p2, v7

    aput v1, v13, v8

    .line 879
    add-int/lit8 v0, v0, 0x1

    move v14, v0

    goto :goto_0

    .line 877
    :cond_2
    move v14, v0

    .line 881
    .end local v0    # "backwardsCallsUsed":I
    .local v14, "backwardsCallsUsed":I
    :goto_0
    const-string v5, "field"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v4, v13

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseMetadata(Ljava/io/InputStream;[Ljava/lang/String;[I[ILjava/lang/String;)[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    move-result-object v0

    .line 882
    .local v0, "mb":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    aget-object v1, v0, v7

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getAttributes()Ljava/util/List;

    move-result-object v1

    .line 883
    .local v1, "rvaAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    aget-object v4, v0, v8

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getAttributes()Ljava/util/List;

    move-result-object v4

    .line 884
    .local v4, "riaAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    const/4 v5, 0x0

    .line 885
    .local v5, "rvaAttributesIndex":I
    const/4 v7, 0x0

    .line 886
    .local v7, "riaAttributesIndex":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v15, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    array-length v15, v15

    if-ge v8, v15, :cond_6

    .line 887
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    move-object/from16 v16, v0

    .end local v0    # "mb":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    .local v16, "mb":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    aget-object v0, v0, v8

    array-length v0, v0

    if-ge v15, v0, :cond_5

    .line 888
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    aget-object v0, v0, v8

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .end local v2    # "RxA":[Ljava/lang/String;
    .end local v3    # "RxACount":[I
    .local v17, "RxA":[Ljava/lang/String;
    .local v18, "RxACount":[I
    aget-wide v2, v0, v15

    invoke-virtual {v9, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 889
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    aget-object v0, v0, v8

    aget-object v0, v0, v15

    add-int/lit8 v2, v5, 0x1

    .end local v5    # "rvaAttributesIndex":I
    .local v2, "rvaAttributesIndex":I
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v2

    .line 891
    .end local v2    # "rvaAttributesIndex":I
    .restart local v5    # "rvaAttributesIndex":I
    :cond_3
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    aget-object v0, v0, v8

    aget-wide v2, v0, v15

    invoke-virtual {v10, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 892
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    aget-object v0, v0, v8

    aget-object v0, v0, v15

    add-int/lit8 v2, v7, 0x1

    .end local v7    # "riaAttributesIndex":I
    .local v2, "riaAttributesIndex":I
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v2

    .line 887
    .end local v2    # "riaAttributesIndex":I
    .restart local v7    # "riaAttributesIndex":I
    :cond_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    goto :goto_2

    .end local v17    # "RxA":[Ljava/lang/String;
    .end local v18    # "RxACount":[I
    .local v2, "RxA":[Ljava/lang/String;
    .restart local v3    # "RxACount":[I
    :cond_5
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .line 886
    .end local v2    # "RxA":[Ljava/lang/String;
    .end local v3    # "RxACount":[I
    .end local v15    # "j":I
    .restart local v17    # "RxA":[Ljava/lang/String;
    .restart local v18    # "RxACount":[I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v16

    goto :goto_1

    .line 896
    .end local v8    # "i":I
    .end local v16    # "mb":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    .end local v17    # "RxA":[Ljava/lang/String;
    .end local v18    # "RxACount":[I
    .restart local v0    # "mb":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    .restart local v2    # "RxA":[Ljava/lang/String;
    .restart local v3    # "RxACount":[I
    :cond_6
    return v14
.end method

.method private parseMetadata(Ljava/io/InputStream;[Ljava/lang/String;[I[ILjava/lang/String;)[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    .locals 28
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "RxA"    # [Ljava/lang/String;
    .param p3, "RxACount"    # [I
    .param p4, "backwardsCallCounts"    # [I
    .param p5, "contextName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 901
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    array-length v0, v8

    new-array v10, v0, [Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    .line 902
    .local v10, "mbg":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_0
    array-length v0, v8

    if-ge v11, v0, :cond_6

    .line 903
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    aget-object v1, v8, v11

    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;-><init>(Ljava/lang/String;Lorg/apache/commons/compress/harmony/unpack200/CpBands;)V

    aput-object v0, v10, v11

    .line 904
    aget-object v12, v8, v11

    .line 905
    .local v12, "rxa":Ljava/lang/String;
    const/16 v0, 0x50

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v13, "_"

    if-ltz v0, :cond_0

    .line 906
    aget-object v0, v10, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_param_NB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    aget v3, p3, v11

    invoke-virtual {v6, v1, v7, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->param_NB:[I

    .line 908
    :cond_0
    const/4 v0, 0x0

    .line 909
    .local v0, "pairCount":I
    const-string v1, "AD"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 910
    aget-object v1, v10, v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_anno_N"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    aget v4, p3, v11

    invoke-virtual {v6, v2, v7, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v2

    iput-object v2, v1, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->anno_N:[I

    .line 911
    aget-object v1, v10, v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_type_RS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    aget-object v4, v10, v11

    iget-object v4, v4, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->anno_N:[I

    invoke-virtual {v6, v2, v7, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPSignatureReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->type_RS:[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 912
    aget-object v1, v10, v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_pair_N"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    aget-object v4, v10, v11

    iget-object v4, v4, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->anno_N:[I

    invoke-virtual {v6, v2, v7, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v2

    iput-object v2, v1, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->pair_N:[[I

    .line 913
    aget-object v1, v10, v11

    iget-object v1, v1, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->pair_N:[[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 914
    .local v4, "element":[I
    array-length v5, v4

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v5, :cond_1

    aget v16, v4, v15

    .line 915
    .local v16, "element2":I
    add-int v0, v0, v16

    .line 914
    .end local v16    # "element2":I
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 913
    .end local v4    # "element":[I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 919
    :cond_2
    aget-object v1, v10, v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_name_RU"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v2, v7, v3, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->name_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move v15, v0

    goto :goto_3

    .line 921
    :cond_3
    aget v0, p3, v11

    move v15, v0

    .line 923
    .end local v0    # "pairCount":I
    .local v15, "pairCount":I
    :goto_3
    aget-object v0, v10, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_T"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    aget v3, p4, v11

    add-int/2addr v3, v15

    invoke-virtual {v6, v1, v7, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->T:[I

    .line 924
    const/4 v0, 0x0

    .local v0, "ICount":I
    const/4 v1, 0x0

    .local v1, "DCount":I
    const/4 v2, 0x0

    .local v2, "FCount":I
    const/4 v3, 0x0

    .local v3, "JCount":I
    const/4 v4, 0x0

    .local v4, "cCount":I
    const/4 v5, 0x0

    .local v5, "eCount":I
    const/16 v16, 0x0

    .local v16, "sCount":I
    const/16 v17, 0x0

    .local v17, "arrayCount":I
    const/16 v18, 0x0

    .line 925
    .local v18, "atCount":I
    aget-object v14, v10, v11

    iget-object v14, v14, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->T:[I

    move/from16 v19, v0

    .end local v0    # "ICount":I
    .local v19, "ICount":I
    array-length v0, v14

    move/from16 v8, v16

    move/from16 v6, v18

    const/4 v7, 0x0

    move/from16 v16, v5

    move/from16 v5, v19

    move/from16 v25, v4

    move v4, v1

    move/from16 v1, v25

    move/from16 v26, v3

    move v3, v2

    move/from16 v2, v26

    move/from16 v27, v17

    move/from16 v17, v15

    move/from16 v15, v27

    .end local v18    # "atCount":I
    .end local v19    # "ICount":I
    .local v1, "cCount":I
    .local v2, "JCount":I
    .local v3, "FCount":I
    .local v4, "DCount":I
    .local v5, "ICount":I
    .local v6, "atCount":I
    .local v8, "sCount":I
    .local v15, "arrayCount":I
    .local v16, "eCount":I
    .local v17, "pairCount":I
    :goto_4
    if-ge v7, v0, :cond_4

    move/from16 v18, v0

    aget v0, v14, v7

    .line 926
    .local v0, "element":I
    move-object/from16 v19, v14

    int-to-char v14, v0

    .line 927
    .local v14, "c":C
    sparse-switch v14, :sswitch_data_0

    goto :goto_5

    .line 951
    :sswitch_0
    add-int/lit8 v8, v8, 0x1

    .line 952
    goto :goto_5

    .line 948
    :sswitch_1
    add-int/lit8 v16, v16, 0x1

    .line 949
    goto :goto_5

    .line 945
    :sswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 946
    goto :goto_5

    .line 954
    :sswitch_3
    add-int/lit8 v15, v15, 0x1

    .line 955
    goto :goto_5

    .line 942
    :sswitch_4
    add-int/lit8 v2, v2, 0x1

    .line 943
    goto :goto_5

    .line 939
    :sswitch_5
    add-int/lit8 v3, v3, 0x1

    .line 940
    goto :goto_5

    .line 936
    :sswitch_6
    add-int/lit8 v4, v4, 0x1

    .line 937
    goto :goto_5

    .line 933
    :sswitch_7
    add-int/lit8 v5, v5, 0x1

    .line 934
    goto :goto_5

    .line 957
    :sswitch_8
    add-int/lit8 v6, v6, 0x1

    .line 925
    .end local v0    # "element":I
    .end local v14    # "c":C
    :goto_5
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v18

    move-object/from16 v14, v19

    goto :goto_4

    .line 961
    :cond_4
    aget-object v0, v10, v11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "_caseI_KI"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v14, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v20, v6

    move/from16 v18, v15

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    .end local v6    # "atCount":I
    .end local v15    # "arrayCount":I
    .local v18, "arrayCount":I
    .local v20, "atCount":I
    invoke-virtual {v6, v7, v15, v14, v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPIntReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

    move-result-object v7

    iput-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseI_KI:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

    .line 962
    aget-object v0, v10, v11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "_caseD_KD"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v14, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v7, v15, v14, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPDoubleReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    move-result-object v7

    iput-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseD_KD:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    .line 963
    aget-object v0, v10, v11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "_caseF_KF"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v14, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v7, v15, v14, v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPFloatReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    move-result-object v7

    iput-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseF_KF:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    .line 964
    aget-object v0, v10, v11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "_caseJ_KJ"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v14, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v7, v15, v14, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPLongReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    move-result-object v7

    iput-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseJ_KJ:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    .line 965
    aget-object v0, v10, v11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "_casec_RS"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v14, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v7, v15, v14, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPSignatureReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v7

    iput-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->casec_RS:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 966
    aget-object v7, v10, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, "_caseet_RS"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v19, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpSignature()[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v22, v1

    .end local v1    # "cCount":I
    .local v22, "cCount":I
    move-object v1, v14

    move v14, v2

    .end local v2    # "JCount":I
    .local v14, "JCount":I
    move-object/from16 v2, p1

    move/from16 v23, v3

    .end local v3    # "FCount":I
    .local v23, "FCount":I
    move-object/from16 v3, v19

    move/from16 v19, v4

    .end local v4    # "DCount":I
    .local v19, "DCount":I
    move/from16 v4, v16

    move/from16 v24, v5

    .end local v5    # "ICount":I
    .local v24, "ICount":I
    move-object/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseet_RS:[Ljava/lang/String;

    .line 967
    aget-object v7, v10, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_caseec_RU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpUTF8()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->caseec_RU:[Ljava/lang/String;

    .line 968
    aget-object v0, v10, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_cases_RU"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v1, v15, v2, v8}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->cases_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 969
    aget-object v0, v10, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_casearray_N"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v3, v18

    .end local v18    # "arrayCount":I
    .local v3, "arrayCount":I
    invoke-virtual {v6, v1, v15, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->casearray_N:[I

    .line 970
    aget-object v0, v10, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_nesttype_RS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v4, v20

    .end local v20    # "atCount":I
    .local v4, "atCount":I
    invoke-virtual {v6, v1, v15, v2, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nesttype_RS:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 971
    aget-object v0, v10, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_nestpair_N"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v1, v15, v2, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nestpair_N:[I

    .line 972
    const/4 v0, 0x0

    .line 973
    .local v0, "nestPairCount":I
    aget-object v1, v10, v11

    iget-object v1, v1, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nestpair_N:[I

    array-length v2, v1

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v2, :cond_5

    aget v7, v1, v5

    .line 974
    .local v7, "element":I
    add-int/2addr v0, v7

    .line 973
    .end local v7    # "element":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 976
    :cond_5
    aget-object v1, v10, v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_nestname_RU"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v2, v15, v5, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->nestname_RU:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 902
    .end local v0    # "nestPairCount":I
    .end local v3    # "arrayCount":I
    .end local v4    # "atCount":I
    .end local v8    # "sCount":I
    .end local v12    # "rxa":Ljava/lang/String;
    .end local v14    # "JCount":I
    .end local v16    # "eCount":I
    .end local v17    # "pairCount":I
    .end local v19    # "DCount":I
    .end local v22    # "cCount":I
    .end local v23    # "FCount":I
    .end local v24    # "ICount":I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, p2

    move-object v7, v15

    goto/16 :goto_0

    :cond_6
    move-object v15, v7

    .line 978
    .end local v11    # "i":I
    return-object v10

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_8
        0x42 -> :sswitch_7
        0x43 -> :sswitch_7
        0x44 -> :sswitch_6
        0x46 -> :sswitch_5
        0x49 -> :sswitch_7
        0x4a -> :sswitch_4
        0x53 -> :sswitch_7
        0x5a -> :sswitch_7
        0x5b -> :sswitch_3
        0x63 -> :sswitch_2
        0x65 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseMethodAttrBands(Ljava/io/InputStream;)V
    .locals 31
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 982
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classMethodCount:[I

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasMethodFlagsHi()Z

    move-result v5

    const-string v1, "method_flags"

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[[J

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    .line 983
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countBit16([[J)I

    move-result v0

    .line 984
    .local v0, "methodAttrCount":I
    const-string v1, "method_attr_count"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v1, v7, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 985
    .local v1, "methodAttrCounts":[I
    const-string v2, "method_attr_indexes"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v2, v7, v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v2

    .line 986
    .local v2, "methodAttrIndexes":[[I
    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    const/4 v4, 0x2

    invoke-direct {v6, v2, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getCallCount([[I[[JI)I

    move-result v3

    .line 987
    .local v3, "callCount":I
    const-string v5, "method_attr_calls"

    sget-object v8, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v5, v7, v8, v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v5

    iput-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttrCalls:[I

    .line 990
    iget v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    new-array v5, v5, [[Ljava/util/ArrayList;

    iput-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    .line 991
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classCount:I

    if-ge v5, v8, :cond_1

    .line 992
    iget-object v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    aget-object v9, v9, v5

    array-length v9, v9

    new-array v9, v9, [Ljava/util/ArrayList;

    aput-object v9, v8, v5

    .line 993
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    aget-object v9, v9, v5

    array-length v9, v9

    if-ge v8, v9, :cond_0

    .line 994
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    aget-object v9, v9, v5

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    aput-object v10, v9, v8

    .line 993
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 991
    .end local v8    # "j":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 999
    .end local v5    # "i":I
    :cond_1
    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v8, "Exceptions"

    invoke-virtual {v5, v8, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v5

    .line 1000
    .local v5, "methodExceptionsLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    invoke-static {v8, v5}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v8

    .line 1001
    .local v8, "count":I
    const-string v9, "method_Exceptions_n"

    sget-object v10, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v9, v7, v10, v8}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v9

    .line 1002
    .local v9, "numExceptions":[I
    const-string v10, "method_Exceptions_RC"

    sget-object v11, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v10, v7, v11, v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v10

    .line 1005
    .local v10, "methodExceptionsRS":[[I
    iget-object v11, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v12, "Signature"

    invoke-virtual {v11, v12, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v11

    .line 1006
    .local v11, "methodSignatureLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v12, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    invoke-static {v12, v11}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v12

    .line 1007
    .local v12, "count1":I
    const-string v13, "method_signature_RS"

    sget-object v14, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6, v13, v7, v14, v12}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v13

    .line 1009
    .local v13, "methodSignatureRS":[I
    iget-object v14, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v15, "Deprecated"

    invoke-virtual {v14, v15, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v14

    .line 1012
    .local v14, "deprecatedLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    const/4 v15, 0x0

    .line 1013
    .local v15, "methodExceptionsIndex":I
    const/16 v16, 0x0

    .line 1014
    .local v16, "methodSignatureIndex":I
    const/16 v17, 0x0

    move/from16 v4, v17

    .local v4, "i":I
    :goto_2
    move/from16 v18, v0

    .end local v0    # "methodAttrCount":I
    .local v18, "methodAttrCount":I
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    array-length v0, v0

    if-ge v4, v0, :cond_9

    .line 1015
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_3
    move-object/from16 v19, v1

    .end local v1    # "methodAttrCounts":[I
    .local v19, "methodAttrCounts":[I
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    aget-object v1, v1, v4

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 1016
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    aget-object v1, v1, v4

    move-object/from16 v20, v2

    move/from16 v21, v3

    .end local v2    # "methodAttrIndexes":[[I
    .end local v3    # "callCount":I
    .local v20, "methodAttrIndexes":[[I
    .local v21, "callCount":I
    aget-wide v2, v1, v0

    .line 1017
    .local v2, "flag":J
    invoke-virtual {v5, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1018
    aget v1, v9, v15

    .line 1019
    .local v1, "n":I
    aget-object v22, v10, v15

    .line 1020
    .local v22, "exceptions":[I
    move-object/from16 v23, v5

    .end local v5    # "methodExceptionsLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v23, "methodExceptionsLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    new-array v5, v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    .line 1021
    .local v5, "exceptionClasses":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    const/16 v24, 0x0

    move/from16 v25, v8

    move/from16 v8, v24

    .local v8, "k":I
    .local v25, "count":I
    :goto_4
    if-ge v8, v1, :cond_2

    .line 1022
    move/from16 v24, v1

    .end local v1    # "n":I
    .local v24, "n":I
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-object/from16 v26, v9

    .end local v9    # "numExceptions":[I
    .local v26, "numExceptions":[I
    aget v9, v22, v8

    invoke-virtual {v1, v9}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v1

    aput-object v1, v5, v8

    .line 1021
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v24

    move-object/from16 v9, v26

    goto :goto_4

    .end local v24    # "n":I
    .end local v26    # "numExceptions":[I
    .restart local v1    # "n":I
    .restart local v9    # "numExceptions":[I
    :cond_2
    move/from16 v24, v1

    move-object/from16 v26, v9

    .line 1024
    .end local v1    # "n":I
    .end local v8    # "k":I
    .end local v9    # "numExceptions":[I
    .restart local v24    # "n":I
    .restart local v26    # "numExceptions":[I
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    aget-object v1, v1, v4

    aget-object v1, v1, v0

    new-instance v8, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;

    invoke-direct {v8, v5}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionsAttribute;-><init>([Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 1017
    .end local v22    # "exceptions":[I
    .end local v23    # "methodExceptionsLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v24    # "n":I
    .end local v25    # "count":I
    .end local v26    # "numExceptions":[I
    .local v5, "methodExceptionsLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v8, "count":I
    .restart local v9    # "numExceptions":[I
    :cond_3
    move-object/from16 v23, v5

    move/from16 v25, v8

    move-object/from16 v26, v9

    .line 1027
    .end local v5    # "methodExceptionsLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v8    # "count":I
    .end local v9    # "numExceptions":[I
    .restart local v23    # "methodExceptionsLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v25    # "count":I
    .restart local v26    # "numExceptions":[I
    :goto_5
    invoke-virtual {v11, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1029
    aget v1, v13, v16

    int-to-long v8, v1

    .line 1030
    .local v8, "result":J
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodDescr:[[Ljava/lang/String;

    aget-object v1, v1, v4

    aget-object v1, v1, v0

    .line 1031
    .local v1, "desc":Ljava/lang/String;
    const/16 v5, 0x3a

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1032
    .local v5, "colon":I
    move-object/from16 v22, v10

    .end local v10    # "methodExceptionsRS":[[I
    .local v22, "methodExceptionsRS":[[I
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1035
    .local v10, "type":Ljava/lang/String;
    move-object/from16 v24, v1

    .end local v1    # "desc":Ljava/lang/String;
    .local v24, "desc":Ljava/lang/String;
    const-string v1, "B"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "H"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1036
    :cond_4
    const-string v10, "I"

    .line 1038
    :cond_5
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v1

    invoke-virtual {v11, v8, v9, v10, v1}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getValue(JLjava/lang/String;Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 1039
    .local v1, "value":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    move/from16 v27, v5

    .end local v5    # "colon":I
    .local v27, "colon":I
    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    aget-object v5, v5, v4

    aget-object v5, v5, v0

    move-wide/from16 v28, v8

    .end local v8    # "result":J
    .local v28, "result":J
    new-instance v8, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SignatureAttribute;

    invoke-direct {v8, v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SignatureAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 1027
    .end local v1    # "value":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .end local v22    # "methodExceptionsRS":[[I
    .end local v24    # "desc":Ljava/lang/String;
    .end local v27    # "colon":I
    .end local v28    # "result":J
    .local v10, "methodExceptionsRS":[[I
    :cond_6
    move-object/from16 v22, v10

    .line 1042
    .end local v10    # "methodExceptionsRS":[[I
    .restart local v22    # "methodExceptionsRS":[[I
    :goto_6
    invoke-virtual {v14, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1043
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    aget-object v1, v1, v4

    aget-object v1, v1, v0

    new-instance v5, Lorg/apache/commons/compress/harmony/unpack200/bytecode/DeprecatedAttribute;

    invoke-direct {v5}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/DeprecatedAttribute;-><init>()V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1015
    .end local v2    # "flag":J
    :cond_7
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v10, v22

    move-object/from16 v5, v23

    move/from16 v8, v25

    move-object/from16 v9, v26

    goto/16 :goto_3

    .end local v20    # "methodAttrIndexes":[[I
    .end local v21    # "callCount":I
    .end local v22    # "methodExceptionsRS":[[I
    .end local v23    # "methodExceptionsLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v25    # "count":I
    .end local v26    # "numExceptions":[I
    .local v2, "methodAttrIndexes":[[I
    .restart local v3    # "callCount":I
    .local v5, "methodExceptionsLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v8, "count":I
    .restart local v9    # "numExceptions":[I
    .restart local v10    # "methodExceptionsRS":[[I
    :cond_8
    move-object/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v23, v5

    move/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v22, v10

    .line 1014
    .end local v0    # "j":I
    .end local v2    # "methodAttrIndexes":[[I
    .end local v3    # "callCount":I
    .end local v5    # "methodExceptionsLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v8    # "count":I
    .end local v9    # "numExceptions":[I
    .end local v10    # "methodExceptionsRS":[[I
    .restart local v20    # "methodAttrIndexes":[[I
    .restart local v21    # "callCount":I
    .restart local v22    # "methodExceptionsRS":[[I
    .restart local v23    # "methodExceptionsLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v25    # "count":I
    .restart local v26    # "numExceptions":[I
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v19

    goto/16 :goto_2

    .end local v19    # "methodAttrCounts":[I
    .end local v20    # "methodAttrIndexes":[[I
    .end local v21    # "callCount":I
    .end local v22    # "methodExceptionsRS":[[I
    .end local v23    # "methodExceptionsLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v25    # "count":I
    .end local v26    # "numExceptions":[I
    .local v1, "methodAttrCounts":[I
    .restart local v2    # "methodAttrIndexes":[[I
    .restart local v3    # "callCount":I
    .restart local v5    # "methodExceptionsLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v8    # "count":I
    .restart local v9    # "numExceptions":[I
    .restart local v10    # "methodExceptionsRS":[[I
    :cond_9
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v23, v5

    move/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v22, v10

    .line 1049
    .end local v1    # "methodAttrCounts":[I
    .end local v2    # "methodAttrIndexes":[[I
    .end local v3    # "callCount":I
    .end local v4    # "i":I
    .end local v5    # "methodExceptionsLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v8    # "count":I
    .end local v9    # "numExceptions":[I
    .end local v10    # "methodExceptionsRS":[[I
    .restart local v19    # "methodAttrCounts":[I
    .restart local v20    # "methodAttrIndexes":[[I
    .restart local v21    # "callCount":I
    .restart local v22    # "methodExceptionsRS":[[I
    .restart local v23    # "methodExceptionsLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v25    # "count":I
    .restart local v26    # "numExceptions":[I
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttrCalls:[I

    invoke-direct {v6, v7, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseMethodMetadataBands(Ljava/io/InputStream;[I)I

    move-result v0

    .line 1050
    .local v0, "backwardsCallIndex":I
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->options:Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasMethodFlagsHi()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x3e

    goto :goto_7

    :cond_a
    const/16 v1, 0x1f

    .line 1051
    .local v1, "limit":I
    :goto_7
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    .line 1052
    .local v2, "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [I

    .line 1053
    .local v3, "counts":[I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_8
    if-ge v4, v1, :cond_c

    .line 1054
    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const/4 v8, 0x2

    invoke-virtual {v5, v4, v8}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v5

    .line 1055
    .local v5, "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v9

    if-nez v9, :cond_b

    .line 1056
    aput-object v5, v2, v4

    .line 1057
    iget-object v9, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    invoke-static {v9, v5}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v9

    aput v9, v3, v4

    .line 1053
    .end local v5    # "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1060
    .end local v4    # "i":I
    :cond_c
    add-int/lit8 v4, v1, 0x1

    new-array v4, v4, [Ljava/util/List;

    .line 1061
    .local v4, "otherAttributes":[Ljava/util/List;, "[Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_9
    array-length v8, v3

    if-ge v5, v8, :cond_f

    .line 1062
    aget v8, v3, v5

    if-lez v8, :cond_e

    .line 1063
    iget-object v8, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    aget-object v10, v2, v5

    invoke-virtual {v8, v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeBands(Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;

    move-result-object v8

    .line 1064
    .local v8, "bands":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
    aget v10, v3, v5

    invoke-virtual {v8, v7, v10}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->parseAttributes(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object v10

    aput-object v10, v4, v5

    .line 1065
    aget-object v10, v2, v5

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->numBackwardsCallables()I

    move-result v10

    .line 1066
    .local v10, "numBackwardsCallables":I
    if-lez v10, :cond_d

    .line 1067
    new-array v9, v10, [I

    .line 1068
    .local v9, "backwardsCalls":[I
    move/from16 v24, v1

    .end local v1    # "limit":I
    .local v24, "limit":I
    iget-object v1, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttrCalls:[I

    move-object/from16 v27, v3

    const/4 v3, 0x0

    .end local v3    # "counts":[I
    .local v27, "counts":[I
    invoke-static {v1, v0, v9, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1069
    invoke-virtual {v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;->setBackwardsCalls([I)V

    .line 1070
    add-int/2addr v0, v10

    goto :goto_a

    .line 1066
    .end local v9    # "backwardsCalls":[I
    .end local v24    # "limit":I
    .end local v27    # "counts":[I
    .restart local v1    # "limit":I
    .restart local v3    # "counts":[I
    :cond_d
    move/from16 v24, v1

    move-object/from16 v27, v3

    .end local v1    # "limit":I
    .end local v3    # "counts":[I
    .restart local v24    # "limit":I
    .restart local v27    # "counts":[I
    goto :goto_a

    .line 1062
    .end local v8    # "bands":Lorg/apache/commons/compress/harmony/unpack200/NewAttributeBands;
    .end local v10    # "numBackwardsCallables":I
    .end local v24    # "limit":I
    .end local v27    # "counts":[I
    .restart local v1    # "limit":I
    .restart local v3    # "counts":[I
    :cond_e
    move/from16 v24, v1

    move-object/from16 v27, v3

    .line 1061
    .end local v1    # "limit":I
    .end local v3    # "counts":[I
    .restart local v24    # "limit":I
    .restart local v27    # "counts":[I
    :goto_a
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v24

    move-object/from16 v3, v27

    goto :goto_9

    .end local v24    # "limit":I
    .end local v27    # "counts":[I
    .restart local v1    # "limit":I
    .restart local v3    # "counts":[I
    :cond_f
    move/from16 v24, v1

    move-object/from16 v27, v3

    .line 1076
    .end local v1    # "limit":I
    .end local v3    # "counts":[I
    .end local v5    # "i":I
    .restart local v24    # "limit":I
    .restart local v27    # "counts":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v3, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    array-length v3, v3

    if-ge v1, v3, :cond_14

    .line 1077
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_c
    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    aget-object v5, v5, v1

    array-length v5, v5

    if-ge v3, v5, :cond_13

    .line 1078
    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    aget-object v5, v5, v1

    aget-wide v8, v5, v3

    .line 1079
    .local v8, "flag":J
    const/4 v5, 0x0

    .line 1080
    .local v5, "othersAddedAtStart":I
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_d
    move/from16 v28, v0

    .end local v0    # "backwardsCallIndex":I
    .local v28, "backwardsCallIndex":I
    array-length v0, v2

    if-ge v10, v0, :cond_12

    .line 1081
    aget-object v0, v2, v10

    if-eqz v0, :cond_11

    aget-object v0, v2, v10

    invoke-virtual {v0, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1083
    aget-object v0, v2, v10

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->getIndex()I

    move-result v0

    move-object/from16 v29, v2

    .end local v2    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v29, "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    const/16 v2, 0xf

    if-ge v0, v2, :cond_10

    .line 1084
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    add-int/lit8 v2, v5, 0x1

    move/from16 v30, v2

    .end local v5    # "othersAddedAtStart":I
    .local v30, "othersAddedAtStart":I
    aget-object v2, v4, v10

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v0, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move/from16 v5, v30

    goto :goto_e

    .line 1086
    .end local v30    # "othersAddedAtStart":I
    .restart local v5    # "othersAddedAtStart":I
    :cond_10
    const/4 v7, 0x0

    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    aget-object v0, v0, v1

    aget-object v0, v0, v3

    aget-object v2, v4, v10

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    :goto_e
    aget-object v0, v4, v10

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_f

    .line 1081
    .end local v29    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v2    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_11
    move-object/from16 v29, v2

    const/4 v7, 0x0

    .line 1080
    .end local v2    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v29    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :goto_f
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, p1

    move/from16 v0, v28

    move-object/from16 v2, v29

    goto :goto_d

    .end local v29    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v2    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_12
    move-object/from16 v29, v2

    const/4 v7, 0x0

    .line 1077
    .end local v2    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v5    # "othersAddedAtStart":I
    .end local v8    # "flag":J
    .end local v10    # "k":I
    .restart local v29    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, p1

    move/from16 v0, v28

    goto :goto_c

    .end local v28    # "backwardsCallIndex":I
    .end local v29    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v0    # "backwardsCallIndex":I
    .restart local v2    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_13
    move/from16 v28, v0

    move-object/from16 v29, v2

    const/4 v7, 0x0

    .line 1076
    .end local v0    # "backwardsCallIndex":I
    .end local v2    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v3    # "j":I
    .restart local v28    # "backwardsCallIndex":I
    .restart local v29    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v7, p1

    goto/16 :goto_b

    .line 1093
    .end local v1    # "i":I
    .end local v28    # "backwardsCallIndex":I
    .end local v29    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v0    # "backwardsCallIndex":I
    .restart local v2    # "otherLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_14
    return-void
.end method

.method private parseMethodBands(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1096
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/Codec;->MDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classMethodCount:[I

    const-string v2, "method_descr"

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodDescrInts:[[I

    .line 1097
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodDescrInts:[[I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpDescriptor()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getReferences([[I[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodDescr:[[Ljava/lang/String;

    .line 1098
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseMethodAttrBands(Ljava/io/InputStream;)V

    .line 1099
    return-void
.end method

.method private parseMethodMetadataBands(Ljava/io/InputStream;[I)I
    .locals 22
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "methodAttrCalls"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1102
    move-object/from16 v6, p0

    const/4 v0, 0x0

    .line 1103
    .local v0, "backwardsCallsUsed":I
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "RVA"

    const/4 v7, 0x0

    aput-object v3, v2, v7

    const-string v3, "RIA"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "RVPA"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-string v3, "RIPA"

    const/4 v8, 0x3

    aput-object v3, v2, v8

    const-string v3, "AD"

    const/4 v9, 0x4

    aput-object v3, v2, v9

    move-object v10, v2

    .line 1104
    .local v10, "RxA":[Ljava/lang/String;
    filled-new-array {v7, v7, v7, v7, v7}, [I

    move-result-object v2

    move-object v11, v2

    .line 1106
    .local v11, "rxaCounts":[I
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v3, "RuntimeVisibleAnnotations"

    invoke-virtual {v2, v3, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v12

    .line 1107
    .local v12, "rvaLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v3, "RuntimeInvisibleAnnotations"

    invoke-virtual {v2, v3, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v13

    .line 1108
    .local v13, "riaLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v3, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v2, v3, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v14

    .line 1110
    .local v14, "rvpaLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v3, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v2, v3, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v15

    .line 1112
    .local v15, "ripaLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v2, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const-string v3, "AnnotationDefault"

    invoke-virtual {v2, v3, v5}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v16

    .line 1113
    .local v16, "adLayout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    new-array v2, v1, [Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    aput-object v12, v2, v7

    aput-object v13, v2, v4

    aput-object v14, v2, v5

    aput-object v15, v2, v8

    aput-object v16, v2, v9

    move-object v8, v2

    .line 1115
    .local v8, "rxaLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda3;

    invoke-direct {v2, v6, v8}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/compress/harmony/unpack200/ClassBands;[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;)V

    invoke-static {v11, v2}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    .line 1116
    new-array v9, v1, [I

    .line 1117
    .local v9, "backwardsCalls":[I
    const/4 v1, 0x0

    .line 1118
    .local v1, "methodAttrIndex":I
    const/4 v2, 0x0

    move/from16 v17, v0

    move/from16 v18, v1

    .end local v0    # "backwardsCallsUsed":I
    .end local v1    # "methodAttrIndex":I
    .local v2, "i":I
    .local v17, "backwardsCallsUsed":I
    .local v18, "methodAttrIndex":I
    :goto_0
    array-length v0, v9

    if-ge v2, v0, :cond_1

    .line 1119
    aget v0, v11, v2

    if-lez v0, :cond_0

    .line 1120
    add-int/lit8 v17, v17, 0x1

    .line 1121
    aget v0, p2, v18

    aput v0, v9, v2

    .line 1122
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1124
    :cond_0
    aput v7, v9, v2

    .line 1118
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1127
    .end local v2    # "i":I
    :cond_1
    const-string v5, "method"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v3, v11

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseMetadata(Ljava/io/InputStream;[Ljava/lang/String;[I[ILjava/lang/String;)[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;

    move-result-object v0

    .line 1128
    .local v0, "mbgs":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    array-length v1, v10

    new-array v1, v1, [Ljava/util/List;

    .line 1129
    .local v1, "attributeLists":[Ljava/util/List;, "[Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    array-length v2, v10

    new-array v2, v2, [I

    .line 1130
    .local v2, "attributeListIndexes":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 1131
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;->getAttributes()Ljava/util/List;

    move-result-object v4

    aput-object v4, v1, v3

    .line 1132
    aput v7, v2, v3

    .line 1130
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1134
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    iget-object v4, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    array-length v4, v4

    if-ge v3, v4, :cond_6

    .line 1135
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    iget-object v5, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    aget-object v5, v5, v3

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 1136
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_5
    array-length v7, v8

    if-ge v5, v7, :cond_4

    .line 1137
    aget-object v7, v8, v5

    move-object/from16 v19, v0

    .end local v0    # "mbgs":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    .local v19, "mbgs":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    aget-object v0, v0, v3

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .end local v8    # "rxaLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v9    # "backwardsCalls":[I
    .local v20, "rxaLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v21, "backwardsCalls":[I
    aget-wide v8, v0, v4

    invoke-virtual {v7, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1138
    iget-object v0, v6, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    aget-object v7, v1, v5

    aget v8, v2, v5

    add-int/lit8 v9, v8, 0x1

    aput v9, v2, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    :cond_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    goto :goto_5

    .end local v19    # "mbgs":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    .end local v20    # "rxaLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v21    # "backwardsCalls":[I
    .restart local v0    # "mbgs":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    .restart local v8    # "rxaLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v9    # "backwardsCalls":[I
    :cond_4
    move-object/from16 v19, v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .line 1135
    .end local v0    # "mbgs":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    .end local v5    # "k":I
    .end local v8    # "rxaLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v9    # "backwardsCalls":[I
    .restart local v19    # "mbgs":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    .restart local v20    # "rxaLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v21    # "backwardsCalls":[I
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v19    # "mbgs":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    .end local v20    # "rxaLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v21    # "backwardsCalls":[I
    .restart local v0    # "mbgs":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    .restart local v8    # "rxaLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v9    # "backwardsCalls":[I
    :cond_5
    move-object/from16 v19, v0

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    .line 1134
    .end local v0    # "mbgs":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    .end local v4    # "j":I
    .end local v8    # "rxaLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v9    # "backwardsCalls":[I
    .restart local v19    # "mbgs":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    .restart local v20    # "rxaLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v21    # "backwardsCalls":[I
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1143
    .end local v3    # "i":I
    .end local v19    # "mbgs":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    .end local v20    # "rxaLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v21    # "backwardsCalls":[I
    .restart local v0    # "mbgs":[Lorg/apache/commons/compress/harmony/unpack200/MetadataBandGroup;
    .restart local v8    # "rxaLayouts":[Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v9    # "backwardsCalls":[I
    :cond_6
    return v17
.end method


# virtual methods
.method public getClassAttributes()[Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAttributes:[Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClassFieldCount()[I
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFieldCount:[I

    return-object v0
.end method

.method public getClassFlags()[J
    .locals 7

    .line 166
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAccessFlags:[J

    if-nez v0, :cond_2

    .line 167
    const-wide/16 v0, 0x7fff

    .line 168
    .local v0, "mask":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 169
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v3

    .line 170
    .local v3, "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v4

    if-nez v4, :cond_0

    .line 171
    const/4 v4, 0x1

    shl-int/2addr v4, v2

    not-int v4, v4

    int-to-long v4, v4

    and-long/2addr v0, v4

    .line 168
    .end local v3    # "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    array-length v2, v2

    new-array v2, v2, [J

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAccessFlags:[J

    .line 175
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 176
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAccessFlags:[J

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    aget-wide v5, v4, v2

    and-long v4, v5, v0

    aput-wide v4, v3, v2

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 179
    .end local v0    # "mask":J
    .end local v2    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classAccessFlags:[J

    return-object v0
.end method

.method public getClassInterfacesInts()[[I
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classInterfacesInts:[[I

    return-object v0
.end method

.method public getClassMethodCount()[I
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classMethodCount:[I

    return-object v0
.end method

.method public getClassSuperInts()[I
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classSuperInts:[I

    return-object v0
.end method

.method public getClassThisInts()[I
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classThisInts:[I

    return-object v0
.end method

.method public getClassVersionMajor()[I
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classVersionMajor:[I

    return-object v0
.end method

.method public getClassVersionMinor()[I
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classVersionMinor:[I

    return-object v0
.end method

.method public getCodeHandlerCatchPO()[[I
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCatchPO:[[I

    return-object v0
.end method

.method public getCodeHandlerClassRCN()[[I
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerClassRCN:[[I

    return-object v0
.end method

.method public getCodeHandlerCount()[I
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerCount:[I

    return-object v0
.end method

.method public getCodeHandlerEndPO()[[I
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerEndPO:[[I

    return-object v0
.end method

.method public getCodeHandlerStartP()[[I
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHandlerStartP:[[I

    return-object v0
.end method

.method public getCodeHasAttributes()[Z
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeHasAttributes:[Z

    return-object v0
.end method

.method public getCodeMaxNALocals()[I
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxNALocals:[I

    return-object v0
.end method

.method public getCodeMaxStack()[I
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeMaxStack:[I

    return-object v0
.end method

.method public getFieldAttributes()[[Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAttributes:[[Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFieldDescrInts()[[I
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldDescrInts:[[I

    return-object v0
.end method

.method public getFieldFlags()[[J
    .locals 8

    .line 259
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAccessFlags:[[J

    if-nez v0, :cond_3

    .line 260
    const-wide/16 v0, 0x7fff

    .line 261
    .local v0, "mask":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 262
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v3

    .line 263
    .local v3, "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v5

    if-nez v5, :cond_0

    .line 264
    shl-int/2addr v4, v2

    not-int v4, v4

    int-to-long v4, v4

    and-long/2addr v0, v4

    .line 261
    .end local v3    # "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    array-length v2, v2

    new-array v2, v2, [[J

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAccessFlags:[[J

    .line 268
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 269
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAccessFlags:[[J

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    aget-object v4, v4, v2

    array-length v4, v4

    new-array v4, v4, [J

    aput-object v4, v3, v2

    .line 270
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    aget-object v4, v4, v2

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 271
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAccessFlags:[[J

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldFlags:[[J

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    and-long v5, v6, v0

    aput-wide v5, v4, v3

    .line 270
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 268
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 275
    .end local v0    # "mask":J
    .end local v2    # "i":I
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->fieldAccessFlags:[[J

    return-object v0
.end method

.method public getIcLocal()[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->icLocal:[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    return-object v0
.end method

.method public getMethodAttributes()[[Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[",
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAttributes:[[Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMethodDescr()[[Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodDescr:[[Ljava/lang/String;

    return-object v0
.end method

.method public getMethodDescrInts()[[I
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodDescrInts:[[I

    return-object v0
.end method

.method public getMethodFlags()[[J
    .locals 8

    .line 295
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAccessFlags:[[J

    if-nez v0, :cond_3

    .line 296
    const-wide/16 v0, 0x7fff

    .line 297
    .local v0, "mask":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 298
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->attrMap:Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(II)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v3

    .line 299
    .local v3, "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->isDefaultLayout()Z

    move-result v4

    if-nez v4, :cond_0

    .line 300
    const/4 v4, 0x1

    shl-int/2addr v4, v2

    not-int v4, v4

    int-to-long v4, v4

    and-long/2addr v0, v4

    .line 297
    .end local v3    # "layout":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    array-length v2, v2

    new-array v2, v2, [[J

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAccessFlags:[[J

    .line 304
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 305
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAccessFlags:[[J

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    aget-object v4, v4, v2

    array-length v4, v4

    new-array v4, v4, [J

    aput-object v4, v3, v2

    .line 306
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    aget-object v4, v4, v2

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 307
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAccessFlags:[[J

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    and-long v5, v6, v0

    aput-wide v5, v4, v3

    .line 306
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 304
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 311
    .end local v0    # "mask":J
    .end local v2    # "i":I
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodAccessFlags:[[J

    return-object v0
.end method

.method public getOrderedCodeAttributes()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;",
            ">;>;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->codeAttributes:[Ljava/util/List;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRawClassFlags()[J
    .locals 1

    .line 326
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFlags:[J

    return-object v0
.end method

.method synthetic lambda$parseMethodMetadataBands$2$org-apache-commons-compress-harmony-unpack200-ClassBands([Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;I)I
    .locals 2
    .param p1, "rxaLayouts"    # [Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .param p2, "i"    # I

    .line 1115
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->methodFlags:[[J

    aget-object v1, p1, p2

    invoke-static {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countMatches([[JLorg/apache/commons/compress/harmony/unpack200/IMatcher;)I

    move-result v0

    return v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1153
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getClassCount()I

    move-result v0

    .line 1154
    .local v0, "classCount":I
    const-string v1, "class_this"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classThisInts:[I

    .line 1155
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classThisInts:[I

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpClass()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getReferences([I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classThis:[Ljava/lang/String;

    .line 1156
    const-string v1, "class_super"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classSuperInts:[I

    .line 1157
    const-string v1, "class_interface_count"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 1158
    .local v1, "classInterfaceLengths":[I
    const-string v2, "class_interface"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v2, p1, v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classInterfacesInts:[[I

    .line 1159
    const-string v2, "class_field_count"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v2, p1, v3, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classFieldCount:[I

    .line 1160
    const-string v2, "class_method_count"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v2, p1, v3, v0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->classMethodCount:[I

    .line 1161
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseFieldBands(Ljava/io/InputStream;)V

    .line 1162
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseMethodBands(Ljava/io/InputStream;)V

    .line 1163
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseClassAttrBands(Ljava/io/InputStream;)V

    .line 1164
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->parseCodeBands(Ljava/io/InputStream;)V

    .line 1166
    return-void
.end method

.method public unpack()V
    .locals 0

    .line 1171
    return-void
.end method
