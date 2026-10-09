.class final Lorg/tukaani/xz/lz/MatchLength;
.super Ljava/lang/Object;
.source "MatchLength.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final EXTRA_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getLen([BIIII)I
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "delta"    # I
    .param p3, "len"    # I
    .param p4, "lenLimit"    # I

    .line 12
    if-ltz p1, :cond_4

    .line 13
    if-lez p2, :cond_3

    .line 14
    if-ltz p3, :cond_2

    .line 15
    if-lt p4, p3, :cond_1

    .line 17
    add-int/2addr p4, p1

    .line 18
    add-int v0, p1, p3

    .line 20
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    aget-byte v1, p0, v0

    sub-int v2, v0, p2

    aget-byte v2, p0, v2

    if-ne v1, v2, :cond_0

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    sub-int v1, v0, p1

    return v1

    .line 15
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 14
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 12
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
