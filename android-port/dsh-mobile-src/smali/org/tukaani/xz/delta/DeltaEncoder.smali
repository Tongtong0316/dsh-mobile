.class public Lorg/tukaani/xz/delta/DeltaEncoder;
.super Lorg/tukaani/xz/delta/DeltaCoder;
.source "DeltaEncoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 8
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "distance"    # I

    .line 10
    invoke-direct {p0, p1}, Lorg/tukaani/xz/delta/DeltaCoder;-><init>(I)V

    .line 11
    return-void
.end method


# virtual methods
.method public encode([BII[B)V
    .locals 5
    .param p1, "in"    # [B
    .param p2, "in_off"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B

    .line 14
    const/4 v0, 0x0

    .line 17
    .local v0, "i":I
    iget v1, p0, Lorg/tukaani/xz/delta/DeltaEncoder;->distance:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 18
    add-int v2, p2, v0

    aget-byte v2, p1, v2

    iget-object v3, p0, Lorg/tukaani/xz/delta/DeltaEncoder;->history:[B

    aget-byte v3, v3, v0

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    .end local v1    # "j":I
    :cond_0
    iget v1, p0, Lorg/tukaani/xz/delta/DeltaEncoder;->distance:I

    const/4 v2, 0x0

    if-lt p3, v1, :cond_1

    .line 24
    add-int v1, p2, p3

    iget v3, p0, Lorg/tukaani/xz/delta/DeltaEncoder;->distance:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lorg/tukaani/xz/delta/DeltaEncoder;->history:[B

    iget v4, p0, Lorg/tukaani/xz/delta/DeltaEncoder;->distance:I

    invoke-static {p1, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 27
    :cond_1
    if-ne v0, p3, :cond_3

    .line 30
    iget-object v1, p0, Lorg/tukaani/xz/delta/DeltaEncoder;->history:[B

    iget-object v3, p0, Lorg/tukaani/xz/delta/DeltaEncoder;->history:[B

    iget v4, p0, Lorg/tukaani/xz/delta/DeltaEncoder;->distance:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    iget-object v1, p0, Lorg/tukaani/xz/delta/DeltaEncoder;->history:[B

    iget v2, p0, Lorg/tukaani/xz/delta/DeltaEncoder;->distance:I

    sub-int/2addr v2, v0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    :goto_1
    if-ge v0, p3, :cond_2

    .line 37
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    add-int v2, p2, v0

    iget v3, p0, Lorg/tukaani/xz/delta/DeltaEncoder;->distance:I

    sub-int/2addr v2, v3

    aget-byte v2, p1, v2

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 39
    :cond_2
    return-void

    .line 27
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
