.class public final Lorg/tukaani/xz/simple/ARM64;
.super Ljava/lang/Object;
.source "ARM64.java"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# instance fields
.field private final isEncoder:Z

.field private pos:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0
    .param p1, "isEncoder"    # Z
    .param p2, "startPos"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lorg/tukaani/xz/simple/ARM64;->isEncoder:Z

    .line 17
    iput p2, p0, Lorg/tukaani/xz/simple/ARM64;->pos:I

    .line 18
    return-void
.end method


# virtual methods
.method public code([BII)I
    .locals 8
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 22
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x4

    .line 25
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_5

    .line 28
    add-int/lit8 v2, v1, 0x3

    aget-byte v2, p1, v2

    .line 30
    .local v2, "instr":I
    and-int/lit16 v3, v2, 0xfc

    const/16 v4, 0x94

    if-ne v3, v4, :cond_1

    .line 41
    invoke-static {p1, v1}, Lorg/tukaani/xz/common/ByteArrayView;->getIntLE([BI)I

    move-result v2

    .line 43
    iget v3, p0, Lorg/tukaani/xz/simple/ARM64;->pos:I

    add-int/2addr v3, v1

    sub-int/2addr v3, p2

    ushr-int/lit8 v3, v3, 0x2

    .line 44
    .local v3, "pc":I
    iget-boolean v4, p0, Lorg/tukaani/xz/simple/ARM64;->isEncoder:Z

    if-nez v4, :cond_0

    .line 45
    neg-int v3, v3

    .line 47
    :cond_0
    add-int v4, v2, v3

    const v5, 0x3ffffff

    and-int/2addr v4, v5

    const/high16 v5, -0x6c000000

    or-int v2, v4, v5

    .line 48
    invoke-static {p1, v1, v2}, Lorg/tukaani/xz/common/ByteArrayView;->setIntLE([BII)V

    .end local v3    # "pc":I
    goto :goto_1

    .line 50
    :cond_1
    and-int/lit16 v3, v2, 0x9f

    const/16 v4, 0x90

    if-ne v3, v4, :cond_4

    .line 62
    invoke-static {p1, v1}, Lorg/tukaani/xz/common/ByteArrayView;->getIntLE([BI)I

    move-result v2

    .line 63
    ushr-int/lit8 v3, v2, 0x1d

    and-int/lit8 v3, v3, 0x3

    ushr-int/lit8 v4, v2, 0x3

    const v5, 0x1ffffc

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    .line 72
    .local v3, "src":I
    const/high16 v4, 0x20000

    add-int v5, v3, v4

    const/high16 v6, 0x1c0000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 73
    goto :goto_2

    .line 75
    :cond_2
    iget v5, p0, Lorg/tukaani/xz/simple/ARM64;->pos:I

    add-int/2addr v5, v1

    sub-int/2addr v5, p2

    ushr-int/lit8 v5, v5, 0xc

    .line 76
    .local v5, "pc":I
    iget-boolean v6, p0, Lorg/tukaani/xz/simple/ARM64;->isEncoder:Z

    if-nez v6, :cond_3

    .line 77
    neg-int v5, v5

    .line 79
    :cond_3
    add-int v6, v3, v5

    .line 81
    .local v6, "dest":I
    const v7, -0x6fffffe1

    and-int/2addr v2, v7

    .line 82
    and-int/lit8 v7, v6, 0x3

    shl-int/lit8 v7, v7, 0x1d

    or-int/2addr v2, v7

    .line 83
    const v7, 0x3fffc

    and-int/2addr v7, v6

    shl-int/lit8 v7, v7, 0x3

    or-int/2addr v2, v7

    .line 84
    and-int/2addr v4, v6

    neg-int v4, v4

    const/high16 v7, 0xe00000

    and-int/2addr v4, v7

    or-int/2addr v2, v4

    .line 85
    invoke-static {p1, v1, v2}, Lorg/tukaani/xz/common/ByteArrayView;->setIntLE([BII)V

    goto :goto_2

    .line 50
    .end local v3    # "src":I
    .end local v5    # "pc":I
    .end local v6    # "dest":I
    :cond_4
    :goto_1
    nop

    .line 25
    .end local v2    # "instr":I
    :goto_2
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 89
    :cond_5
    sub-int/2addr v1, p2

    .line 90
    iget v2, p0, Lorg/tukaani/xz/simple/ARM64;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/tukaani/xz/simple/ARM64;->pos:I

    .line 91
    return v1
.end method
