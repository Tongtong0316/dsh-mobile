.class public final Lorg/tukaani/xz/simple/RISCVEncoder;
.super Ljava/lang/Object;
.source "RISCVEncoder.java"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# instance fields
.field private pos:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "startPos"    # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lorg/tukaani/xz/simple/RISCVEncoder;->pos:I

    .line 15
    return-void
.end method


# virtual methods
.method public code([BII)I
    .locals 11
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 19
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

    .line 38
    :cond_0
    add-int/lit8 v4, v1, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    .line 39
    .local v4, "b2":I
    add-int/lit8 v5, v1, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 40
    .local v5, "b3":I
    iget v6, p0, Lorg/tukaani/xz/simple/RISCVEncoder;->pos:I

    add-int/2addr v6, v1

    sub-int/2addr v6, p2

    .line 64
    .local v6, "pc":I
    and-int/lit16 v7, v3, 0xf0

    shl-int/lit8 v7, v7, 0x8

    and-int/lit8 v8, v4, 0xf

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    and-int/lit8 v8, v4, 0x10

    shl-int/lit8 v8, v8, 0x7

    or-int/2addr v7, v8

    and-int/lit16 v8, v4, 0xe0

    ushr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    and-int/lit8 v8, v5, 0x7f

    shl-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    and-int/lit16 v8, v5, 0x80

    shl-int/lit8 v8, v8, 0xd

    or-int/2addr v7, v8

    .line 71
    .local v7, "addr":I
    add-int/2addr v7, v6

    .line 73
    add-int/lit8 v8, v1, 0x1

    and-int/lit8 v9, v3, 0xf

    ushr-int/lit8 v10, v7, 0xd

    and-int/lit16 v10, v10, 0xf0

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p1, v8

    .line 74
    add-int/lit8 v8, v1, 0x2

    ushr-int/lit8 v9, v7, 0x9

    int-to-byte v9, v9

    aput-byte v9, p1, v8

    .line 75
    add-int/lit8 v8, v1, 0x3

    ushr-int/lit8 v9, v7, 0x1

    int-to-byte v9, v9

    aput-byte v9, p1, v8

    .line 80
    nop

    .end local v3    # "b1":I
    .end local v4    # "b2":I
    .end local v5    # "b3":I
    .end local v6    # "pc":I
    .end local v7    # "addr":I
    add-int/lit8 v1, v1, 0x2

    .line 82
    :cond_1
    goto/16 :goto_2

    :cond_2
    and-int/lit8 v3, v2, 0x7f

    const/16 v4, 0x17

    if-ne v3, v4, :cond_1

    .line 84
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    .line 85
    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    .line 86
    add-int/lit8 v3, v1, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    .line 93
    and-int/lit16 v3, v2, 0xe80

    if-eqz v3, :cond_4

    .line 97
    add-int/lit8 v3, v1, 0x4

    invoke-static {p1, v3}, Lorg/tukaani/xz/common/ByteArrayView;->getIntLE([BI)I

    move-result v3

    .line 110
    .local v3, "inst2":I
    shl-int/lit8 v4, v2, 0x8

    xor-int/2addr v4, v3

    const v5, 0xf8003

    and-int/2addr v4, v5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 125
    add-int/lit8 v1, v1, 0x4

    .line 126
    goto :goto_2

    .line 161
    :cond_3
    and-int/lit16 v4, v2, -0x1000

    shr-int/lit8 v5, v3, 0x14

    add-int/2addr v4, v5

    .line 163
    .local v4, "addr":I
    iget v5, p0, Lorg/tukaani/xz/simple/RISCVEncoder;->pos:I

    add-int/2addr v5, v1

    sub-int/2addr v5, p2

    add-int/2addr v4, v5

    .line 169
    shl-int/lit8 v5, v3, 0xc

    or-int/lit16 v2, v5, 0x117

    .line 171
    invoke-static {p1, v1, v2}, Lorg/tukaani/xz/common/ByteArrayView;->setIntLE([BII)V

    .line 175
    add-int/lit8 v5, v1, 0x4

    invoke-static {p1, v5, v4}, Lorg/tukaani/xz/common/ByteArrayView;->setIntBE([BII)V

    .line 176
    .end local v3    # "inst2":I
    .end local v4    # "addr":I
    goto :goto_1

    .line 197
    :cond_4
    ushr-int/lit8 v3, v2, 0x1b

    .line 234
    .local v3, "fakeRs1":I
    add-int/lit16 v5, v2, -0x3100

    and-int/lit16 v5, v5, 0x3f80

    and-int/lit8 v6, v3, 0x1d

    if-lt v5, v6, :cond_5

    .line 235
    add-int/lit8 v1, v1, 0x2

    .line 236
    goto :goto_2

    .line 239
    :cond_5
    add-int/lit8 v5, v1, 0x4

    invoke-static {p1, v5}, Lorg/tukaani/xz/common/ByteArrayView;->getIntLE([BI)I

    move-result v5

    .line 244
    .local v5, "fakeAddr":I
    ushr-int/lit8 v6, v2, 0xc

    shl-int/lit8 v7, v5, 0x14

    or-int/2addr v6, v7

    .line 250
    .local v6, "fakeInst2":I
    shl-int/lit8 v7, v3, 0x7

    or-int/2addr v4, v7

    and-int/lit16 v7, v5, -0x1000

    or-int v2, v4, v7

    .line 252
    invoke-static {p1, v1, v2}, Lorg/tukaani/xz/common/ByteArrayView;->setIntLE([BII)V

    .line 253
    add-int/lit8 v4, v1, 0x4

    invoke-static {p1, v4, v6}, Lorg/tukaani/xz/common/ByteArrayView;->setIntLE([BII)V

    .line 256
    .end local v3    # "fakeRs1":I
    .end local v5    # "fakeAddr":I
    .end local v6    # "fakeInst2":I
    :goto_1
    add-int/lit8 v1, v1, 0x6

    .line 24
    .end local v2    # "inst":I
    :goto_2
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_0

    .line 260
    :cond_6
    sub-int/2addr v1, p2

    .line 261
    iget v2, p0, Lorg/tukaani/xz/simple/RISCVEncoder;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/tukaani/xz/simple/RISCVEncoder;->pos:I

    .line 262
    return v1
.end method
