.class public final Lorg/tukaani/xz/simple/X86;
.super Ljava/lang/Object;
.source "X86.java"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# static fields
.field private static final MASK_TO_ALLOWED_STATUS:[Z

.field private static final MASK_TO_BIT_NUMBER:[I


# instance fields
.field private final isEncoder:Z

.field private pos:I

.field private prevMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const/16 v0, 0x8

    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    sput-object v1, Lorg/tukaani/xz/simple/X86;->MASK_TO_ALLOWED_STATUS:[Z

    .line 15
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/tukaani/xz/simple/X86;->MASK_TO_BIT_NUMBER:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "isEncoder"    # Z
    .param p2, "startPos"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    .line 27
    iput-boolean p1, p0, Lorg/tukaani/xz/simple/X86;->isEncoder:Z

    .line 28
    add-int/lit8 v0, p2, 0x5

    iput v0, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    .line 29
    return-void
.end method

.method private static test86MSByte(B)Z
    .locals 2
    .param p0, "b"    # B

    .line 22
    and-int/lit16 v0, p0, 0xff

    .line 23
    .local v0, "i":I
    if-eqz v0, :cond_1

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method


# virtual methods
.method public code([BII)I
    .locals 8
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 33
    add-int/lit8 v0, p2, -0x1

    .line 34
    .local v0, "prevPos":I
    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x5

    .line 37
    .local v1, "end":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-gt v2, v1, :cond_8

    .line 38
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xfe

    const/16 v5, 0xe8

    const/4 v6, 0x1

    if-eq v4, v5, :cond_0

    .line 39
    goto/16 :goto_5

    .line 41
    :cond_0
    sub-int v0, v2, v0

    .line 42
    and-int/lit8 v4, v0, -0x4

    if-eqz v4, :cond_1

    .line 43
    iput v3, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    goto :goto_1

    .line 45
    :cond_1
    iget v3, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    add-int/lit8 v4, v0, -0x1

    shl-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x7

    iput v3, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    .line 46
    iget v3, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    if-eqz v3, :cond_3

    .line 47
    sget-object v3, Lorg/tukaani/xz/simple/X86;->MASK_TO_ALLOWED_STATUS:[Z

    iget v4, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2

    add-int/lit8 v3, v2, 0x4

    sget-object v4, Lorg/tukaani/xz/simple/X86;->MASK_TO_BIT_NUMBER:[I

    iget v5, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    aget-byte v3, p1, v3

    invoke-static {v3}, Lorg/tukaani/xz/simple/X86;->test86MSByte(B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 49
    :cond_2
    move v0, v2

    .line 50
    iget v3, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    shl-int/2addr v3, v6

    or-int/2addr v3, v6

    iput v3, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    .line 51
    goto :goto_5

    .line 56
    :cond_3
    :goto_1
    move v0, v2

    .line 58
    add-int/lit8 v3, v2, 0x4

    aget-byte v3, p1, v3

    invoke-static {v3}, Lorg/tukaani/xz/simple/X86;->test86MSByte(B)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 59
    add-int/lit8 v3, v2, 0x1

    invoke-static {p1, v3}, Lorg/tukaani/xz/common/ByteArrayView;->getIntLE([BI)I

    move-result v3

    .line 62
    .local v3, "src":I
    :goto_2
    iget-boolean v4, p0, Lorg/tukaani/xz/simple/X86;->isEncoder:Z

    if-eqz v4, :cond_4

    .line 63
    iget v4, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    add-int/2addr v4, v2

    sub-int/2addr v4, p2

    add-int/2addr v4, v3

    .local v4, "dest":I
    goto :goto_3

    .line 65
    .end local v4    # "dest":I
    :cond_4
    iget v4, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    add-int/2addr v4, v2

    sub-int/2addr v4, p2

    sub-int v4, v3, v4

    .line 67
    .restart local v4    # "dest":I
    :goto_3
    iget v5, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    if-nez v5, :cond_5

    .line 68
    goto :goto_4

    .line 70
    :cond_5
    sget-object v5, Lorg/tukaani/xz/simple/X86;->MASK_TO_BIT_NUMBER:[I

    iget v7, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    aget v5, v5, v7

    mul-int/lit8 v5, v5, 0x8

    .line 71
    .local v5, "index":I
    rsub-int/lit8 v7, v5, 0x18

    ushr-int v7, v4, v7

    int-to-byte v7, v7

    invoke-static {v7}, Lorg/tukaani/xz/simple/X86;->test86MSByte(B)Z

    move-result v7

    if-nez v7, :cond_6

    .line 72
    nop

    .line 78
    .end local v5    # "index":I
    :goto_4
    shl-int/lit8 v4, v4, 0x7

    .line 79
    shr-int/lit8 v4, v4, 0x7

    .line 81
    add-int/lit8 v5, v2, 0x1

    invoke-static {p1, v5, v4}, Lorg/tukaani/xz/common/ByteArrayView;->setIntLE([BII)V

    .line 82
    nop

    .end local v3    # "src":I
    .end local v4    # "dest":I
    add-int/lit8 v2, v2, 0x4

    .line 83
    goto :goto_5

    .line 74
    .restart local v3    # "src":I
    .restart local v4    # "dest":I
    .restart local v5    # "index":I
    :cond_6
    rsub-int/lit8 v7, v5, 0x20

    shl-int v7, v6, v7

    sub-int/2addr v7, v6

    xor-int v3, v4, v7

    .line 75
    .end local v5    # "index":I
    goto :goto_2

    .line 84
    .end local v3    # "src":I
    .end local v4    # "dest":I
    :cond_7
    iget v3, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    shl-int/2addr v3, v6

    or-int/2addr v3, v6

    iput v3, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    .line 37
    :goto_5
    add-int/2addr v2, v6

    goto/16 :goto_0

    .line 88
    :cond_8
    sub-int v0, v2, v0

    .line 89
    and-int/lit8 v4, v0, -0x4

    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    iget v3, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    add-int/lit8 v4, v0, -0x1

    shl-int/2addr v3, v4

    :goto_6
    iput v3, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    .line 91
    sub-int/2addr v2, p2

    .line 92
    iget v3, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    .line 93
    return v2
.end method
