.class public final Lorg/tukaani/xz/simple/ARMThumb;
.super Ljava/lang/Object;
.source "ARMThumb.java"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# instance fields
.field private final isEncoder:Z

.field private pos:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "isEncoder"    # Z
    .param p2, "startPos"    # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lorg/tukaani/xz/simple/ARMThumb;->isEncoder:Z

    .line 15
    add-int/lit8 v0, p2, 0x4

    iput v0, p0, Lorg/tukaani/xz/simple/ARMThumb;->pos:I

    .line 16
    return-void
.end method


# virtual methods
.method public code([BII)I
    .locals 8
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 20
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x4

    .line 23
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_2

    .line 24
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    const/16 v3, 0xf8

    and-int/2addr v2, v3

    const/16 v4, 0xf0

    if-ne v2, v4, :cond_1

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, p1, v2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    .line 25
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x13

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0xb

    or-int/2addr v2, v5

    add-int/lit8 v5, v1, 0x3

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    add-int/lit8 v5, v1, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    .line 29
    .local v2, "src":I
    shl-int/lit8 v2, v2, 0x1

    .line 32
    iget-boolean v5, p0, Lorg/tukaani/xz/simple/ARMThumb;->isEncoder:Z

    if-eqz v5, :cond_0

    .line 33
    iget v5, p0, Lorg/tukaani/xz/simple/ARMThumb;->pos:I

    add-int/2addr v5, v1

    sub-int/2addr v5, p2

    add-int/2addr v5, v2

    .local v5, "dest":I
    goto :goto_1

    .line 35
    .end local v5    # "dest":I
    :cond_0
    iget v5, p0, Lorg/tukaani/xz/simple/ARMThumb;->pos:I

    add-int/2addr v5, v1

    sub-int/2addr v5, p2

    sub-int v5, v2, v5

    .line 37
    .restart local v5    # "dest":I
    :goto_1
    ushr-int/lit8 v5, v5, 0x1

    .line 38
    add-int/lit8 v6, v1, 0x1

    ushr-int/lit8 v7, v5, 0x13

    and-int/lit8 v7, v7, 0x7

    or-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, p1, v6

    .line 39
    ushr-int/lit8 v4, v5, 0xb

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    .line 40
    add-int/lit8 v4, v1, 0x3

    ushr-int/lit8 v6, v5, 0x8

    and-int/lit8 v6, v6, 0x7

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    .line 41
    add-int/lit8 v3, v1, 0x2

    int-to-byte v4, v5

    aput-byte v4, p1, v3

    .line 42
    add-int/lit8 v1, v1, 0x2

    .line 23
    .end local v2    # "src":I
    .end local v5    # "dest":I
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 46
    :cond_2
    sub-int/2addr v1, p2

    .line 47
    iget v2, p0, Lorg/tukaani/xz/simple/ARMThumb;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/tukaani/xz/simple/ARMThumb;->pos:I

    .line 48
    return v1
.end method
