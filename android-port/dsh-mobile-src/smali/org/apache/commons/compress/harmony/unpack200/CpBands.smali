.class public Lorg/apache/commons/compress/harmony/unpack200/CpBands;
.super Lorg/apache/commons/compress/harmony/unpack200/BandSet;
.source "CpBands.java"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field private classOffset:I

.field private cpClass:[Ljava/lang/String;

.field private cpClassInts:[I

.field private cpDescriptor:[Ljava/lang/String;

.field private cpDescriptorNameInts:[I

.field private cpDescriptorTypeInts:[I

.field private cpDouble:[D

.field private cpFieldClass:[Ljava/lang/String;

.field private cpFieldClassInts:[I

.field private cpFieldDescriptor:[Ljava/lang/String;

.field private cpFieldDescriptorInts:[I

.field private cpFloat:[F

.field private cpIMethodClass:[Ljava/lang/String;

.field private cpIMethodClassInts:[I

.field private cpIMethodDescriptor:[Ljava/lang/String;

.field private cpIMethodDescriptorInts:[I

.field private cpInt:[I

.field private cpLong:[J

.field private cpMethodClass:[Ljava/lang/String;

.field private cpMethodClassInts:[I

.field private cpMethodDescriptor:[Ljava/lang/String;

.field private cpMethodDescriptorInts:[I

.field private cpSignature:[Ljava/lang/String;

.field private cpSignatureInts:[I

.field private cpString:[Ljava/lang/String;

.field private cpStringInts:[I

.field private cpUTF8:[Ljava/lang/String;

.field private descrOffset:I

.field private final descriptorsToCPNameAndTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;",
            ">;"
        }
    .end annotation
.end field

.field private doubleOffset:I

.field private final doublesToCPDoubles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Double;",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;",
            ">;"
        }
    .end annotation
.end field

.field private fieldOffset:I

.field private floatOffset:I

.field private final floatsToCPFloats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;",
            ">;"
        }
    .end annotation
.end field

.field private imethodOffset:I

.field private intOffset:I

.field private final integersToCPIntegers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;",
            ">;"
        }
    .end annotation
.end field

.field private longOffset:I

.field private final longsToCPLongs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;",
            ">;"
        }
    .end annotation
.end field

.field private mapClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mapDescriptor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mapSignature:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mapUTF8:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private methodOffset:I

.field private final pool:Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

.field private signatureOffset:I

.field private stringOffset:I

.field private final stringsToCPClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;",
            ">;"
        }
    .end annotation
.end field

.field private final stringsToCPStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;",
            ">;"
        }
    .end annotation
.end field

.field private final stringsToCPUTF8:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V
    .locals 1
    .param p1, "segment"    # Lorg/apache/commons/compress/harmony/unpack200/Segment;

    .line 105
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    .line 46
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;-><init>(Lorg/apache/commons/compress/harmony/unpack200/CpBands;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->pool:Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->stringsToCPUTF8:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->stringsToCPStrings:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->longsToCPLongs:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->integersToCPIntegers:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->floatsToCPFloats:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->stringsToCPClass:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->doublesToCPDoubles:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->descriptorsToCPNameAndTypes:Ljava/util/Map;

    .line 106
    return-void
.end method

.method static synthetic lambda$parseCpDouble$1([JI)D
    .locals 2
    .param p0, "band"    # [J
    .param p1, "i"    # I

    .line 377
    aget-wide v0, p0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method private parseCpClass(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getCpClassCount()I

    move-result v0

    .line 341
    .local v0, "cpClassCount":I
    const-string v1, "cp_Class"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassInts:[I

    .line 342
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClass:[Ljava/lang/String;

    .line 343
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->mapClass:Ljava/util/Map;

    .line 344
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 345
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClass:[Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8:[Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassInts:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 346
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->mapClass:Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClass:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private parseCpDescriptor(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getCpDescriptorCount()I

    move-result v0

    .line 361
    .local v0, "cpDescriptorCount":I
    const-string v1, "cp_Descr_name"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDescriptorNameInts:[I

    .line 362
    const-string v1, "cp_Descr_type"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDescriptorTypeInts:[I

    .line 363
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDescriptorNameInts:[I

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getReferences([I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "cpDescriptorNames":[Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDescriptorTypeInts:[I

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignature:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getReferences([I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "cpDescriptorTypes":[Ljava/lang/String;
    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDescriptor:[Ljava/lang/String;

    .line 366
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->mapDescriptor:Ljava/util/Map;

    .line 367
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 368
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDescriptor:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 369
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->mapDescriptor:Ljava/util/Map;

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDescriptor:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 371
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method private parseCpDouble(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getCpDoubleCount()I

    move-result v0

    .line 375
    .local v0, "cpDoubleCount":I
    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    sget-object v6, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v2, "cp_Double"

    move-object v1, p0

    move-object v3, p1

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[J

    move-result-object v1

    .line 376
    .local v1, "band":[J
    array-length v2, v1

    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDouble:[D

    .line 377
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDouble:[D

    new-instance v3, Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda2;-><init>([J)V

    invoke-static {v2, v3}, Ljava/util/Arrays;->setAll([DLjava/util/function/IntToDoubleFunction;)V

    .line 378
    return-void
.end method

.method private parseCpField(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getCpFieldCount()I

    move-result v0

    .line 389
    .local v0, "cpFieldCount":I
    const-string v1, "cp_Field_class"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFieldClassInts:[I

    .line 390
    const-string v1, "cp_Field_desc"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFieldDescriptorInts:[I

    .line 391
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFieldClass:[Ljava/lang/String;

    .line 392
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFieldDescriptor:[Ljava/lang/String;

    .line 393
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 394
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFieldClass:[Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClass:[Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFieldClassInts:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 395
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFieldDescriptor:[Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDescriptor:[Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFieldDescriptorInts:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private parseCpFloat(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getCpFloatCount()I

    move-result v0

    .line 401
    .local v0, "cpFloatCount":I
    const-string v1, "cp_Float"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 402
    .local v1, "floatBits":[I
    new-array v2, v0, [F

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFloat:[F

    .line 403
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 404
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFloat:[F

    aget v4, v1, v2

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    aput v4, v3, v2

    .line 403
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 406
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private parseCpIMethod(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getCpIMethodCount()I

    move-result v0

    .line 418
    .local v0, "cpIMethodCount":I
    const-string v1, "cp_Imethod_class"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpIMethodClassInts:[I

    .line 419
    const-string v1, "cp_Imethod_desc"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpIMethodDescriptorInts:[I

    .line 420
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpIMethodClass:[Ljava/lang/String;

    .line 421
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpIMethodDescriptor:[Ljava/lang/String;

    .line 422
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 423
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpIMethodClass:[Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClass:[Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpIMethodClassInts:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 424
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpIMethodDescriptor:[Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDescriptor:[Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpIMethodDescriptorInts:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private parseCpInt(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getCpIntCount()I

    move-result v0

    .line 430
    .local v0, "cpIntCount":I
    const-string v1, "cpInt"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpInt:[I

    .line 431
    return-void
.end method

.method private parseCpLong(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getCpLongCount()I

    move-result v0

    .line 435
    .local v0, "cpLongCount":I
    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    sget-object v6, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v2, "cp_Long"

    move-object v1, p0

    move-object v3, p1

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[J

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpLong:[J

    .line 436
    return-void
.end method

.method private parseCpMethod(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getCpMethodCount()I

    move-result v0

    .line 447
    .local v0, "cpMethodCount":I
    const-string v1, "cp_Method_class"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpMethodClassInts:[I

    .line 448
    const-string v1, "cp_Method_desc"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpMethodDescriptorInts:[I

    .line 449
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpMethodClass:[Ljava/lang/String;

    .line 450
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpMethodDescriptor:[Ljava/lang/String;

    .line 451
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 452
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpMethodClass:[Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClass:[Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpMethodClassInts:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 453
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpMethodDescriptor:[Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDescriptor:[Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpMethodDescriptorInts:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 455
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private parseCpSignature(Ljava/io/InputStream;)V
    .locals 13
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getCpSignatureCount()I

    move-result v0

    .line 470
    .local v0, "cpSignatureCount":I
    const-string v1, "cp_Signature_form"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignatureInts:[I

    .line 471
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignatureInts:[I

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getReferences([I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "cpSignatureForm":[Ljava/lang/String;
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignature:[Ljava/lang/String;

    .line 473
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->mapSignature:Ljava/util/Map;

    .line 474
    const/4 v2, 0x0

    .line 475
    .local v2, "lCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v10, 0x4c

    if-ge v3, v0, :cond_2

    .line 476
    aget-object v4, v1, v3

    .line 477
    .local v4, "form":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 478
    .local v5, "chars":[C
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-char v8, v5, v7

    .line 479
    .local v8, "element":C
    if-ne v8, v10, :cond_0

    .line 480
    iget-object v9, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignatureInts:[I

    const/4 v11, -0x1

    aput v11, v9, v3

    .line 481
    add-int/lit8 v2, v2, 0x1

    .line 478
    .end local v8    # "element":C
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 475
    .end local v4    # "form":Ljava/lang/String;
    .end local v5    # "chars":[C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 485
    .end local v3    # "i":I
    :cond_2
    sget-object v7, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v9, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClass:[Ljava/lang/String;

    const-string v5, "cp_Signature_classes"

    move-object v4, p0

    move-object v6, p1

    move v8, v2

    invoke-virtual/range {v4 .. v9}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, "cpSignatureClasses":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 487
    .local v4, "index":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v0, :cond_5

    .line 488
    aget-object v6, v1, v5

    .line 489
    .local v6, "form":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 490
    .local v7, "len":I
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x40

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 491
    .local v8, "signature":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    if-ge v9, v7, :cond_4

    .line 492
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 493
    .local v11, "c":C
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 494
    if-ne v11, v10, :cond_3

    .line 495
    aget-object v12, v3, v4

    .line 496
    .local v12, "className":Ljava/lang/String;
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    add-int/lit8 v4, v4, 0x1

    .line 491
    .end local v11    # "c":C
    .end local v12    # "className":Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 500
    .end local v9    # "j":I
    :cond_4
    iget-object v9, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignature:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v5

    .line 501
    iget-object v9, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->mapSignature:Ljava/util/Map;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    .end local v6    # "form":Ljava/lang/String;
    .end local v7    # "len":I
    .end local v8    # "signature":Ljava/lang/StringBuilder;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 508
    .end local v5    # "i":I
    :cond_5
    return-void
.end method

.method private parseCpString(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getCpStringCount()I

    move-result v0

    .line 519
    .local v0, "cpStringCount":I
    const-string v1, "cp_String"

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/Codec;->UDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {p0, v1, p1, v2, v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpStringInts:[I

    .line 520
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpString:[Ljava/lang/String;

    .line 521
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpString:[Ljava/lang/String;

    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/compress/harmony/unpack200/CpBands;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 522
    return-void
.end method

.method private parseCpUtf8(Ljava/io/InputStream;)V
    .locals 18
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 525
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getCpUTF8Count()I

    move-result v2

    .line 526
    .local v2, "cpUTF8Count":I
    if-lez v2, :cond_a

    .line 529
    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    add-int/lit8 v4, v2, -0x2

    const-string v5, "cpUTF8Prefix"

    invoke-virtual {v0, v5, v1, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    .line 530
    .local v3, "prefix":[I
    const/4 v4, 0x0

    .line 531
    .local v4, "charCount":I
    const/4 v5, 0x0

    .line 532
    .local v5, "bigSuffixCount":I
    sget-object v6, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    add-int/lit8 v7, v2, -0x1

    const-string v8, "cpUTF8Suffix"

    invoke-virtual {v0, v8, v1, v6, v7}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v6

    .line 534
    .local v6, "suffix":[I
    array-length v7, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_1

    aget v10, v6, v9

    .line 535
    .local v10, "element":I
    if-nez v10, :cond_0

    .line 536
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 538
    :cond_0
    add-int/2addr v4, v10

    .line 534
    .end local v10    # "element":I
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 541
    :cond_1
    const-string v7, "cp_Utf8_chars"

    sget-object v9, Lorg/apache/commons/compress/harmony/pack200/Codec;->CHAR3:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v7, v1, v9, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v7

    .line 542
    .local v7, "dataBand":[I
    new-array v9, v4, [C

    .line 543
    .local v9, "data":[C
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v11, v9

    if-ge v10, v11, :cond_2

    .line 544
    aget v11, v7, v10

    int-to-char v11, v11

    aput-char v11, v9, v10

    .line 543
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 548
    .end local v10    # "i":I
    :cond_2
    const-string v10, "cp_Utf8_big_suffix"

    sget-object v11, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v10, v1, v11, v5}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v10

    .line 549
    .local v10, "bigSuffixCounts":[I
    new-array v11, v5, [[I

    .line 550
    .local v11, "bigSuffixDataBand":[[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    array-length v13, v11

    if-ge v12, v13, :cond_3

    .line 551
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cp_Utf8_big_chars "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    aget v15, v10, v12

    invoke-virtual {v0, v13, v1, v14, v15}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v13

    aput-object v13, v11, v12

    .line 550
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 555
    .end local v12    # "i":I
    :cond_3
    new-array v12, v5, [[C

    .line 556
    .local v12, "bigSuffixData":[[C
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    array-length v14, v11

    if-ge v13, v14, :cond_5

    .line 557
    aget-object v14, v11, v13

    array-length v14, v14

    new-array v14, v14, [C

    aput-object v14, v12, v13

    .line 558
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_5
    aget-object v15, v11, v13

    array-length v15, v15

    if-ge v14, v15, :cond_4

    .line 559
    aget-object v15, v12, v13

    aget-object v16, v11, v13

    aget v8, v16, v14

    int-to-char v8, v8

    aput-char v8, v15, v14

    .line 558
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 556
    .end local v14    # "j":I
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 564
    .end local v13    # "i":I
    :cond_5
    new-instance v8, Ljava/util/HashMap;

    add-int/lit8 v13, v2, 0x1

    invoke-direct {v8, v13}, Ljava/util/HashMap;-><init>(I)V

    iput-object v8, v0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->mapUTF8:Ljava/util/Map;

    .line 565
    new-array v8, v2, [Ljava/lang/String;

    iput-object v8, v0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8:[Ljava/lang/String;

    .line 566
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8:[Ljava/lang/String;

    const-string v13, ""

    const/4 v14, 0x0

    aput-object v13, v8, v14

    .line 567
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->mapUTF8:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v8, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const/4 v4, 0x0

    .line 571
    const/4 v5, 0x0

    .line 572
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_6
    if-ge v8, v2, :cond_9

    .line 573
    iget-object v13, v0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8:[Ljava/lang/String;

    add-int/lit8 v14, v8, -0x1

    aget-object v13, v13, v14

    .line 574
    .local v13, "lastString":Ljava/lang/String;
    add-int/lit8 v14, v8, -0x1

    aget v14, v6, v14

    const/4 v15, 0x1

    if-nez v14, :cond_7

    .line 577
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-le v8, v15, :cond_6

    add-int/lit8 v15, v8, -0x2

    aget v15, v3, v15

    goto :goto_7

    :cond_6
    const/4 v15, 0x0

    :goto_7
    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "cpUTF8Count":I
    .local v16, "cpUTF8Count":I
    invoke-virtual {v13, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    add-int/lit8 v15, v5, 0x1

    .end local v5    # "bigSuffixCount":I
    .local v15, "bigSuffixCount":I
    aget-object v5, v12, v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v8

    .line 578
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->mapUTF8:Ljava/util/Map;

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v15

    goto :goto_9

    .line 580
    .end local v15    # "bigSuffixCount":I
    .end local v16    # "cpUTF8Count":I
    .restart local v2    # "cpUTF8Count":I
    .restart local v5    # "bigSuffixCount":I
    :cond_7
    move/from16 v16, v2

    .end local v2    # "cpUTF8Count":I
    .restart local v16    # "cpUTF8Count":I
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-le v8, v15, :cond_8

    add-int/lit8 v14, v8, -0x2

    aget v14, v3, v14

    goto :goto_8

    :cond_8
    const/4 v14, 0x0

    :goto_8
    const/4 v15, 0x0

    invoke-virtual {v13, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v14, Ljava/lang/String;

    add-int/lit8 v17, v8, -0x1

    aget v15, v6, v17

    invoke-direct {v14, v9, v4, v15}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 581
    add-int/lit8 v1, v8, -0x1

    aget v1, v6, v1

    add-int/2addr v4, v1

    .line 582
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->mapUTF8:Ljava/util/Map;

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .end local v13    # "lastString":Ljava/lang/String;
    :goto_9
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v16

    goto/16 :goto_6

    .line 585
    .end local v8    # "i":I
    .end local v16    # "cpUTF8Count":I
    .restart local v2    # "cpUTF8Count":I
    :cond_9
    return-void

    .line 527
    .end local v3    # "prefix":[I
    .end local v4    # "charCount":I
    .end local v5    # "bigSuffixCount":I
    .end local v6    # "suffix":[I
    .end local v7    # "dataBand":[I
    .end local v9    # "data":[C
    .end local v10    # "bigSuffixCounts":[I
    .end local v11    # "bigSuffixDataBand":[[I
    .end local v12    # "bigSuffixData":[[C
    :cond_a
    move/from16 v16, v2

    .end local v2    # "cpUTF8Count":I
    .restart local v16    # "cpUTF8Count":I
    new-instance v1, Ljava/io/IOException;

    const-string v2, "cpUTF8Count value must be greater than 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    .locals 5
    .param p1, "index"    # I

    .line 109
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClass:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 110
    .local v0, "string":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassInts:[I

    aget v1, v1, p1

    .line 111
    .local v1, "utf8Index":I
    iget v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->classOffset:I

    add-int/2addr v2, p1

    .line 112
    .local v2, "globalIndex":I
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->stringsToCPClass:Ljava/util/Map;

    new-instance v4, Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/harmony/unpack200/CpBands;II)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    return-object v3
.end method

.method public cpClassValue(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->stringsToCPClass:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    .line 117
    .local v0, "cpString":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    if-nez v0, :cond_1

    .line 118
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->mapClass:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 119
    .local v1, "index":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v2

    return-object v2

    .line 122
    :cond_0
    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;Z)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;I)V

    move-object v0, v2

    .line 123
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->stringsToCPClass:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_1
    return-object v0
.end method

.method public cpDoubleValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;
    .locals 4
    .param p1, "index"    # I

    .line 129
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDouble:[D

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 130
    .local v0, "dbl":Ljava/lang/Double;
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->doublesToCPDoubles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    .line 131
    .local v1, "cpDouble":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;
    if-nez v1, :cond_0

    .line 132
    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    iget v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->doubleOffset:I

    add-int/2addr v3, p1

    invoke-direct {v2, v0, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;-><init>(Ljava/lang/Double;I)V

    move-object v1, v2

    .line 133
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->doublesToCPDoubles:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    return-object v1
.end method

.method public cpFieldValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;
    .locals 4
    .param p1, "index"    # I

    .line 139
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFieldClassInts:[I

    aget v1, v1, p1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFieldDescriptorInts:[I

    aget v2, v2, p1

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpNameAndTypeValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->fieldOffset:I

    add-int/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;I)V

    return-object v0
.end method

.method public cpFloatValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;
    .locals 4
    .param p1, "index"    # I

    .line 143
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFloat:[F

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 144
    .local v0, "f":Ljava/lang/Float;
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->floatsToCPFloats:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    .line 145
    .local v1, "cpFloat":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;
    if-nez v1, :cond_0

    .line 146
    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    iget v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->floatOffset:I

    add-int/2addr v3, p1

    invoke-direct {v2, v0, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;-><init>(Ljava/lang/Float;I)V

    move-object v1, v2

    .line 147
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->floatsToCPFloats:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    return-object v1
.end method

.method public cpIMethodValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInterfaceMethodRef;
    .locals 4
    .param p1, "index"    # I

    .line 153
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInterfaceMethodRef;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpIMethodClassInts:[I

    aget v1, v1, p1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpIMethodDescriptorInts:[I

    aget v2, v2, p1

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpNameAndTypeValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->imethodOffset:I

    add-int/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInterfaceMethodRef;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;I)V

    return-object v0
.end method

.method public cpIntegerValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;
    .locals 4
    .param p1, "index"    # I

    .line 157
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpInt:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 158
    .local v0, "i":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->integersToCPIntegers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

    .line 159
    .local v1, "cpInteger":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;
    if-nez v1, :cond_0

    .line 160
    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

    iget v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->intOffset:I

    add-int/2addr v3, p1

    invoke-direct {v2, v0, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;-><init>(Ljava/lang/Integer;I)V

    move-object v1, v2

    .line 161
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->integersToCPIntegers:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_0
    return-object v1
.end method

.method public cpLongValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;
    .locals 4
    .param p1, "index"    # I

    .line 167
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpLong:[J

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 168
    .local v0, "l":Ljava/lang/Long;
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->longsToCPLongs:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    .line 169
    .local v1, "cpLong":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;
    if-nez v1, :cond_0

    .line 170
    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    iget v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->longOffset:I

    add-int/2addr v3, p1

    invoke-direct {v2, v0, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;-><init>(Ljava/lang/Long;I)V

    move-object v1, v2

    .line 171
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->longsToCPLongs:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_0
    return-object v1
.end method

.method public cpMethodValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;
    .locals 4
    .param p1, "index"    # I

    .line 177
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpMethodClassInts:[I

    aget v1, v1, p1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpMethodDescriptorInts:[I

    aget v2, v2, p1

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpNameAndTypeValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->methodOffset:I

    add-int/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;I)V

    return-object v0
.end method

.method public cpNameAndTypeValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;
    .locals 8
    .param p1, "index"    # I

    .line 181
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDescriptor:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 182
    .local v0, "descriptor":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->descriptorsToCPNameAndTypes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    .line 183
    .local v1, "cpNameAndType":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;
    if-nez v1, :cond_0

    .line 184
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDescriptorNameInts:[I

    aget v2, v2, p1

    .line 185
    .local v2, "nameIndex":I
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDescriptorTypeInts:[I

    aget v3, v3, p1

    .line 187
    .local v3, "descriptorIndex":I
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v4

    .line 188
    .local v4, "name":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignatureValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v5

    .line 189
    .local v5, "descriptorU":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    new-instance v6, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    iget v7, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->descrOffset:I

    add-int/2addr v7, p1

    invoke-direct {v6, v4, v5, v7}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;I)V

    move-object v1, v6

    .line 190
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->descriptorsToCPNameAndTypes:Ljava/util/Map;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .end local v2    # "nameIndex":I
    .end local v3    # "descriptorIndex":I
    .end local v4    # "name":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .end local v5    # "descriptorU":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    :cond_0
    return-object v1
.end method

.method public cpNameAndTypeValue(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;
    .locals 9
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->descriptorsToCPNameAndTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    .line 197
    .local v0, "cpNameAndType":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;
    if-nez v0, :cond_1

    .line 198
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->mapDescriptor:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 199
    .local v1, "index":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpNameAndTypeValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    move-result-object v2

    return-object v2

    .line 202
    :cond_0
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 203
    .local v2, "colon":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "nameString":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, "descriptorString":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;Z)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v6

    .line 207
    .local v6, "name":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;Z)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v5

    .line 208
    .local v5, "descriptorU":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    new-instance v7, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    iget v8, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->descrOffset:I

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v7, v6, v5, v8}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;I)V

    move-object v0, v7

    .line 209
    iget-object v7, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->descriptorsToCPNameAndTypes:Ljava/util/Map;

    invoke-interface {v7, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .end local v1    # "index":Ljava/lang/Integer;
    .end local v2    # "colon":I
    .end local v3    # "nameString":Ljava/lang/String;
    .end local v4    # "descriptorString":Ljava/lang/String;
    .end local v5    # "descriptorU":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .end local v6    # "name":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    :cond_1
    return-object v0
.end method

.method public cpSignatureValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .locals 4
    .param p1, "index"    # I

    .line 216
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignatureInts:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignatureInts:[I

    aget v0, v0, p1

    .local v0, "globalIndex":I
    goto :goto_0

    .line 219
    .end local v0    # "globalIndex":I
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->signatureOffset:I

    add-int/2addr v0, p1

    .line 221
    .restart local v0    # "globalIndex":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignature:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 222
    .local v1, "string":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->stringsToCPUTF8:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 223
    .local v2, "cpUTF8":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    if-nez v2, :cond_1

    .line 224
    new-instance v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-direct {v3, v1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;-><init>(Ljava/lang/String;I)V

    move-object v2, v3

    .line 225
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->stringsToCPUTF8:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_1
    return-object v2
.end method

.method public cpStringValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;
    .locals 6
    .param p1, "index"    # I

    .line 231
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpString:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 232
    .local v0, "string":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpStringInts:[I

    aget v1, v1, p1

    .line 233
    .local v1, "utf8Index":I
    iget v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->stringOffset:I

    add-int/2addr v2, p1

    .line 234
    .local v2, "globalIndex":I
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->stringsToCPStrings:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;

    .line 235
    .local v3, "cpString":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;
    if-nez v3, :cond_0

    .line 236
    new-instance v4, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;I)V

    move-object v3, v4

    .line 237
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->stringsToCPStrings:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_0
    return-object v3
.end method

.method public cpUTF8Value(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .locals 3
    .param p1, "index"    # I

    .line 243
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 244
    .local v0, "string":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->stringsToCPUTF8:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 245
    .local v1, "cputf8":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    if-nez v1, :cond_0

    .line 246
    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    invoke-direct {v2, v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;-><init>(Ljava/lang/String;I)V

    move-object v1, v2

    .line 247
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->stringsToCPUTF8:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->getGlobalIndex()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 249
    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;->setGlobalIndex(I)V

    .line 251
    :cond_1
    :goto_0
    return-object v1
.end method

.method public cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 255
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;Z)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v0

    return-object v0
.end method

.method public cpUTF8Value(Ljava/lang/String;Z)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "searchForIndex"    # Z

    .line 259
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->stringsToCPUTF8:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 260
    .local v0, "cputf8":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    if-nez v0, :cond_4

    .line 261
    const/4 v1, 0x0

    .line 262
    .local v1, "index":Ljava/lang/Integer;
    if-eqz p2, :cond_0

    .line 263
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->mapUTF8:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    .line 265
    :cond_0
    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v2

    return-object v2

    .line 268
    :cond_1
    if-eqz p2, :cond_2

    .line 269
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->mapSignature:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    .line 271
    :cond_2
    if-eqz v1, :cond_3

    .line 272
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignatureValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v2

    return-object v2

    .line 274
    :cond_3
    new-instance v2, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    const/4 v3, -0x1

    invoke-direct {v2, p1, v3}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;-><init>(Ljava/lang/String;I)V

    move-object v0, v2

    .line 275
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->stringsToCPUTF8:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .end local v1    # "index":Ljava/lang/Integer;
    :cond_4
    return-object v0
.end method

.method public getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->pool:Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    return-object v0
.end method

.method public getCpClass()[Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClass:[Ljava/lang/String;

    return-object v0
.end method

.method public getCpDescriptor()[Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDescriptor:[Ljava/lang/String;

    return-object v0
.end method

.method public getCpDescriptorNameInts()[I
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDescriptorNameInts:[I

    return-object v0
.end method

.method public getCpDescriptorTypeInts()[I
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDescriptorTypeInts:[I

    return-object v0
.end method

.method public getCpFieldClass()[Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFieldClass:[Ljava/lang/String;

    return-object v0
.end method

.method public getCpIMethodClass()[Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpIMethodClass:[Ljava/lang/String;

    return-object v0
.end method

.method public getCpInt()[I
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpInt:[I

    return-object v0
.end method

.method public getCpLong()[J
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpLong:[J

    return-object v0
.end method

.method public getCpMethodClass()[Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpMethodClass:[Ljava/lang/String;

    return-object v0
.end method

.method public getCpMethodDescriptor()[Ljava/lang/String;
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpMethodDescriptor:[Ljava/lang/String;

    return-object v0
.end method

.method public getCpSignature()[Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignature:[Ljava/lang/String;

    return-object v0
.end method

.method public getCpUTF8()[Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8:[Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$cpClassValue$0$org-apache-commons-compress-harmony-unpack200-CpBands(IILjava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    .locals 2
    .param p1, "utf8Index"    # I
    .param p2, "globalIndex"    # I
    .param p3, "k"    # Ljava/lang/String;

    .line 112
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;I)V

    return-object v0
.end method

.method synthetic lambda$parseCpString$2$org-apache-commons-compress-harmony-unpack200-CpBands(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .line 521
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8:[Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpStringInts:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 589
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->parseCpUtf8(Ljava/io/InputStream;)V

    .line 590
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->parseCpInt(Ljava/io/InputStream;)V

    .line 591
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->parseCpFloat(Ljava/io/InputStream;)V

    .line 592
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->parseCpLong(Ljava/io/InputStream;)V

    .line 593
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->parseCpDouble(Ljava/io/InputStream;)V

    .line 594
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->parseCpString(Ljava/io/InputStream;)V

    .line 595
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->parseCpClass(Ljava/io/InputStream;)V

    .line 596
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->parseCpSignature(Ljava/io/InputStream;)V

    .line 597
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->parseCpDescriptor(Ljava/io/InputStream;)V

    .line 598
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->parseCpField(Ljava/io/InputStream;)V

    .line 599
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->parseCpMethod(Ljava/io/InputStream;)V

    .line 600
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->parseCpIMethod(Ljava/io/InputStream;)V

    .line 602
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->intOffset:I

    .line 603
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->intOffset:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpInt:[I

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->floatOffset:I

    .line 604
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->floatOffset:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFloat:[F

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->longOffset:I

    .line 605
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->longOffset:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpLong:[J

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->doubleOffset:I

    .line 606
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->doubleOffset:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDouble:[D

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->stringOffset:I

    .line 607
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->stringOffset:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpString:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->classOffset:I

    .line 608
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->classOffset:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClass:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->signatureOffset:I

    .line 609
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->signatureOffset:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignature:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->descrOffset:I

    .line 610
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->descrOffset:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDescriptor:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->fieldOffset:I

    .line 611
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->fieldOffset:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFieldClass:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->methodOffset:I

    .line 612
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->methodOffset:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpMethodClass:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->imethodOffset:I

    .line 613
    return-void
.end method

.method public unpack()V
    .locals 0

    .line 618
    return-void
.end method
