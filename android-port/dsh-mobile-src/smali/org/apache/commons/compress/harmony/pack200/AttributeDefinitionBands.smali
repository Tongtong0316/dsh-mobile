.class public Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;
.super Lorg/apache/commons/compress/harmony/pack200/BandSet;
.source "AttributeDefinitionBands.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;
    }
.end annotation


# static fields
.field public static final CONTEXT_CLASS:I = 0x0

.field public static final CONTEXT_CODE:I = 0x3

.field public static final CONTEXT_FIELD:I = 0x1

.field public static final CONTEXT_METHOD:I = 0x2


# instance fields
.field private final attributeDefinitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private final classAttributeLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private final codeAttributeLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private final cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

.field private final fieldAttributeLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private final methodAttributeLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private final segment:Lorg/apache/commons/compress/harmony/pack200/Segment;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/Segment;I[Lorg/objectweb/asm/Attribute;)V
    .locals 12
    .param p1, "segment"    # Lorg/apache/commons/compress/harmony/pack200/Segment;
    .param p2, "effort"    # I
    .param p3, "attributePrototypes"    # [Lorg/objectweb/asm/Attribute;

    .line 82
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/apache/commons/compress/harmony/pack200/BandSet;-><init>(ILorg/apache/commons/compress/harmony/pack200/SegmentHeader;)V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->classAttributeLayouts:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->methodAttributeLayouts:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->fieldAttributeLayouts:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->codeAttributeLayouts:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->attributeDefinitions:Ljava/util/List;

    .line 83
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/pack200/CpBands;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    .line 84
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v0, "classLayouts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v1, "methodLayouts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v2, "fieldLayouts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v3, "codeLayouts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v4, p3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_4

    aget-object v7, p3, v6

    .line 91
    .local v7, "attributePrototype":Lorg/objectweb/asm/Attribute;
    move-object v8, v7

    check-cast v8, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    .line 92
    .local v8, "newAttribute":Lorg/apache/commons/compress/harmony/pack200/NewAttribute;
    instance-of v9, v8, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$ErrorAttribute;

    if-nez v9, :cond_3

    instance-of v9, v8, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$PassAttribute;

    if-nez v9, :cond_3

    instance-of v9, v8, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$StripAttribute;

    if-nez v9, :cond_3

    .line 94
    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->isContextClass()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 95
    iget-object v9, v8, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->getLayout()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->isContextMethod()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 98
    iget-object v9, v8, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->getLayout()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_1
    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->isContextField()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 101
    iget-object v9, v8, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->getLayout()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_2
    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->isContextCode()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 104
    iget-object v9, v8, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->getLayout()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v7    # "attributePrototype":Lorg/objectweb/asm/Attribute;
    .end local v8    # "newAttribute":Lorg/apache/commons/compress/harmony/pack200/NewAttribute;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 108
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v6, 0x7

    const/4 v7, 0x1

    if-le v4, v6, :cond_5

    .line 109
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v4, v7}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setHave_class_flags_hi(Z)V

    .line 111
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v8, 0x6

    if-le v4, v8, :cond_6

    .line 112
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v4, v7}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setHave_method_flags_hi(Z)V

    .line 114
    :cond_6
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    const/16 v9, 0xa

    if-le v4, v9, :cond_7

    .line 115
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v4, v7}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setHave_field_flags_hi(Z)V

    .line 117
    :cond_7
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    const/16 v10, 0xf

    if-le v4, v10, :cond_8

    .line 118
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v4, v7}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setHave_code_flags_hi(Z)V

    .line 120
    :cond_8
    new-array v4, v6, [I

    fill-array-data v4, :array_0

    .line 121
    .local v4, "availableClassIndices":[I
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v11

    if-le v11, v6, :cond_9

    .line 122
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->addHighIndices([I)[I

    move-result-object v4

    .line 124
    :cond_9
    invoke-direct {p0, v0, v4, v5}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->addAttributeDefinitions(Ljava/util/Map;[II)V

    .line 125
    new-array v5, v8, [I

    fill-array-data v5, :array_1

    .line 126
    .local v5, "availableMethodIndices":[I
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->methodAttributeLayouts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_a

    .line 127
    invoke-direct {p0, v5}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->addHighIndices([I)[I

    move-result-object v5

    .line 129
    :cond_a
    const/4 v6, 0x2

    invoke-direct {p0, v1, v5, v6}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->addAttributeDefinitions(Ljava/util/Map;[II)V

    .line 130
    new-array v6, v9, [I

    fill-array-data v6, :array_2

    .line 131
    .local v6, "availableFieldIndices":[I
    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->fieldAttributeLayouts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v9, :cond_b

    .line 132
    invoke-direct {p0, v6}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->addHighIndices([I)[I

    move-result-object v6

    .line 134
    :cond_b
    invoke-direct {p0, v2, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->addAttributeDefinitions(Ljava/util/Map;[II)V

    .line 135
    new-array v7, v10, [I

    fill-array-data v7, :array_3

    .line 136
    .local v7, "availableCodeIndices":[I
    iget-object v8, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->codeAttributeLayouts:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v10, :cond_c

    .line 137
    invoke-direct {p0, v7}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->addHighIndices([I)[I

    move-result-object v7

    .line 139
    :cond_c
    const/4 v8, 0x3

    invoke-direct {p0, v3, v7, v8}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->addAttributeDefinitions(Ljava/util/Map;[II)V

    .line 140
    return-void

    nop

    :array_0
    .array-data 4
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
    .end array-data

    :array_1
    .array-data 4
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
    .end array-data

    :array_2
    .array-data 4
        0x12
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
    .end array-data

    :array_3
    .array-data 4
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
    .end array-data
.end method

.method private addAttributeDefinitions(Ljava/util/Map;[II)V
    .locals 2
    .param p2, "availableIndices"    # [I
    .param p3, "contextType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[II)V"
        }
    .end annotation

    .line 143
    .local p1, "layoutMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 144
    .local v0, "i":I
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;[II)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 162
    return-void
.end method

.method private addHighIndices([I)[I
    .locals 4
    .param p1, "availableIndices"    # [I

    .line 165
    array-length v0, p1

    add-int/lit8 v0, v0, 0x20

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 166
    .local v0, "temp":[I
    const/16 v1, 0x20

    .line 167
    .local v1, "j":I
    array-length v2, p1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 168
    aput v1, v0, v2

    .line 169
    add-int/lit8 v1, v1, 0x1

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private addSyntheticDefinitions()V
    .locals 9

    .line 175
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->isAnySyntheticClasses()Z

    move-result v0

    .line 176
    .local v0, "anySytheticClasses":Z
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->isAnySyntheticMethods()Z

    move-result v1

    .line 177
    .local v1, "anySyntheticMethods":Z
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/pack200/ClassBands;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->isAnySyntheticFields()Z

    move-result v2

    .line 178
    .local v2, "anySyntheticFields":Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_3

    .line 179
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    const-string v4, "Synthetic"

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v3

    .line 180
    .local v3, "syntheticUTF":Lorg/apache/commons/compress/harmony/pack200/CPUTF8;
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v4

    .line 181
    .local v4, "emptyUTF":Lorg/apache/commons/compress/harmony/pack200/CPUTF8;
    const/16 v5, 0xc

    if-eqz v0, :cond_1

    .line 182
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->attributeDefinitions:Ljava/util/List;

    new-instance v7, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8, v3, v4}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;-><init>(IILorg/apache/commons/compress/harmony/pack200/CPUTF8;Lorg/apache/commons/compress/harmony/pack200/CPUTF8;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_1
    if-eqz v1, :cond_2

    .line 185
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->attributeDefinitions:Ljava/util/List;

    new-instance v7, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    const/4 v8, 0x2

    invoke-direct {v7, v5, v8, v3, v4}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;-><init>(IILorg/apache/commons/compress/harmony/pack200/CPUTF8;Lorg/apache/commons/compress/harmony/pack200/CPUTF8;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_2
    if-eqz v2, :cond_3

    .line 188
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->attributeDefinitions:Ljava/util/List;

    new-instance v7, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    const/4 v8, 0x1

    invoke-direct {v7, v5, v8, v3, v4}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;-><init>(IILorg/apache/commons/compress/harmony/pack200/CPUTF8;Lorg/apache/commons/compress/harmony/pack200/CPUTF8;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v3    # "syntheticUTF":Lorg/apache/commons/compress/harmony/pack200/CPUTF8;
    .end local v4    # "emptyUTF":Lorg/apache/commons/compress/harmony/pack200/CPUTF8;
    :cond_3
    return-void
.end method


# virtual methods
.method public finaliseBands()V
    .locals 2

    .line 198
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->addSyntheticDefinitions()V

    .line 199
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->attributeDefinitions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->setAttribute_definition_count(I)V

    .line 200
    return-void
.end method

.method public getClassAttributeLayouts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->classAttributeLayouts:Ljava/util/List;

    return-object v0
.end method

.method public getCodeAttributeLayouts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->codeAttributeLayouts:Ljava/util/List;

    return-object v0
.end method

.method public getFieldAttributeLayouts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->fieldAttributeLayouts:Ljava/util/List;

    return-object v0
.end method

.method public getMethodAttributeLayouts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->methodAttributeLayouts:Ljava/util/List;

    return-object v0
.end method

.method synthetic lambda$addAttributeDefinitions$0$org-apache-commons-compress-harmony-pack200-AttributeDefinitionBands([IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "availableIndices"    # [I
    .param p2, "contextType"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "layout"    # Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    aget v0, p1, v0

    .line 146
    .local v0, "index":I
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v3, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v3

    invoke-direct {v1, v0, p2, v2, v3}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;-><init>(IILorg/apache/commons/compress/harmony/pack200/CPUTF8;Lorg/apache/commons/compress/harmony/pack200/CPUTF8;)V

    .line 147
    .local v1, "definition":Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->attributeDefinitions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 159
    :pswitch_0
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->codeAttributeLayouts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->methodAttributeLayouts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->fieldAttributeLayouts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    goto :goto_0

    .line 150
    :pswitch_3
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->classAttributeLayouts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    nop

    .line 161
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 220
    const-string v0, "Writing attribute definition bands..."

    invoke-static {v0}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->attributeDefinitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 222
    .local v0, "attributeDefinitionHeader":[I
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->attributeDefinitions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 223
    .local v1, "attributeDefinitionName":[I
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->attributeDefinitions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 224
    .local v2, "attributeDefinitionLayout":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 225
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->attributeDefinitions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    .line 226
    .local v4, "def":Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;
    iget v5, v4, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;->contextType:I

    iget v6, v4, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;->index:I

    add-int/lit8 v6, v6, 0x1

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v5, v6

    aput v5, v0, v3

    .line 227
    iget-object v5, v4, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;->name:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getIndex()I

    move-result v5

    aput v5, v1, v3

    .line 228
    iget-object v5, v4, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;->layout:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/CPUTF8;->getIndex()I

    move-result v5

    aput v5, v2, v3

    .line 224
    .end local v4    # "def":Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    .end local v3    # "i":I
    :cond_0
    const-string v3, "attributeDefinitionHeader"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v3, v0, v4}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v3

    .line 232
    .local v3, "encodedBand":[B
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrote "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " bytes from attributeDefinitionHeader["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 235
    const-string v4, "attributeDefinitionName"

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v4, v1, v7}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v3

    .line 236
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v7, v3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " bytes from attributeDefinitionName["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 239
    const-string v4, "attributeDefinitionLayout"

    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v4, v2, v7}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v3

    .line 240
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes from attributeDefinitionLayout["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 242
    return-void
.end method
