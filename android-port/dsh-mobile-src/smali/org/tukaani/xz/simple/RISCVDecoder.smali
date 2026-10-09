.class public final Lorg/tukaani/xz/simple/RISCVDecoder;
.super Ljava/lang/Object;
.source "RISCVDecoder.java"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# instance fields
.field private pos:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "startPos"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lorg/tukaani/xz/simple/RISCVDecoder;->pos:I

    .line 17
    return-void
.end method


# virtual methods
.method public code([BII)I
    .locals 11
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 21
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x8

    .line 24
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_6

    .line 25
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    .line 27
    .local v2, "inst":I
    const/16 v3, 0xef

    if-ne v2, v3, :cond_2

    .line 29
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 32
    .local v3, "b1":I
    and-int/lit8 v4, v3, 0xd

    if-eqz v4, :cond_0

    .line 33
    goto/16 :goto_2

    .line 35
    :cond_0
    add-int/lit8 v4, v1, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    .line 36
    .local v4, "b2":I
    add-int/lit8 v5, v1, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 37
    .local v5, "b3":I
    iget v6, p0, Lorg/tukaani/xz/simple/RISCVDecoder;->pos:I

    add-int/2addr v6, v1

    sub-int/2addr v6, p2

    .line 44
    .local v6, "pc":I
    and-int/lit16 v7, v3, 0xf0

    shl-int/lit8 v7, v7, 0xd

    shl-int/lit8 v8, v4, 0x9

    or-int/2addr v7, v8

    shl-int/lit8 v8, v5, 0x1

    or-int/2addr v7, v8

    .line 46
    .local v7, "addr":I
    sub-int/2addr v7, v6

    .line 48
    add-int/lit8 v8, v1, 0x1

    and-int/lit8 v9, v3, 0xf

    ushr-int/lit8 v10, v7, 0x8

    and-int/lit16 v10, v10, 0xf0

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p1, v8

    .line 50
    add-int/lit8 v8, v1, 0x2

    ushr-int/lit8 v9, v7, 0x10

    and-int/lit8 v9, v9, 0xf

    ushr-int/lit8 v10, v7, 0x7

    and-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    shl-int/lit8 v10, v7, 0x4

    and-int/lit16 v10, v10, 0xe0

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p1, v8

    .line 54
    add-int/lit8 v8, v1, 0x3

    ushr-int/lit8 v9, v7, 0x4

    and-int/lit8 v9, v9, 0x7f

    ushr-int/lit8 v10, v7, 0xd

    and-int/lit16 v10, v10, 0x80

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p1, v8

    .line 57
    nop

    .end local v3    # "b1":I
    .end local v4    # "b2":I
    .end local v5    # "b3":I
    .end local v6    # "pc":I
    .end local v7    # "addr":I
    add-int/lit8 v1, v1, 0x2

    .line 59
    :cond_1
    goto/16 :goto_2

    :cond_2
    and-int/lit8 v3, v2, 0x7f

    const/16 v4, 0x17

    if-ne v3, v4, :cond_1

    .line 63
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    .line 64
    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    .line 65
    add-int/lit8 v3, v1, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    .line 67
    and-int/lit16 v3, v2, 0xe80

    if-eqz v3, :cond_4

    .line 71
    add-int/lit8 v3, v1, 0x4

    invoke-static {p1, v3}, Lorg/tukaani/xz/common/ByteArrayView;->getIntLE([BI)I

    move-result v3

    .line 73
    .local v3, "inst2":I
    shl-int/lit8 v4, v2, 0x8

    xor-int/2addr v4, v3

    const v5, 0xf8003

    and-int/2addr v4, v5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 74
    add-int/lit8 v1, v1, 0x4

    .line 75
    goto :goto_2

    .line 81
    :cond_3
    and-int/lit16 v4, v2, -0x1000

    ushr-int/lit8 v5, v3, 0x14

    add-int/2addr v4, v5

    .line 83
    .local v4, "addr":I
    shl-int/lit8 v5, v3, 0xc

    or-int/lit16 v2, v5, 0x117

    .line 84
    move v3, v4

    .line 85
    .end local v4    # "addr":I
    goto :goto_1

    .line 90
    .end local v3    # "inst2":I
    :cond_4
    ushr-int/lit8 v3, v2, 0x1b

    .line 92
    .local v3, "inst2Rs1":I
    add-int/lit16 v5, v2, -0x3100

    and-int/lit16 v5, v5, 0x3f80

    and-int/lit8 v6, v3, 0x1d

    if-lt v5, v6, :cond_5

    .line 93
    add-int/lit8 v1, v1, 0x2

    .line 94
    goto :goto_2

    .line 98
    :cond_5
    add-int/lit8 v5, v1, 0x4

    invoke-static {p1, v5}, Lorg/tukaani/xz/common/ByteArrayView;->getIntBE([BI)I

    move-result v5

    .line 100
    .local v5, "addr":I
    iget v6, p0, Lorg/tukaani/xz/simple/RISCVDecoder;->pos:I

    add-int/2addr v6, v1

    sub-int/2addr v6, p2

    sub-int/2addr v5, v6

    .line 106
    ushr-int/lit8 v6, v2, 0xc

    shl-int/lit8 v7, v5, 0x14

    or-int/2addr v6, v7

    .line 112
    .local v6, "inst2":I
    shl-int/lit8 v7, v3, 0x7

    or-int/2addr v4, v7

    add-int/lit16 v7, v5, 0x800

    and-int/lit16 v7, v7, -0x1000

    or-int v2, v4, v7

    move v3, v6

    .line 117
    .end local v5    # "addr":I
    .end local v6    # "inst2":I
    .local v3, "inst2":I
    :goto_1
    invoke-static {p1, v1, v2}, Lorg/tukaani/xz/common/ByteArrayView;->setIntLE([BII)V

    .line 118
    add-int/lit8 v4, v1, 0x4

    invoke-static {p1, v4, v3}, Lorg/tukaani/xz/common/ByteArrayView;->setIntLE([BII)V

    .line 120
    add-int/lit8 v1, v1, 0x6

    .line 24
    .end local v2    # "inst":I
    .end local v3    # "inst2":I
    :goto_2
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_0

    .line 124
    :cond_6
    sub-int/2addr v1, p2

    .line 125
    iget v2, p0, Lorg/tukaani/xz/simple/RISCVDecoder;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/tukaani/xz/simple/RISCVDecoder;->pos:I

    .line 126
    return v1
.end method
