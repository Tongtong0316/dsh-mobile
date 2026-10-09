.class public Lorg/apache/commons/compress/harmony/pack200/ClassBands;
.super Lorg/apache/commons/compress/harmony/pack200/BandSet;
.source "ClassBands.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;
    }
.end annotation


# static fields
.field private static final EMPTY_LONG_ARRAY:[J


# instance fields
.field private anySyntheticClasses:Z

.field private anySyntheticFields:Z

.field private anySyntheticMethods:Z

.field private final attrBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

.field private final classAttributeBands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;",
            ">;"
        }
    .end annotation
.end field

.field private final classEnclosingMethodClass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final classEnclosingMethodDesc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final classFileVersionMajor:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final classFileVersionMinor:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private classInnerClassesNameRUN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPUTF8;",
            ">;"
        }
    .end annotation
.end field

.field private classInnerClassesOuterRCN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;"
        }
    .end annotation
.end field

.field private final classReferencesInnerClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;>;"
        }
    .end annotation
.end field

.field private final classSignature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPSignature;",
            ">;"
        }
    .end annotation
.end field

.field private final classSourceFile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPUTF8;",
            ">;"
        }
    .end annotation
.end field

.field private class_InnerClasses_F:[I

.field private class_InnerClasses_N:[I

.field private class_InnerClasses_RC:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

.field private final class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private final class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private class_attr_calls:[I

.field private final class_field_count:[I

.field private final class_flags:[J

.field private final class_interface:[[Lorg/apache/commons/compress/harmony/pack200/CPClass;

.field private final class_interface_count:[I

.field private final class_method_count:[I

.field private final class_super:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

.field private final class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

.field private final codeAttributeBands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;",
            ">;"
        }
    .end annotation
.end field

.field private final codeFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final codeHandlerCatchPO:Ljava/util/List;

.field private final codeHandlerClass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;"
        }
    .end annotation
.end field

.field private final codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeHandlerEndPO:Ljava/util/List;

.field private final codeHandlerStartP:Ljava/util/List;

.field private codeHeaders:[I

.field private final codeLineNumberTableBciP:Ljava/util/List;

.field private final codeLineNumberTableLine:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeLocalVariableTableBciP:Ljava/util/List;

.field private final codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeLocalVariableTableNameRU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final codeLocalVariableTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeLocalVariableTableSpanO:Ljava/util/List;

.field private final codeLocalVariableTableTypeRS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final codeLocalVariableTypeTableBciP:Ljava/util/List;

.field private final codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeLocalVariableTypeTableNameRU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final codeLocalVariableTypeTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeLocalVariableTypeTableSpanO:Ljava/util/List;

.field private final codeLocalVariableTypeTableTypeRS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/ConstantPoolEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private code_attr_calls:[I

.field private final cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

.field private final fieldAttributeBands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldConstantValueKQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPConstant<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final fieldSignature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPSignature;",
            ">;"
        }
    .end annotation
.end field

.field private final field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private final field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private field_attr_calls:[I

.field private final field_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

.field private final field_flags:[[J

.field private index:I

.field private final major_versions:[I

.field private final methodAttributeBands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;",
            ">;"
        }
    .end annotation
.end field

.field private final methodExceptionClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPClass;",
            ">;"
        }
    .end annotation
.end field

.field private final methodExceptionNumber:Lorg/apache/commons/compress/harmony/pack200/IntList;

.field private final methodSignature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPSignature;",
            ">;"
        }
    .end annotation
.end field

.field private final method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private final method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private final method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private final method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private final method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

.field private method_attr_calls:[I

.field private final method_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

.field private final method_flags:[[J

.field private numMethodArgs:I

.field private final segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

.field private final stripDebug:Z

.field private final tempFieldDesc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;",
            ">;"
        }
    .end annotation
.end field

.field private final tempFieldFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final tempMethodDesc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;",
            ">;"
        }
    .end annotation
.end field

.field private final tempMethodFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

.field private tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const/4 v0, 0x0

    new-array v0, v0, [J

    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->EMPTY_LONG_ARRAY:[J

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/Segment;IIZ)V
    .locals 12
    .param p1, "segment"    # Lorg/apache/commons/compress/harmony/pack200/Segment;
    .param p2, "numClasses"    # I
    .param p3, "effort"    # I
    .param p4, "stripDebug"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    move-object v0, p0

    move v1, p2

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v2

    move v9, p3

    invoke-direct {p0, p3, v2}, Lorg/apache/commons/compress/harmony/pack200/BandSet;-><init>(ILorg/apache/commons/compress/harmony/pack200/SegmentHeader;)V

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSourceFile:Ljava/util/List;

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodClass:Ljava/util/List;

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodDesc:Ljava/util/List;

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSignature:Ljava/util/List;

    .line 128
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMinor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 129
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMajor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldConstantValueKQ:Ljava/util/List;

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldSignature:Ljava/util/List;

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodSignature:Ljava/util/List;

    .line 143
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionNumber:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionClasses:Ljava/util/List;

    .line 146
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 147
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 148
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    .line 151
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCatchPO:Ljava/util/List;

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerClass:Ljava/util/List;

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    .line 155
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    .line 157
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableLine:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 158
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 159
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    .line 160
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSpanO:Ljava/util/List;

    .line 161
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableNameRU:Ljava/util/List;

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableTypeRS:Ljava/util/List;

    .line 163
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 164
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSpanO:Ljava/util/List;

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableNameRU:Ljava/util/List;

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableTypeRS:Ljava/util/List;

    .line 170
    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    .line 181
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    .line 185
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldDesc:Ljava/util/List;

    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    .line 189
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodDesc:Ljava/util/List;

    .line 199
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classReferencesInnerClass:Ljava/util/Map;

    .line 214
    move/from16 v2, p4

    iput-boolean v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->stripDebug:Z

    .line 215
    move-object v10, p1

    iput-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    .line 216
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/pack200/CpBands;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    .line 217
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getAttrBands()Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->attrBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    .line 218
    new-array v3, v1, [Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 219
    new-array v3, v1, [Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_super:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 220
    new-array v3, v1, [I

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface_count:[I

    .line 221
    new-array v3, v1, [[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface:[[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 222
    new-array v3, v1, [I

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_field_count:[I

    .line 223
    new-array v3, v1, [I

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_method_count:[I

    .line 224
    new-array v3, v1, [[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    .line 225
    new-array v3, v1, [[J

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_flags:[[J

    .line 226
    new-array v3, v1, [[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    .line 227
    new-array v3, v1, [[J

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_flags:[[J

    .line 228
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 229
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_flags:[[J

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->EMPTY_LONG_ARRAY:[J

    aput-object v5, v4, v3

    .line 230
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_flags:[[J

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->EMPTY_LONG_ARRAY:[J

    aput-object v5, v4, v3

    .line 228
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    .end local v3    # "i":I
    :cond_0
    new-array v3, v1, [I

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->major_versions:[I

    .line 234
    new-array v3, v1, [J

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    .line 236
    new-instance v11, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v4, "RVA"

    const/4 v5, 0x0

    move-object v3, v11

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 237
    new-instance v11, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v4, "RIA"

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 238
    new-instance v11, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v4, "RVA"

    const/4 v5, 0x1

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 239
    new-instance v11, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v4, "RIA"

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 240
    new-instance v11, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v4, "RVA"

    const/4 v5, 0x2

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 241
    new-instance v11, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v4, "RIA"

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 242
    new-instance v11, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v4, "RVPA"

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 243
    new-instance v11, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v4, "RIPA"

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 244
    new-instance v11, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    const-string v4, "AD"

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;-><init>(Ljava/lang/String;ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;I)V

    iput-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    .line 246
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->createNewAttributeBands()V

    .line 247
    return-void
.end method

.method protected static countArgs(Ljava/lang/String;)I
    .locals 8
    .param p0, "descriptor"    # Ljava/lang/String;

    .line 78
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 79
    .local v0, "bra":I
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 80
    .local v1, "ket":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    if-eq v1, v2, :cond_8

    if-lt v1, v0, :cond_8

    .line 84
    const/4 v2, 0x0

    .line 85
    .local v2, "inType":Z
    const/4 v3, 0x0

    .line 86
    .local v3, "consumingNextType":Z
    const/4 v4, 0x0

    .line 87
    .local v4, "count":I
    add-int/lit8 v5, v0, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_7

    .line 88
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 89
    .local v6, "charAt":C
    if-eqz v2, :cond_0

    const/16 v7, 0x3b

    if-ne v6, v7, :cond_0

    .line 90
    const/4 v2, 0x0

    .line 91
    const/4 v3, 0x0

    goto :goto_2

    .line 92
    :cond_0
    if-nez v2, :cond_1

    const/16 v7, 0x4c

    if-ne v6, v7, :cond_1

    .line 93
    const/4 v2, 0x1

    .line 94
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 95
    :cond_1
    const/16 v7, 0x5b

    if-ne v6, v7, :cond_2

    .line 96
    const/4 v3, 0x1

    goto :goto_2

    .line 97
    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    .line 99
    :cond_3
    if-eqz v3, :cond_4

    .line 100
    add-int/lit8 v4, v4, 0x1

    .line 101
    const/4 v3, 0x0

    goto :goto_2

    .line 102
    :cond_4
    const/16 v7, 0x44

    if-eq v6, v7, :cond_6

    const/16 v7, 0x4a

    if-ne v6, v7, :cond_5

    goto :goto_1

    .line 105
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 103
    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x2

    .line 87
    .end local v6    # "charAt":C
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 108
    .end local v5    # "i":I
    :cond_7
    return v4

    .line 81
    .end local v2    # "inType":Z
    .end local v3    # "consumingNextType":Z
    .end local v4    # "count":I
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No arguments"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private createNewAttributeBands()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->attrBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->getClassAttributeLayouts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    .line 559
    .local v1, "def":Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->effort:I

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;-><init>(ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    .end local v1    # "def":Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;
    goto :goto_0

    .line 561
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->attrBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->getMethodAttributeLayouts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    .line 562
    .restart local v1    # "def":Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->effort:I

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;-><init>(ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    .end local v1    # "def":Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;
    goto :goto_1

    .line 564
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->attrBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->getFieldAttributeLayouts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    .line 565
    .restart local v1    # "def":Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->effort:I

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;-><init>(ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    .end local v1    # "def":Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;
    goto :goto_2

    .line 567
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->attrBands:Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands;->getCodeAttributeLayouts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;

    .line 568
    .restart local v1    # "def":Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    new-instance v3, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->effort:I

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    iget-object v6, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;-><init>(ILorg/apache/commons/compress/harmony/pack200/CpBands;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    .end local v1    # "def":Lorg/apache/commons/compress/harmony/pack200/AttributeDefinitionBands$AttributeDefinition;
    goto :goto_3

    .line 570
    :cond_3
    return-void
.end method

.method private getInts([Lorg/apache/commons/compress/harmony/pack200/CPClass;)[I
    .locals 3
    .param p1, "cpClasses"    # [Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 837
    array-length v0, p1

    new-array v0, v0, [I

    .line 838
    .local v0, "ints":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 839
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 840
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->getIndex()I

    move-result v2

    aput v2, v0, v1

    .line 838
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 843
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private isInnerClass(Ljava/lang/String;)Z
    .locals 2
    .param p1, "possibleInner"    # Ljava/lang/String;

    .line 859
    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInnerClassOf(Ljava/lang/String;Lorg/apache/commons/compress/harmony/pack200/CPClass;)Z
    .locals 2
    .param p1, "possibleInner"    # Ljava/lang/String;
    .param p2, "possibleOuter"    # Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 863
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->isInnerClass(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 864
    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, "superClassName":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 866
    const/4 v1, 0x1

    return v1

    .line 868
    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->isInnerClassOf(Ljava/lang/String;Lorg/apache/commons/compress/harmony/pack200/CPClass;)Z

    move-result v1

    return v1

    .line 870
    .end local v0    # "superClassName":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method static synthetic lambda$currentClassReferencesInnerClass$1(Lorg/apache/commons/compress/harmony/pack200/CPClass;)Ljava/util/Set;
    .locals 1
    .param p0, "c"    # Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 576
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$finaliseBands$2(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;)I
    .locals 2
    .param p0, "arg0"    # Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    .param p1, "arg1"    # Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 795
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getFlagIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getFlagIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private renumberBci(Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V
    .locals 4
    .param p2, "bciRenumbering"    # Lorg/apache/commons/compress/harmony/pack200/IntList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/commons/compress/harmony/pack200/IntList;",
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/Label;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1077
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "labelsToOffsets":Ljava/util/Map;, "Ljava/util/Map<Lorg/objectweb/asm/Label;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1078
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1079
    .local v1, "label":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1080
    goto :goto_1

    .line 1082
    :cond_0
    instance-of v2, v1, Lorg/objectweb/asm/Label;

    if-eqz v2, :cond_1

    .line 1083
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1084
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1085
    .local v2, "bytecodeIndex":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1077
    .end local v1    # "label":Ljava/lang/Object;
    .end local v2    # "bytecodeIndex":Ljava/lang/Integer;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1088
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method private renumberDoubleOffsetBci(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V
    .locals 5
    .param p4, "bciRenumbering"    # Lorg/apache/commons/compress/harmony/pack200/IntList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/commons/compress/harmony/pack200/IntList;",
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/Label;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1093
    .local p1, "relative":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "firstOffset":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p5, "labelsToOffsets":Ljava/util/Map;, "Ljava/util/Map<Lorg/objectweb/asm/Label;Ljava/lang/Integer;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1094
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1095
    .local v1, "label":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1096
    goto :goto_1

    .line 1098
    :cond_0
    instance-of v2, v1, Lorg/objectweb/asm/Label;

    if-eqz v2, :cond_1

    .line 1099
    invoke-interface {p3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1100
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1101
    .local v2, "bytecodeIndex":Ljava/lang/Integer;
    nop

    .line 1102
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p4, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1103
    .local v3, "renumberedOffset":Ljava/lang/Integer;
    invoke-interface {p3, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1093
    .end local v1    # "label":Ljava/lang/Object;
    .end local v2    # "bytecodeIndex":Ljava/lang/Integer;
    .end local v3    # "renumberedOffset":Ljava/lang/Integer;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1106
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method private renumberOffsetBci(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V
    .locals 5
    .param p3, "bciRenumbering"    # Lorg/apache/commons/compress/harmony/pack200/IntList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/apache/commons/compress/harmony/pack200/IntList;",
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/Label;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1110
    .local p1, "relative":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, "labelsToOffsets":Ljava/util/Map;, "Ljava/util/Map<Lorg/objectweb/asm/Label;Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1111
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1112
    .local v1, "label":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 1113
    goto :goto_1

    .line 1115
    :cond_0
    instance-of v2, v1, Lorg/objectweb/asm/Label;

    if-eqz v2, :cond_1

    .line 1116
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1117
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1118
    .local v2, "bytecodeIndex":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p3, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1119
    .local v3, "renumberedOffset":Ljava/lang/Integer;
    invoke-interface {p2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1110
    .end local v1    # "label":Ljava/lang/Object;
    .end local v2    # "bytecodeIndex":Ljava/lang/Integer;
    .end local v3    # "renumberedOffset":Ljava/lang/Integer;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1122
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method private sum([I)I
    .locals 4
    .param p1, "ints"    # [I

    .line 1125
    const/4 v0, 0x0

    .line 1126
    .local v0, "sum":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 1127
    .local v3, "j":I
    add-int/2addr v0, v3

    .line 1126
    .end local v3    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1129
    :cond_0
    return v0
.end method

.method private writeClassAttributeBands(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1133
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_class_flags_hi()Z

    move-result v5

    const-string v1, "class_flags"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeFlags(Ljava/lang/String;[JLorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[B

    move-result-object v0

    .line 1134
    .local v0, "encodedBand":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes from class_flags["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1145
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_attr_calls:[I

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "class_attr_calls"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1146
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from class_attr_calls["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_attr_calls:[I

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1149
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSourceFile:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryOrNullListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "classSourceFile"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1150
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from classSourceFile["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSourceFile:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1153
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodClass:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "class_enclosing_method_RC"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1154
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from class_enclosing_method_RC["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodClass:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1157
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodDesc:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryOrNullListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "class_EnclosingMethod_RDN"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1158
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from class_EnclosingMethod_RDN["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodDesc:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1161
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSignature:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "class_Signature_RS"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1162
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from class_Signature_RS["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSignature:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1165
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1166
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1168
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_N:[I

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "class_InnerClasses_N"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1169
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from class_InnerClasses_N["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_N:[I

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1172
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_RC:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->getInts([Lorg/apache/commons/compress/harmony/pack200/CPClass;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "class_InnerClasses_RC"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1173
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from class_InnerClasses_RC["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_RC:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1176
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_F:[I

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "class_InnerClasses_F"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1177
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from class_InnerClasses_F["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_F:[I

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1180
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesOuterRCN:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryOrNullListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "class_InnerClasses_outer_RCN"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1181
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from class_InnerClasses_outer_RCN["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesOuterRCN:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1184
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesNameRUN:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryOrNullListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "class_InnerClasses_name_RUN"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1185
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from class_InnerClasses_name_RUN["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesNameRUN:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1188
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMinor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "classFileVersionMinor"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1189
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from classFileVersionMinor["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMinor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1192
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMajor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "classFileVersionMajor"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1193
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes from classFileVersionMajor["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMajor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1196
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 1197
    .local v2, "classAttributeBand":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->pack(Ljava/io/OutputStream;)V

    .line 1198
    .end local v2    # "classAttributeBand":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    goto :goto_0

    .line 1199
    :cond_0
    return-void
.end method

.method private writeCodeAttributeBands(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1202
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->longListToArray(Ljava/util/List;)[J

    move-result-object v3

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    sget-object v5, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_code_flags_hi()Z

    move-result v6

    const-string v2, "codeFlags"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeFlags(Ljava/lang/String;[JLorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[B

    move-result-object v0

    .line 1203
    .local v0, "encodedBand":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes from codeFlags["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1208
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->code_attr_calls:[I

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "code_attr_calls"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1209
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from code_attr_calls["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->code_attr_calls:[I

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1212
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "code_LineNumberTable_N"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1213
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from code_LineNumberTable_N["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1216
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "code_LineNumberTable_bci_P"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1217
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from code_LineNumberTable_bci_P["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1220
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableLine:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "code_LineNumberTable_line"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1221
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from code_LineNumberTable_line["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableLine:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1224
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "code_LocalVariableTable_N"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1225
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from code_LocalVariableTable_N["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1228
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "code_LocalVariableTable_bci_P"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1229
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from code_LocalVariableTable_bci_P["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1232
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSpanO:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "code_LocalVariableTable_span_O"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1233
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from code_LocalVariableTable_span_O["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSpanO:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1236
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableNameRU:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "code_LocalVariableTable_name_RU"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1237
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from code_LocalVariableTable_name_RU["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableNameRU:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1240
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableTypeRS:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "code_LocalVariableTable_type_RS"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1241
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from code_LocalVariableTable_type_RS["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableTypeRS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1244
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "code_LocalVariableTable_slot"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1245
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from code_LocalVariableTable_slot["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1248
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "code_LocalVariableTypeTable_N"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1249
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from code_LocalVariableTypeTable_N["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1252
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "code_LocalVariableTypeTable_bci_P"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1253
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from code_LocalVariableTypeTable_bci_P["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1256
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSpanO:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "code_LocalVariableTypeTable_span_O"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1257
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from code_LocalVariableTypeTable_span_O["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSpanO:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1260
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableNameRU:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "code_LocalVariableTypeTable_name_RU"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1261
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from code_LocalVariableTypeTable_name_RU["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableNameRU:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1264
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableTypeRS:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "code_LocalVariableTypeTable_type_RS"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1265
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from code_LocalVariableTypeTable_type_RS["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableTypeRS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1268
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "code_LocalVariableTypeTable_slot"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1269
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes from code_LocalVariableTypeTable_slot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1272
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 1273
    .local v2, "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->pack(Ljava/io/OutputStream;)V

    .line 1274
    .end local v2    # "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    goto :goto_0

    .line 1275
    :cond_0
    return-void
.end method

.method private writeCodeBands(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1278
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v2, "codeHeaders"

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1279
    .local v0, "encodedBand":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes from codeHeaders["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1282
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "codeMaxStack"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1283
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from codeMaxStack["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1286
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "codeMaxLocals"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1287
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from codeMaxLocals["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1290
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "codeHandlerCount"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1291
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from codeHandlerCount["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1294
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->BCI5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "codeHandlerStartP"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1295
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from codeHandlerStartP["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1298
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "codeHandlerEndPO"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1299
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from codeHandlerEndPO["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1302
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCatchPO:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->integerListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "codeHandlerCatchPO"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1303
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from codeHandlerCatchPO["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCatchPO:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1306
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerClass:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryOrNullListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "codeHandlerClass"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1307
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes from codeHandlerClass["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerClass:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1310
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->writeCodeAttributeBands(Ljava/io/OutputStream;)V

    .line 1311
    return-void
.end method

.method private writeFieldAttributeBands(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1314
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_flags:[[J

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_field_flags_hi()Z

    move-result v5

    const-string v1, "field_flags"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeFlags(Ljava/lang/String;[[JLorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[B

    move-result-object v0

    .line 1315
    .local v0, "encodedBand":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes from field_flags["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_flags:[[J

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1320
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_attr_calls:[I

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "field_attr_calls"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1321
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from field_attr_calls["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_attr_calls:[I

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1324
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldConstantValueKQ:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "fieldConstantValueKQ"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1325
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from fieldConstantValueKQ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldConstantValueKQ:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1328
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldSignature:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "fieldSignature"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1329
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes from fieldSignature["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldSignature:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1332
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1333
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1334
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 1335
    .local v2, "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->pack(Ljava/io/OutputStream;)V

    .line 1336
    .end local v2    # "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    goto :goto_0

    .line 1337
    :cond_0
    return-void
.end method

.method private writeMethodAttributeBands(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 1340
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_flags:[[J

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_method_flags_hi()Z

    move-result v5

    const-string v1, "method_flags"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeFlags(Ljava/lang/String;[[JLorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[B

    move-result-object v0

    .line 1341
    .local v0, "encodedBand":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes from method_flags["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_flags:[[J

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1346
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_attr_calls:[I

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "method_attr_calls"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1347
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from method_attr_calls["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_attr_calls:[I

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1350
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionNumber:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "methodExceptionNumber"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1351
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from methodExceptionNumber["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionNumber:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1354
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionClasses:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "methodExceptionClasses"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1355
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes from methodExceptionClasses["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionClasses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1358
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodSignature:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpEntryListToArray(Ljava/util/List;)[I

    move-result-object v1

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v5, "methodSignature"

    invoke-virtual {p0, v5, v1, v4}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v0

    .line 1359
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes from methodSignature["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodSignature:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 1362
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1363
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1364
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1365
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1366
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->pack(Ljava/io/OutputStream;)V

    .line 1367
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 1368
    .local v2, "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->pack(Ljava/io/OutputStream;)V

    .line 1369
    .end local v2    # "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    goto :goto_0

    .line 1370
    :cond_0
    return-void
.end method


# virtual methods
.method public addAnnotation(ILjava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 14
    .param p1, "context"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
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

    .line 252
    .local p4, "nameRU":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p7, "caseArrayN":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p8, "nestTypeRS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p9, "nestNameRU":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p10, "nestPairN":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v0, p0

    const/high16 v1, 0x200000

    const/high16 v2, 0x400000

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 294
    :pswitch_0
    if-eqz p3, :cond_1

    .line 295
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v3 .. v11}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 296
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 297
    .local v2, "flag":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v3

    and-int/2addr v3, v1

    if-eqz v3, :cond_0

    .line 298
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->incrementAnnoN()V

    goto :goto_0

    .line 300
    :cond_0
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->newEntryInAnnoN()V

    .line 302
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v4

    or-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v2    # "flag":Ljava/lang/Long;
    goto/16 :goto_4

    .line 304
    :cond_1
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v4 .. v12}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 305
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 306
    .local v1, "flag":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_2

    .line 307
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->incrementAnnoN()V

    goto :goto_1

    .line 309
    :cond_2
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->newEntryInAnnoN()V

    .line 311
    :goto_1
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v4

    or-int/2addr v2, v4

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 273
    .end local v1    # "flag":Ljava/lang/Long;
    :pswitch_1
    if-eqz p3, :cond_4

    .line 274
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v4 .. v12}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 275
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 276
    .restart local v2    # "flag":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v3

    and-int/2addr v3, v1

    if-eqz v3, :cond_3

    .line 277
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->incrementAnnoN()V

    goto :goto_2

    .line 279
    :cond_3
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->newEntryInAnnoN()V

    .line 281
    :goto_2
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v4

    or-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    .end local v2    # "flag":Ljava/lang/Long;
    goto/16 :goto_4

    .line 283
    :cond_4
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v4 .. v12}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 284
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 285
    .restart local v1    # "flag":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_5

    .line 286
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->incrementAnnoN()V

    goto :goto_3

    .line 288
    :cond_5
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->newEntryInAnnoN()V

    .line 290
    :goto_3
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v4

    or-int/2addr v2, v4

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v1    # "flag":Ljava/lang/Long;
    goto/16 :goto_4

    .line 254
    :pswitch_2
    const-wide/16 v1, 0x0

    if-eqz p3, :cond_7

    .line 255
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v3 .. v11}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 256
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v4, v3, v4

    const-wide/32 v6, 0x200000

    and-long v3, v4, v6

    cmp-long v1, v3, v1

    if-eqz v1, :cond_6

    .line 257
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->incrementAnnoN()V

    goto :goto_4

    .line 259
    :cond_6
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->newEntryInAnnoN()V

    .line 260
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v4, v3, v4

    or-long v3, v4, v6

    aput-wide v3, v1, v2

    goto :goto_4

    .line 263
    :cond_7
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v5 .. v13}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 264
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v4, v3, v4

    const-wide/32 v6, 0x400000

    and-long v3, v4, v6

    cmp-long v1, v3, v1

    if-eqz v1, :cond_8

    .line 265
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->incrementAnnoN()V

    goto :goto_4

    .line 267
    :cond_8
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->newEntryInAnnoN()V

    .line 268
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v4, v3, v4

    or-long v3, v4, v6

    aput-wide v3, v1, v2

    .line 271
    nop

    .line 315
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addAnnotationDefault(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 319
    .local p1, "nameRU":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p4, "caseArrayN":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "nestTypeRS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "nestNameRU":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "nestPairN":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addAnnotation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 320
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 321
    .local v1, "flag":Ljava/lang/Long;
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x2000000

    or-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method

.method public addClass(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "major"    # I
    .param p2, "flags"    # I
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object v2

    aput-object v2, v0, v1

    .line 326
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_super:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v2, p5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object v2

    aput-object v2, v0, v1

    .line 327
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface_count:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    array-length v2, p6

    aput v2, v0, v1

    .line 328
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface:[[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    array-length v2, p6

    new-array v2, v2, [Lorg/apache/commons/compress/harmony/pack200/CPClass;

    aput-object v2, v0, v1

    .line 329
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface:[[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-object v0, v0, v1

    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/ClassBands$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p6}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/harmony/pack200/ClassBands;[Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 330
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->major_versions:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aput p1, v0, v1

    .line 331
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    int-to-long v2, p2

    aput-wide v2, v0, v1

    .line 332
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticClasses:Z

    if-nez v0, :cond_0

    and-int/lit16 v0, p2, 0x1000

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getCurrentClassReader()Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->hasSyntheticAttributes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    const-string v1, "Synthetic"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->addCPUtf8(Ljava/lang/String;)V

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticClasses:Z

    .line 340
    :cond_0
    if-eqz p4, :cond_1

    .line 341
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v0, v1

    const-wide/32 v4, 0x80000

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 342
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSignature:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_1
    return-void
.end method

.method public addClassAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V
    .locals 9
    .param p1, "attribute"    # Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    .line 348
    iget-object v0, p1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    .line 349
    .local v0, "attributeName":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 350
    .local v2, "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->addAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V

    .line 352
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getFlagIndex()I

    move-result v1

    .line 353
    .local v1, "flagIndex":I
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v5, v3, v4

    const/4 v7, 0x1

    shl-int/2addr v7, v1

    int-to-long v7, v7

    or-long/2addr v5, v7

    aput-wide v5, v3, v4

    .line 354
    return-void

    .line 356
    .end local v1    # "flagIndex":I
    .end local v2    # "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    :cond_0
    goto :goto_0

    .line 357
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No suitable definition for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addCode()V
    .locals 4

    .line 361
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 362
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->stripDebug:Z

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 366
    :cond_0
    return-void
.end method

.method public addCodeAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V
    .locals 10
    .param p1, "attribute"    # Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    .line 369
    iget-object v0, p1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    .line 370
    .local v0, "attributeName":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 371
    .local v2, "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->addAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V

    .line 373
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getFlagIndex()I

    move-result v1

    .line 374
    .local v1, "flagIndex":I
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 375
    .local v3, "flags":Ljava/lang/Long;
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    shl-int/2addr v5, v1

    int-to-long v8, v5

    or-long v5, v6, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    return-void

    .line 378
    .end local v1    # "flagIndex":I
    .end local v2    # "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    .end local v3    # "flags":Ljava/lang/Long;
    :cond_0
    goto :goto_0

    .line 379
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No suitable definition for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addEnclosingMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v0, v1

    const-wide/32 v4, 0x40000

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 384
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodClass:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodDesc:Ljava/util/List;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPNameAndType(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    return-void
.end method

.method public addField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 389
    const v0, 0xffff

    and-int/2addr p1, v0

    .line 390
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldDesc:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPNameAndType(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    if-eqz p4, :cond_0

    .line 392
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldSignature:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    .line 395
    :cond_0
    const/high16 v0, 0x20000

    and-int v1, p1, v0

    if-eqz v1, :cond_1

    .line 396
    const v1, -0x20001

    and-int/2addr p1, v1

    .line 397
    const/high16 v1, 0x100000

    or-int/2addr p1, v1

    .line 399
    :cond_1
    if-eqz p5, :cond_2

    .line 400
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldConstantValueKQ:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v2, p5}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getConstant(Ljava/lang/Object;)Lorg/apache/commons/compress/harmony/pack200/CPConstant;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    or-int/2addr p1, v0

    .line 403
    :cond_2
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticFields:Z

    if-nez v0, :cond_3

    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getCurrentClassReader()Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->hasSyntheticAttributes()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 404
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    const-string v1, "Synthetic"

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->addCPUtf8(Ljava/lang/String;)V

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticFields:Z

    .line 407
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    return-void
.end method

.method public addFieldAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V
    .locals 10
    .param p1, "attribute"    # Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    .line 411
    iget-object v0, p1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    .line 412
    .local v0, "attributeName":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 413
    .local v2, "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->addAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V

    .line 415
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getFlagIndex()I

    move-result v1

    .line 416
    .local v1, "flagIndex":I
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 417
    .local v3, "flags":Ljava/lang/Long;
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    shl-int/2addr v5, v1

    int-to-long v8, v5

    or-long v5, v6, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    return-void

    .line 420
    .end local v1    # "flagIndex":I
    .end local v2    # "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    .end local v3    # "flags":Ljava/lang/Long;
    :cond_0
    goto :goto_0

    .line 421
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No suitable definition for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addHandler(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
    .locals 3
    .param p1, "start"    # Lorg/objectweb/asm/Label;
    .param p2, "end"    # Lorg/objectweb/asm/Label;
    .param p3, "handler"    # Lorg/objectweb/asm/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v0

    .line 426
    .local v0, "handlers":I
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 427
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCatchPO:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerClass:Ljava/util/List;

    if-nez p4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v2, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object v2

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    return-void
.end method

.method public addLineNumber(ILorg/objectweb/asm/Label;)V
    .locals 5
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/objectweb/asm/Label;

    .line 434
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 435
    .local v0, "latestCodeFlag":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 436
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 437
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v3

    or-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_0

    .line 440
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->increment(I)V

    .line 442
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableLine:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 443
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    return-void
.end method

.method public addLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/objectweb/asm/Label;
    .param p5, "end"    # Lorg/objectweb/asm/Label;
    .param p6, "indx"    # I

    .line 447
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 448
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 449
    .local v1, "latestCodeFlag":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    .line 450
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 451
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v3

    or-int/lit8 v3, v3, 0x8

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    goto :goto_0

    .line 454
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->increment(I)V

    .line 456
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    invoke-interface {v2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSpanO:Ljava/util/List;

    invoke-interface {v2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableNameRU:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v3, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableTypeRS:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v3, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2, p6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 463
    .end local v1    # "latestCodeFlag":Ljava/lang/Long;
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->increment(I)V

    .line 464
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSpanO:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableNameRU:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableTypeRS:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v1, p2}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v0, p6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 469
    return-void
.end method

.method public addMaxStack(II)V
    .locals 6
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 472
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 473
    .local v0, "latestFlag":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 474
    .local v1, "newFlag":Ljava/lang/Long;
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 476
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 477
    add-int/lit8 p2, p2, -0x1

    .line 479
    :cond_0
    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->numMethodArgs:I

    sub-int/2addr p2, v2

    .line 480
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2, p2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 481
    return-void
.end method

.method public addMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "flags"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 484
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v0, p2, p3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPNameAndType(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    move-result-object v0

    .line 485
    .local v0, "nt":Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodDesc:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    if-eqz p4, :cond_0

    .line 487
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodSignature:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v2, p4}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPSignature(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPSignature;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    const/high16 v1, 0x80000

    or-int/2addr p1, v1

    .line 490
    :cond_0
    if-eqz p5, :cond_2

    .line 491
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionNumber:Lorg/apache/commons/compress/harmony/pack200/IntList;

    array-length v2, p5

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 492
    array-length v1, p5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p5, v2

    .line 493
    .local v3, "exception":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionClasses:Ljava/util/List;

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v5, v3}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    .end local v3    # "exception":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    :cond_1
    const/high16 v1, 0x40000

    or-int/2addr p1, v1

    .line 497
    :cond_2
    const/high16 v1, 0x20000

    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    .line 498
    const v1, -0x20001

    and-int/2addr p1, v1

    .line 499
    const/high16 v1, 0x100000

    or-int/2addr p1, v1

    .line 501
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-static {p3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->countArgs(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->numMethodArgs:I

    .line 503
    iget-boolean v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticMethods:Z

    if-nez v1, :cond_4

    and-int/lit16 v1, p1, 0x1000

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getCurrentClassReader()Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;->hasSyntheticAttributes()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 504
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    const-string v2, "Synthetic"

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->addCPUtf8(Ljava/lang/String;)V

    .line 505
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticMethods:Z

    .line 507
    :cond_4
    return-void
.end method

.method public addMethodAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V
    .locals 10
    .param p1, "attribute"    # Lorg/apache/commons/compress/harmony/pack200/NewAttribute;

    .line 510
    iget-object v0, p1, Lorg/apache/commons/compress/harmony/pack200/NewAttribute;->type:Ljava/lang/String;

    .line 511
    .local v0, "attributeName":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 512
    .local v2, "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getAttributeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 513
    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->addAttribute(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;)V

    .line 514
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->getFlagIndex()I

    move-result v1

    .line 515
    .local v1, "flagIndex":I
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 516
    .local v3, "flags":Ljava/lang/Long;
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    shl-int/2addr v5, v1

    int-to-long v8, v5

    or-long v5, v6, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    return-void

    .line 519
    .end local v1    # "flagIndex":I
    .end local v2    # "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    .end local v3    # "flags":Ljava/lang/Long;
    :cond_0
    goto :goto_0

    .line 520
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No suitable definition for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addParameterAnnotation(ILjava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 13
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
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

    .line 526
    .local p4, "nameRU":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p7, "caseArrayN":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p8, "nestTypeRS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p9, "nestNameRU":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p10, "nestPairN":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v0, p0

    if-eqz p3, :cond_1

    .line 527
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    if-nez v1, :cond_0

    .line 528
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->numMethodArgs:I

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;-><init>(I)V

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    .line 529
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    move v4, p1

    move-object v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v3 .. v12}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->addParameterAnnotation(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 531
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 532
    .local v1, "flag":Ljava/lang/Long;
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x800000

    or-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    .end local v1    # "flag":Ljava/lang/Long;
    goto :goto_0

    .line 534
    :cond_1
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    if-nez v1, :cond_2

    .line 535
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->numMethodArgs:I

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;-><init>(I)V

    iput-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    .line 536
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    move v4, p1

    move-object v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v3 .. v12}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->addParameterAnnotation(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 538
    :cond_2
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 539
    .restart local v1    # "flag":Ljava/lang/Long;
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x1000000

    or-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    .end local v1    # "flag":Ljava/lang/Long;
    :goto_0
    return-void
.end method

.method public addSourceFile(Ljava/lang/String;)V
    .locals 7
    .param p1, "source"    # Ljava/lang/String;

    .line 544
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "implicitSourceFileName":Ljava/lang/String;
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 546
    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 548
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 550
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSourceFile:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 552
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSourceFile:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPUtf8(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v3, v1, v2

    const-wide/32 v5, 0x20000

    or-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 555
    return-void
.end method

.method public currentClassReferencesInnerClass(Lorg/apache/commons/compress/harmony/pack200/CPClass;)V
    .locals 3
    .param p1, "inner"    # Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 573
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 574
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-object v0, v0, v1

    .line 575
    .local v0, "currentClass":Lorg/apache/commons/compress/harmony/pack200/CPClass;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->isInnerClassOf(Ljava/lang/String;Lorg/apache/commons/compress/harmony/pack200/CPClass;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 576
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classReferencesInnerClass:Ljava/util/Map;

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/ClassBands$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 579
    .end local v0    # "currentClass":Lorg/apache/commons/compress/harmony/pack200/CPClass;
    :cond_0
    return-void
.end method

.method public doBciRenumbering(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V
    .locals 8
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

    .line 582
    .local p2, "labelsToOffsets":Ljava/util/Map;, "Ljava/util/Map<Lorg/objectweb/asm/Label;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberBci(Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 583
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberBci(Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 584
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSpanO:Ljava/util/List;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberOffsetBci(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 585
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberBci(Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 586
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSpanO:Ljava/util/List;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberOffsetBci(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 587
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberBci(Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 588
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberOffsetBci(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 589
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCatchPO:Ljava/util/List;

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->renumberDoubleOffsetBci(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 591
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 592
    .local v1, "newAttributeBandSet":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 593
    .end local v1    # "newAttributeBandSet":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    goto :goto_0

    .line 594
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 595
    .restart local v1    # "newAttributeBandSet":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 596
    .end local v1    # "newAttributeBandSet":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    goto :goto_1

    .line 597
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 598
    .restart local v1    # "newAttributeBandSet":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 599
    .end local v1    # "newAttributeBandSet":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    goto :goto_2

    .line 600
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 601
    .restart local v1    # "newAttributeBandSet":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 602
    .end local v1    # "newAttributeBandSet":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    goto :goto_3

    .line 603
    :cond_3
    return-void
.end method

.method public endOfClass()V
    .locals 6

    .line 607
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldDesc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 608
    .local v0, "numFields":I
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_field_count:[I

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aput v0, v1, v2

    .line 609
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    new-array v3, v0, [Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    aput-object v3, v1, v2

    .line 610
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_flags:[[J

    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    new-array v3, v0, [J

    aput-object v3, v1, v2

    .line 611
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 612
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldDesc:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    aput-object v3, v2, v1

    .line 613
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_flags:[[J

    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 611
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 615
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodDesc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 616
    .local v1, "numMethods":I
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_method_count:[I

    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aput v1, v2, v3

    .line 617
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    new-array v4, v1, [Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    aput-object v4, v2, v3

    .line 618
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_flags:[[J

    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    new-array v4, v1, [J

    aput-object v4, v2, v3

    .line 619
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 620
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodDesc:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    aput-object v4, v3, v2

    .line 621
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_flags:[[J

    iget v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 619
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 623
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldDesc:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 624
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 625
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodDesc:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 626
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 627
    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    .line 628
    return-void
.end method

.method public endOfMethod()V
    .locals 14

    .line 631
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 632
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->numParams:I

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->annoN:[I

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->pairN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->typeRS:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nameRU:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->tags:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v9, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->values:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->caseArrayN:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nestTypeRS:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v12, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nestNameRU:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v13, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nestPairN:Ljava/util/List;

    invoke-virtual/range {v2 .. v13}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addParameterAnnotation(I[ILorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 635
    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRVPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    .line 637
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    if-eqz v0, :cond_1

    .line 638
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->numParams:I

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->annoN:[I

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->pairN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->typeRS:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nameRU:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->tags:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v9, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->values:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->caseArrayN:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nestTypeRS:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v12, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nestNameRU:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    iget-object v13, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;->nestPairN:Ljava/util/List;

    invoke-virtual/range {v2 .. v13}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->addParameterAnnotation(I[ILorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 641
    iput-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodRIPA:Lorg/apache/commons/compress/harmony/pack200/ClassBands$TempParamAnnotation;

    .line 643
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 644
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 645
    .local v0, "latestCodeFlag":J
    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v2

    .line 646
    .local v2, "latestLocalVariableTableN":I
    const-wide/16 v3, 0x4

    cmp-long v3, v0, v3

    if-nez v3, :cond_2

    if-nez v2, :cond_2

    .line 647
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    .line 648
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 649
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    .end local v0    # "latestCodeFlag":J
    .end local v2    # "latestLocalVariableTableN":I
    :cond_2
    return-void
.end method

.method public finaliseBands()V
    .locals 16

    .line 659
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segmentHeader:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->getDefaultMajorVersion()I

    move-result v1

    .line 660
    .local v1, "defaultMajorVersion":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    array-length v3, v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    .line 661
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->major_versions:[I

    aget v3, v3, v2

    .line 662
    .local v3, "major":I
    if-eq v3, v1, :cond_0

    .line 663
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    aget-wide v6, v5, v2

    const-wide/32 v8, 0x1000000

    or-long/2addr v6, v8

    aput-wide v6, v5, v2

    .line 664
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMajor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v5, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 665
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classFileVersionMinor:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v5, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 660
    .end local v3    # "major":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 669
    .end local v2    # "i":I
    :cond_1
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    .line 670
    const/4 v2, 0x0

    .line 671
    .local v2, "removed":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    array-length v5, v5

    if-ge v3, v5, :cond_5

    .line 672
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    sub-int v6, v3, v2

    invoke-virtual {v5, v6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v5

    .line 673
    .local v5, "numHandlers":I
    iget-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    sub-int v7, v3, v2

    invoke-virtual {v6, v7}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v6

    .line 674
    .local v6, "maxLocals":I
    iget-object v7, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    sub-int v8, v3, v2

    invoke-virtual {v7, v8}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v7

    .line 675
    .local v7, "maxStack":I
    const/16 v8, 0xd1

    const/16 v9, 0x91

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 691
    :pswitch_0
    mul-int/lit8 v9, v6, 0x7

    add-int/2addr v9, v7

    add-int/2addr v9, v8

    .line 692
    .local v9, "header":I
    const/16 v8, 0x100

    if-ge v9, v8, :cond_2

    const/4 v8, 0x7

    if-ge v7, v8, :cond_2

    .line 693
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    aput v9, v8, v3

    goto :goto_2

    .line 684
    .end local v9    # "header":I
    :pswitch_1
    mul-int/lit8 v10, v6, 0x8

    add-int/2addr v10, v7

    add-int/2addr v10, v9

    .line 685
    .local v10, "header":I
    if-ge v10, v8, :cond_2

    const/16 v8, 0x8

    if-ge v7, v8, :cond_2

    .line 686
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    aput v10, v8, v3

    goto :goto_2

    .line 677
    .end local v10    # "header":I
    :pswitch_2
    mul-int/lit8 v8, v6, 0xc

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x1

    .line 678
    .local v8, "header":I
    if-ge v8, v9, :cond_2

    const/16 v9, 0xc

    if-ge v7, v9, :cond_2

    .line 679
    iget-object v9, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    aput v8, v9, v3

    .line 700
    .end local v8    # "header":I
    :cond_2
    :goto_2
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHeaders:[I

    aget v8, v8, v3

    if-eqz v8, :cond_3

    .line 703
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    sub-int v9, v3, v2

    invoke-virtual {v8, v9}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    .line 704
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    sub-int v9, v3, v2

    invoke-virtual {v8, v9}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    .line 705
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    sub-int v9, v3, v2

    invoke-virtual {v8, v9}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    .line 706
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 707
    :cond_3
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;->have_all_code_flags()Z

    move-result v8

    if-nez v8, :cond_4

    .line 708
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    .end local v5    # "numHandlers":I
    .end local v6    # "maxLocals":I
    .end local v7    # "maxStack":I
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 713
    .end local v3    # "i":I
    :cond_5
    new-instance v3, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    .line 714
    .local v3, "innerClassesN":Lorg/apache/commons/compress/harmony/pack200/IntList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 715
    .local v5, "icLocal":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    iget-object v7, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v7, v7

    if-ge v6, v7, :cond_a

    .line 716
    iget-object v7, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    aget-object v7, v7, v6

    .line 717
    .local v7, "cpClass":Lorg/apache/commons/compress/harmony/pack200/CPClass;
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classReferencesInnerClass:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 718
    .local v8, "referencedInnerClasses":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/compress/harmony/pack200/CPClass;>;"
    if-eqz v8, :cond_9

    .line 719
    const/4 v9, 0x0

    .line 720
    .local v9, "innerN":I
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getIcBands()Lorg/apache/commons/compress/harmony/pack200/IcBands;

    move-result-object v10

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/compress/harmony/pack200/IcBands;->getInnerClassesForOuter(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 721
    .local v10, "innerClasses":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;>;"
    if-eqz v10, :cond_6

    .line 722
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;

    .line 723
    .local v12, "element":Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;
    iget-object v13, v12, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-interface {v8, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 724
    .end local v12    # "element":Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;
    goto :goto_5

    .line 726
    :cond_6
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 727
    .local v12, "inner":Lorg/apache/commons/compress/harmony/pack200/CPClass;
    iget-object v13, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->segment:Lorg/apache/commons/compress/harmony/pack200/Segment;

    invoke-virtual {v13}, Lorg/apache/commons/compress/harmony/pack200/Segment;->getIcBands()Lorg/apache/commons/compress/harmony/pack200/IcBands;

    move-result-object v13

    invoke-virtual {v13, v12}, Lorg/apache/commons/compress/harmony/pack200/IcBands;->getIcTuple(Lorg/apache/commons/compress/harmony/pack200/CPClass;)Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;

    move-result-object v13

    .line 728
    .local v13, "icTuple":Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->isAnonymous()Z

    move-result v14

    if-nez v14, :cond_7

    .line 730
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    add-int/lit8 v9, v9, 0x1

    .line 733
    .end local v12    # "inner":Lorg/apache/commons/compress/harmony/pack200/CPClass;
    .end local v13    # "icTuple":Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;
    :cond_7
    goto :goto_6

    .line 734
    :cond_8
    if-eqz v9, :cond_9

    .line 735
    invoke-virtual {v3, v9}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 736
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    aget-wide v12, v11, v6

    const-wide/32 v14, 0x800000

    or-long/2addr v12, v14

    aput-wide v12, v11, v6

    .line 715
    .end local v7    # "cpClass":Lorg/apache/commons/compress/harmony/pack200/CPClass;
    .end local v8    # "referencedInnerClasses":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/compress/harmony/pack200/CPClass;>;"
    .end local v9    # "innerN":I
    .end local v10    # "innerClasses":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;>;"
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 740
    .end local v6    # "i":I
    :cond_a
    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v6

    iput-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_N:[I

    .line 741
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iput-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_RC:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    .line 742
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_F:[I

    .line 743
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesOuterRCN:Ljava/util/List;

    .line 744
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesNameRUN:Ljava/util/List;

    .line 745
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    iget-object v7, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_RC:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v7, v7

    if-ge v6, v7, :cond_d

    .line 746
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;

    .line 747
    .local v7, "icTuple":Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_RC:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget-object v9, v7, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    aput-object v9, v8, v6

    .line 748
    iget-object v8, v7, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C2:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    if-nez v8, :cond_b

    iget-object v8, v7, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->N:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    if-nez v8, :cond_b

    .line 749
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_F:[I

    aput v4, v8, v6

    goto :goto_9

    .line 751
    :cond_b
    iget v8, v7, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->F:I

    if-nez v8, :cond_c

    .line 752
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_F:[I

    const/high16 v9, 0x10000

    aput v9, v8, v6

    goto :goto_8

    .line 754
    :cond_c
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_InnerClasses_F:[I

    iget v9, v7, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->F:I

    aput v9, v8, v6

    .line 756
    :goto_8
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesOuterRCN:Ljava/util/List;

    iget-object v9, v7, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->C2:Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classInnerClassesNameRUN:Ljava/util/List;

    iget-object v9, v7, Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;->N:Lorg/apache/commons/compress/harmony/pack200/CPUTF8;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    .end local v7    # "icTuple":Lorg/apache/commons/compress/harmony/pack200/IcBands$IcTuple;
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 761
    .end local v6    # "i":I
    :cond_d
    new-instance v6, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v6}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    .line 762
    .local v6, "classAttrCalls":Lorg/apache/commons/compress/harmony/pack200/IntList;
    new-instance v7, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v7}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    .line 763
    .local v7, "fieldAttrCalls":Lorg/apache/commons/compress/harmony/pack200/IntList;
    new-instance v8, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v8}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    .line 764
    .local v8, "methodAttrCalls":Lorg/apache/commons/compress/harmony/pack200/IntList;
    new-instance v9, Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-direct {v9}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>()V

    .line 766
    .local v9, "codeAttrCalls":Lorg/apache/commons/compress/harmony/pack200/IntList;
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 767
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v10

    invoke-virtual {v6, v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 769
    :cond_e
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 770
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v10

    invoke-virtual {v6, v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 772
    :cond_f
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 773
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v10

    invoke-virtual {v7, v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 775
    :cond_10
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 776
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v10

    invoke-virtual {v7, v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 778
    :cond_11
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 779
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v10

    invoke-virtual {v8, v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 781
    :cond_12
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 782
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v10

    invoke-virtual {v8, v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 784
    :cond_13
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 785
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v10

    invoke-virtual {v8, v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 787
    :cond_14
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 788
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v10

    invoke-virtual {v8, v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 790
    :cond_15
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->hasContent()Z

    move-result v10

    if-eqz v10, :cond_16

    .line 791
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->numBackwardsCalls()I

    move-result v10

    invoke-virtual {v8, v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 795
    :cond_16
    new-instance v10, Lorg/apache/commons/compress/harmony/pack200/ClassBands$$ExternalSyntheticLambda2;

    invoke-direct {v10}, Lorg/apache/commons/compress/harmony/pack200/ClassBands$$ExternalSyntheticLambda2;-><init>()V

    .line 796
    .local v10, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;>;"
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 797
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 798
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 799
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 801
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classAttributeBands:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 802
    .local v12, "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->isUsedAtLeastOnce()Z

    move-result v13

    if-eqz v13, :cond_17

    .line 803
    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->numBackwardsCalls()[I

    move-result-object v13

    array-length v14, v13

    move v15, v4

    :goto_b
    if-ge v15, v14, :cond_17

    aget v4, v13, v15

    .line 804
    .local v4, "backwardsCallCount":I
    invoke-virtual {v6, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 803
    .end local v4    # "backwardsCallCount":I
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    goto :goto_b

    .line 807
    .end local v12    # "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    :cond_17
    const/4 v4, 0x0

    goto :goto_a

    .line 808
    :cond_18
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodAttributeBands:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 809
    .local v11, "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->isUsedAtLeastOnce()Z

    move-result v12

    if-eqz v12, :cond_19

    .line 810
    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->numBackwardsCalls()[I

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v13, :cond_19

    aget v15, v12, v14

    .line 811
    .local v15, "backwardsCallCount":I
    invoke-virtual {v8, v15}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 810
    .end local v15    # "backwardsCallCount":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    .line 814
    .end local v11    # "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    :cond_19
    goto :goto_c

    .line 815
    :cond_1a
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldAttributeBands:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 816
    .restart local v11    # "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->isUsedAtLeastOnce()Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 817
    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->numBackwardsCalls()[I

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_f
    if-ge v14, v13, :cond_1b

    aget v15, v12, v14

    .line 818
    .restart local v15    # "backwardsCallCount":I
    invoke-virtual {v7, v15}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 817
    .end local v15    # "backwardsCallCount":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    .line 821
    .end local v11    # "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    :cond_1b
    goto :goto_e

    .line 822
    :cond_1c
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeAttributeBands:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    .line 823
    .restart local v11    # "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->isUsedAtLeastOnce()Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 824
    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;->numBackwardsCalls()[I

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_11
    if-ge v14, v13, :cond_1d

    aget v15, v12, v14

    .line 825
    .restart local v15    # "backwardsCallCount":I
    invoke-virtual {v9, v15}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    .line 824
    .end local v15    # "backwardsCallCount":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_11

    .line 828
    .end local v11    # "bands":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    :cond_1d
    goto :goto_10

    .line 830
    :cond_1e
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_attr_calls:[I

    .line 831
    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_attr_calls:[I

    .line 832
    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_attr_calls:[I

    .line 833
    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/pack200/IntList;->toArray()[I

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->code_attr_calls:[I

    .line 834
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAnySyntheticClasses()Z
    .locals 1

    .line 847
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticClasses:Z

    return v0
.end method

.method public isAnySyntheticFields()Z
    .locals 1

    .line 851
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticFields:Z

    return v0
.end method

.method public isAnySyntheticMethods()Z
    .locals 1

    .line 855
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->anySyntheticMethods:Z

    return v0
.end method

.method synthetic lambda$addClass$0$org-apache-commons-compress-harmony-pack200-ClassBands([Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/pack200/CPClass;
    .locals 2
    .param p1, "interfaces"    # [Ljava/lang/String;
    .param p2, "i"    # I

    .line 329
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->cpBands:Lorg/apache/commons/compress/harmony/pack200/CpBands;

    aget-object v1, p1, p2

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/CpBands;->getCPClass(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/pack200/CPClass;

    move-result-object v0

    return-object v0
.end method

.method public numClassesProcessed()I
    .locals 1

    .line 874
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    return v0
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 17
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 879
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Writing class bands..."

    invoke-static {v2}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 881
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-direct {v0, v2}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->getInts([Lorg/apache/commons/compress/harmony/pack200/CPClass;)[I

    move-result-object v2

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v4, "class_this"

    invoke-virtual {v0, v4, v2, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v2

    .line 882
    .local v2, "encodedBand":[B
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 883
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrote "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " bytes from class_this["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 885
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_super:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    invoke-direct {v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->getInts([Lorg/apache/commons/compress/harmony/pack200/CPClass;)[I

    move-result-object v3

    sget-object v6, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v7, "class_super"

    invoke-virtual {v0, v7, v3, v6}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v2

    .line 886
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 887
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " bytes from class_super["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_super:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 889
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface_count:[I

    sget-object v6, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v7, "class_interface_count"

    invoke-virtual {v0, v7, v3, v6}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v2

    .line 890
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 891
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " bytes from class_interface_count["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface_count:[I

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 893
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface_count:[I

    invoke-direct {v0, v3}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->sum([I)I

    move-result v3

    .line 894
    .local v3, "totalInterfaces":I
    new-array v6, v3, [I

    .line 895
    .local v6, "classInterface":[I
    const/4 v7, 0x0

    .line 896
    .local v7, "k":I
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface:[[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    array-length v9, v8

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_1

    aget-object v12, v8, v11

    .line 897
    .local v12, "element":[Lorg/apache/commons/compress/harmony/pack200/CPClass;
    if-eqz v12, :cond_0

    .line 898
    array-length v13, v12

    move v14, v10

    :goto_1
    if-ge v14, v13, :cond_0

    aget-object v15, v12, v14

    .line 899
    .local v15, "cpClass":Lorg/apache/commons/compress/harmony/pack200/CPClass;
    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/pack200/CPClass;->getIndex()I

    move-result v16

    aput v16, v6, v7

    .line 900
    nop

    .end local v15    # "cpClass":Lorg/apache/commons/compress/harmony/pack200/CPClass;
    add-int/lit8 v7, v7, 0x1

    .line 898
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 896
    .end local v12    # "element":[Lorg/apache/commons/compress/harmony/pack200/CPClass;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 905
    :cond_1
    const-string v8, "class_interface"

    sget-object v9, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v8, v6, v9}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v2

    .line 906
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 907
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes from class_interface["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 909
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_field_count:[I

    sget-object v9, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v10, "class_field_count"

    invoke-virtual {v0, v10, v8, v9}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v2

    .line 910
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 911
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes from class_field_count["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_field_count:[I

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 913
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_method_count:[I

    sget-object v9, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const-string v10, "class_method_count"

    invoke-virtual {v0, v10, v8, v9}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v2

    .line 914
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 915
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes from class_method_count["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_method_count:[I

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 917
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_field_count:[I

    invoke-direct {v0, v8}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->sum([I)I

    move-result v8

    .line 918
    .local v8, "totalFields":I
    new-array v9, v8, [I

    .line 919
    .local v9, "fieldDescr":[I
    const/4 v7, 0x0

    .line 920
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    iget v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    if-ge v10, v11, :cond_3

    .line 921
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    iget-object v12, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    aget-object v12, v12, v10

    array-length v12, v12

    if-ge v11, v12, :cond_2

    .line 922
    iget-object v12, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    aget-object v12, v12, v10

    aget-object v12, v12, v11

    .line 923
    .local v12, "descr":Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;
    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->getIndex()I

    move-result v13

    aput v13, v9, v7

    .line 924
    nop

    .end local v12    # "descr":Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;
    add-int/lit8 v7, v7, 0x1

    .line 921
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 920
    .end local v11    # "j":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 928
    .end local v10    # "i":I
    :cond_3
    const-string v10, "field_descr"

    sget-object v11, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v10, v9, v11}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v2

    .line 929
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 930
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes from field_descr["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 932
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->writeFieldAttributeBands(Ljava/io/OutputStream;)V

    .line 934
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_method_count:[I

    invoke-direct {v0, v10}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->sum([I)I

    move-result v10

    .line 935
    .local v10, "totalMethods":I
    new-array v11, v10, [I

    .line 936
    .local v11, "methodDescr":[I
    const/4 v7, 0x0

    .line 937
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    iget v13, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    if-ge v12, v13, :cond_5

    .line 938
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_5
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    aget-object v14, v14, v12

    array-length v14, v14

    if-ge v13, v14, :cond_4

    .line 939
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_descr:[[Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;

    aget-object v14, v14, v12

    aget-object v14, v14, v13

    .line 940
    .local v14, "descr":Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;
    invoke-virtual {v14}, Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;->getIndex()I

    move-result v15

    aput v15, v11, v7

    .line 941
    nop

    .end local v14    # "descr":Lorg/apache/commons/compress/harmony/pack200/CPNameAndType;
    add-int/lit8 v7, v7, 0x1

    .line 938
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 937
    .end local v13    # "j":I
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 945
    .end local v12    # "i":I
    :cond_5
    const-string v12, "method_descr"

    sget-object v13, Lorg/apache/commons/compress/harmony/pack200/Codec;->MDELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v12, v11, v13}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->encodeBandInt(Ljava/lang/String;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[B

    move-result-object v2

    .line 946
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 947
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v12, v2

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, " bytes from method_descr["

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v12, v11

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/compress/harmony/pack200/PackingUtils;->log(Ljava/lang/String;)V

    .line 949
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->writeMethodAttributeBands(Ljava/io/OutputStream;)V

    .line 950
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->writeClassAttributeBands(Ljava/io/OutputStream;)V

    .line 951
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->writeCodeBands(Ljava/io/OutputStream;)V

    .line 952
    return-void
.end method

.method public removeCurrentClass()V
    .locals 20

    .line 960
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v1, v2

    const-wide/32 v4, 0x20000

    and-long v1, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-eqz v1, :cond_0

    .line 961
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSourceFile:Ljava/util/List;

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSourceFile:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 963
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v1, v2

    const-wide/32 v8, 0x40000

    and-long v1, v2, v8

    cmp-long v1, v1, v6

    if-eqz v1, :cond_1

    .line 964
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodClass:Ljava/util/List;

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodClass:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 965
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodDesc:Ljava/util/List;

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classEnclosingMethodDesc:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 967
    :cond_1
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v1, v2

    const-wide/32 v10, 0x80000

    and-long v1, v2, v10

    cmp-long v1, v1, v6

    if-eqz v1, :cond_2

    .line 968
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSignature:Ljava/util/List;

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->classSignature:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 970
    :cond_2
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v1, v2

    const-wide/32 v12, 0x200000

    and-long v1, v2, v12

    cmp-long v1, v1, v6

    if-eqz v1, :cond_3

    .line 971
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    .line 973
    :cond_3
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aget-wide v2, v1, v2

    const-wide/32 v14, 0x400000

    and-long v1, v2, v14

    cmp-long v1, v1, v6

    if-eqz v1, :cond_4

    .line 974
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    .line 976
    :cond_4
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 977
    .local v2, "flagsL":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 978
    .local v16, "flags":J
    and-long v18, v16, v10

    cmp-long v3, v18, v6

    if-eqz v3, :cond_5

    .line 979
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldSignature:Ljava/util/List;

    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldSignature:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 981
    :cond_5
    and-long v8, v16, v4

    cmp-long v3, v8, v6

    if-eqz v3, :cond_6

    .line 982
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldConstantValueKQ:Ljava/util/List;

    iget-object v8, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->fieldConstantValueKQ:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 984
    :cond_6
    and-long v8, v16, v12

    cmp-long v3, v8, v6

    if-eqz v3, :cond_7

    .line 985
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    .line 987
    :cond_7
    and-long v8, v16, v14

    cmp-long v3, v8, v6

    if-eqz v3, :cond_8

    .line 988
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->field_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    .line 990
    .end local v2    # "flagsL":Ljava/lang/Long;
    .end local v16    # "flags":J
    :cond_8
    const-wide/32 v8, 0x40000

    goto :goto_0

    .line 991
    :cond_9
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 992
    .restart local v2    # "flagsL":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 993
    .local v8, "flags":J
    and-long v16, v8, v10

    cmp-long v3, v16, v6

    if-eqz v3, :cond_a

    .line 994
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodSignature:Ljava/util/List;

    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodSignature:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v3, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 996
    :cond_a
    const-wide/32 v10, 0x40000

    and-long v18, v8, v10

    cmp-long v3, v18, v6

    if-eqz v3, :cond_b

    .line 997
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionNumber:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionNumber:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v3

    .line 998
    .local v3, "exceptions":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v3, :cond_b

    .line 999
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionClasses:Ljava/util/List;

    iget-object v14, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->methodExceptionClasses:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v11, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 998
    add-int/lit8 v10, v10, 0x1

    const-wide/32 v14, 0x400000

    goto :goto_2

    .line 1002
    .end local v3    # "exceptions":I
    .end local v10    # "i":I
    :cond_b
    and-long v10, v8, v4

    cmp-long v3, v10, v6

    if-eqz v3, :cond_f

    .line 1003
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxLocals:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    .line 1004
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeMaxStack:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    .line 1005
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCount:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v10}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v3

    .line 1006
    .local v3, "handlers":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    if-ge v10, v3, :cond_c

    .line 1007
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    .line 1008
    .local v11, "index":I
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerStartP:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1009
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerEndPO:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1010
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerCatchPO:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1011
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeHandlerClass:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1006
    .end local v11    # "index":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1013
    .end local v10    # "i":I
    :cond_c
    iget-boolean v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->stripDebug:Z

    if-nez v10, :cond_f

    .line 1014
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeFlags:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1015
    .local v10, "cdeFlags":J
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v15, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v14

    .line 1016
    .local v14, "numLocalVariables":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    if-ge v15, v14, :cond_d

    .line 1017
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1018
    .local v4, "location":I
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableBciP:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1019
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSpanO:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1020
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableNameRU:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1021
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableTypeRS:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1022
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v5, v4}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    .line 1016
    .end local v4    # "location":I
    add-int/lit8 v15, v15, 0x1

    const-wide/32 v4, 0x20000

    goto :goto_4

    .line 1024
    .end local v15    # "i":I
    :cond_d
    const-wide/16 v4, 0x8

    and-long/2addr v4, v10

    cmp-long v4, v4, v6

    if-eqz v4, :cond_e

    .line 1025
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v4

    .line 1026
    .local v4, "numLocalVariablesInTypeTable":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    if-ge v5, v4, :cond_e

    .line 1027
    iget-object v15, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    .line 1028
    .local v15, "location":I
    iget-object v12, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableBciP:Ljava/util/List;

    invoke-interface {v12, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1029
    iget-object v12, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSpanO:Ljava/util/List;

    invoke-interface {v12, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1030
    iget-object v12, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableNameRU:Ljava/util/List;

    invoke-interface {v12, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1031
    iget-object v12, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableTypeRS:Ljava/util/List;

    invoke-interface {v12, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1032
    iget-object v12, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLocalVariableTypeTableSlot:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v12, v15}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    .line 1026
    .end local v15    # "location":I
    add-int/lit8 v5, v5, 0x1

    const-wide/32 v12, 0x200000

    goto :goto_5

    .line 1035
    .end local v4    # "numLocalVariablesInTypeTable":I
    .end local v5    # "i":I
    :cond_e
    const-wide/16 v4, 0x2

    and-long/2addr v4, v10

    cmp-long v4, v4, v6

    if-eqz v4, :cond_f

    .line 1036
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableN:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    move-result v4

    .line 1037
    .local v4, "numLineNumbers":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    if-ge v5, v4, :cond_f

    .line 1038
    iget-object v12, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    .line 1039
    .local v12, "location":I
    iget-object v13, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableBciP:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1040
    iget-object v13, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->codeLineNumberTableLine:Lorg/apache/commons/compress/harmony/pack200/IntList;

    invoke-virtual {v13, v12}, Lorg/apache/commons/compress/harmony/pack200/IntList;->remove(I)I

    .line 1037
    .end local v12    # "location":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1045
    .end local v3    # "handlers":I
    .end local v4    # "numLineNumbers":I
    .end local v5    # "i":I
    .end local v10    # "cdeFlags":J
    .end local v14    # "numLocalVariables":I
    :cond_f
    const-wide/32 v3, 0x200000

    and-long v10, v8, v3

    cmp-long v5, v10, v6

    if-eqz v5, :cond_10

    .line 1046
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    .line 1048
    :cond_10
    const-wide/32 v10, 0x400000

    and-long v12, v8, v10

    cmp-long v5, v12, v6

    if-eqz v5, :cond_11

    .line 1049
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    .line 1051
    :cond_11
    const-wide/32 v12, 0x800000

    and-long/2addr v12, v8

    cmp-long v5, v12, v6

    if-eqz v5, :cond_12

    .line 1052
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RVPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    .line 1054
    :cond_12
    const-wide/32 v12, 0x1000000

    and-long/2addr v12, v8

    cmp-long v5, v12, v6

    if-eqz v5, :cond_13

    .line 1055
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_RIPA_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    .line 1057
    :cond_13
    const-wide/32 v12, 0x2000000

    and-long/2addr v12, v8

    cmp-long v5, v12, v6

    if-eqz v5, :cond_14

    .line 1058
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->method_AD_bands:Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/pack200/MetadataBandGroup;->removeLatest()V

    .line 1060
    .end local v2    # "flagsL":Ljava/lang/Long;
    .end local v8    # "flags":J
    :cond_14
    move-wide v12, v3

    move-wide v14, v10

    const-wide/32 v4, 0x20000

    const-wide/32 v10, 0x80000

    goto/16 :goto_1

    .line 1061
    :cond_15
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_this:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 1062
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_super:[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aput-object v3, v1, v2

    .line 1063
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface_count:[I

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    const/4 v4, 0x0

    aput v4, v1, v2

    .line 1064
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_interface:[[Lorg/apache/commons/compress/harmony/pack200/CPClass;

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aput-object v3, v1, v2

    .line 1065
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->major_versions:[I

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aput v4, v1, v2

    .line 1066
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->class_flags:[J

    iget v2, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    aput-wide v6, v1, v2

    .line 1067
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldDesc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1068
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempFieldFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1069
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodDesc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1070
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->tempMethodFlags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1071
    iget v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    if-lez v1, :cond_16

    .line 1072
    iget v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/apache/commons/compress/harmony/pack200/ClassBands;->index:I

    .line 1074
    :cond_16
    return-void
.end method
