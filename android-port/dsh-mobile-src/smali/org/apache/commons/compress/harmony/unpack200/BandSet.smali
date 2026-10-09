.class public abstract Lorg/apache/commons/compress/harmony/unpack200/BandSet;
.super Ljava/lang/Object;
.source "BandSet.java"


# instance fields
.field protected header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

.field protected segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/Segment;)V
    .locals 1
    .param p1, "segment"    # Lorg/apache/commons/compress/harmony/unpack200/Segment;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    .line 52
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getSegmentHeader()Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    .line 53
    return-void
.end method

.method static synthetic lambda$getReferences$0([Ljava/lang/String;[II)Ljava/lang/String;
    .locals 1
    .param p0, "reference"    # [Ljava/lang/String;
    .param p1, "ints"    # [I
    .param p2, "i"    # I

    .line 158
    aget v0, p1, p2

    aget-object v0, p0, v0

    return-object v0
.end method


# virtual methods
.method public decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I
    .locals 21
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 67
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    if-ltz v3, :cond_c

    .line 74
    move-object/from16 v4, p3

    .line 75
    .local v4, "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getB()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    if-nez v3, :cond_0

    goto/16 :goto_7

    .line 78
    :cond_0
    invoke-virtual {v2, v6, v1}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object v5

    .line 79
    .local v5, "getFirst":[I
    array-length v7, v5

    if-nez v7, :cond_1

    .line 80
    return-object v5

    .line 82
    :cond_1
    const/4 v7, 0x0

    aget v8, v5, v7

    .line 84
    .local v8, "first":I
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isSigned()Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_2

    const/16 v9, -0x100

    if-lt v8, v9, :cond_2

    if-gt v8, v10, :cond_2

    .line 86
    rsub-int/lit8 v9, v8, -0x1

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getBandHeadersInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v9, v11, v2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v4

    .line 87
    invoke-virtual {v4, v3, v1}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object v9

    .local v9, "band":[I
    goto :goto_0

    .line 88
    .end local v9    # "band":[I
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isSigned()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getL()I

    move-result v9

    if-lt v8, v9, :cond_3

    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getL()I

    move-result v9

    add-int/lit16 v9, v9, 0xff

    if-gt v8, v9, :cond_3

    .line 90
    invoke-virtual/range {p3 .. p3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getL()I

    move-result v9

    sub-int v9, v8, v9

    iget-object v11, v0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->header:Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;

    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/unpack200/SegmentHeader;->getBandHeadersInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v9, v11, v2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v4

    .line 91
    invoke-virtual {v4, v3, v1}, Lorg/apache/commons/compress/harmony/pack200/Codec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object v9

    .restart local v9    # "band":[I
    goto :goto_0

    .line 94
    .end local v9    # "band":[I
    :cond_3
    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v2, v9, v1, v8}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->decodeInts(ILjava/io/InputStream;I)[I

    move-result-object v9

    .line 101
    .restart local v9    # "band":[I
    :goto_0
    instance-of v11, v4, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    if-eqz v11, :cond_a

    .line 102
    move-object v11, v4

    check-cast v11, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    .line 103
    .local v11, "popCodec":Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;
    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getFavoured()[I

    move-result-object v12

    invoke-virtual {v12}, [I->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [I

    .line 104
    .local v12, "favoured":[I
    invoke-static {v12}, Ljava/util/Arrays;->sort([I)V

    .line 105
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    array-length v14, v9

    if-ge v13, v14, :cond_9

    .line 106
    aget v14, v9, v13

    invoke-static {v12, v14}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v14

    if-le v14, v10, :cond_4

    move v14, v6

    goto :goto_2

    :cond_4
    move v14, v7

    .line 107
    .local v14, "favouredValue":Z
    :goto_2
    if-eqz v14, :cond_5

    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getFavouredCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v15

    goto :goto_3

    :cond_5
    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getUnfavouredCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v15

    .line 108
    .local v15, "theCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :goto_3
    instance-of v6, v15, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    if-eqz v6, :cond_7

    move-object v6, v15

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isDelta()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 109
    move-object v6, v15

    check-cast v6, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 110
    .local v6, "bhsd":Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    move/from16 v16, v8

    .end local v8    # "first":I
    .local v16, "first":I
    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->cardinality()J

    move-result-wide v7

    .line 111
    .local v7, "cardinality":J
    :goto_4
    aget v10, v9, v13

    move-object/from16 v18, v4

    move-object/from16 v17, v5

    .end local v4    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .end local v5    # "getFirst":[I
    .local v17, "getFirst":[I
    .local v18, "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    int-to-long v4, v10

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->largest()J

    move-result-wide v19

    cmp-long v4, v4, v19

    if-lez v4, :cond_6

    .line 112
    aget v4, v9, v13

    int-to-long v4, v4

    sub-long/2addr v4, v7

    long-to-int v4, v4

    aput v4, v9, v13

    move-object/from16 v5, v17

    move-object/from16 v4, v18

    const/4 v10, -0x1

    goto :goto_4

    .line 114
    :cond_6
    :goto_5
    aget v4, v9, v13

    int-to-long v4, v4

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->smallest()J

    move-result-wide v19

    cmp-long v4, v4, v19

    if-gez v4, :cond_8

    .line 115
    aget v4, v9, v13

    invoke-static {v4, v7, v8}, Lorg/apache/commons/compress/utils/ExactMath;->add(IJ)I

    move-result v4

    aput v4, v9, v13

    goto :goto_5

    .line 108
    .end local v6    # "bhsd":Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .end local v7    # "cardinality":J
    .end local v16    # "first":I
    .end local v17    # "getFirst":[I
    .end local v18    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .restart local v4    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .restart local v5    # "getFirst":[I
    .restart local v8    # "first":I
    :cond_7
    move-object/from16 v18, v4

    move-object/from16 v17, v5

    move/from16 v16, v8

    .line 105
    .end local v4    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .end local v5    # "getFirst":[I
    .end local v8    # "first":I
    .end local v14    # "favouredValue":Z
    .end local v15    # "theCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .restart local v16    # "first":I
    .restart local v17    # "getFirst":[I
    .restart local v18    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :cond_8
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v16

    move-object/from16 v5, v17

    move-object/from16 v4, v18

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, -0x1

    goto :goto_1

    .end local v16    # "first":I
    .end local v17    # "getFirst":[I
    .end local v18    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .restart local v4    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .restart local v5    # "getFirst":[I
    .restart local v8    # "first":I
    :cond_9
    move-object/from16 v18, v4

    move-object/from16 v17, v5

    move/from16 v16, v8

    .end local v4    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .end local v5    # "getFirst":[I
    .end local v8    # "first":I
    .restart local v16    # "first":I
    .restart local v17    # "getFirst":[I
    .restart local v18    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    goto :goto_6

    .line 101
    .end local v11    # "popCodec":Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;
    .end local v12    # "favoured":[I
    .end local v13    # "i":I
    .end local v16    # "first":I
    .end local v17    # "getFirst":[I
    .end local v18    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .restart local v4    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .restart local v5    # "getFirst":[I
    .restart local v8    # "first":I
    :cond_a
    move-object/from16 v18, v4

    move-object/from16 v17, v5

    move/from16 v16, v8

    .line 120
    .end local v4    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .end local v5    # "getFirst":[I
    .end local v8    # "first":I
    .restart local v16    # "first":I
    .restart local v17    # "getFirst":[I
    .restart local v18    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :goto_6
    return-object v9

    .line 76
    .end local v9    # "band":[I
    .end local v16    # "first":I
    .end local v17    # "getFirst":[I
    .end local v18    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .restart local v4    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :cond_b
    :goto_7
    invoke-virtual {v2, v3, v1}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->decodeInts(ILjava/io/InputStream;)[I

    move-result-object v5

    return-object v5

    .line 68
    .end local v4    # "codecUsed":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :cond_c
    new-instance v4, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string v5, "count < 0"

    invoke-direct {v4, v5}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[I
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "defaultCodec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "counts"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 136
    array-length v0, p4

    new-array v0, v0, [[I

    .line 137
    .local v0, "result":[[I
    const/4 v1, 0x0

    .line 138
    .local v1, "totalCount":I
    array-length v2, p4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p4, v3

    .line 139
    .local v4, "count":I
    add-int/2addr v1, v4

    .line 138
    .end local v4    # "count":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v2

    .line 142
    .local v2, "twoDResult":[I
    const/4 v3, 0x0

    .line 143
    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 144
    aget v5, p4, v4

    array-length v6, v2

    if-gt v5, v6, :cond_2

    .line 147
    aget v5, p4, v4

    new-array v5, v5, [I

    aput-object v5, v0, v4

    .line 148
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    aget-object v6, v0, v4

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 149
    aget-object v6, v0, v4

    aget v7, v2, v3

    aput v7, v6, v5

    .line 150
    add-int/lit8 v3, v3, 0x1

    .line 148
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 143
    .end local v5    # "j":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 145
    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Counts value exceeds length of twoDResult"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 153
    .end local v4    # "i":I
    :cond_3
    return-object v0
.end method

.method protected getReferences([I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "ints"    # [I
    .param p2, "reference"    # [Ljava/lang/String;

    .line 157
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 158
    .local v0, "result":[Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;[I)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 159
    return-object v0
.end method

.method protected getReferences([[I[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 5
    .param p1, "ints"    # [[I
    .param p2, "reference"    # [Ljava/lang/String;

    .line 163
    array-length v0, p1

    new-array v0, v0, [[Ljava/lang/String;

    .line 164
    .local v0, "result":[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 165
    aget-object v2, p1, v1

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v2, v0, v1

    .line 166
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    aget-object v3, v0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 167
    aget-object v3, v0, v1

    aget-object v4, p1, v1

    aget v4, v4, v2

    aget-object v4, p2, v4

    aput-object v4, v3, v2

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 164
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public parseCPClassReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 175
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    .line 176
    .local v0, "indices":[I
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    .line 177
    .local v1, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;
    const/4 v2, 0x0

    .local v2, "i1":I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 178
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v3

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpClassValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPClass;

    move-result-object v3

    aput-object v3, v1, v2

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v2    # "i1":I
    :cond_0
    return-object v1
.end method

.method public parseCPDescriptorReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    .line 186
    .local v0, "cpBands":Lorg/apache/commons/compress/harmony/unpack200/CpBands;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 187
    .local v1, "indices":[I
    array-length v2, v1

    new-array v2, v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    .line 188
    .local v2, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;
    const/4 v3, 0x0

    .local v3, "i1":I
    :goto_0
    if-ge v3, p4, :cond_0

    .line 189
    aget v4, v1, v3

    .line 190
    .local v4, "index":I
    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpNameAndTypeValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPNameAndType;

    move-result-object v5

    aput-object v5, v2, v3

    .line 188
    .end local v4    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    .end local v3    # "i1":I
    :cond_0
    return-object v2
.end method

.method public parseCPDoubleReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 197
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    .line 198
    .local v0, "indices":[I
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    .line 199
    .local v1, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;
    const/4 v2, 0x0

    .local v2, "i1":I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 200
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v3

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpDoubleValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPDouble;

    move-result-object v3

    aput-object v3, v1, v2

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .end local v2    # "i1":I
    :cond_0
    return-object v1
.end method

.method public parseCPFieldRefReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    .line 208
    .local v0, "cpBands":Lorg/apache/commons/compress/harmony/unpack200/CpBands;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 209
    .local v1, "indices":[I
    array-length v2, v1

    new-array v2, v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;

    .line 210
    .local v2, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;
    const/4 v3, 0x0

    .local v3, "i1":I
    :goto_0
    if-ge v3, p4, :cond_0

    .line 211
    aget v4, v1, v3

    .line 212
    .local v4, "index":I
    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFieldValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFieldRef;

    move-result-object v5

    aput-object v5, v2, v3

    .line 210
    .end local v4    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    .end local v3    # "i1":I
    :cond_0
    return-object v2
.end method

.method public parseCPFloatReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 219
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    .line 220
    .local v0, "indices":[I
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    .line 221
    .local v1, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;
    const/4 v2, 0x0

    .local v2, "i1":I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 222
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v3

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpFloatValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPFloat;

    move-result-object v3

    aput-object v3, v1, v2

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    .end local v2    # "i1":I
    :cond_0
    return-object v1
.end method

.method public parseCPIntReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpInt()[I

    move-result-object v0

    .line 241
    .local v0, "reference":[I
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 242
    .local v1, "indices":[I
    array-length v2, v1

    new-array v2, v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

    .line 243
    .local v2, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;
    const/4 v3, 0x0

    .local v3, "i1":I
    :goto_0
    if-ge v3, p4, :cond_1

    .line 244
    aget v4, v1, v3

    .line 245
    .local v4, "index":I
    if-ltz v4, :cond_0

    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 248
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpIntegerValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInteger;

    move-result-object v5

    aput-object v5, v2, v3

    .line 243
    .end local v4    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    .restart local v4    # "index":I
    :cond_0
    new-instance v5, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Something has gone wrong during parsing references, index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", array size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 250
    .end local v3    # "i1":I
    .end local v4    # "index":I
    :cond_1
    return-object v2
.end method

.method public parseCPInterfaceMethodRefReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInterfaceMethodRef;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    .line 230
    .local v0, "cpBands":Lorg/apache/commons/compress/harmony/unpack200/CpBands;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 231
    .local v1, "indices":[I
    array-length v2, v1

    new-array v2, v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInterfaceMethodRef;

    .line 232
    .local v2, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInterfaceMethodRef;
    const/4 v3, 0x0

    .local v3, "i1":I
    :goto_0
    if-ge v3, p4, :cond_0

    .line 233
    aget v4, v1, v3

    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpIMethodValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPInterfaceMethodRef;

    move-result-object v4

    aput-object v4, v2, v3

    .line 232
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    .end local v3    # "i1":I
    :cond_0
    return-object v2
.end method

.method public parseCPLongReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->getCpLong()[J

    move-result-object v0

    .line 256
    .local v0, "reference":[J
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 257
    .local v1, "indices":[I
    array-length v2, v1

    new-array v2, v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    .line 258
    .local v2, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;
    const/4 v3, 0x0

    .local v3, "i1":I
    :goto_0
    if-ge v3, p4, :cond_1

    .line 259
    aget v4, v1, v3

    .line 260
    .local v4, "index":I
    if-ltz v4, :cond_0

    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 263
    iget-object v5, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v5}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpLongValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPLong;

    move-result-object v5

    aput-object v5, v2, v3

    .line 258
    .end local v4    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 261
    .restart local v4    # "index":I
    :cond_0
    new-instance v5, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Something has gone wrong during parsing references, index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", array size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 265
    .end local v3    # "i1":I
    .end local v4    # "index":I
    :cond_1
    return-object v2
.end method

.method public parseCPMethodRefReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v0

    .line 271
    .local v0, "cpBands":Lorg/apache/commons/compress/harmony/unpack200/CpBands;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 272
    .local v1, "indices":[I
    array-length v2, v1

    new-array v2, v2, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;

    .line 273
    .local v2, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;
    const/4 v3, 0x0

    .local v3, "i1":I
    :goto_0
    if-ge v3, p4, :cond_0

    .line 274
    aget v4, v1, v3

    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpMethodValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPMethodRef;

    move-result-object v4

    aput-object v4, v2, v3

    .line 273
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 276
    .end local v3    # "i1":I
    :cond_0
    return-object v2
.end method

.method public parseCPSignatureReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 281
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    .line 282
    .local v0, "indices":[I
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 283
    .local v1, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    const/4 v2, 0x0

    .local v2, "i1":I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 284
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v3

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignatureValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v3

    aput-object v3, v1, v2

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    .end local v2    # "i1":I
    :cond_0
    return-object v1
.end method

.method protected parseCPSignatureReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "counts"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "sum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p4

    if-ge v1, v2, :cond_0

    .line 293
    aget v2, p4, v1

    add-int/2addr v0, v2

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v1

    .line 296
    .local v1, "indices":[I
    new-array v2, v0, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 297
    .local v2, "result1":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    const/4 v3, 0x0

    .local v3, "i1":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 298
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v4

    aget v5, v1, v3

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpSignatureValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v4

    aput-object v4, v2, v3

    .line 297
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 300
    .end local v3    # "i1":I
    :cond_1
    const/4 v3, 0x0

    .line 301
    .local v3, "pos":I
    array-length v4, p4

    new-array v4, v4, [[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 302
    .local v4, "result":[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, p4

    if-ge v5, v6, :cond_2

    .line 303
    aget v6, p4, v5

    .line 304
    .local v6, "num":I
    new-array v7, v6, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aput-object v7, v4, v5

    .line 305
    aget-object v7, v4, v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    add-int/2addr v3, v6

    .line 302
    .end local v6    # "num":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 308
    .end local v5    # "i":I
    :cond_2
    return-object v4
.end method

.method public parseCPStringReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 313
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    .line 314
    .local v0, "indices":[I
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;

    .line 315
    .local v1, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;
    const/4 v2, 0x0

    .local v2, "i1":I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 316
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v3}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v3

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpStringValue(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPString;

    move-result-object v3

    aput-object v3, v1, v2

    .line 315
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    .end local v2    # "i1":I
    :cond_0
    return-object v1
.end method

.method public parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 323
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v0

    .line 324
    .local v0, "indices":[I
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 325
    .local v1, "result":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    const/4 v2, 0x0

    .local v2, "i1":I
    :goto_0
    if-ge v2, p4, :cond_0

    .line 326
    aget v3, v0, v2

    .line 327
    .local v3, "index":I
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v4}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v4

    aput-object v4, v1, v2

    .line 325
    .end local v3    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    .end local v2    # "i1":I
    :cond_0
    return-object v1
.end method

.method public parseCPUTF8References(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I)[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "counts"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 334
    array-length v0, p4

    new-array v0, v0, [[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 335
    .local v0, "result":[[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    const/4 v1, 0x0

    .line 336
    .local v1, "sum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p4

    if-ge v2, v3, :cond_0

    .line 337
    aget v3, p4, v2

    new-array v3, v3, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aput-object v3, v0, v2

    .line 338
    aget v3, p4, v2

    add-int/2addr v1, v3

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    .end local v2    # "i":I
    :cond_0
    new-array v2, v1, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    .line 341
    .local v2, "result1":[Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    .line 342
    .local v3, "indices":[I
    const/4 v4, 0x0

    .local v4, "i1":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 343
    aget v5, v3, v4

    .line 344
    .local v5, "index":I
    iget-object v6, p0, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->segment:Lorg/apache/commons/compress/harmony/unpack200/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/compress/harmony/unpack200/Segment;->getCpBands()Lorg/apache/commons/compress/harmony/unpack200/CpBands;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/apache/commons/compress/harmony/unpack200/CpBands;->cpUTF8Value(I)Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    move-result-object v6

    aput-object v6, v2, v4

    .line 342
    .end local v5    # "index":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 346
    .end local v4    # "i1":I
    :cond_1
    const/4 v4, 0x0

    .line 347
    .local v4, "pos":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, p4

    if-ge v5, v6, :cond_2

    .line 348
    aget v6, p4, v5

    .line 349
    .local v6, "num":I
    new-array v7, v6, [Lorg/apache/commons/compress/harmony/unpack200/bytecode/CPUTF8;

    aput-object v7, v0, v5

    .line 350
    aget-object v7, v0, v5

    const/4 v8, 0x0

    invoke-static {v2, v4, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    add-int/2addr v4, v6

    .line 347
    .end local v6    # "num":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 353
    .end local v5    # "i":I
    :cond_2
    return-object v0
.end method

.method public parseFlags(Ljava/lang/String;Ljava/io/InputStream;ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[J
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "count"    # I
    .param p4, "hiCodec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p5, "loCodec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 358
    filled-new-array {p3}, [I

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[[J

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public parseFlags(Ljava/lang/String;Ljava/io/InputStream;ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[J
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "count"    # I
    .param p4, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p5, "hasHi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 363
    filled-new-array {p3}, [I

    move-result-object v3

    if-eqz p5, :cond_0

    move-object v4, p4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v4, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[[J

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[[J
    .locals 17
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "counts"    # [I
    .param p4, "hiCodec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p5, "loCodec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 368
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    array-length v5, v3

    .line 369
    .local v5, "count":I
    if-nez v5, :cond_0

    .line 370
    const/4 v6, 0x0

    new-array v6, v6, [J

    filled-new-array {v6}, [[J

    move-result-object v6

    return-object v6

    .line 372
    :cond_0
    const/4 v6, 0x0

    .line 373
    .local v6, "sum":I
    new-array v7, v5, [[J

    .line 374
    .local v7, "result":[[J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v5, :cond_1

    .line 375
    aget v9, v3, v8

    add-int/2addr v6, v9

    .line 374
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 377
    .end local v8    # "i":I
    :cond_1
    const/4 v8, 0x0

    .line 379
    .local v8, "hi":[I
    if-eqz v4, :cond_2

    .line 380
    invoke-virtual {v0, v1, v2, v4, v6}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v8

    .line 382
    :cond_2
    move-object/from16 v9, p5

    invoke-virtual {v0, v1, v2, v9, v6}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v10

    .line 384
    .local v10, "lo":[I
    const/4 v11, 0x0

    .line 385
    .local v11, "index":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v5, :cond_5

    .line 386
    aget v13, v3, v12

    new-array v13, v13, [J

    aput-object v13, v7, v12

    .line 387
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    aget-object v14, v7, v12

    array-length v14, v14

    if-ge v13, v14, :cond_4

    .line 388
    if-eqz v8, :cond_3

    .line 389
    aget-object v14, v7, v12

    aget v15, v8, v11

    int-to-long v0, v15

    const/16 v15, 0x20

    shl-long/2addr v0, v15

    aget v15, v10, v11

    int-to-long v2, v15

    const-wide v15, 0xffffffffL

    and-long/2addr v2, v15

    or-long/2addr v0, v2

    aput-wide v0, v14, v13

    goto :goto_3

    .line 391
    :cond_3
    aget-object v0, v7, v12

    aget v1, v10, v11

    int-to-long v1, v1

    aput-wide v1, v0, v13

    .line 393
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 387
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_2

    .line 385
    .end local v13    # "j":I
    :cond_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    goto :goto_1

    .line 396
    .end local v12    # "i":I
    :cond_5
    return-object v7
.end method

.method public parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Z)[[J
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "counts"    # [I
    .param p4, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p5, "hasHi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 401
    if-eqz p5, :cond_0

    move-object v5, p4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v5, v0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseFlags(Ljava/lang/String;Ljava/io/InputStream;[ILorg/apache/commons/compress/harmony/pack200/BHSDCodec;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)[[J

    move-result-object v0

    return-object v0
.end method

.method public parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "count"    # I
    .param p5, "reference"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 420
    filled-new-array {p4}, [I

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public parseReferences(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;[I[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "codec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .param p4, "counts"    # [I
    .param p5, "reference"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 440
    array-length v0, p4

    .line 441
    .local v0, "count":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 442
    const/4 v2, 0x1

    new-array v2, v2, [[Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/String;

    aput-object v3, v2, v1

    return-object v2

    .line 444
    :cond_0
    const/4 v2, 0x0

    .line 445
    .local v2, "sum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 446
    aget v4, p4, v3

    add-int/2addr v2, v4

    .line 445
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 449
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v2}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->decodeBandInt(Ljava/lang/String;Ljava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;I)[I

    move-result-object v3

    .line 450
    .local v3, "indices":[I
    new-array v4, v2, [Ljava/lang/String;

    .line 451
    .local v4, "result1":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i1":I
    :goto_1
    if-ge v5, v2, :cond_3

    .line 452
    aget v6, v3, v5

    .line 453
    .local v6, "index":I
    if-ltz v6, :cond_2

    array-length v7, p5

    if-ge v6, v7, :cond_2

    .line 456
    aget-object v7, p5, v6

    aput-object v7, v4, v5

    .line 451
    .end local v6    # "index":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 454
    .restart local v6    # "index":I
    :cond_2
    new-instance v1, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Something has gone wrong during parsing references, index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", array size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    .end local v5    # "i1":I
    .end local v6    # "index":I
    :cond_3
    new-array v5, v0, [[Ljava/lang/String;

    .line 460
    .local v5, "result":[[Ljava/lang/String;
    const/4 v6, 0x0

    .line 461
    .local v6, "pos":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v0, :cond_4

    .line 462
    aget v8, p4, v7

    .line 463
    .local v8, "num":I
    new-array v9, v8, [Ljava/lang/String;

    aput-object v9, v5, v7

    .line 464
    aget-object v9, v5, v7

    invoke-static {v4, v6, v9, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    add-int/2addr v6, v8

    .line 461
    .end local v8    # "num":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 467
    .end local v7    # "i":I
    :cond_4
    return-object v5
.end method

.method public abstract read(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation
.end method

.method public abstract unpack()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation
.end method

.method public unpack(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 475
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->read(Ljava/io/InputStream;)V

    .line 476
    invoke-virtual {p0}, Lorg/apache/commons/compress/harmony/unpack200/BandSet;->unpack()V

    .line 477
    return-void
.end method
