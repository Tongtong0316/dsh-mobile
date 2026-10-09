.class public final Lorg/tukaani/xz/simple/ARM;
.super Ljava/lang/Object;
.source "ARM.java"

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
    iput-boolean p1, p0, Lorg/tukaani/xz/simple/ARM;->isEncoder:Z

    .line 15
    add-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/tukaani/xz/simple/ARM;->pos:I

    .line 16
    return-void
.end method


# virtual methods
.method public code([BII)I
    .locals 6
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
    add-int/lit8 v2, v1, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xeb

    if-ne v2, v3, :cond_1

    .line 25
    add-int/lit8 v2, v1, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 28
    .local v2, "src":I
    shl-int/lit8 v2, v2, 0x2

    .line 31
    iget-boolean v3, p0, Lorg/tukaani/xz/simple/ARM;->isEncoder:Z

    if-eqz v3, :cond_0

    .line 32
    iget v3, p0, Lorg/tukaani/xz/simple/ARM;->pos:I

    add-int/2addr v3, v1

    sub-int/2addr v3, p2

    add-int/2addr v3, v2

    .local v3, "dest":I
    goto :goto_1

    .line 34
    .end local v3    # "dest":I
    :cond_0
    iget v3, p0, Lorg/tukaani/xz/simple/ARM;->pos:I

    add-int/2addr v3, v1

    sub-int/2addr v3, p2

    sub-int v3, v2, v3

    .line 36
    .restart local v3    # "dest":I
    :goto_1
    ushr-int/lit8 v3, v3, 0x2

    .line 37
    add-int/lit8 v4, v1, 0x2

    ushr-int/lit8 v5, v3, 0x10

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 38
    add-int/lit8 v4, v1, 0x1

    ushr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 39
    int-to-byte v4, v3

    aput-byte v4, p1, v1

    .line 23
    .end local v2    # "src":I
    .end local v3    # "dest":I
    :cond_1
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 43
    :cond_2
    sub-int/2addr v1, p2

    .line 44
    iget v2, p0, Lorg/tukaani/xz/simple/ARM;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/tukaani/xz/simple/ARM;->pos:I

    .line 45
    return v1
.end method
