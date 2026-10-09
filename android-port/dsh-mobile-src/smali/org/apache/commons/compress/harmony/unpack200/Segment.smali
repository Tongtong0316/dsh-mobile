.class public Lorg/apache/commons/compress/harmony/unpack200/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# static fields
.field public static final LOG_LEVEL_QUIET:I = 0x0

.field public static final LOG_LEVEL_STANDARD:I = 0x1

.field public static final LOG_LEVEL_VERBOSE:I = 0x2


# instance fields
.field private attrDefinitionBands:Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

.field private bcBands:Lorg/apache/commons/compress/harmony/unpack200/BcBands;

.field private classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

.field private classFilesContents:[[B

.field private cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

.field private deflateHint:Z

.field private doPreRead:Z

.field private fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

.field private fileDeflate:[Z

.field private fileIsClass:[Z

.field private header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

.field private icBands:Lorg/apache/commons/compress/harmony/unpack200/IcBands;

.field private internalBuffer:Ljava/io/InputStream;

.field private logLevel:I

.field private logStream:Ljava/io/PrintWriter;

.field private overrideDeflateHint:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildClassFile(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;
    .locals 37
    .param p1, "classNum"    # I

    .line 108
    move-object/from16 v0, p0

    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;

    invoke-direct {v1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;-><init>()V

    .line 109
    .local v1, "classFile":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassVersionMajor()[I

    move-result-object v2

    .line 110
    .local v2, "major":[I
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassVersionMinor()[I

    move-result-object v3

    .line 111
    .local v3, "minor":[I
    if-eqz v2, :cond_0

    .line 112
    aget v4, v2, p1

    iput v4, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->major:I

    .line 113
    aget v4, v3, p1

    iput v4, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->minor:I

    goto :goto_0

    .line 115
    :cond_0
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getDefaultClassMajorVersion()I

    move-result v4

    iput v4, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->major:I

    .line 116
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getDefaultClassMinorVersion()I

    move-result v4

    iput v4, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->minor:I

    .line 119
    :goto_0
    iget-object v4, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->pool:Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;

    .line 120
    .local v4, "cp":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassThisInts()[I

    move-result-object v5

    aget v5, v5, p1

    .line 121
    .local v5, "fullNameIndexInCpClass":I
    iget-object v6, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpClass()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v5

    .line 123
    .local v6, "fullName":Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    .line 128
    .local v7, "i":I
    iget-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassAttributes()[Ljava/util/ArrayList;

    move-result-object v9

    aget-object v9, v9, p1

    .line 129
    .local v9, "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    const/4 v10, 0x0

    .line 130
    .local v10, "sourceFileAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 131
    .local v12, "classAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->isSourceFileAttribute()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 132
    move-object v10, v12

    check-cast v10, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;

    .line 134
    .end local v12    # "classAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    :cond_1
    goto :goto_1

    .line 136
    :cond_2
    const/4 v11, -0x1

    const/4 v12, 0x0

    if-nez v10, :cond_7

    .line 139
    iget-object v13, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->attrDefinitionBands:Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    invoke-virtual {v13}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->getAttributeDefinitionMap()Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move-result-object v13

    const-string v14, "SourceFile"

    invoke-virtual {v13, v14, v12}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v13

    .line 141
    .local v13, "SOURCE_FILE":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v14}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getRawClassFlags()[J

    move-result-object v14

    move-object/from16 v16, v9

    .end local v9    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .local v16, "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    aget-wide v8, v14, p1

    invoke-virtual {v13, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 142
    const/4 v8, -0x1

    .line 143
    .local v8, "firstDollar":I
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v9, v14, :cond_4

    .line 144
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x24

    if-gt v14, v15, :cond_3

    .line 145
    move v8, v9

    .line 143
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 150
    .end local v9    # "index":I
    :cond_4
    const-string v9, ".java"

    if-le v8, v11, :cond_5

    if-gt v7, v8, :cond_5

    .line 151
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "fileName":Ljava/lang/String;
    goto :goto_3

    .line 153
    .end local v9    # "fileName":Ljava/lang/String;
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 155
    .restart local v9    # "fileName":Ljava/lang/String;
    :goto_3
    new-instance v14, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;

    iget-object v15, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v15, v9, v12}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;Z)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;)V

    move-object v10, v14

    .line 156
    const/4 v14, 0x1

    new-array v15, v14, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    move-object v14, v15

    invoke-virtual {v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    aput-object v17, v14, v12

    iput-object v14, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 157
    .end local v8    # "firstDollar":I
    .end local v9    # "fileName":Ljava/lang/String;
    goto :goto_4

    .line 158
    :cond_6
    new-array v8, v12, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    iput-object v8, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 160
    .end local v13    # "SOURCE_FILE":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :goto_4
    goto :goto_5

    .line 161
    .end local v16    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .local v9, "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    :cond_7
    move-object/from16 v16, v9

    .end local v9    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .restart local v16    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    const/4 v8, 0x1

    new-array v9, v8, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    invoke-virtual {v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    aput-object v8, v9, v12

    iput-object v9, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 168
    :goto_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 169
    .local v8, "classAttributesWithoutSourceFileAttribute":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v13

    if-ge v9, v13, :cond_9

    .line 170
    move-object/from16 v13, v16

    .end local v16    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .local v13, "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 171
    .local v14, "attrib":Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    invoke-virtual {v14}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->isSourceFileAttribute()Z

    move-result v16

    if-nez v16, :cond_8

    .line 172
    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v14    # "attrib":Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v16, v13

    goto :goto_6

    .end local v13    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .restart local v16    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    :cond_9
    move-object/from16 v13, v16

    .line 175
    .end local v9    # "index":I
    .end local v16    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .restart local v13    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    iget-object v9, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 176
    .local v9, "originalAttributes":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    array-length v14, v9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v16

    add-int v14, v14, v16

    new-array v14, v14, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    iput-object v14, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 177
    iget-object v14, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    array-length v15, v9

    invoke-static {v9, v12, v14, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_a

    .line 179
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 180
    .local v15, "attrib":Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    invoke-virtual {v4, v15}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 181
    iget-object v12, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    array-length v11, v9

    add-int/2addr v11, v14

    aput-object v15, v12, v11

    .line 178
    .end local v15    # "attrib":Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    add-int/lit8 v14, v14, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    goto :goto_7

    .line 185
    .end local v14    # "index":I
    :cond_a
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v11, v5}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v11

    .line 186
    .local v11, "cfThis":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    iget-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v14}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassSuperInts()[I

    move-result-object v14

    aget v14, v14, p1

    invoke-virtual {v12, v14}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v12

    invoke-virtual {v4, v12}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v12

    .line 188
    .local v12, "cfSuper":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v14}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassInterfacesInts()[[I

    move-result-object v14

    aget-object v14, v14, p1

    array-length v14, v14

    new-array v14, v14, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 189
    .local v14, "cfInterfaces":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    const/4 v7, 0x0

    :goto_8
    array-length v15, v14

    if-ge v7, v15, :cond_b

    .line 190
    iget-object v15, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-object/from16 v18, v2

    .end local v2    # "major":[I
    .local v18, "major":[I
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassInterfacesInts()[[I

    move-result-object v2

    aget-object v2, v2, p1

    aget v2, v2, v7

    invoke-virtual {v15, v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v2

    aput-object v2, v14, v7

    .line 189
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v18

    goto :goto_8

    .line 193
    .end local v18    # "major":[I
    .restart local v2    # "major":[I
    :cond_b
    move-object/from16 v18, v2

    .end local v2    # "major":[I
    .restart local v18    # "major":[I
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassFieldCount()[I

    move-result-object v2

    aget v2, v2, p1

    new-array v2, v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 195
    .local v2, "cfFields":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    const/4 v7, 0x0

    :goto_9
    array-length v15, v2

    if-ge v7, v15, :cond_c

    .line 196
    iget-object v15, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getFieldDescrInts()[[I

    move-result-object v15

    aget-object v15, v15, p1

    aget v15, v15, v7

    .line 197
    .local v15, "descriptorIndex":I
    move-object/from16 v19, v3

    .end local v3    # "minor":[I
    .local v19, "minor":[I
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpDescriptorNameInts()[I

    move-result-object v3

    aget v3, v3, v15

    .line 198
    .local v3, "nameIndex":I
    move/from16 v20, v5

    .end local v5    # "fullNameIndexInCpClass":I
    .local v20, "fullNameIndexInCpClass":I
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpDescriptorTypeInts()[I

    move-result-object v5

    aget v5, v5, v15

    .line 199
    .local v5, "typeIndex":I
    move-object/from16 v21, v8

    .end local v8    # "classAttributesWithoutSourceFileAttribute":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .local v21, "classAttributesWithoutSourceFileAttribute":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v8, v3}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v8

    .line 200
    .local v8, "name":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    move/from16 v28, v3

    .end local v3    # "nameIndex":I
    .local v28, "nameIndex":I
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v3, v5}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignatureValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v3

    .line 201
    .local v3, "descriptor":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    move/from16 v29, v5

    .end local v5    # "typeIndex":I
    .local v29, "typeIndex":I
    new-instance v5, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPField;

    move-object/from16 v30, v9

    .end local v9    # "originalAttributes":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    .local v30, "originalAttributes":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    iget-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getFieldFlags()[[J

    move-result-object v9

    aget-object v9, v9, p1

    aget-wide v25, v9, v7

    iget-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getFieldAttributes()[[Ljava/util/ArrayList;

    move-result-object v9

    aget-object v9, v9, p1

    aget-object v27, v9, v7

    move-object/from16 v22, v5

    move-object/from16 v23, v8

    move-object/from16 v24, v3

    invoke-direct/range {v22 .. v27}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPField;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;JLjava/util/List;)V

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v5

    aput-object v5, v2, v7

    .line 195
    .end local v3    # "descriptor":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .end local v8    # "name":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .end local v15    # "descriptorIndex":I
    .end local v28    # "nameIndex":I
    .end local v29    # "typeIndex":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v19

    move/from16 v5, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v30

    goto :goto_9

    .line 204
    .end local v19    # "minor":[I
    .end local v20    # "fullNameIndexInCpClass":I
    .end local v21    # "classAttributesWithoutSourceFileAttribute":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .end local v30    # "originalAttributes":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    .local v3, "minor":[I
    .local v5, "fullNameIndexInCpClass":I
    .local v8, "classAttributesWithoutSourceFileAttribute":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .restart local v9    # "originalAttributes":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    :cond_c
    move-object/from16 v19, v3

    move/from16 v20, v5

    move-object/from16 v21, v8

    move-object/from16 v30, v9

    .end local v3    # "minor":[I
    .end local v5    # "fullNameIndexInCpClass":I
    .end local v8    # "classAttributesWithoutSourceFileAttribute":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .end local v9    # "originalAttributes":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    .restart local v19    # "minor":[I
    .restart local v20    # "fullNameIndexInCpClass":I
    .restart local v21    # "classAttributesWithoutSourceFileAttribute":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .restart local v30    # "originalAttributes":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassMethodCount()[I

    move-result-object v3

    aget v3, v3, p1

    new-array v3, v3, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 206
    .local v3, "cfMethods":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    const/4 v5, 0x0

    .end local v7    # "i":I
    .local v5, "i":I
    :goto_a
    array-length v7, v3

    if-ge v5, v7, :cond_d

    .line 207
    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getMethodDescrInts()[[I

    move-result-object v7

    aget-object v7, v7, p1

    aget v7, v7, v5

    .line 208
    .local v7, "descriptorIndex":I
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpDescriptorNameInts()[I

    move-result-object v8

    aget v8, v8, v7

    .line 209
    .local v8, "nameIndex":I
    iget-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpDescriptorTypeInts()[I

    move-result-object v9

    aget v9, v9, v7

    .line 210
    .local v9, "typeIndex":I
    iget-object v15, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v15, v8}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v15

    .line 211
    .local v15, "name":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    move/from16 v28, v7

    .end local v7    # "descriptorIndex":I
    .local v28, "descriptorIndex":I
    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v7, v9}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignatureValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v7

    .line 212
    .local v7, "descriptor":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    move/from16 v29, v8

    .end local v8    # "nameIndex":I
    .local v29, "nameIndex":I
    new-instance v8, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethod;

    move/from16 v31, v9

    .end local v9    # "typeIndex":I
    .local v31, "typeIndex":I
    iget-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getMethodFlags()[[J

    move-result-object v9

    aget-object v9, v9, p1

    aget-wide v25, v9, v5

    iget-object v9, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getMethodAttributes()[[Ljava/util/ArrayList;

    move-result-object v9

    aget-object v9, v9, p1

    aget-object v27, v9, v5

    move-object/from16 v22, v8

    move-object/from16 v23, v15

    move-object/from16 v24, v7

    invoke-direct/range {v22 .. v27}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethod;-><init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;JLjava/util/List;)V

    invoke-virtual {v4, v8}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->add(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    move-result-object v8

    aput-object v8, v3, v5

    .line 206
    .end local v7    # "descriptor":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .end local v15    # "name":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .end local v28    # "descriptorIndex":I
    .end local v29    # "nameIndex":I
    .end local v31    # "typeIndex":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 214
    :cond_d
    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->addNestedEntries()V

    .line 217
    const/4 v7, 0x0

    .line 218
    .local v7, "addInnerClassesAttr":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getIcLocal()[[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    move-result-object v8

    aget-object v8, v8, p1

    .line 219
    .local v8, "icLocal":[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    if-eqz v8, :cond_e

    const/4 v9, 0x1

    goto :goto_b

    :cond_e
    const/4 v9, 0x0

    .line 220
    .local v9, "icLocalSent":Z
    :goto_b
    new-instance v15, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;

    move/from16 v22, v5

    .end local v5    # "i":I
    .local v22, "i":I
    const-string v5, "InnerClasses"

    invoke-direct {v15, v5}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;-><init>(Ljava/lang/String;)V

    move-object v5, v15

    .line 221
    .local v5, "innerClassesAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getIcBands()Lorg/apache/commons/compress/harmony/unpack200/IcBands;

    move-result-object v15

    invoke-virtual {v15, v6, v4}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->getRelevantIcTuples(Ljava/lang/String;Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;)[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    move-result-object v15

    .line 222
    .local v15, "icRelevant":[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    invoke-direct {v0, v8, v15}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->computeIcStored([Lorg/apache/commons/compress/harmony/unpack200/IcTuple;[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;)Ljava/util/List;

    move-result-object v23

    .line 223
    .local v23, "ic_stored":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/IcTuple;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_c
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_14

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v26, v6

    .end local v6    # "fullName":Ljava/lang/String;
    .local v26, "fullName":Ljava/lang/String;
    move-object/from16 v6, v25

    check-cast v6, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;

    .line 224
    .local v6, "icStored":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    move/from16 v25, v7

    .end local v7    # "addInnerClassesAttr":Z
    .local v25, "addInnerClassesAttr":Z
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->thisClassIndex()I

    move-result v7

    .line 225
    .local v7, "innerClassIndex":I
    move-object/from16 v27, v10

    .end local v10    # "sourceFileAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;
    .local v27, "sourceFileAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->outerClassIndex()I

    move-result v10

    .line 226
    .local v10, "outerClassIndex":I
    move-object/from16 v28, v13

    .end local v13    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .local v28, "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->simpleClassNameIndex()I

    move-result v13

    .line 228
    .local v13, "simpleClassNameIndex":I
    move-object/from16 v29, v3

    .end local v3    # "cfMethods":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v29, "cfMethods":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->thisClassString()Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "innerClassString":Ljava/lang/String;
    move-object/from16 v31, v2

    .end local v2    # "cfFields":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v31, "cfFields":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->outerClassString()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "outerClassString":Ljava/lang/String;
    move-object/from16 v32, v14

    .end local v14    # "cfInterfaces":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v32, "cfInterfaces":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->simpleClassName()Ljava/lang/String;

    move-result-object v14

    .line 232
    .local v14, "simpleClassName":Ljava/lang/String;
    const/16 v33, 0x0

    .line 233
    .local v33, "innerName":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    const/16 v34, 0x0

    .line 235
    .local v34, "outerClass":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    move-object/from16 v35, v12

    const/4 v12, -0x1

    .end local v12    # "cfSuper":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v35, "cfSuper":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    if-eq v7, v12, :cond_f

    iget-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v12, v7}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v12

    goto :goto_d

    :cond_f
    iget-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v12, v3}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v12

    .line 236
    .local v12, "innerClass":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    :goto_d
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->isAnonymous()Z

    move-result v36

    if-nez v36, :cond_11

    .line 237
    move-object/from16 v36, v3

    const/4 v3, -0x1

    .end local v3    # "innerClassString":Ljava/lang/String;
    .local v36, "innerClassString":Ljava/lang/String;
    if-eq v13, v3, :cond_10

    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v3, v13}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v3

    goto :goto_e

    :cond_10
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v3, v14}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v3

    :goto_e
    move-object/from16 v33, v3

    goto :goto_f

    .line 236
    .end local v36    # "innerClassString":Ljava/lang/String;
    .restart local v3    # "innerClassString":Ljava/lang/String;
    :cond_11
    move-object/from16 v36, v3

    .end local v3    # "innerClassString":Ljava/lang/String;
    .restart local v36    # "innerClassString":Ljava/lang/String;
    move-object/from16 v3, v33

    .line 240
    .end local v33    # "innerName":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .local v3, "innerName":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    :goto_f
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->isMember()Z

    move-result v33

    if-eqz v33, :cond_13

    .line 241
    move/from16 v33, v7

    const/4 v7, -0x1

    .end local v7    # "innerClassIndex":I
    .local v33, "innerClassIndex":I
    if-eq v10, v7, :cond_12

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v7, v10}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v7

    goto :goto_10

    :cond_12
    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v7, v2}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(Ljava/lang/String;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v7

    :goto_10
    move-object/from16 v34, v7

    goto :goto_11

    .line 240
    .end local v33    # "innerClassIndex":I
    .restart local v7    # "innerClassIndex":I
    :cond_13
    move/from16 v33, v7

    .end local v7    # "innerClassIndex":I
    .restart local v33    # "innerClassIndex":I
    move-object/from16 v7, v34

    .line 243
    .end local v34    # "outerClass":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    .local v7, "outerClass":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    :goto_11
    move-object/from16 v34, v2

    .end local v2    # "outerClassString":Ljava/lang/String;
    .local v34, "outerClassString":Ljava/lang/String;
    iget v2, v6, Lorg/apache/commons/compress/harmony/unpack200/IcTuple;->F:I

    .line 244
    .local v2, "flags":I
    invoke-virtual {v5, v12, v7, v3, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/InnerClassesAttribute;->addInnerClassesEntry(Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;I)V

    .line 245
    const/4 v7, 0x1

    .line 246
    .end local v2    # "flags":I
    .end local v3    # "innerName":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .end local v6    # "icStored":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    .end local v10    # "outerClassIndex":I
    .end local v12    # "innerClass":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    .end local v13    # "simpleClassNameIndex":I
    .end local v14    # "simpleClassName":Ljava/lang/String;
    .end local v25    # "addInnerClassesAttr":Z
    .end local v33    # "innerClassIndex":I
    .end local v34    # "outerClassString":Ljava/lang/String;
    .end local v36    # "innerClassString":Ljava/lang/String;
    .local v7, "addInnerClassesAttr":Z
    move-object/from16 v6, v26

    move-object/from16 v10, v27

    move-object/from16 v13, v28

    move-object/from16 v3, v29

    move-object/from16 v2, v31

    move-object/from16 v14, v32

    move-object/from16 v12, v35

    goto/16 :goto_c

    .line 249
    .end local v26    # "fullName":Ljava/lang/String;
    .end local v27    # "sourceFileAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;
    .end local v28    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .end local v29    # "cfMethods":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .end local v31    # "cfFields":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .end local v32    # "cfInterfaces":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .end local v35    # "cfSuper":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v2, "cfFields":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v3, "cfMethods":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v6, "fullName":Ljava/lang/String;
    .local v10, "sourceFileAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;
    .local v12, "cfSuper":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v13, "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .local v14, "cfInterfaces":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    :cond_14
    move-object/from16 v31, v2

    move-object/from16 v29, v3

    move-object/from16 v26, v6

    move/from16 v25, v7

    move-object/from16 v27, v10

    move-object/from16 v35, v12

    move-object/from16 v28, v13

    move-object/from16 v32, v14

    .end local v2    # "cfFields":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .end local v3    # "cfMethods":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .end local v6    # "fullName":Ljava/lang/String;
    .end local v7    # "addInnerClassesAttr":Z
    .end local v10    # "sourceFileAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;
    .end local v12    # "cfSuper":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .end local v13    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .end local v14    # "cfInterfaces":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .restart local v25    # "addInnerClassesAttr":Z
    .restart local v26    # "fullName":Ljava/lang/String;
    .restart local v27    # "sourceFileAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/SourceFileAttribute;
    .restart local v28    # "classAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .restart local v29    # "cfMethods":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .restart local v31    # "cfFields":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .restart local v32    # "cfInterfaces":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .restart local v35    # "cfSuper":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    if-eqz v9, :cond_15

    array-length v2, v8

    if-nez v2, :cond_15

    .line 250
    const/4 v7, 0x0

    .end local v25    # "addInnerClassesAttr":Z
    .restart local v7    # "addInnerClassesAttr":Z
    goto :goto_12

    .line 255
    .end local v7    # "addInnerClassesAttr":Z
    .restart local v25    # "addInnerClassesAttr":Z
    :cond_15
    move/from16 v7, v25

    .end local v25    # "addInnerClassesAttr":Z
    .restart local v7    # "addInnerClassesAttr":Z
    :goto_12
    if-nez v9, :cond_16

    array-length v2, v15

    if-nez v2, :cond_16

    .line 256
    const/4 v7, 0x0

    .line 259
    :cond_16
    if-eqz v7, :cond_17

    .line 262
    iget-object v2, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 263
    .local v2, "originalAttrs":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    array-length v3, v2

    const/4 v6, 0x1

    add-int/2addr v3, v6

    new-array v3, v3, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 264
    .local v3, "newAttrs":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    array-length v10, v2

    const/4 v12, 0x0

    invoke-static {v2, v12, v3, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    array-length v10, v3

    sub-int/2addr v10, v6

    aput-object v5, v3, v10

    .line 266
    iput-object v3, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->attributes:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 267
    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->addWithNestedEntries(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 270
    .end local v2    # "originalAttrs":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    .end local v3    # "newAttrs":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    :cond_17
    invoke-virtual {v4, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->resolve(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    .line 273
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassFlags()[J

    move-result-object v2

    aget-wide v12, v2, p1

    long-to-int v2, v12

    iput v2, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->accessFlags:I

    .line 274
    invoke-virtual {v4, v11}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v2

    iput v2, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->thisClass:I

    .line 275
    move-object/from16 v2, v35

    .end local v35    # "cfSuper":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v2, "cfSuper":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    invoke-virtual {v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v3

    iput v3, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->superClass:I

    .line 277
    move-object/from16 v3, v32

    .end local v32    # "cfInterfaces":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v3, "cfInterfaces":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    array-length v6, v3

    new-array v6, v6, [I

    iput-object v6, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->interfaces:[I

    .line 278
    const/4 v6, 0x0

    .end local v22    # "i":I
    .local v6, "i":I
    :goto_13
    array-length v10, v3

    if-ge v6, v10, :cond_18

    .line 279
    iget-object v10, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->interfaces:[I

    aget-object v12, v3, v6

    invoke-virtual {v4, v12}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassConstantPool;->indexOf(Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;)I

    move-result v12

    aput v12, v10, v6

    .line 278
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 281
    :cond_18
    move-object/from16 v10, v31

    .end local v31    # "cfFields":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v10, "cfFields":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    iput-object v10, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->fields:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 282
    move-object/from16 v12, v29

    .end local v29    # "cfMethods":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    .local v12, "cfMethods":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;
    iput-object v12, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->methods:[Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFileEntry;

    .line 283
    return-object v1
.end method

.method private computeIcStored([Lorg/apache/commons/compress/harmony/unpack200/IcTuple;[Lorg/apache/commons/compress/harmony/unpack200/IcTuple;)Ljava/util/List;
    .locals 8
    .param p1, "icLocal"    # [Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    .param p2, "icRelevant"    # [Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/compress/harmony/unpack200/IcTuple;",
            "[",
            "Lorg/apache/commons/compress/harmony/unpack200/IcTuple;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/unpack200/IcTuple;",
            ">;"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/IcTuple;>;"
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 297
    .local v1, "duplicates":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/IcTuple;>;"
    new-instance v2, Ljava/util/HashSet;

    array-length v3, p2

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 303
    .local v2, "isInResult":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/compress/harmony/unpack200/IcTuple;>;"
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 304
    array-length v4, p1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, p1, v5

    .line 305
    .local v6, "element":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 306
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v6    # "element":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 312
    :cond_1
    array-length v4, p2

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v5, p2, v3

    .line 313
    .local v5, "element":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 314
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 316
    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    .end local v5    # "element":Lorg/apache/commons/compress/harmony/unpack200/IcTuple;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 321
    :cond_3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/apache/commons/compress/harmony/unpack200/Segment$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 323
    return-object v0
.end method

.method private parseSegment()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->unpack()V

    .line 375
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->unpack()V

    .line 376
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->attrDefinitionBands:Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->unpack()V

    .line 377
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->icBands:Lorg/apache/commons/compress/harmony/unpack200/IcBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->unpack()V

    .line 378
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->unpack()V

    .line 379
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->bcBands:Lorg/apache/commons/compress/harmony/unpack200/BcBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->unpack()V

    .line 380
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->unpack()V

    .line 382
    const/4 v1, 0x0

    .line 383
    .local v1, "classNum":I
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getNumberOfFiles()I

    move-result v2

    .line 384
    .local v2, "numberOfFiles":I
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->getFileName()[Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "fileName":[Ljava/lang/String;
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->getFileOptions()[I

    move-result-object v4

    .line 386
    .local v4, "fileOptions":[I
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object v5

    .line 388
    .local v5, "options":Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;
    new-array v6, v2, [[B

    iput-object v6, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classFilesContents:[[B

    .line 389
    new-array v6, v2, [Z

    iput-object v6, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileDeflate:[Z

    .line 390
    new-array v6, v2, [Z

    iput-object v6, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileIsClass:[Z

    .line 392
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 393
    .local v6, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 395
    .local v7, "dos":Ljava/io/DataOutputStream;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_9

    .line 396
    aget-object v9, v3, v8

    .line 398
    .local v9, "name":Ljava/lang/String;
    const/4 v11, 0x1

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    move v12, v11

    .line 399
    .local v12, "nameIsEmpty":Z
    :goto_2
    aget v13, v4, v8

    const/4 v14, 0x2

    and-int/2addr v13, v14

    if-eq v13, v14, :cond_3

    if-eqz v12, :cond_2

    goto :goto_3

    :cond_2
    const/4 v13, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    move v13, v11

    .line 400
    .local v13, "isClass":Z
    :goto_4
    if-eqz v13, :cond_4

    if-eqz v12, :cond_4

    .line 401
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpClass()[Ljava/lang/String;

    move-result-object v15

    iget-object v10, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v10}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassThisInts()[I

    move-result-object v10

    aget v10, v10, v1

    aget-object v10, v15, v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, ".class"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 402
    aput-object v9, v3, v8

    .line 405
    :cond_4
    iget-boolean v10, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->overrideDeflateHint:Z

    if-nez v10, :cond_7

    .line 406
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileDeflate:[Z

    aget v14, v4, v8

    and-int/2addr v14, v11

    if-eq v14, v11, :cond_6

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->shouldDeflate()Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    move/from16 v16, v11

    :goto_6
    aput-boolean v16, v10, v8

    goto :goto_7

    .line 408
    :cond_7
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileDeflate:[Z

    iget-boolean v11, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->deflateHint:Z

    aput-boolean v11, v10, v8

    .line 411
    :goto_7
    iget-object v10, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileIsClass:[Z

    aput-boolean v13, v10, v8

    .line 413
    if-eqz v13, :cond_8

    .line 414
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->buildClassFile(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;

    move-result-object v10

    .line 415
    .local v10, "classFile":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;
    invoke-virtual {v10, v7}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;->write(Ljava/io/DataOutputStream;)V

    .line 416
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 418
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classFilesContents:[[B

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    aput-object v14, v11, v1

    .line 419
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 421
    add-int/lit8 v1, v1, 0x1

    .line 395
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "classFile":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ClassFile;
    .end local v12    # "nameIsEmpty":Z
    .end local v13    # "isClass":Z
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 424
    .end local v8    # "i":I
    :cond_9
    return-void
.end method

.method private readSegment(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 434
    const/4 v0, 0x2

    const-string v1, "-------"

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->log(ILjava/lang/String;)V

    .line 435
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    .line 436
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->read(Ljava/io/InputStream;)V

    .line 437
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->attrDefinitionBands:Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    .line 438
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->attrDefinitionBands:Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->read(Ljava/io/InputStream;)V

    .line 439
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/IcBands;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->icBands:Lorg/apache/commons/compress/harmony/unpack200/IcBands;

    .line 440
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->icBands:Lorg/apache/commons/compress/harmony/unpack200/IcBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/IcBands;->read(Ljava/io/InputStream;)V

    .line 441
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    .line 442
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->read(Ljava/io/InputStream;)V

    .line 443
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->bcBands:Lorg/apache/commons/compress/harmony/unpack200/BcBands;

    .line 444
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->bcBands:Lorg/apache/commons/compress/harmony/unpack200/BcBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->read(Ljava/io/InputStream;)V

    .line 445
    new-instance v0, Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    .line 446
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->read(Ljava/io/InputStream;)V

    .line 448
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->processFileBits()V

    .line 449
    return-void
.end method


# virtual methods
.method protected getAttrDefinitionBands()Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;
    .locals 1

    .line 327
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->attrDefinitionBands:Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    return-object v0
.end method

.method protected getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classBands:Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    return-object v0
.end method

.method public getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getConstantPool()Lorg/apache/commons/compress/harmony/unpack200/SegmentConstantPool;

    move-result-object v0

    return-object v0
.end method

.method protected getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->cpBands:Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    return-object v0
.end method

.method protected getIcBands()Lorg/apache/commons/compress/harmony/unpack200/IcBands;
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->icBands:Lorg/apache/commons/compress/harmony/unpack200/IcBands;

    return-object v0
.end method

.method public getSegmentHeader()Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;
    .locals 1

    .line 347
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    return-object v0
.end method

.method public log(ILjava/lang/String;)V
    .locals 1
    .param p1, "logLevel"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 351
    iget v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->logLevel:I

    if-lt v0, p1, :cond_0

    .line 352
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->logStream:Ljava/io/PrintWriter;

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    :cond_0
    return-void
.end method

.method public overrideDeflateHint(Z)V
    .locals 1
    .param p1, "deflateHint"    # Z

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->overrideDeflateHint:Z

    .line 363
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->deflateHint:Z

    .line 364
    return-void
.end method

.method public setLogLevel(I)V
    .locals 0
    .param p1, "logLevel"    # I

    .line 452
    iput p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->logLevel:I

    .line 453
    return-void
.end method

.method public setLogStream(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "logStream"    # Ljava/io/OutputStream;

    .line 456
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->logStream:Ljava/io/PrintWriter;

    .line 457
    return-void
.end method

.method public setPreRead(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 460
    iput-boolean p1, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->doPreRead:Z

    .line 461
    return-void
.end method

.method public unpack(Ljava/io/InputStream;Ljava/util/jar/JarOutputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/util/jar/JarOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 472
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->unpackRead(Ljava/io/InputStream;)V

    .line 473
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->unpackProcess()V

    .line 474
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->unpackWrite(Ljava/util/jar/JarOutputStream;)V

    .line 475
    return-void
.end method

.method unpackProcess()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->internalBuffer:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->internalBuffer:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->readSegment(Ljava/io/InputStream;)V

    .line 481
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->parseSegment()V

    .line 482
    return-void
.end method

.method unpackRead(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 489
    invoke-static {p1}, Lorg/apache/commons/compress/harmony/unpack200/Pack200UnpackerAdapter;->newBoundedInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v0

    .line 491
    .local v0, "in":Ljava/io/InputStream;
    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-direct {v1, p0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    iput-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    .line 492
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->read(Ljava/io/InputStream;)V

    .line 494
    iget-object v1, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getArchiveSize()J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getArchiveSizeOffset()I

    move-result v2

    sub-int/2addr v1, v2

    .line 496
    .local v1, "size":I
    iget-boolean v2, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->doPreRead:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getArchiveSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 497
    new-array v2, v1, [B

    .line 498
    .local v2, "data":[B
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 499
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->internalBuffer:Ljava/io/InputStream;

    .line 500
    .end local v2    # "data":[B
    goto :goto_0

    .line 501
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->readSegment(Ljava/io/InputStream;)V

    .line 503
    :goto_0
    return-void
.end method

.method unpackWrite(Ljava/util/jar/JarOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/util/jar/JarOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->writeJar(Ljava/util/jar/JarOutputStream;)V

    .line 507
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->logStream:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->logStream:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 510
    :cond_0
    return-void
.end method

.method public writeJar(Ljava/util/jar/JarOutputStream;)V
    .locals 21
    .param p1, "out"    # Ljava/util/jar/JarOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->getFileName()[Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, "fileName":[Ljava/lang/String;
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->getFileModtime()[I

    move-result-object v3

    .line 523
    .local v3, "fileModtime":[I
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->getFileSize()[J

    move-result-object v4

    .line 524
    .local v4, "fileSize":[J
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileBands:Lorg/apache/commons/compress/harmony/unpack200/FileBands;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/FileBands;->getFileBits()[[B

    move-result-object v5

    .line 527
    .local v5, "fileBits":[[B
    const/4 v6, 0x0

    .line 528
    .local v6, "classNum":I
    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getNumberOfFiles()I

    move-result v7

    .line 529
    .local v7, "numberOfFiles":I
    iget-object v8, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v8}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getArchiveModtime()J

    move-result-wide v8

    .line 531
    .local v8, "archiveModtime":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_3

    .line 532
    aget-object v11, v2, v10

    .line 539
    .local v11, "name":Ljava/lang/String;
    aget v12, v3, v10

    int-to-long v12, v12

    add-long/2addr v12, v8

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    .line 540
    .local v12, "modtime":J
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileDeflate:[Z

    aget-boolean v14, v14, v10

    .line 542
    .local v14, "deflate":Z
    new-instance v15, Ljava/util/jar/JarEntry;

    invoke-direct {v15, v11}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    .line 543
    .local v15, "entry":Ljava/util/jar/JarEntry;
    if-eqz v14, :cond_0

    .line 544
    move-object/from16 v16, v2

    .end local v2    # "fileName":[Ljava/lang/String;
    .local v16, "fileName":[Ljava/lang/String;
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Ljava/util/jar/JarEntry;->setMethod(I)V

    move-object/from16 v17, v3

    move/from16 v18, v7

    move-wide/from16 v19, v8

    goto :goto_2

    .line 546
    .end local v16    # "fileName":[Ljava/lang/String;
    .restart local v2    # "fileName":[Ljava/lang/String;
    :cond_0
    move-object/from16 v16, v2

    .end local v2    # "fileName":[Ljava/lang/String;
    .restart local v16    # "fileName":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/util/jar/JarEntry;->setMethod(I)V

    .line 547
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 548
    .local v2, "crc":Ljava/util/zip/CRC32;
    move-object/from16 v17, v3

    .end local v3    # "fileModtime":[I
    .local v17, "fileModtime":[I
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileIsClass:[Z

    aget-boolean v3, v3, v10

    if-eqz v3, :cond_1

    .line 549
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classFilesContents:[[B

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 550
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classFilesContents:[[B

    aget-object v3, v3, v6

    array-length v3, v3

    move/from16 v18, v7

    move-wide/from16 v19, v8

    .end local v7    # "numberOfFiles":I
    .end local v8    # "archiveModtime":J
    .local v18, "numberOfFiles":I
    .local v19, "archiveModtime":J
    int-to-long v7, v3

    invoke-virtual {v15, v7, v8}, Ljava/util/jar/JarEntry;->setSize(J)V

    goto :goto_1

    .line 552
    .end local v18    # "numberOfFiles":I
    .end local v19    # "archiveModtime":J
    .restart local v7    # "numberOfFiles":I
    .restart local v8    # "archiveModtime":J
    :cond_1
    move/from16 v18, v7

    move-wide/from16 v19, v8

    .end local v7    # "numberOfFiles":I
    .end local v8    # "archiveModtime":J
    .restart local v18    # "numberOfFiles":I
    .restart local v19    # "archiveModtime":J
    aget-object v3, v5, v10

    invoke-virtual {v2, v3}, Ljava/util/zip/CRC32;->update([B)V

    .line 553
    aget-wide v7, v4, v10

    invoke-virtual {v15, v7, v8}, Ljava/util/jar/JarEntry;->setSize(J)V

    .line 555
    :goto_1
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    invoke-virtual {v15, v7, v8}, Ljava/util/jar/JarEntry;->setCrc(J)V

    .line 558
    .end local v2    # "crc":Ljava/util/zip/CRC32;
    :goto_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    sub-long v2, v12, v2

    invoke-virtual {v15, v2, v3}, Ljava/util/jar/JarEntry;->setTime(J)V

    .line 559
    invoke-virtual {v1, v15}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 562
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->fileIsClass:[Z

    aget-boolean v2, v2, v10

    if-eqz v2, :cond_2

    .line 563
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classFilesContents:[[B

    aget-object v2, v2, v6

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {v15, v2, v3}, Ljava/util/jar/JarEntry;->setSize(J)V

    .line 564
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/Segment;->classFilesContents:[[B

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/util/jar/JarOutputStream;->write([B)V

    .line 565
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 567
    :cond_2
    aget-wide v2, v4, v10

    invoke-virtual {v15, v2, v3}, Ljava/util/jar/JarEntry;->setSize(J)V

    .line 568
    aget-object v2, v5, v10

    invoke-virtual {v1, v2}, Ljava/util/jar/JarOutputStream;->write([B)V

    .line 531
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "modtime":J
    .end local v14    # "deflate":Z
    .end local v15    # "entry":Ljava/util/jar/JarEntry;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v7, v18

    move-wide/from16 v8, v19

    goto/16 :goto_0

    .line 571
    .end local v10    # "i":I
    .end local v16    # "fileName":[Ljava/lang/String;
    .end local v17    # "fileModtime":[I
    .end local v18    # "numberOfFiles":I
    .end local v19    # "archiveModtime":J
    .local v2, "fileName":[Ljava/lang/String;
    .restart local v3    # "fileModtime":[I
    .restart local v7    # "numberOfFiles":I
    .restart local v8    # "archiveModtime":J
    :cond_3
    return-void
.end method
