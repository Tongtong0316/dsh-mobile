.class public Lorg/apache/commons/compress/harmony/pack200/PackingOptions;
.super Ljava/lang/Object;
.source "PackingOptions.java"


# static fields
.field private static final EMPTY_ATTRIBUTE_ARRAY:[Lorg/objectweb/asm/Attribute;

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final KEEP:Ljava/lang/String; = "keep"

.field public static final PASS:Ljava/lang/String; = "pass"

.field public static final SEGMENT_LIMIT:J = 0xf4240L

.field public static final STRIP:Ljava/lang/String; = "strip"


# instance fields
.field private final classAttributeActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final codeAttributeActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deflateHint:Ljava/lang/String;

.field private effort:I

.field private final fieldAttributeActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gzip:Z

.field private keepFileOrder:Z

.field private logFile:Ljava/lang/String;

.field private final methodAttributeActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private modificationTime:Ljava/lang/String;

.field private final passFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private segmentLimit:J

.field private stripDebug:Z

.field private unknownAttributeAction:Ljava/lang/String;

.field private unknownAttributeTypes:[Lorg/objectweb/asm/Attribute;

.field private verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/objectweb/asm/Attribute;

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->EMPTY_ATTRIBUTE_ARRAY:[Lorg/objectweb/asm/Attribute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->gzip:Z

    .line 43
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->keepFileOrder:Z

    .line 44
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->segmentLimit:J

    .line 45
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->effort:I

    .line 46
    const-string v0, "keep"

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->deflateHint:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->modificationTime:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->passFiles:Ljava/util/List;

    .line 49
    const-string v0, "pass"

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->unknownAttributeAction:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->classAttributeActions:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->fieldAttributeActions:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->methodAttributeActions:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->codeAttributeActions:Ljava/util/Map;

    return-void
.end method

.method private addOrUpdateAttributeActions(Ljava/util/List;Ljava/util/Map;I)V
    .locals 9
    .param p3, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/objectweb/asm/Attribute;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 76
    .local p1, "prototypes":Ljava/util/List;, "Ljava/util/List<Lorg/objectweb/asm/Attribute;>;"
    .local p2, "attributeActions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 78
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 79
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 81
    .local v3, "action":Ljava/lang/String;
    const/4 v4, 0x0

    .line 82
    .local v4, "prototypeExists":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 83
    .local v6, "prototype":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    .line 84
    .local v7, "newAttribute":Lorg/apache/commons/compress/harmony/pack200/NewAttribute;
    iget-object v8, v7, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 86
    invoke-virtual {v7, p3}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->addContext(I)V

    .line 87
    const/4 v4, 0x1

    .line 88
    goto :goto_2

    .line 90
    .end local v6    # "prototype":Ljava/lang/Object;
    :cond_0
    goto :goto_1

    .line 92
    .end local v7    # "newAttribute":Lorg/apache/commons/compress/harmony/pack200/NewAttribute;
    :cond_1
    :goto_2
    if-nez v4, :cond_5

    .line 93
    const-string v5, "error"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 94
    new-instance v5, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$ErrorAttribute;

    invoke-direct {v5, v2, p3}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$ErrorAttribute;-><init>(Ljava/lang/String;I)V

    .local v5, "newAttribute":Lorg/apache/commons/compress/harmony/pack200/NewAttribute;
    goto :goto_3

    .line 95
    .end local v5    # "newAttribute":Lorg/apache/commons/compress/harmony/pack200/NewAttribute;
    :cond_2
    const-string v5, "strip"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 96
    new-instance v5, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$StripAttribute;

    invoke-direct {v5, v2, p3}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$StripAttribute;-><init>(Ljava/lang/String;I)V

    .restart local v5    # "newAttribute":Lorg/apache/commons/compress/harmony/pack200/NewAttribute;
    goto :goto_3

    .line 97
    .end local v5    # "newAttribute":Lorg/apache/commons/compress/harmony/pack200/NewAttribute;
    :cond_3
    const-string v5, "pass"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 98
    new-instance v5, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$PassAttribute;

    invoke-direct {v5, v2, p3}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute$PassAttribute;-><init>(Ljava/lang/String;I)V

    .restart local v5    # "newAttribute":Lorg/apache/commons/compress/harmony/pack200/NewAttribute;
    goto :goto_3

    .line 100
    .end local v5    # "newAttribute":Lorg/apache/commons/compress/harmony/pack200/NewAttribute;
    :cond_4
    new-instance v5, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    invoke-direct {v5, v2, v3, p3}, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    .restart local v5    # "newAttribute":Lorg/apache/commons/compress/harmony/pack200/NewAttribute;
    :goto_3
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "prototypeExists":Z
    .end local v5    # "newAttribute":Lorg/apache/commons/compress/harmony/pack200/NewAttribute;
    :cond_5
    goto :goto_0

    .line 106
    :cond_6
    return-void
.end method

.method private getOrDefault(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 139
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public addClassAttributeAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->classAttributeActions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public addCodeAttributeAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->codeAttributeActions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public addFieldAttributeAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->fieldAttributeActions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public addMethodAttributeAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->methodAttributeActions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public addPassFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "passFileName"    # Ljava/lang/String;

    .line 114
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->getSeparator()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "fileSeparator":Ljava/lang/String;
    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->passFiles:Ljava/util/List;

    const-string v2, "/"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public getDeflateHint()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->deflateHint:Ljava/lang/String;

    return-object v0
.end method

.method public getEffort()I
    .locals 1

    .line 127
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->effort:I

    return v0
.end method

.method public getLogFile()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->logFile:Ljava/lang/String;

    return-object v0
.end method

.method public getModificationTime()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->modificationTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSegmentLimit()J
    .locals 2

    .line 143
    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->segmentLimit:J

    return-wide v0
.end method

.method public getUnknownAttributeAction()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->unknownAttributeAction:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknownAttributePrototypes()[Lorg/objectweb/asm/Attribute;
    .locals 3

    .line 151
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->unknownAttributeTypes:[Lorg/objectweb/asm/Attribute;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v0, "prototypes":Ljava/util/List;, "Ljava/util/List<Lorg/objectweb/asm/Attribute;>;"
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->classAttributeActions:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->addOrUpdateAttributeActions(Ljava/util/List;Ljava/util/Map;I)V

    .line 154
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->methodAttributeActions:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->addOrUpdateAttributeActions(Ljava/util/List;Ljava/util/Map;I)V

    .line 155
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->fieldAttributeActions:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->addOrUpdateAttributeActions(Ljava/util/List;Ljava/util/Map;I)V

    .line 156
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->codeAttributeActions:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->addOrUpdateAttributeActions(Ljava/util/List;Ljava/util/Map;I)V

    .line 157
    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->EMPTY_ATTRIBUTE_ARRAY:[Lorg/objectweb/asm/Attribute;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/objectweb/asm/Attribute;

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->unknownAttributeTypes:[Lorg/objectweb/asm/Attribute;

    .line 159
    .end local v0    # "prototypes":Ljava/util/List;, "Ljava/util/List<Lorg/objectweb/asm/Attribute;>;"
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->unknownAttributeTypes:[Lorg/objectweb/asm/Attribute;

    return-object v0
.end method

.method public getUnknownClassAttributeAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->classAttributeActions:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->unknownAttributeAction:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getOrDefault(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnknownCodeAttributeAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->codeAttributeActions:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->unknownAttributeAction:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getOrDefault(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnknownFieldAttributeAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->fieldAttributeActions:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->unknownAttributeAction:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getOrDefault(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnknownMethodAttributeAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->methodAttributeActions:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->unknownAttributeAction:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->getOrDefault(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGzip()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->gzip:Z

    return v0
.end method

.method public isKeepDeflateHint()Z
    .locals 2

    .line 183
    const-string v0, "keep"

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->deflateHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isKeepFileOrder()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->keepFileOrder:Z

    return v0
.end method

.method public isPassFile(Ljava/lang/String;)Z
    .locals 3
    .param p1, "passFileName"    # Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->passFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 192
    .local v1, "pass":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    const/4 v0, 0x1

    return v0

    .line 195
    :cond_0
    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 197
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 205
    .end local v1    # "pass":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 206
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public isStripDebug()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->stripDebug:Z

    return v0
.end method

.method public isVerbose()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->verbose:Z

    return v0
.end method

.method public removePassFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "passFileName"    # Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->passFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method public setDeflateHint(Ljava/lang/String;)V
    .locals 3
    .param p1, "deflateHint"    # Ljava/lang/String;

    .line 222
    const-string v0, "keep"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad argument: -H "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ? deflate hint should be either true, false or keep (default)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->deflateHint:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setEffort(I)V
    .locals 0
    .param p1, "effort"    # I

    .line 234
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->effort:I

    .line 235
    return-void
.end method

.method public setGzip(Z)V
    .locals 0
    .param p1, "gzip"    # Z

    .line 238
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->gzip:Z

    .line 239
    return-void
.end method

.method public setKeepFileOrder(Z)V
    .locals 0
    .param p1, "keepFileOrder"    # Z

    .line 242
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->keepFileOrder:Z

    .line 243
    return-void
.end method

.method public setLogFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "logFile"    # Ljava/lang/String;

    .line 246
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->logFile:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setModificationTime(Ljava/lang/String;)V
    .locals 3
    .param p1, "modificationTime"    # Ljava/lang/String;

    .line 250
    const-string v0, "keep"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "latest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad argument: -m "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ? transmit modtimes should be either latest or keep (default)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->modificationTime:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setQuiet(Z)V
    .locals 1
    .param p1, "quiet"    # Z

    .line 257
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->verbose:Z

    .line 258
    return-void
.end method

.method public setSegmentLimit(J)V
    .locals 0
    .param p1, "segmentLimit"    # J

    .line 266
    iput-wide p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->segmentLimit:J

    .line 267
    return-void
.end method

.method public setStripDebug(Z)V
    .locals 0
    .param p1, "stripDebug"    # Z

    .line 276
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->stripDebug:Z

    .line 277
    return-void
.end method

.method public setUnknownAttributeAction(Ljava/lang/String;)V
    .locals 3
    .param p1, "unknownAttributeAction"    # Ljava/lang/String;

    .line 285
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->unknownAttributeAction:Ljava/lang/String;

    .line 286
    const-string v0, "pass"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "error"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "strip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect option for -U, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_1
    :goto_0
    return-void
.end method

.method public setVerbose(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 292
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/pack200/PackingOptions;->verbose:Z

    .line 293
    return-void
.end method
