.class public final Lorg/tukaani/xz/simple/SPARC;
.super Ljava/lang/Object;
.source "SPARC.java"

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
    iput-boolean p1, p0, Lorg/tukaani/xz/simple/SPARC;->isEncoder:Z

    .line 17
    iput p2, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    .line 18
    return-void
.end method


# virtual methods
.method public code([BII)I
    .locals 7
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
    if-gt v1, v0, :cond_4

    .line 26
    aget-byte v2, p1, v1

    const/16 v3, 0x40

    const/16 v4, 0xc0

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    :cond_0
    aget-byte v2, p1, v1

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p1, v2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_3

    .line 28
    :cond_1
    invoke-static {p1, v1}, Lorg/tukaani/xz/common/ByteArrayView;->getIntBE([BI)I

    move-result v2

    .line 30
    .local v2, "src":I
    iget v3, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    add-int/2addr v3, v1

    sub-int/2addr v3, p2

    ushr-int/lit8 v3, v3, 0x2

    .line 31
    .local v3, "pc":I
    iget-boolean v4, p0, Lorg/tukaani/xz/simple/SPARC;->isEncoder:Z

    if-nez v4, :cond_2

    .line 32
    neg-int v3, v3

    .line 34
    :cond_2
    add-int v4, v2, v3

    .line 35
    .local v4, "dest":I
    shl-int/lit8 v4, v4, 0x9

    .line 36
    shr-int/lit8 v4, v4, 0x9

    .line 37
    const v5, 0x3fffffff    # 1.9999999f

    and-int/2addr v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    or-int v4, v5, v6

    .line 39
    invoke-static {p1, v1, v4}, Lorg/tukaani/xz/common/ByteArrayView;->setIntBE([BII)V

    .line 25
    .end local v2    # "src":I
    .end local v3    # "pc":I
    .end local v4    # "dest":I
    :cond_3
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 43
    :cond_4
    sub-int/2addr v1, p2

    .line 44
    iget v2, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    .line 45
    return v1
.end method
