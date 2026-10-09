.class final Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;
.super Ljava/lang/Object;
.source "NioZipEncoding.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
.implements Lorg/apache/commons/compress/archivers/zip/CharsetAccessor;


# static fields
.field private static final HEX_CHARS:[C

.field private static final REPLACEMENT:C = '?'

.field private static final REPLACEMENT_BYTES:[B

.field private static final REPLACEMENT_STRING:Ljava/lang/String;


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final useReplacement:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->REPLACEMENT_BYTES:[B

    .line 43
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->REPLACEMENT_STRING:Ljava/lang/String;

    .line 44
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->HEX_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Ljava/nio/charset/Charset;Z)V
    .locals 0
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "useReplacement"    # Z

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    .line 111
    iput-boolean p2, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->useReplacement:Z

    .line 112
    return-void
.end method

.method private static encodeFully(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "enc"    # Ljava/nio/charset/CharsetEncoder;
    .param p1, "cb"    # Ljava/nio/CharBuffer;
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    .line 47
    move-object v0, p2

    .line 48
    .local v0, "o":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 50
    .local v1, "result":Ljava/nio/charset/CoderResult;
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    invoke-static {p0, v2}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->estimateIncrementalEncodingSize(Ljava/nio/charset/CharsetEncoder;I)I

    move-result v2

    .line 52
    .local v2, "increment":I
    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->growBufferBy(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 54
    .end local v1    # "result":Ljava/nio/charset/CoderResult;
    .end local v2    # "increment":I
    :cond_0
    goto :goto_0

    .line 55
    :cond_1
    return-object v0
.end method

.method private static encodeSurrogate(Ljava/nio/CharBuffer;C)Ljava/nio/CharBuffer;
    .locals 2
    .param p0, "cb"    # Ljava/nio/CharBuffer;
    .param p1, "c"    # C

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 60
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 61
    const/16 v0, 0x55

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 63
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->HEX_CHARS:[C

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 64
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->HEX_CHARS:[C

    shr-int/lit8 v1, p1, 0x8

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 65
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->HEX_CHARS:[C

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 66
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->HEX_CHARS:[C

    and-int/lit8 v1, p1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 67
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 68
    return-object p0
.end method

.method private static estimateIncrementalEncodingSize(Ljava/nio/charset/CharsetEncoder;I)I
    .locals 2
    .param p0, "enc"    # Ljava/nio/charset/CharsetEncoder;
    .param p1, "charCount"    # I

    .line 79
    int-to-float v0, p1

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private static estimateInitialBufferSize(Ljava/nio/charset/CharsetEncoder;I)I
    .locals 4
    .param p0, "enc"    # Ljava/nio/charset/CharsetEncoder;
    .param p1, "charChount"    # I

    .line 94
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v0

    .line 95
    .local v0, "first":F
    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v2

    mul-float/2addr v1, v2

    .line 96
    .local v1, "rest":F
    add-float v2, v0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method private newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 2

    .line 191
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->useReplacement:Z

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    return-object v0

    .line 194
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->REPLACEMENT_STRING:Ljava/lang/String;

    .line 195
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 194
    return-object v0
.end method

.method private newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 2

    .line 199
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->useReplacement:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->REPLACEMENT_BYTES:[B

    .line 201
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->replaceWith([B)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 200
    return-object v0

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canEncode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 119
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public decode([B)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 137
    .local v0, "enc":Ljava/nio/charset/CharsetEncoder;
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 138
    .local v1, "cb":Ljava/nio/CharBuffer;
    const/4 v2, 0x0

    .line 139
    .local v2, "tmp":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    invoke-static {v0, v3}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->estimateInitialBufferSize(Ljava/nio/charset/CharsetEncoder;I)I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 141
    .local v3, "out":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_9

    .line 142
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 144
    .local v4, "res":Ljava/nio/charset/CoderResult;
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 169
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    invoke-static {v0, v5}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->estimateIncrementalEncodingSize(Ljava/nio/charset/CharsetEncoder;I)I

    move-result v5

    .line 170
    .local v5, "increment":I
    invoke-static {v3, v5}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->growBufferBy(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 172
    .end local v5    # "increment":I
    :cond_1
    goto :goto_5

    :cond_2
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 173
    goto :goto_6

    .line 149
    :cond_3
    :goto_1
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->length()I

    move-result v6

    const/4 v7, 0x6

    mul-int/2addr v6, v7

    invoke-static {v0, v6}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->estimateIncrementalEncodingSize(Ljava/nio/charset/CharsetEncoder;I)I

    move-result v6

    .line 150
    .local v6, "spaceForSurrogate":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-le v6, v8, :cond_6

    .line 154
    const/4 v8, 0x0

    .line 155
    .local v8, "charCount":I
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v9

    .local v9, "i":I
    :goto_2
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 156
    invoke-virtual {v1, v9}, Ljava/nio/CharBuffer;->get(I)C

    move-result v10

    invoke-virtual {v0, v10}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v10

    if-nez v10, :cond_4

    move v10, v7

    goto :goto_3

    :cond_4
    move v10, v5

    :goto_3
    add-int/2addr v8, v10

    .line 155
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 158
    .end local v9    # "i":I
    :cond_5
    invoke-static {v0, v8}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->estimateIncrementalEncodingSize(Ljava/nio/charset/CharsetEncoder;I)I

    move-result v5

    .line 159
    .local v5, "totalExtraSpace":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    sub-int v9, v5, v9

    invoke-static {v3, v9}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->growBufferBy(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 161
    .end local v5    # "totalExtraSpace":I
    .end local v8    # "charCount":I
    :cond_6
    if-nez v2, :cond_7

    .line 162
    invoke-static {v7}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 164
    :cond_7
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->length()I

    move-result v7

    if-ge v5, v7, :cond_8

    .line 165
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v7

    invoke-static {v2, v7}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->encodeSurrogate(Ljava/nio/CharBuffer;C)Ljava/nio/CharBuffer;

    move-result-object v7

    invoke-static {v0, v7, v3}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->encodeFully(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 164
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 168
    .end local v5    # "i":I
    .end local v6    # "spaceForSurrogate":I
    :cond_8
    nop

    .line 175
    .end local v4    # "res":Ljava/nio/charset/CoderResult;
    :goto_5
    goto/16 :goto_0

    .line 177
    :cond_9
    :goto_6
    invoke-virtual {v0, v1, v3, v5}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 180
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 181
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 182
    return-object v3
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method
