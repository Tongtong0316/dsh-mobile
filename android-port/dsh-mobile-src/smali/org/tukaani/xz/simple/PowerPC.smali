.class public final Lorg/tukaani/xz/simple/PowerPC;
.super Ljava/lang/Object;
.source "PowerPC.java"

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
    iput-boolean p1, p0, Lorg/tukaani/xz/simple/PowerPC;->isEncoder:Z

    .line 17
    iput p2, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    .line 18
    return-void
.end method


# virtual methods
.method public code([BII)I
    .locals 6
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
    if-gt v1, v0, :cond_2

    .line 26
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xfc

    const/16 v3, 0x48

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 27
    invoke-static {p1, v1}, Lorg/tukaani/xz/common/ByteArrayView;->getIntBE([BI)I

    move-result v2

    .line 29
    .local v2, "instr":I
    iget v3, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    add-int/2addr v3, v1

    sub-int/2addr v3, p2

    .line 30
    .local v3, "pc":I
    iget-boolean v4, p0, Lorg/tukaani/xz/simple/PowerPC;->isEncoder:Z

    if-nez v4, :cond_0

    .line 31
    neg-int v3, v3

    .line 33
    :cond_0
    add-int v4, v2, v3

    const v5, 0x3fffffc

    and-int/2addr v4, v5

    const v5, 0x48000001

    or-int v2, v4, v5

    .line 34
    invoke-static {p1, v1, v2}, Lorg/tukaani/xz/common/ByteArrayView;->setIntBE([BII)V

    .line 25
    .end local v2    # "instr":I
    .end local v3    # "pc":I
    :cond_1
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 38
    :cond_2
    sub-int/2addr v1, p2

    .line 39
    iget v2, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/tukaani/xz/simple/PowerPC;->pos:I

    .line 40
    return v1
.end method
