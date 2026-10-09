.class public Lorg/apache/commons/compress/harmony/unpack200/BcBands;
.super Lorg/apache/commons/compress/harmony/unpack200/BandSet;
.source "BcBands.java"


# instance fields
.field private bcByte:[I

.field private bcCaseCount:[I

.field private bcCaseValue:[I

.field private bcClassRef:[I

.field private bcDoubleRef:[I

.field private bcEscByte:[[I

.field private bcEscRef:[I

.field private bcEscRefSize:[I

.field private bcEscSize:[I

.field private bcFieldRef:[I

.field private bcFloatRef:[I

.field private bcIMethodRef:[I

.field private bcInitRef:[I

.field private bcIntRef:[I

.field private bcLabel:[I

.field private bcLocal:[I

.field private bcLongRef:[I

.field private bcMethodRef:[I

.field private bcShort:[I

.field private bcStringRef:[I

.field private bcSuperField:[I

.field private bcSuperMethod:[I

.field private bcThisField:[I

.field private bcThisMethod:[I

.field private methodByteCodePacked:[[[B

.field private wideByteCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V
    .locals 0
    .param p1, "segment"    # Lorg/apache/commons/compress/harmony/unpack200/Segment;

    .line 79
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;-><init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    .line 80
    return-void
.end method

.method private endsWithLoad(I)Z
    .locals 1
    .param p1, "codePacked"    # I

    .line 83
    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/16 v0, 0x19

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private endsWithStore(I)Z
    .locals 1
    .param p1, "codePacked"    # I

    .line 87
    const/16 v0, 0x36

    if-lt p1, v0, :cond_0

    const/16 v0, 0x3a

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startsWithIf(I)Z
    .locals 1
    .param p1, "codePacked"    # I

    .line 421
    const/16 v0, 0x99

    if-lt p1, v0, :cond_0

    const/16 v0, 0xa6

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0xc6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc7

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getBcByte()[I
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcByte:[I

    return-object v0
.end method

.method public getBcCaseCount()[I
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcCaseCount:[I

    return-object v0
.end method

.method public getBcCaseValue()[I
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcCaseValue:[I

    return-object v0
.end method

.method public getBcClassRef()[I
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcClassRef:[I

    return-object v0
.end method

.method public getBcDoubleRef()[I
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcDoubleRef:[I

    return-object v0
.end method

.method public getBcFieldRef()[I
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcFieldRef:[I

    return-object v0
.end method

.method public getBcFloatRef()[I
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcFloatRef:[I

    return-object v0
.end method

.method public getBcIMethodRef()[I
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcIMethodRef:[I

    return-object v0
.end method

.method public getBcInitRef()[I
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcInitRef:[I

    return-object v0
.end method

.method public getBcIntRef()[I
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcIntRef:[I

    return-object v0
.end method

.method public getBcLabel()[I
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcLabel:[I

    return-object v0
.end method

.method public getBcLocal()[I
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcLocal:[I

    return-object v0
.end method

.method public getBcLongRef()[I
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcLongRef:[I

    return-object v0
.end method

.method public getBcMethodRef()[I
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcMethodRef:[I

    return-object v0
.end method

.method public getBcShort()[I
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcShort:[I

    return-object v0
.end method

.method public getBcStringRef()[I
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcStringRef:[I

    return-object v0
.end method

.method public getBcSuperField()[I
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcSuperField:[I

    return-object v0
.end method

.method public getBcSuperMethod()[I
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcSuperMethod:[I

    return-object v0
.end method

.method public getBcThisField()[I
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcThisField:[I

    return-object v0
.end method

.method public getBcThisMethod()[I
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcThisMethod:[I

    return-object v0
.end method

.method public getMethodByteCodePacked()[[[B
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->methodByteCodePacked:[[[B

    return-object v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 44
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 182
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getAttrDefinitionBands()Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->getAttributeDefinitionMap()Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move-result-object v2

    .line 183
    .local v2, "attributeDefinitionMap":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getClassCount()I

    move-result v3

    .line 184
    .local v3, "classCount":I
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getMethodFlags()[[J

    move-result-object v4

    .line 186
    .local v4, "methodFlags":[[J
    const/4 v5, 0x0

    .line 187
    .local v5, "bcCaseCountCount":I
    const/4 v6, 0x0

    .line 188
    .local v6, "bcByteCount":I
    const/4 v7, 0x0

    .line 189
    .local v7, "bcShortCount":I
    const/4 v8, 0x0

    .line 190
    .local v8, "bcLocalCount":I
    const/4 v9, 0x0

    .line 191
    .local v9, "bcLabelCount":I
    const/4 v10, 0x0

    .line 192
    .local v10, "bcIntRefCount":I
    const/4 v11, 0x0

    .line 193
    .local v11, "bcFloatRefCount":I
    const/4 v12, 0x0

    .line 194
    .local v12, "bcLongRefCount":I
    const/4 v13, 0x0

    .line 195
    .local v13, "bcDoubleRefCount":I
    const/4 v14, 0x0

    .line 196
    .local v14, "bcStringRefCount":I
    const/4 v15, 0x0

    .line 197
    .local v15, "bcClassRefCount":I
    const/16 v16, 0x0

    .line 198
    .local v16, "bcFieldRefCount":I
    const/16 v17, 0x0

    .line 199
    .local v17, "bcMethodRefCount":I
    const/16 v18, 0x0

    .line 200
    .local v18, "bcIMethodRefCount":I
    const/16 v19, 0x0

    .line 201
    .local v19, "bcThisFieldCount":I
    const/16 v20, 0x0

    .line 202
    .local v20, "bcSuperFieldCount":I
    const/16 v21, 0x0

    .line 203
    .local v21, "bcThisMethodCount":I
    const/16 v22, 0x0

    .line 204
    .local v22, "bcSuperMethodCount":I
    const/16 v23, 0x0

    .line 205
    .local v23, "bcInitRefCount":I
    const/16 v24, 0x0

    .line 206
    .local v24, "bcEscCount":I
    const/16 v25, 0x0

    .line 208
    .local v25, "bcEscRefCount":I
    move/from16 v26, v5

    .end local v5    # "bcCaseCountCount":I
    .local v26, "bcCaseCountCount":I
    const-string v5, "ACC_ABSTRACT"

    move/from16 v27, v6

    .end local v6    # "bcByteCount":I
    .local v27, "bcByteCount":I
    const/4 v6, 0x2

    invoke-virtual {v2, v5, v6}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v5

    .line 209
    .local v5, "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    move/from16 v28, v7

    .end local v7    # "bcShortCount":I
    .local v28, "bcShortCount":I
    const-string v7, "ACC_NATIVE"

    invoke-virtual {v2, v7, v6}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v7

    .line 211
    .local v7, "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    new-array v6, v3, [[[B

    iput-object v6, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->methodByteCodePacked:[[[B

    .line 213
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v6, "switchIsTableSwitch":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    move-object/from16 v30, v2

    .end local v2    # "attributeDefinitionMap":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;
    .local v30, "attributeDefinitionMap":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->wideByteCodes:Ljava/util/List;

    .line 215
    const/4 v2, 0x0

    move/from16 v31, v14

    move/from16 v32, v15

    move/from16 v33, v16

    move/from16 v34, v17

    move/from16 v35, v18

    move/from16 v36, v19

    move/from16 v37, v20

    move/from16 v38, v21

    move/from16 v39, v22

    move/from16 v40, v23

    move/from16 v41, v24

    move/from16 v42, v25

    move/from16 v16, v9

    move v14, v11

    move v15, v12

    move v12, v13

    move/from16 v9, v27

    move v11, v8

    move v13, v10

    move/from16 v8, v26

    move/from16 v10, v28

    .end local v17    # "bcMethodRefCount":I
    .end local v18    # "bcIMethodRefCount":I
    .end local v19    # "bcThisFieldCount":I
    .end local v20    # "bcSuperFieldCount":I
    .end local v21    # "bcThisMethodCount":I
    .end local v22    # "bcSuperMethodCount":I
    .end local v23    # "bcInitRefCount":I
    .end local v24    # "bcEscCount":I
    .end local v25    # "bcEscRefCount":I
    .end local v26    # "bcCaseCountCount":I
    .end local v27    # "bcByteCount":I
    .end local v28    # "bcShortCount":I
    .local v2, "c":I
    .local v8, "bcCaseCountCount":I
    .local v9, "bcByteCount":I
    .local v10, "bcShortCount":I
    .local v11, "bcLocalCount":I
    .local v12, "bcDoubleRefCount":I
    .local v13, "bcIntRefCount":I
    .local v14, "bcFloatRefCount":I
    .local v15, "bcLongRefCount":I
    .local v16, "bcLabelCount":I
    .local v31, "bcStringRefCount":I
    .local v32, "bcClassRefCount":I
    .local v33, "bcFieldRefCount":I
    .local v34, "bcMethodRefCount":I
    .local v35, "bcIMethodRefCount":I
    .local v36, "bcThisFieldCount":I
    .local v37, "bcSuperFieldCount":I
    .local v38, "bcThisMethodCount":I
    .local v39, "bcSuperMethodCount":I
    .local v40, "bcInitRefCount":I
    .local v41, "bcEscCount":I
    .local v42, "bcEscRefCount":I
    :goto_0
    if-ge v2, v3, :cond_b

    .line 216
    move/from16 v17, v3

    .end local v3    # "classCount":I
    .local v17, "classCount":I
    aget-object v3, v4, v2

    array-length v3, v3

    .line 217
    .local v3, "numberOfMethods":I
    move/from16 v18, v12

    .end local v12    # "bcDoubleRefCount":I
    .local v18, "bcDoubleRefCount":I
    iget-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->methodByteCodePacked:[[[B

    move/from16 v19, v15

    .end local v15    # "bcLongRefCount":I
    .local v19, "bcLongRefCount":I
    new-array v15, v3, [[B

    aput-object v15, v12, v2

    .line 218
    const/4 v12, 0x0

    move/from16 v15, v19

    .end local v19    # "bcLongRefCount":I
    .local v12, "m":I
    .restart local v15    # "bcLongRefCount":I
    :goto_1
    if-ge v12, v3, :cond_a

    .line 219
    aget-object v19, v4, v2

    move/from16 v21, v3

    move-object/from16 v20, v4

    .end local v3    # "numberOfMethods":I
    .end local v4    # "methodFlags":[[J
    .local v20, "methodFlags":[[J
    .local v21, "numberOfMethods":I
    aget-wide v3, v19, v12

    .line 220
    .local v3, "methodFlag":J
    invoke-virtual {v5, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v19

    if-nez v19, :cond_9

    invoke-virtual {v7, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v19

    if-nez v19, :cond_9

    .line 221
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v22, v19

    .line 223
    .local v22, "codeBytes":Ljava/io/ByteArrayOutputStream;
    :goto_2
    move-wide/from16 v23, v3

    .end local v3    # "methodFlag":J
    .local v23, "methodFlag":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    move v4, v3

    move-object/from16 v25, v5

    .end local v5    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v4, "code":B
    .local v25, "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 224
    move-object/from16 v3, v22

    .end local v22    # "codeBytes":Ljava/io/ByteArrayOutputStream;
    .local v3, "codeBytes":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-wide/from16 v3, v23

    move-object/from16 v5, v25

    goto :goto_2

    .line 226
    .end local v3    # "codeBytes":Ljava/io/ByteArrayOutputStream;
    .restart local v22    # "codeBytes":Ljava/io/ByteArrayOutputStream;
    :cond_0
    move-object/from16 v3, v22

    .end local v22    # "codeBytes":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "codeBytes":Ljava/io/ByteArrayOutputStream;
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->methodByteCodePacked:[[[B

    aget-object v5, v5, v2

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    aput-object v19, v5, v12

    .line 227
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->methodByteCodePacked:[[[B

    aget-object v5, v5, v2

    aget-object v5, v5, v12

    array-length v5, v5

    new-array v5, v5, [I

    .line 228
    .local v5, "codes":[I
    const/16 v19, 0x0

    move/from16 v3, v19

    .local v3, "i":I
    .restart local v22    # "codeBytes":Ljava/io/ByteArrayOutputStream;
    :goto_3
    move/from16 v19, v4

    .end local v4    # "code":B
    .local v19, "code":B
    array-length v4, v5

    if-ge v3, v4, :cond_1

    .line 229
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->methodByteCodePacked:[[[B

    aget-object v4, v4, v2

    aget-object v4, v4, v12

    aget-byte v4, v4, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v5, v3

    .line 228
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v19

    goto :goto_3

    .line 231
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->methodByteCodePacked:[[[B

    aget-object v4, v4, v2

    aget-object v4, v4, v12

    array-length v4, v4

    if-ge v3, v4, :cond_8

    .line 232
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->methodByteCodePacked:[[[B

    aget-object v4, v4, v2

    aget-object v4, v4, v12

    aget-byte v4, v4, v3

    and-int/lit16 v4, v4, 0xff

    .line 233
    .local v4, "codePacked":I
    sparse-switch v4, :sswitch_data_0

    .line 368
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v28, v13

    move/from16 v43, v14

    const/4 v14, 0x2

    .end local v5    # "codes":[I
    .end local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v13    # "bcIntRefCount":I
    .end local v14    # "bcFloatRefCount":I
    .local v26, "codes":[I
    .local v27, "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v28, "bcIntRefCount":I
    .local v43, "bcFloatRefCount":I
    invoke-direct {v0, v4}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->endsWithLoad(I)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-direct {v0, v4}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->endsWithStore(I)Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_8

    .line 365
    .end local v26    # "codes":[I
    .end local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v28    # "bcIntRefCount":I
    .end local v43    # "bcFloatRefCount":I
    .restart local v5    # "codes":[I
    .restart local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v13    # "bcIntRefCount":I
    .restart local v14    # "bcFloatRefCount":I
    :sswitch_0
    add-int/lit8 v41, v41, 0x1

    .line 366
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v43, v14

    const/4 v14, 0x2

    goto/16 :goto_9

    .line 362
    :sswitch_1
    add-int/lit8 v42, v42, 0x1

    .line 363
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v43, v14

    const/4 v14, 0x2

    goto/16 :goto_9

    .line 268
    :sswitch_2
    add-int/lit8 v18, v18, 0x1

    .line 269
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v43, v14

    const/4 v14, 0x2

    goto/16 :goto_9

    .line 251
    :sswitch_3
    add-int/lit8 v14, v14, 0x1

    .line 252
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v43, v14

    const/4 v14, 0x2

    goto/16 :goto_9

    .line 247
    :sswitch_4
    add-int/lit8 v13, v13, 0x1

    .line 248
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v43, v14

    const/4 v14, 0x2

    goto/16 :goto_9

    .line 359
    :sswitch_5
    add-int/lit8 v40, v40, 0x1

    .line 360
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v43, v14

    const/4 v14, 0x2

    goto/16 :goto_9

    .line 337
    :sswitch_6
    add-int/lit8 v39, v39, 0x1

    .line 338
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v43, v14

    const/4 v14, 0x2

    goto/16 :goto_9

    .line 329
    :sswitch_7
    add-int/lit8 v37, v37, 0x1

    .line 330
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v43, v14

    const/4 v14, 0x2

    goto/16 :goto_9

    .line 319
    :sswitch_8
    add-int/lit8 v38, v38, 0x1

    .line 320
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v43, v14

    const/4 v14, 0x2

    goto/16 :goto_9

    .line 311
    :sswitch_9
    add-int/lit8 v36, v36, 0x1

    .line 312
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v43, v14

    const/4 v14, 0x2

    goto/16 :goto_9

    .line 254
    :sswitch_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v28, v13

    move/from16 v43, v14

    const/4 v14, 0x2

    goto/16 :goto_7

    .line 344
    :sswitch_b
    move-object/from16 v26, v5

    .end local v5    # "codes":[I
    .restart local v26    # "codes":[I
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->methodByteCodePacked:[[[B

    aget-object v5, v5, v2

    aget-object v5, v5, v12

    add-int/lit8 v27, v3, 0x1

    aget-byte v5, v5, v27

    and-int/lit16 v5, v5, 0xff

    .line 345
    .local v5, "nextInstruction":I
    move-object/from16 v27, v7

    .end local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->wideByteCodes:Ljava/util/List;

    move/from16 v28, v13

    .end local v13    # "bcIntRefCount":I
    .restart local v28    # "bcIntRefCount":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    const/16 v7, 0x84

    if-ne v5, v7, :cond_2

    .line 347
    add-int/lit8 v11, v11, 0x1

    .line 348
    add-int/lit8 v10, v10, 0x1

    move/from16 v43, v14

    const/4 v14, 0x2

    goto :goto_6

    .line 349
    :cond_2
    invoke-direct {v0, v5}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->endsWithLoad(I)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-direct {v0, v5}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->endsWithStore(I)Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v7, 0xa9

    if-ne v5, v7, :cond_3

    move/from16 v43, v14

    const/4 v14, 0x2

    goto :goto_5

    .line 352
    :cond_3
    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v43, v14

    .end local v14    # "bcFloatRefCount":I
    .restart local v43    # "bcFloatRefCount":I
    const-string v14, "Found unhandled "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v5}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;->getByteCode(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/ByteCode;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v7, v14, v13}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->log(ILjava/lang/String;)V

    goto :goto_6

    .line 349
    .end local v43    # "bcFloatRefCount":I
    .restart local v14    # "bcFloatRefCount":I
    :cond_4
    move/from16 v43, v14

    const/4 v14, 0x2

    .line 350
    .end local v14    # "bcFloatRefCount":I
    .restart local v43    # "bcFloatRefCount":I
    :goto_5
    add-int/lit8 v11, v11, 0x1

    .line 354
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 355
    move/from16 v13, v28

    goto/16 :goto_9

    .line 233
    .end local v26    # "codes":[I
    .end local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v28    # "bcIntRefCount":I
    .end local v43    # "bcFloatRefCount":I
    .local v5, "codes":[I
    .restart local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v13    # "bcIntRefCount":I
    .restart local v14    # "bcFloatRefCount":I
    :sswitch_c
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v28, v13

    move/from16 v43, v14

    const/4 v14, 0x2

    .line 262
    .end local v5    # "codes":[I
    .end local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v13    # "bcIntRefCount":I
    .end local v14    # "bcFloatRefCount":I
    .restart local v26    # "codes":[I
    .restart local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v28    # "bcIntRefCount":I
    .restart local v43    # "bcFloatRefCount":I
    :goto_7
    add-int/lit8 v32, v32, 0x1

    .line 263
    move/from16 v13, v28

    goto/16 :goto_9

    .line 301
    .end local v26    # "codes":[I
    .end local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v28    # "bcIntRefCount":I
    .end local v43    # "bcFloatRefCount":I
    .restart local v5    # "codes":[I
    .restart local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v13    # "bcIntRefCount":I
    .restart local v14    # "bcFloatRefCount":I
    :sswitch_d
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v28, v13

    move/from16 v43, v14

    const/4 v14, 0x2

    .end local v5    # "codes":[I
    .end local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v13    # "bcIntRefCount":I
    .end local v14    # "bcFloatRefCount":I
    .restart local v26    # "codes":[I
    .restart local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v28    # "bcIntRefCount":I
    .restart local v43    # "bcFloatRefCount":I
    add-int/lit8 v35, v35, 0x1

    .line 302
    goto/16 :goto_9

    .line 298
    .end local v26    # "codes":[I
    .end local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v28    # "bcIntRefCount":I
    .end local v43    # "bcFloatRefCount":I
    .restart local v5    # "codes":[I
    .restart local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v13    # "bcIntRefCount":I
    .restart local v14    # "bcFloatRefCount":I
    :sswitch_e
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v28, v13

    move/from16 v43, v14

    const/4 v14, 0x2

    .end local v5    # "codes":[I
    .end local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v13    # "bcIntRefCount":I
    .end local v14    # "bcFloatRefCount":I
    .restart local v26    # "codes":[I
    .restart local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v28    # "bcIntRefCount":I
    .restart local v43    # "bcFloatRefCount":I
    add-int/lit8 v34, v34, 0x1

    .line 299
    goto/16 :goto_9

    .line 293
    .end local v26    # "codes":[I
    .end local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v28    # "bcIntRefCount":I
    .end local v43    # "bcFloatRefCount":I
    .restart local v5    # "codes":[I
    .restart local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v13    # "bcIntRefCount":I
    .restart local v14    # "bcFloatRefCount":I
    :sswitch_f
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v28, v13

    move/from16 v43, v14

    const/4 v14, 0x2

    .end local v5    # "codes":[I
    .end local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v13    # "bcIntRefCount":I
    .end local v14    # "bcFloatRefCount":I
    .restart local v26    # "codes":[I
    .restart local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v28    # "bcIntRefCount":I
    .restart local v43    # "bcFloatRefCount":I
    add-int/lit8 v33, v33, 0x1

    .line 294
    goto/16 :goto_9

    .line 285
    .end local v26    # "codes":[I
    .end local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v28    # "bcIntRefCount":I
    .end local v43    # "bcFloatRefCount":I
    .restart local v5    # "codes":[I
    .restart local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v13    # "bcIntRefCount":I
    .restart local v14    # "bcFloatRefCount":I
    :sswitch_10
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v28, v13

    move/from16 v43, v14

    const/4 v14, 0x2

    .end local v5    # "codes":[I
    .end local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v13    # "bcIntRefCount":I
    .end local v14    # "bcFloatRefCount":I
    .restart local v26    # "codes":[I
    .restart local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v28    # "bcIntRefCount":I
    .restart local v43    # "bcFloatRefCount":I
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v8, v8, 0x1

    .line 287
    add-int/lit8 v16, v16, 0x1

    .line 288
    goto/16 :goto_9

    .line 280
    .end local v26    # "codes":[I
    .end local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v28    # "bcIntRefCount":I
    .end local v43    # "bcFloatRefCount":I
    .restart local v5    # "codes":[I
    .restart local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v13    # "bcIntRefCount":I
    .restart local v14    # "bcFloatRefCount":I
    :sswitch_11
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v28, v13

    move/from16 v43, v14

    const/4 v14, 0x2

    .end local v5    # "codes":[I
    .end local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v13    # "bcIntRefCount":I
    .end local v14    # "bcFloatRefCount":I
    .restart local v26    # "codes":[I
    .restart local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v28    # "bcIntRefCount":I
    .restart local v43    # "bcFloatRefCount":I
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v8, v8, 0x1

    .line 282
    add-int/lit8 v16, v16, 0x1

    .line 283
    goto/16 :goto_9

    .line 271
    .end local v26    # "codes":[I
    .end local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v28    # "bcIntRefCount":I
    .end local v43    # "bcFloatRefCount":I
    .restart local v5    # "codes":[I
    .restart local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v13    # "bcIntRefCount":I
    .restart local v14    # "bcFloatRefCount":I
    :sswitch_12
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v28, v13

    move/from16 v43, v14

    const/4 v14, 0x2

    .end local v5    # "codes":[I
    .end local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v13    # "bcIntRefCount":I
    .end local v14    # "bcFloatRefCount":I
    .restart local v26    # "codes":[I
    .restart local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v28    # "bcIntRefCount":I
    .restart local v43    # "bcFloatRefCount":I
    add-int/lit8 v11, v11, 0x1

    .line 272
    goto/16 :goto_9

    .line 277
    .end local v26    # "codes":[I
    .end local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v28    # "bcIntRefCount":I
    .end local v43    # "bcFloatRefCount":I
    .restart local v5    # "codes":[I
    .restart local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v13    # "bcIntRefCount":I
    .restart local v14    # "bcFloatRefCount":I
    :sswitch_13
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v28, v13

    move/from16 v43, v14

    const/4 v14, 0x2

    .end local v5    # "codes":[I
    .end local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v13    # "bcIntRefCount":I
    .end local v14    # "bcFloatRefCount":I
    .restart local v26    # "codes":[I
    .restart local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v28    # "bcIntRefCount":I
    .restart local v43    # "bcFloatRefCount":I
    add-int/lit8 v16, v16, 0x1

    .line 278
    goto :goto_9

    .line 340
    .end local v26    # "codes":[I
    .end local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v28    # "bcIntRefCount":I
    .end local v43    # "bcFloatRefCount":I
    .restart local v5    # "codes":[I
    .restart local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v13    # "bcIntRefCount":I
    .restart local v14    # "bcFloatRefCount":I
    :sswitch_14
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v28, v13

    move/from16 v43, v14

    const/4 v14, 0x2

    .end local v5    # "codes":[I
    .end local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v13    # "bcIntRefCount":I
    .end local v14    # "bcFloatRefCount":I
    .restart local v26    # "codes":[I
    .restart local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v28    # "bcIntRefCount":I
    .restart local v43    # "bcFloatRefCount":I
    add-int/lit8 v11, v11, 0x1

    .line 341
    add-int/lit8 v9, v9, 0x1

    .line 342
    goto :goto_9

    .line 265
    .end local v26    # "codes":[I
    .end local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v28    # "bcIntRefCount":I
    .end local v43    # "bcFloatRefCount":I
    .restart local v5    # "codes":[I
    .restart local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v13    # "bcIntRefCount":I
    .restart local v14    # "bcFloatRefCount":I
    :sswitch_15
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v28, v13

    move/from16 v43, v14

    const/4 v14, 0x2

    .end local v5    # "codes":[I
    .end local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v13    # "bcIntRefCount":I
    .end local v14    # "bcFloatRefCount":I
    .restart local v26    # "codes":[I
    .restart local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v28    # "bcIntRefCount":I
    .restart local v43    # "bcFloatRefCount":I
    add-int/lit8 v15, v15, 0x1

    .line 266
    goto :goto_9

    .line 243
    .end local v26    # "codes":[I
    .end local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v28    # "bcIntRefCount":I
    .end local v43    # "bcFloatRefCount":I
    .restart local v5    # "codes":[I
    .restart local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v13    # "bcIntRefCount":I
    .restart local v14    # "bcFloatRefCount":I
    :sswitch_16
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v28, v13

    move/from16 v43, v14

    const/4 v14, 0x2

    .end local v5    # "codes":[I
    .end local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v13    # "bcIntRefCount":I
    .end local v14    # "bcFloatRefCount":I
    .restart local v26    # "codes":[I
    .restart local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v28    # "bcIntRefCount":I
    .restart local v43    # "bcFloatRefCount":I
    add-int/lit8 v31, v31, 0x1

    .line 244
    goto :goto_9

    .line 239
    .end local v26    # "codes":[I
    .end local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v28    # "bcIntRefCount":I
    .end local v43    # "bcFloatRefCount":I
    .restart local v5    # "codes":[I
    .restart local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v13    # "bcIntRefCount":I
    .restart local v14    # "bcFloatRefCount":I
    :sswitch_17
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v28, v13

    move/from16 v43, v14

    const/4 v14, 0x2

    .end local v5    # "codes":[I
    .end local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v13    # "bcIntRefCount":I
    .end local v14    # "bcFloatRefCount":I
    .restart local v26    # "codes":[I
    .restart local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v28    # "bcIntRefCount":I
    .restart local v43    # "bcFloatRefCount":I
    add-int/lit8 v10, v10, 0x1

    .line 240
    goto :goto_9

    .line 236
    .end local v26    # "codes":[I
    .end local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v28    # "bcIntRefCount":I
    .end local v43    # "bcFloatRefCount":I
    .restart local v5    # "codes":[I
    .restart local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v13    # "bcIntRefCount":I
    .restart local v14    # "bcFloatRefCount":I
    :sswitch_18
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v28, v13

    move/from16 v43, v14

    const/4 v14, 0x2

    .end local v5    # "codes":[I
    .end local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v13    # "bcIntRefCount":I
    .end local v14    # "bcFloatRefCount":I
    .restart local v26    # "codes":[I
    .restart local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v28    # "bcIntRefCount":I
    .restart local v43    # "bcFloatRefCount":I
    add-int/lit8 v9, v9, 0x1

    .line 237
    goto :goto_9

    .line 370
    :cond_5
    invoke-direct {v0, v4}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->startsWithIf(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 371
    add-int/lit8 v16, v16, 0x1

    move/from16 v13, v28

    goto :goto_9

    .line 370
    :cond_6
    move/from16 v13, v28

    goto :goto_9

    .line 369
    :cond_7
    :goto_8
    add-int/lit8 v11, v11, 0x1

    move/from16 v13, v28

    .line 231
    .end local v4    # "codePacked":I
    .end local v28    # "bcIntRefCount":I
    .restart local v13    # "bcIntRefCount":I
    :goto_9
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v26

    move-object/from16 v7, v27

    move/from16 v14, v43

    goto/16 :goto_4

    .end local v26    # "codes":[I
    .end local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v43    # "bcFloatRefCount":I
    .restart local v5    # "codes":[I
    .restart local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v14    # "bcFloatRefCount":I
    :cond_8
    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move/from16 v28, v13

    move/from16 v43, v14

    const/4 v14, 0x2

    .end local v5    # "codes":[I
    .end local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v13    # "bcIntRefCount":I
    .end local v14    # "bcFloatRefCount":I
    .restart local v26    # "codes":[I
    .restart local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v28    # "bcIntRefCount":I
    .restart local v43    # "bcFloatRefCount":I
    move v3, v14

    move/from16 v14, v43

    goto :goto_a

    .line 220
    .end local v19    # "code":B
    .end local v22    # "codeBytes":Ljava/io/ByteArrayOutputStream;
    .end local v23    # "methodFlag":J
    .end local v25    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v26    # "codes":[I
    .end local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v28    # "bcIntRefCount":I
    .end local v43    # "bcFloatRefCount":I
    .local v3, "methodFlag":J
    .local v5, "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v13    # "bcIntRefCount":I
    .restart local v14    # "bcFloatRefCount":I
    :cond_9
    move-wide/from16 v23, v3

    move-object/from16 v25, v5

    move-object/from16 v27, v7

    const/4 v3, 0x2

    .line 218
    .end local v3    # "methodFlag":J
    .end local v5    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v25    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :goto_a
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v20

    move/from16 v3, v21

    move-object/from16 v5, v25

    move-object/from16 v7, v27

    goto/16 :goto_1

    .end local v20    # "methodFlags":[[J
    .end local v21    # "numberOfMethods":I
    .end local v25    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v3, "numberOfMethods":I
    .local v4, "methodFlags":[[J
    .restart local v5    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_a
    move/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v25, v5

    move-object/from16 v27, v7

    const/4 v3, 0x2

    .line 215
    .end local v3    # "numberOfMethods":I
    .end local v4    # "methodFlags":[[J
    .end local v5    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v12    # "m":I
    .restart local v20    # "methodFlags":[[J
    .restart local v25    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v17

    move/from16 v12, v18

    goto/16 :goto_0

    .end local v17    # "classCount":I
    .end local v18    # "bcDoubleRefCount":I
    .end local v20    # "methodFlags":[[J
    .end local v25    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v3, "classCount":I
    .restart local v4    # "methodFlags":[[J
    .restart local v5    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v12, "bcDoubleRefCount":I
    :cond_b
    move/from16 v17, v3

    move-object/from16 v20, v4

    move-object/from16 v25, v5

    move-object/from16 v27, v7

    move/from16 v18, v12

    move/from16 v19, v15

    .line 379
    .end local v2    # "c":I
    .end local v3    # "classCount":I
    .end local v4    # "methodFlags":[[J
    .end local v5    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v7    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v12    # "bcDoubleRefCount":I
    .end local v15    # "bcLongRefCount":I
    .restart local v17    # "classCount":I
    .restart local v18    # "bcDoubleRefCount":I
    .local v19, "bcLongRefCount":I
    .restart local v20    # "methodFlags":[[J
    .restart local v25    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v27    # "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    const-string v2, "bc_case_count"

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v2, v1, v3, v8}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcCaseCount:[I

    .line 380
    const/4 v2, 0x0

    .line 381
    .local v2, "bcCaseValueCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcCaseCount:[I

    array-length v4, v4

    if-ge v3, v4, :cond_d

    .line 382
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 383
    .local v4, "isTableSwitch":Z
    if-eqz v4, :cond_c

    .line 384
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 386
    :cond_c
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcCaseCount:[I

    aget v5, v5, v3

    add-int/2addr v2, v5

    .line 381
    .end local v4    # "isTableSwitch":Z
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 389
    .end local v3    # "i":I
    :cond_d
    const-string v3, "bc_case_value"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcCaseValue:[I

    .line 393
    const/4 v3, 0x0

    move/from16 v12, v16

    .end local v16    # "bcLabelCount":I
    .local v3, "index":I
    .local v12, "bcLabelCount":I
    :goto_d
    if-ge v3, v8, :cond_e

    .line 394
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcCaseCount:[I

    aget v4, v4, v3

    add-int/2addr v12, v4

    .line 393
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 396
    .end local v3    # "index":I
    :cond_e
    const-string v3, "bc_byte"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v3, v1, v4, v9}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcByte:[I

    .line 397
    const-string v3, "bc_short"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v3, v1, v4, v10}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcShort:[I

    .line 398
    const-string v3, "bc_local"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v3, v1, v4, v11}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcLocal:[I

    .line 399
    const-string v3, "bc_label"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->BRANCH5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v3, v1, v4, v12}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcLabel:[I

    .line 400
    const-string v3, "bc_intref"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v3, v1, v4, v13}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcIntRef:[I

    .line 401
    const-string v3, "bc_floatref"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v3, v1, v4, v14}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcFloatRef:[I

    .line 402
    const-string v3, "bc_longref"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v15, v19

    .end local v19    # "bcLongRefCount":I
    .restart local v15    # "bcLongRefCount":I
    invoke-virtual {v0, v3, v1, v4, v15}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcLongRef:[I

    .line 403
    const-string v3, "bc_doubleref"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v5, v18

    .end local v18    # "bcDoubleRefCount":I
    .local v5, "bcDoubleRefCount":I
    invoke-virtual {v0, v3, v1, v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcDoubleRef:[I

    .line 404
    const-string v3, "bc_stringref"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v7, v31

    .end local v31    # "bcStringRefCount":I
    .local v7, "bcStringRefCount":I
    invoke-virtual {v0, v3, v1, v4, v7}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcStringRef:[I

    .line 405
    const-string v3, "bc_classref"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v16, v2

    move/from16 v2, v32

    .end local v32    # "bcClassRefCount":I
    .local v2, "bcClassRefCount":I
    .local v16, "bcCaseValueCount":I
    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcClassRef:[I

    .line 406
    const-string v3, "bc_fieldref"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v18, v2

    move/from16 v2, v33

    .end local v33    # "bcFieldRefCount":I
    .local v2, "bcFieldRefCount":I
    .local v18, "bcClassRefCount":I
    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcFieldRef:[I

    .line 407
    const-string v3, "bc_methodref"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v19, v2

    move/from16 v2, v34

    .end local v34    # "bcMethodRefCount":I
    .local v2, "bcMethodRefCount":I
    .local v19, "bcFieldRefCount":I
    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcMethodRef:[I

    .line 408
    const-string v3, "bc_imethodref"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->DELTA5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v21, v2

    move/from16 v2, v35

    .end local v35    # "bcIMethodRefCount":I
    .local v2, "bcIMethodRefCount":I
    .local v21, "bcMethodRefCount":I
    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcIMethodRef:[I

    .line 409
    const-string v3, "bc_thisfield"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v22, v2

    move/from16 v2, v36

    .end local v36    # "bcThisFieldCount":I
    .local v2, "bcThisFieldCount":I
    .local v22, "bcIMethodRefCount":I
    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcThisField:[I

    .line 410
    const-string v3, "bc_superfield"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v23, v2

    move/from16 v2, v37

    .end local v37    # "bcSuperFieldCount":I
    .local v2, "bcSuperFieldCount":I
    .local v23, "bcThisFieldCount":I
    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcSuperField:[I

    .line 411
    const-string v3, "bc_thismethod"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v24, v2

    move/from16 v2, v38

    .end local v38    # "bcThisMethodCount":I
    .local v2, "bcThisMethodCount":I
    .local v24, "bcSuperFieldCount":I
    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcThisMethod:[I

    .line 412
    const-string v3, "bc_supermethod"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v26, v2

    move/from16 v2, v39

    .end local v39    # "bcSuperMethodCount":I
    .local v2, "bcSuperMethodCount":I
    .local v26, "bcThisMethodCount":I
    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcSuperMethod:[I

    .line 413
    const-string v3, "bc_initref"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v28, v2

    move/from16 v2, v40

    .end local v40    # "bcInitRefCount":I
    .local v2, "bcInitRefCount":I
    .local v28, "bcSuperMethodCount":I
    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcInitRef:[I

    .line 414
    const-string v3, "bc_escref"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v29, v2

    move/from16 v2, v42

    .end local v42    # "bcEscRefCount":I
    .local v2, "bcEscRefCount":I
    .local v29, "bcInitRefCount":I
    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcEscRef:[I

    .line 415
    const-string v3, "bc_escrefsize"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcEscRefSize:[I

    .line 416
    const-string v3, "bc_escsize"

    sget-object v4, Lorg/apache/commons/compress/harmony/pack200/Codec;->UNSIGNED5:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    move/from16 v31, v2

    move/from16 v2, v41

    .end local v41    # "bcEscCount":I
    .local v2, "bcEscCount":I
    .local v31, "bcEscRefCount":I
    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcEscSize:[I

    .line 417
    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcEscSize:[I

    move/from16 v32, v2

    .end local v2    # "bcEscCount":I
    .local v32, "bcEscCount":I
    const-string v2, "bc_escbyte"

    invoke-virtual {v0, v2, v1, v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcEscByte:[[I

    .line 418
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_18
        0x11 -> :sswitch_17
        0x12 -> :sswitch_16
        0x13 -> :sswitch_16
        0x14 -> :sswitch_15
        0x84 -> :sswitch_14
        0xa7 -> :sswitch_13
        0xa8 -> :sswitch_13
        0xa9 -> :sswitch_12
        0xaa -> :sswitch_11
        0xab -> :sswitch_10
        0xb2 -> :sswitch_f
        0xb3 -> :sswitch_f
        0xb4 -> :sswitch_f
        0xb5 -> :sswitch_f
        0xb6 -> :sswitch_e
        0xb7 -> :sswitch_e
        0xb8 -> :sswitch_e
        0xb9 -> :sswitch_d
        0xbb -> :sswitch_c
        0xbc -> :sswitch_18
        0xbd -> :sswitch_c
        0xc0 -> :sswitch_c
        0xc1 -> :sswitch_c
        0xc4 -> :sswitch_b
        0xc5 -> :sswitch_a
        0xc8 -> :sswitch_13
        0xc9 -> :sswitch_13
        0xca -> :sswitch_9
        0xcb -> :sswitch_9
        0xcc -> :sswitch_9
        0xcd -> :sswitch_9
        0xce -> :sswitch_8
        0xcf -> :sswitch_8
        0xd0 -> :sswitch_8
        0xd1 -> :sswitch_9
        0xd2 -> :sswitch_9
        0xd3 -> :sswitch_9
        0xd4 -> :sswitch_9
        0xd5 -> :sswitch_8
        0xd6 -> :sswitch_8
        0xd7 -> :sswitch_8
        0xd8 -> :sswitch_7
        0xd9 -> :sswitch_7
        0xda -> :sswitch_7
        0xdb -> :sswitch_7
        0xdc -> :sswitch_6
        0xdd -> :sswitch_6
        0xde -> :sswitch_6
        0xdf -> :sswitch_7
        0xe0 -> :sswitch_7
        0xe1 -> :sswitch_7
        0xe2 -> :sswitch_7
        0xe3 -> :sswitch_6
        0xe4 -> :sswitch_6
        0xe5 -> :sswitch_6
        0xe6 -> :sswitch_5
        0xe7 -> :sswitch_5
        0xe8 -> :sswitch_5
        0xe9 -> :sswitch_c
        0xea -> :sswitch_4
        0xeb -> :sswitch_3
        0xec -> :sswitch_c
        0xed -> :sswitch_4
        0xee -> :sswitch_3
        0xef -> :sswitch_2
        0xfd -> :sswitch_1
        0xfe -> :sswitch_0
    .end sparse-switch
.end method

.method public unpack()V
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getClassCount()I

    move-result v1

    .line 427
    .local v1, "classCount":I
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getMethodFlags()[[J

    move-result-object v2

    .line 428
    .local v2, "methodFlags":[[J
    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getCodeMaxNALocals()[I

    move-result-object v3

    .line 429
    .local v3, "codeMaxNALocals":[I
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getCodeMaxStack()[I

    move-result-object v4

    .line 430
    .local v4, "codeMaxStack":[I
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getMethodAttributes()[[Ljava/util/ArrayList;

    move-result-object v5

    .line 431
    .local v5, "methodAttributes":[[Ljava/util/ArrayList;, "[[Ljava/util/ArrayList<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    iget-object v6, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getMethodDescr()[[Ljava/lang/String;

    move-result-object v6

    .line 433
    .local v6, "methodDescr":[[Ljava/lang/String;
    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getAttrDefinitionBands()Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/compress/harmony/unpack200/AttrDefinitionBands;->getAttributeDefinitionMap()Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;

    move-result-object v7

    .line 435
    .local v7, "attributeDefinitionMap":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;
    const-string v8, "ACC_ABSTRACT"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v8

    .line 436
    .local v8, "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    const-string v10, "ACC_NATIVE"

    invoke-virtual {v7, v10, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v10

    .line 437
    .local v10, "nativeModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    const-string v11, "ACC_STATIC"

    invoke-virtual {v7, v11, v9}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;->getAttributeLayout(Ljava/lang/String;I)Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;

    move-result-object v9

    .line 439
    .local v9, "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->wideByteCodes:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [I

    .line 440
    .local v11, "wideByteCodeArray":[I
    const/4 v12, 0x0

    .local v12, "index":I
    :goto_0
    array-length v13, v11

    if-ge v12, v13, :cond_0

    .line 441
    iget-object v13, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->wideByteCodes:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v11, v12

    .line 440
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 443
    .end local v12    # "index":I
    :cond_0
    new-instance v34, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;

    move-object/from16 v12, v34

    iget-object v13, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcCaseCount:[I

    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcCaseValue:[I

    iget-object v15, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcByte:[I

    move-object/from16 v35, v7

    .end local v7    # "attributeDefinitionMap":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;
    .local v35, "attributeDefinitionMap":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayoutMap;
    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcShort:[I

    move-object/from16 v16, v7

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcLocal:[I

    move-object/from16 v17, v7

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcLabel:[I

    move-object/from16 v18, v7

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcIntRef:[I

    move-object/from16 v19, v7

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcFloatRef:[I

    move-object/from16 v20, v7

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcLongRef:[I

    move-object/from16 v21, v7

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcDoubleRef:[I

    move-object/from16 v22, v7

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcStringRef:[I

    move-object/from16 v23, v7

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcClassRef:[I

    move-object/from16 v24, v7

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcFieldRef:[I

    move-object/from16 v25, v7

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcMethodRef:[I

    move-object/from16 v26, v7

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcIMethodRef:[I

    move-object/from16 v27, v7

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcThisField:[I

    move-object/from16 v28, v7

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcSuperField:[I

    move-object/from16 v29, v7

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcThisMethod:[I

    move-object/from16 v30, v7

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcSuperMethod:[I

    move-object/from16 v31, v7

    iget-object v7, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->bcInitRef:[I

    move-object/from16 v32, v7

    move-object/from16 v33, v11

    invoke-direct/range {v12 .. v33}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;-><init>([I[I[I[I[I[I[I[I[I[I[I[I[I[I[I[I[I[I[I[I[I)V

    move-object/from16 v7, v34

    .line 446
    .local v7, "operandManager":Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;
    iget-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v7, v12}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->setSegment(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V

    .line 448
    const/4 v12, 0x0

    .line 449
    .local v12, "i":I
    iget-object v13, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v13}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getOrderedCodeAttributes()Ljava/util/ArrayList;

    move-result-object v13

    .line 450
    .local v13, "orderedCodeAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;>;"
    const/4 v14, 0x0

    .line 453
    .local v14, "codeAttributeIndex":I
    iget-object v15, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    move-result-object v15

    invoke-virtual {v15}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getCodeHandlerCount()[I

    move-result-object v15

    .line 454
    .local v15, "handlerCount":[I
    move-object/from16 v16, v11

    .end local v11    # "wideByteCodeArray":[I
    .local v16, "wideByteCodeArray":[I
    iget-object v11, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getCodeHandlerStartP()[[I

    move-result-object v11

    .line 455
    .local v11, "handlerStartPCs":[[I
    move/from16 v17, v12

    .end local v12    # "i":I
    .local v17, "i":I
    iget-object v12, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    move-result-object v12

    invoke-virtual {v12}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getCodeHandlerEndPO()[[I

    move-result-object v12

    .line 456
    .local v12, "handlerEndPCs":[[I
    move/from16 v18, v14

    .end local v14    # "codeAttributeIndex":I
    .local v18, "codeAttributeIndex":I
    iget-object v14, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v14}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getCodeHandlerCatchPO()[[I

    move-result-object v14

    .line 457
    .local v14, "handlerCatchPCs":[[I
    move-object/from16 v19, v13

    .end local v13    # "orderedCodeAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;>;"
    .local v19, "orderedCodeAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;>;"
    iget-object v13, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v13}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getCodeHandlerClassRCN()[[I

    move-result-object v13

    .line 459
    .local v13, "handlerClassTypes":[[I
    move-object/from16 v20, v5

    .end local v5    # "methodAttributes":[[Ljava/util/ArrayList;, "[[Ljava/util/ArrayList<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .local v20, "methodAttributes":[[Ljava/util/ArrayList;, "[[Ljava/util/ArrayList<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getOptions()Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/SegmentOptions;->hasAllCodeFlags()Z

    move-result v5

    .line 460
    .local v5, "allCodeHasFlags":Z
    move/from16 v21, v5

    .end local v5    # "allCodeHasFlags":Z
    .local v21, "allCodeHasFlags":Z
    iget-object v5, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getCodeHasAttributes()[Z

    move-result-object v5

    .line 462
    .local v5, "codeHasFlags":[Z
    const/16 v22, 0x0

    move/from16 v47, v22

    move-object/from16 v22, v5

    move/from16 v5, v47

    .local v5, "c":I
    .local v22, "codeHasFlags":[Z
    :goto_1
    if-ge v5, v1, :cond_d

    .line 463
    move/from16 v23, v1

    .end local v1    # "classCount":I
    .local v23, "classCount":I
    aget-object v1, v2, v5

    array-length v1, v1

    .line 464
    .local v1, "numberOfMethods":I
    const/16 v24, 0x0

    move-object/from16 v25, v14

    move/from16 v14, v17

    move/from16 v43, v18

    move/from16 v47, v24

    move-object/from16 v24, v12

    move/from16 v12, v47

    .end local v17    # "i":I
    .end local v18    # "codeAttributeIndex":I
    .local v12, "m":I
    .local v14, "i":I
    .local v24, "handlerEndPCs":[[I
    .local v25, "handlerCatchPCs":[[I
    .local v43, "codeAttributeIndex":I
    :goto_2
    if-ge v12, v1, :cond_c

    .line 465
    aget-object v17, v2, v5

    move/from16 v27, v1

    move-object/from16 v26, v2

    .end local v1    # "numberOfMethods":I
    .end local v2    # "methodFlags":[[J
    .local v26, "methodFlags":[[J
    .local v27, "numberOfMethods":I
    aget-wide v1, v17, v12

    .line 466
    .local v1, "methodFlag":J
    invoke-virtual {v8, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v17

    if-nez v17, :cond_b

    invoke-virtual {v10, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v17

    if-nez v17, :cond_b

    .line 467
    aget v17, v4, v14

    .line 468
    .local v17, "maxStack":I
    aget v18, v3, v14

    .line 469
    .local v18, "maxLocal":I
    invoke-virtual {v9, v1, v2}, Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;->matches(J)Z

    move-result v28

    if-nez v28, :cond_1

    .line 470
    add-int/lit8 v18, v18, 0x1

    .line 473
    :cond_1
    aget-object v28, v6, v5

    aget-object v28, v28, v12

    invoke-static/range {v28 .. v28}, Lorg/apache/commons/compress/harmony/unpack200/SegmentUtils;->countInvokeInterfaceArgs(Ljava/lang/String;)I

    move-result v28

    add-int v18, v18, v28

    .line 474
    move-wide/from16 v28, v1

    .end local v1    # "methodFlag":J
    .local v28, "methodFlag":J
    iget-object v1, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpClass()[Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "cpClass":[Ljava/lang/String;
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassThisInts()[I

    move-result-object v2

    aget v2, v2, v5

    aget-object v2, v1, v2

    invoke-virtual {v7, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->setCurrentClass(Ljava/lang/String;)V

    .line 476
    iget-object v2, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getClassBands()Lorg/apache/commons/compress/harmony/unpack200/ClassBands;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/unpack200/ClassBands;->getClassSuperInts()[I

    move-result-object v2

    aget v2, v2, v5

    aget-object v2, v1, v2

    invoke-virtual {v7, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;->setSuperClass(Ljava/lang/String;)V

    .line 477
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v2, "exceptionTable":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;>;"
    if-eqz v15, :cond_4

    .line 479
    const/16 v30, 0x0

    move-object/from16 v31, v1

    move/from16 v1, v30

    .local v1, "j":I
    .local v31, "cpClass":[Ljava/lang/String;
    :goto_3
    move-object/from16 v30, v3

    .end local v3    # "codeMaxNALocals":[I
    .local v30, "codeMaxNALocals":[I
    aget v3, v15, v14

    if-ge v1, v3, :cond_3

    .line 480
    aget-object v3, v13, v14

    aget v3, v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 481
    .local v3, "handlerClass":I
    const/16 v32, 0x0

    .line 482
    .local v32, "cpHandlerClass":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    move-object/from16 v33, v4

    .end local v4    # "codeMaxStack":[I
    .local v33, "codeMaxStack":[I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 486
    iget-object v4, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v32

    move-object/from16 v4, v32

    goto :goto_4

    .line 482
    :cond_2
    move-object/from16 v4, v32

    .line 488
    .end local v32    # "cpHandlerClass":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    .local v4, "cpHandlerClass":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    :goto_4
    move/from16 v32, v3

    .end local v3    # "handlerClass":I
    .local v32, "handlerClass":I
    new-instance v3, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;

    aget-object v34, v11, v14

    move-object/from16 v44, v6

    .end local v6    # "methodDescr":[[Ljava/lang/String;
    .local v44, "methodDescr":[[Ljava/lang/String;
    aget v6, v34, v1

    aget-object v34, v24, v14

    move-object/from16 v45, v8

    .end local v8    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v45, "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    aget v8, v34, v1

    aget-object v34, v25, v14

    move-object/from16 v46, v9

    .end local v9    # "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v46, "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    aget v9, v34, v1

    invoke-direct {v3, v6, v8, v9, v4}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;-><init>(IIILorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;)V

    .line 490
    .local v3, "entry":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    .end local v3    # "entry":Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;
    .end local v4    # "cpHandlerClass":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    .end local v32    # "handlerClass":I
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v30

    move-object/from16 v4, v33

    move-object/from16 v6, v44

    move-object/from16 v8, v45

    move-object/from16 v9, v46

    goto :goto_3

    .end local v33    # "codeMaxStack":[I
    .end local v44    # "methodDescr":[[Ljava/lang/String;
    .end local v45    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v46    # "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v4, "codeMaxStack":[I
    .restart local v6    # "methodDescr":[[Ljava/lang/String;
    .restart local v8    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v9    # "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_3
    move-object/from16 v33, v4

    move-object/from16 v44, v6

    move-object/from16 v45, v8

    move-object/from16 v46, v9

    .end local v4    # "codeMaxStack":[I
    .end local v6    # "methodDescr":[[Ljava/lang/String;
    .end local v8    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v9    # "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v33    # "codeMaxStack":[I
    .restart local v44    # "methodDescr":[[Ljava/lang/String;
    .restart local v45    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v46    # "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    goto :goto_5

    .line 478
    .end local v30    # "codeMaxNALocals":[I
    .end local v31    # "cpClass":[Ljava/lang/String;
    .end local v33    # "codeMaxStack":[I
    .end local v44    # "methodDescr":[[Ljava/lang/String;
    .end local v45    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v46    # "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v1, "cpClass":[Ljava/lang/String;
    .local v3, "codeMaxNALocals":[I
    .restart local v4    # "codeMaxStack":[I
    .restart local v6    # "methodDescr":[[Ljava/lang/String;
    .restart local v8    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v9    # "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_4
    move-object/from16 v31, v1

    move-object/from16 v30, v3

    move-object/from16 v33, v4

    move-object/from16 v44, v6

    move-object/from16 v45, v8

    move-object/from16 v46, v9

    .line 493
    .end local v1    # "cpClass":[Ljava/lang/String;
    .end local v3    # "codeMaxNALocals":[I
    .end local v4    # "codeMaxStack":[I
    .end local v6    # "methodDescr":[[Ljava/lang/String;
    .end local v8    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v9    # "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v30    # "codeMaxNALocals":[I
    .restart local v31    # "cpClass":[Ljava/lang/String;
    .restart local v33    # "codeMaxStack":[I
    .restart local v44    # "methodDescr":[[Ljava/lang/String;
    .restart local v45    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v46    # "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :goto_5
    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;

    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->methodByteCodePacked:[[[B

    aget-object v3, v3, v5

    aget-object v39, v3, v12

    iget-object v3, v0, Lorg/apache/commons/compress/harmony/unpack200/BcBands;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    move-object/from16 v36, v1

    move/from16 v37, v17

    move/from16 v38, v18

    move-object/from16 v40, v3

    move-object/from16 v41, v7

    move-object/from16 v42, v2

    invoke-direct/range {v36 .. v42}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;-><init>(II[BLorg/apache/commons/compress/harmony/unpack200/Segment;Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;Ljava/util/List;)V

    .line 494
    .local v1, "codeAttr":Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;
    aget-object v3, v20, v5

    aget-object v3, v3, v12

    .line 496
    .local v3, "methodAttributesList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    const/4 v4, 0x0

    .line 497
    .local v4, "indexForCodeAttr":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 498
    .local v8, "attribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    instance-of v9, v8, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;

    if-eqz v9, :cond_6

    move-object v9, v8

    check-cast v9, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;

    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/NewAttribute;->getLayoutIndex()I

    move-result v9

    const/16 v0, 0xf

    if-lt v9, v0, :cond_5

    .line 499
    goto :goto_7

    .line 501
    :cond_5
    nop

    .end local v8    # "attribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    add-int/lit8 v4, v4, 0x1

    .line 502
    move-object/from16 v0, p0

    goto :goto_6

    .line 503
    :cond_6
    :goto_7
    invoke-interface {v3, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 504
    iget-object v0, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->byteCodeOffsets:Ljava/util/List;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->renumber(Ljava/util/List;)V

    .line 506
    if-eqz v21, :cond_7

    .line 507
    move-object/from16 v0, v19

    .end local v19    # "orderedCodeAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;>;"
    .local v0, "orderedCodeAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;>;"
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .local v6, "currentAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    goto :goto_8

    .line 508
    .end local v0    # "orderedCodeAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;>;"
    .end local v6    # "currentAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .restart local v19    # "orderedCodeAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;>;"
    :cond_7
    move-object/from16 v0, v19

    .end local v19    # "orderedCodeAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;>;"
    .restart local v0    # "orderedCodeAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;>;"
    aget-boolean v6, v22, v14

    if-eqz v6, :cond_8

    .line 509
    move/from16 v6, v43

    .end local v43    # "codeAttributeIndex":I
    .local v6, "codeAttributeIndex":I
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 510
    .local v8, "currentAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    add-int/lit8 v43, v6, 0x1

    move-object v6, v8

    .end local v6    # "codeAttributeIndex":I
    .restart local v43    # "codeAttributeIndex":I
    goto :goto_8

    .line 512
    .end local v8    # "currentAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    :cond_8
    move/from16 v6, v43

    .end local v43    # "codeAttributeIndex":I
    .restart local v6    # "codeAttributeIndex":I
    sget-object v8, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v6, v8

    .line 514
    .local v6, "currentAttributes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;"
    .restart local v43    # "codeAttributeIndex":I
    :goto_8
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;

    .line 515
    .local v9, "currentAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    invoke-virtual {v1, v9}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->addAttribute(Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;)V

    .line 517
    invoke-virtual {v9}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;->hasBCIRenumbering()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 518
    move-object/from16 v19, v0

    .end local v0    # "orderedCodeAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;>;"
    .restart local v19    # "orderedCodeAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;>;"
    move-object v0, v9

    check-cast v0, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;

    move-object/from16 v32, v2

    .end local v2    # "exceptionTable":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;>;"
    .local v32, "exceptionTable":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;>;"
    iget-object v2, v1, Lorg/apache/commons/compress/harmony/unpack200/bytecode/CodeAttribute;->byteCodeOffsets:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/BCIRenumberedAttribute;->renumber(Ljava/util/List;)V

    goto :goto_a

    .line 517
    .end local v19    # "orderedCodeAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;>;"
    .end local v32    # "exceptionTable":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;>;"
    .restart local v0    # "orderedCodeAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;>;"
    .restart local v2    # "exceptionTable":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;>;"
    :cond_9
    move-object/from16 v19, v0

    move-object/from16 v32, v2

    .line 520
    .end local v0    # "orderedCodeAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;>;"
    .end local v2    # "exceptionTable":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;>;"
    .end local v9    # "currentAttribute":Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;
    .restart local v19    # "orderedCodeAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;>;"
    .restart local v32    # "exceptionTable":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;>;"
    :goto_a
    move-object/from16 v0, v19

    move-object/from16 v2, v32

    goto :goto_9

    .line 521
    .end local v19    # "orderedCodeAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;>;"
    .end local v32    # "exceptionTable":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;>;"
    .restart local v0    # "orderedCodeAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;>;"
    .restart local v2    # "exceptionTable":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;>;"
    :cond_a
    move-object/from16 v19, v0

    move-object/from16 v32, v2

    .end local v0    # "orderedCodeAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;>;"
    .end local v2    # "exceptionTable":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;>;"
    .restart local v19    # "orderedCodeAttributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/Attribute;>;>;"
    .restart local v32    # "exceptionTable":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;>;"
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 466
    .end local v17    # "maxStack":I
    .end local v18    # "maxLocal":I
    .end local v28    # "methodFlag":J
    .end local v30    # "codeMaxNALocals":[I
    .end local v31    # "cpClass":[Ljava/lang/String;
    .end local v32    # "exceptionTable":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/unpack200/bytecode/ExceptionTableEntry;>;"
    .end local v33    # "codeMaxStack":[I
    .end local v44    # "methodDescr":[[Ljava/lang/String;
    .end local v45    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v46    # "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v1, "methodFlag":J
    .local v3, "codeMaxNALocals":[I
    .local v4, "codeMaxStack":[I
    .local v6, "methodDescr":[[Ljava/lang/String;
    .local v8, "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v9, "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_b
    move-wide/from16 v28, v1

    move-object/from16 v30, v3

    move-object/from16 v33, v4

    move-object/from16 v44, v6

    move-object/from16 v45, v8

    move-object/from16 v46, v9

    move/from16 v6, v43

    .line 464
    .end local v1    # "methodFlag":J
    .end local v3    # "codeMaxNALocals":[I
    .end local v4    # "codeMaxStack":[I
    .end local v8    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v9    # "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v43    # "codeAttributeIndex":I
    .local v6, "codeAttributeIndex":I
    .restart local v30    # "codeMaxNALocals":[I
    .restart local v33    # "codeMaxStack":[I
    .restart local v44    # "methodDescr":[[Ljava/lang/String;
    .restart local v45    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v46    # "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    move/from16 v43, v6

    .end local v6    # "codeAttributeIndex":I
    .restart local v43    # "codeAttributeIndex":I
    :goto_b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v26

    move/from16 v1, v27

    move-object/from16 v3, v30

    move-object/from16 v4, v33

    move-object/from16 v6, v44

    move-object/from16 v8, v45

    move-object/from16 v9, v46

    goto/16 :goto_2

    .end local v26    # "methodFlags":[[J
    .end local v27    # "numberOfMethods":I
    .end local v30    # "codeMaxNALocals":[I
    .end local v33    # "codeMaxStack":[I
    .end local v44    # "methodDescr":[[Ljava/lang/String;
    .end local v45    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v46    # "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v1, "numberOfMethods":I
    .local v2, "methodFlags":[[J
    .restart local v3    # "codeMaxNALocals":[I
    .restart local v4    # "codeMaxStack":[I
    .local v6, "methodDescr":[[Ljava/lang/String;
    .restart local v8    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v9    # "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    :cond_c
    move/from16 v27, v1

    move-object/from16 v26, v2

    move-object/from16 v30, v3

    move-object/from16 v33, v4

    move-object/from16 v44, v6

    move-object/from16 v45, v8

    move-object/from16 v46, v9

    move/from16 v6, v43

    .line 462
    .end local v1    # "numberOfMethods":I
    .end local v2    # "methodFlags":[[J
    .end local v3    # "codeMaxNALocals":[I
    .end local v4    # "codeMaxStack":[I
    .end local v8    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v9    # "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v12    # "m":I
    .end local v43    # "codeAttributeIndex":I
    .local v6, "codeAttributeIndex":I
    .restart local v26    # "methodFlags":[[J
    .restart local v30    # "codeMaxNALocals":[I
    .restart local v33    # "codeMaxStack":[I
    .restart local v44    # "methodDescr":[[Ljava/lang/String;
    .restart local v45    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v46    # "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v18, v6

    move/from16 v17, v14

    move/from16 v1, v23

    move-object/from16 v12, v24

    move-object/from16 v14, v25

    move-object/from16 v6, v44

    goto/16 :goto_1

    .line 525
    .end local v5    # "c":I
    .end local v23    # "classCount":I
    .end local v24    # "handlerEndPCs":[[I
    .end local v25    # "handlerCatchPCs":[[I
    .end local v26    # "methodFlags":[[J
    .end local v30    # "codeMaxNALocals":[I
    .end local v33    # "codeMaxStack":[I
    .end local v44    # "methodDescr":[[Ljava/lang/String;
    .end local v45    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .end local v46    # "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v1, "classCount":I
    .restart local v2    # "methodFlags":[[J
    .restart local v3    # "codeMaxNALocals":[I
    .restart local v4    # "codeMaxStack":[I
    .local v6, "methodDescr":[[Ljava/lang/String;
    .restart local v8    # "abstractModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .restart local v9    # "staticModifier":Lorg/apache/commons/compress/harmony/unpack200/AttributeLayout;
    .local v12, "handlerEndPCs":[[I
    .local v14, "handlerCatchPCs":[[I
    .local v17, "i":I
    .local v18, "codeAttributeIndex":I
    :cond_d
    return-void
.end method
