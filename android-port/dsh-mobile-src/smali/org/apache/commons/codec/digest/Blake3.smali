.class public final Lorg/apache/commons/codec/digest/Blake3;
.super Ljava/lang/Object;
.source "Blake3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/digest/Blake3$Output;,
        Lorg/apache/commons/codec/digest/Blake3$EngineState;,
        Lorg/apache/commons/codec/digest/Blake3$ChunkState;
    }
.end annotation


# static fields
.field private static final BLOCK_INTS:I = 0x10

.field private static final BLOCK_LEN:I = 0x40

.field private static final CHAINING_VALUE_INTS:I = 0x8

.field private static final CHUNK_END:I = 0x2

.field private static final CHUNK_LEN:I = 0x400

.field private static final CHUNK_START:I = 0x1

.field private static final DERIVE_KEY_CONTEXT:I = 0x20

.field private static final DERIVE_KEY_MATERIAL:I = 0x40

.field private static final IV:[I

.field private static final KEYED_HASH:I = 0x10

.field private static final KEY_INTS:I = 0x8

.field private static final KEY_LEN:I = 0x20

.field private static final MSG_SCHEDULE:[[B

.field private static final OUT_LEN:I = 0x20

.field private static final PARENT:I = 0x4

.field private static final ROOT:I = 0x8


# instance fields
.field private final engineState:Lorg/apache/commons/codec/digest/Blake3$EngineState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 266
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/digest/Blake3;->IV:[I

    .line 281
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    new-array v2, v0, [B

    fill-array-data v2, :array_2

    new-array v3, v0, [B

    fill-array-data v3, :array_3

    new-array v4, v0, [B

    fill-array-data v4, :array_4

    new-array v5, v0, [B

    fill-array-data v5, :array_5

    new-array v6, v0, [B

    fill-array-data v6, :array_6

    new-array v7, v0, [B

    fill-array-data v7, :array_7

    filled-new-array/range {v1 .. v7}, [[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/digest/Blake3;->MSG_SCHEDULE:[[B

    return-void

    nop

    :array_0
    .array-data 4
        0x6a09e667
        -0x4498517b
        0x3c6ef372
        -0x5ab00ac6
        0x510e527f
        -0x64fa9774
        0x1f83d9ab
        0x5be0cd19
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data

    :array_2
    .array-data 1
        0x2t
        0x6t
        0x3t
        0xat
        0x7t
        0x0t
        0x4t
        0xdt
        0x1t
        0xbt
        0xct
        0x5t
        0x9t
        0xet
        0xft
        0x8t
    .end array-data

    :array_3
    .array-data 1
        0x3t
        0x4t
        0xat
        0xct
        0xdt
        0x2t
        0x7t
        0xet
        0x6t
        0x5t
        0x9t
        0x0t
        0xbt
        0xft
        0x8t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0xat
        0x7t
        0xct
        0x9t
        0xet
        0x3t
        0xdt
        0xft
        0x4t
        0x0t
        0xbt
        0x2t
        0x5t
        0x8t
        0x1t
        0x6t
    .end array-data

    :array_5
    .array-data 1
        0xct
        0xdt
        0x9t
        0xbt
        0xft
        0xat
        0xet
        0x8t
        0x7t
        0x2t
        0x5t
        0x3t
        0x0t
        0x1t
        0x6t
        0x4t
    .end array-data

    :array_6
    .array-data 1
        0x9t
        0xet
        0xbt
        0x5t
        0x8t
        0xct
        0xft
        0x1t
        0xdt
        0x3t
        0x0t
        0xat
        0x2t
        0x6t
        0x4t
        0x7t
    .end array-data

    :array_7
    .array-data 1
        0xbt
        0xft
        0x5t
        0x0t
        0x1t
        0x9t
        0x8t
        0x6t
        0xet
        0xat
        0x2t
        0xct
        0x3t
        0x4t
        0x7t
        0xdt
    .end array-data
.end method

.method private constructor <init>([II)V
    .locals 2
    .param p1, "key"    # [I
    .param p2, "flags"    # I

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    new-instance v0, Lorg/apache/commons/codec/digest/Blake3$EngineState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/commons/codec/digest/Blake3$EngineState;-><init>([IILorg/apache/commons/codec/digest/Blake3$1;)V

    iput-object v0, p0, Lorg/apache/commons/codec/digest/Blake3;->engineState:Lorg/apache/commons/codec/digest/Blake3$EngineState;

    .line 451
    return-void
.end method

.method static synthetic access$000([BI)[I
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I

    .line 76
    invoke-static {p0, p1}, Lorg/apache/commons/codec/digest/Blake3;->unpackInts([BI)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000([I[I[II)Lorg/apache/commons/codec/digest/Blake3$Output;
    .locals 1
    .param p0, "x0"    # [I
    .param p1, "x1"    # [I
    .param p2, "x2"    # [I
    .param p3, "x3"    # I

    .line 76
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3;->parentOutput([I[I[II)Lorg/apache/commons/codec/digest/Blake3$Output;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(I[BII)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 76
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3;->packInt(I[BII)V

    return-void
.end method

.method static synthetic access$200([I[IIJI)[I
    .locals 1
    .param p0, "x0"    # [I
    .param p1, "x1"    # [I
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # I

    .line 76
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/codec/digest/Blake3;->compress([I[IIJI)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400([I[I[II)[I
    .locals 1
    .param p0, "x0"    # [I
    .param p1, "x1"    # [I
    .param p2, "x2"    # [I
    .param p3, "x3"    # I

    .line 76
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3;->parentChainingValue([I[I[II)[I

    move-result-object v0

    return-object v0
.end method

.method private static checkBufferArgs([BII)V
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 293
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    if-ltz p1, :cond_2

    .line 297
    if-ltz p2, :cond_1

    .line 300
    array-length v0, p0

    .line 301
    .local v0, "bufferLength":I
    sub-int v1, v0, p2

    if-gt p1, v1, :cond_0

    .line 304
    return-void

    .line 302
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of bounds with buffer length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    .end local v0    # "bufferLength":I
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Length must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Offset must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static compress([I[IIJI)[I
    .locals 5
    .param p0, "chainingValue"    # [I
    .param p1, "blockWords"    # [I
    .param p2, "blockLength"    # I
    .param p3, "counter"    # J
    .param p5, "flags"    # I

    .line 307
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 308
    .local v0, "state":[I
    sget-object v1, Lorg/apache/commons/codec/digest/Blake3;->IV:[I

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    const/16 v1, 0xc

    long-to-int v2, p3

    aput v2, v0, v1

    .line 310
    const/16 v1, 0x20

    shr-long v1, p3, v1

    long-to-int v1, v1

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 311
    const/16 v1, 0xe

    aput p2, v0, v1

    .line 312
    const/16 v1, 0xf

    aput p5, v0, v1

    .line 313
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 314
    sget-object v2, Lorg/apache/commons/codec/digest/Blake3;->MSG_SCHEDULE:[[B

    aget-object v2, v2, v1

    .line 315
    .local v2, "schedule":[B
    invoke-static {v0, p1, v2}, Lorg/apache/commons/codec/digest/Blake3;->round([I[I[B)V

    .line 313
    .end local v2    # "schedule":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    .line 318
    aget v2, v0, v1

    add-int/lit8 v3, v1, 0x8

    aget v3, v0, v3

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 319
    add-int/lit8 v2, v1, 0x8

    aget v3, v0, v2

    aget v4, p0, v1

    xor-int/2addr v3, v4

    aput v3, v0, v2

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 321
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static g([IIIIIII)V
    .locals 2
    .param p0, "state"    # [I
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "mx"    # I
    .param p6, "my"    # I

    .line 328
    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v1, p5

    add-int/2addr v0, v1

    aput v0, p0, p1

    .line 329
    aget v0, p0, p4

    aget v1, p0, p1

    xor-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    aput v0, p0, p4

    .line 330
    aget v0, p0, p3

    aget v1, p0, p4

    add-int/2addr v0, v1

    aput v0, p0, p3

    .line 331
    aget v0, p0, p2

    aget v1, p0, p3

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    aput v0, p0, p2

    .line 332
    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v1, p6

    add-int/2addr v0, v1

    aput v0, p0, p1

    .line 333
    aget v0, p0, p4

    aget v1, p0, p1

    xor-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    aput v0, p0, p4

    .line 334
    aget v0, p0, p3

    aget v1, p0, p4

    add-int/2addr v0, v1

    aput v0, p0, p3

    .line 335
    aget v0, p0, p2

    aget v1, p0, p3

    xor-int/2addr v0, v1

    const/4 v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result v0

    aput v0, p0, p2

    .line 336
    return-void
.end method

.method public static hash([B)[B
    .locals 2
    .param p0, "data"    # [B

    .line 346
    invoke-static {}, Lorg/apache/commons/codec/digest/Blake3;->initHash()Lorg/apache/commons/codec/digest/Blake3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/codec/digest/Blake3;->update([B)Lorg/apache/commons/codec/digest/Blake3;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lorg/apache/commons/codec/digest/Blake3;->doFinalize(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static initHash()Lorg/apache/commons/codec/digest/Blake3;
    .locals 3

    .line 355
    new-instance v0, Lorg/apache/commons/codec/digest/Blake3;

    sget-object v1, Lorg/apache/commons/codec/digest/Blake3;->IV:[I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/codec/digest/Blake3;-><init>([II)V

    return-object v0
.end method

.method public static initKeyDerivationFunction([B)Lorg/apache/commons/codec/digest/Blake3;
    .locals 5
    .param p0, "kdfContext"    # [B

    .line 368
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    new-instance v0, Lorg/apache/commons/codec/digest/Blake3$EngineState;

    sget-object v1, Lorg/apache/commons/codec/digest/Blake3;->IV:[I

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/codec/digest/Blake3$EngineState;-><init>([IILorg/apache/commons/codec/digest/Blake3$1;)V

    .line 370
    .local v0, "kdf":Lorg/apache/commons/codec/digest/Blake3$EngineState;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Lorg/apache/commons/codec/digest/Blake3$EngineState;->access$1400(Lorg/apache/commons/codec/digest/Blake3$EngineState;[BII)V

    .line 371
    new-array v1, v3, [B

    .line 372
    .local v1, "key":[B
    array-length v3, v1

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/codec/digest/Blake3$EngineState;->access$1500(Lorg/apache/commons/codec/digest/Blake3$EngineState;[BII)V

    .line 373
    new-instance v2, Lorg/apache/commons/codec/digest/Blake3;

    const/16 v3, 0x8

    invoke-static {v1, v3}, Lorg/apache/commons/codec/digest/Blake3;->unpackInts([BI)[I

    move-result-object v3

    const/16 v4, 0x40

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/codec/digest/Blake3;-><init>([II)V

    return-object v2
.end method

.method public static initKeyedHash([B)Lorg/apache/commons/codec/digest/Blake3;
    .locals 3
    .param p0, "key"    # [B

    .line 386
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 390
    new-instance v0, Lorg/apache/commons/codec/digest/Blake3;

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lorg/apache/commons/codec/digest/Blake3;->unpackInts([BI)[I

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/codec/digest/Blake3;-><init>([II)V

    return-object v0

    .line 388
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Blake3 keys must be 32 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static keyedHash([B[B)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "data"    # [B

    .line 402
    invoke-static {p0}, Lorg/apache/commons/codec/digest/Blake3;->initKeyedHash([B)Lorg/apache/commons/codec/digest/Blake3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/Blake3;->update([B)Lorg/apache/commons/codec/digest/Blake3;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lorg/apache/commons/codec/digest/Blake3;->doFinalize(I)[B

    move-result-object v0

    return-object v0
.end method

.method private static packInt(I[BII)V
    .locals 3
    .param p0, "value"    # I
    .param p1, "dst"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 406
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 407
    add-int v1, p2, v0

    mul-int/lit8 v2, v0, 0x8

    ushr-int v2, p0, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static parentChainingValue([I[I[II)[I
    .locals 1
    .param p0, "leftChildCV"    # [I
    .param p1, "rightChildCV"    # [I
    .param p2, "key"    # [I
    .param p3, "flags"    # I

    .line 412
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3;->parentOutput([I[I[II)Lorg/apache/commons/codec/digest/Blake3$Output;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/digest/Blake3$Output;->access$700(Lorg/apache/commons/codec/digest/Blake3$Output;)[I

    move-result-object v0

    return-object v0
.end method

.method private static parentOutput([I[I[II)Lorg/apache/commons/codec/digest/Blake3$Output;
    .locals 10
    .param p0, "leftChildCV"    # [I
    .param p1, "rightChildCV"    # [I
    .param p2, "key"    # [I
    .param p3, "flags"    # I

    .line 416
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 417
    .local v0, "blockWords":[I
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {p1, v1, v0, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    new-instance v9, Lorg/apache/commons/codec/digest/Blake3$Output;

    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [I

    or-int/lit8 v7, p3, 0x4

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0x40

    move-object v1, v9

    move-object v3, v0

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/codec/digest/Blake3$Output;-><init>([I[IJIILorg/apache/commons/codec/digest/Blake3$1;)V

    return-object v9
.end method

.method private static round([I[I[B)V
    .locals 8
    .param p0, "state"    # [I
    .param p1, "msg"    # [I
    .param p2, "schedule"    # [B

    .line 423
    const/4 v0, 0x0

    aget-byte v0, p2, v0

    aget v6, p1, v0

    const/4 v0, 0x1

    aget-byte v0, p2, v0

    aget v7, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/16 v4, 0x8

    const/16 v5, 0xc

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/codec/digest/Blake3;->g([IIIIIII)V

    .line 424
    const/4 v0, 0x2

    aget-byte v0, p2, v0

    aget v6, p1, v0

    const/4 v0, 0x3

    aget-byte v0, p2, v0

    aget v7, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/16 v4, 0x9

    const/16 v5, 0xd

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/codec/digest/Blake3;->g([IIIIIII)V

    .line 425
    const/4 v0, 0x4

    aget-byte v0, p2, v0

    aget v6, p1, v0

    const/4 v0, 0x5

    aget-byte v0, p2, v0

    aget v7, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x6

    const/16 v4, 0xa

    const/16 v5, 0xe

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/codec/digest/Blake3;->g([IIIIIII)V

    .line 426
    const/4 v0, 0x6

    aget-byte v0, p2, v0

    aget v6, p1, v0

    const/4 v0, 0x7

    aget-byte v0, p2, v0

    aget v7, p1, v0

    const/4 v2, 0x3

    const/4 v3, 0x7

    const/16 v4, 0xb

    const/16 v5, 0xf

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/codec/digest/Blake3;->g([IIIIIII)V

    .line 429
    const/16 v0, 0x8

    aget-byte v0, p2, v0

    aget v6, p1, v0

    const/16 v0, 0x9

    aget-byte v0, p2, v0

    aget v7, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/16 v4, 0xa

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/codec/digest/Blake3;->g([IIIIIII)V

    .line 430
    const/16 v0, 0xa

    aget-byte v0, p2, v0

    aget v6, p1, v0

    const/16 v0, 0xb

    aget-byte v0, p2, v0

    aget v7, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x6

    const/16 v4, 0xb

    const/16 v5, 0xc

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/codec/digest/Blake3;->g([IIIIIII)V

    .line 431
    const/16 v0, 0xc

    aget-byte v0, p2, v0

    aget v6, p1, v0

    const/16 v0, 0xd

    aget-byte v0, p2, v0

    aget v7, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x7

    const/16 v4, 0x8

    const/16 v5, 0xd

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/codec/digest/Blake3;->g([IIIIIII)V

    .line 432
    const/16 v0, 0xe

    aget-byte v0, p2, v0

    aget v6, p1, v0

    const/16 v0, 0xf

    aget-byte v0, p2, v0

    aget v7, p1, v0

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/16 v4, 0x9

    const/16 v5, 0xe

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/codec/digest/Blake3;->g([IIIIIII)V

    .line 433
    return-void
.end method

.method private static unpackInt([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "off"    # I

    .line 436
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private static unpackInts([BI)[I
    .locals 4
    .param p0, "buf"    # [B
    .param p1, "nrInts"    # I

    .line 440
    new-array v0, p1, [I

    .line 441
    .local v0, "values":[I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "off":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 442
    invoke-static {p0, v2}, Lorg/apache/commons/codec/digest/Blake3;->unpackInt([BI)I

    move-result v3

    aput v3, v0, v1

    .line 441
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 444
    .end local v1    # "i":I
    .end local v2    # "off":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public doFinalize([B)Lorg/apache/commons/codec/digest/Blake3;
    .locals 2
    .param p1, "out"    # [B

    .line 462
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/codec/digest/Blake3;->doFinalize([BII)Lorg/apache/commons/codec/digest/Blake3;

    move-result-object v0

    return-object v0
.end method

.method public doFinalize([BII)Lorg/apache/commons/codec/digest/Blake3;
    .locals 1
    .param p1, "out"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 478
    invoke-static {p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3;->checkBufferArgs([BII)V

    .line 479
    iget-object v0, p0, Lorg/apache/commons/codec/digest/Blake3;->engineState:Lorg/apache/commons/codec/digest/Blake3$EngineState;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3$EngineState;->access$1500(Lorg/apache/commons/codec/digest/Blake3$EngineState;[BII)V

    .line 480
    return-object p0
.end method

.method public doFinalize(I)[B
    .locals 2
    .param p1, "nrBytes"    # I

    .line 491
    if-ltz p1, :cond_0

    .line 494
    new-array v0, p1, [B

    .line 495
    .local v0, "hash":[B
    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/digest/Blake3;->doFinalize([B)Lorg/apache/commons/codec/digest/Blake3;

    .line 496
    return-object v0

    .line 492
    .end local v0    # "hash":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested bytes must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()Lorg/apache/commons/codec/digest/Blake3;
    .locals 1

    .line 504
    iget-object v0, p0, Lorg/apache/commons/codec/digest/Blake3;->engineState:Lorg/apache/commons/codec/digest/Blake3$EngineState;

    invoke-static {v0}, Lorg/apache/commons/codec/digest/Blake3$EngineState;->access$1600(Lorg/apache/commons/codec/digest/Blake3$EngineState;)V

    .line 505
    return-object p0
.end method

.method public update([B)Lorg/apache/commons/codec/digest/Blake3;
    .locals 2
    .param p1, "in"    # [B

    .line 516
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/codec/digest/Blake3;->update([BII)Lorg/apache/commons/codec/digest/Blake3;

    move-result-object v0

    return-object v0
.end method

.method public update([BII)Lorg/apache/commons/codec/digest/Blake3;
    .locals 1
    .param p1, "in"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 531
    invoke-static {p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3;->checkBufferArgs([BII)V

    .line 532
    iget-object v0, p0, Lorg/apache/commons/codec/digest/Blake3;->engineState:Lorg/apache/commons/codec/digest/Blake3$EngineState;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/codec/digest/Blake3$EngineState;->access$1400(Lorg/apache/commons/codec/digest/Blake3$EngineState;[BII)V

    .line 533
    return-object p0
.end method
