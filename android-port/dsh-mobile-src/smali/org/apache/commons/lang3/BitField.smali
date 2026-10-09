.class public Lorg/apache/commons/lang3/BitField;
.super Ljava/lang/Object;
.source "BitField.java"


# instance fields
.field private final mask:I

.field private final shiftCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "mask"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lorg/apache/commons/lang3/BitField;->mask:I

    .line 87
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/apache/commons/lang3/BitField;->shiftCount:I

    .line 88
    return-void
.end method


# virtual methods
.method public clear(I)I
    .locals 1
    .param p1, "holder"    # I

    .line 99
    iget v0, p0, Lorg/apache/commons/lang3/BitField;->mask:I

    not-int v0, v0

    and-int/2addr v0, p1

    return v0
.end method

.method public clearByte(B)B
    .locals 1
    .param p1, "holder"    # B

    .line 112
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clear(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public clearShort(S)S
    .locals 1
    .param p1, "holder"    # S

    .line 124
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clear(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getRawValue(I)I
    .locals 1
    .param p1, "holder"    # I

    .line 135
    iget v0, p0, Lorg/apache/commons/lang3/BitField;->mask:I

    and-int/2addr v0, p1

    return v0
.end method

.method public getShortRawValue(S)S
    .locals 1
    .param p1, "holder"    # S

    .line 146
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->getRawValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getShortValue(S)S
    .locals 1
    .param p1, "holder"    # S

    .line 164
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->getValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getValue(I)I
    .locals 2
    .param p1, "holder"    # I

    .line 182
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->getRawValue(I)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/lang3/BitField;->shiftCount:I

    shr-int/2addr v0, v1

    return v0
.end method

.method public isAllSet(I)Z
    .locals 2
    .param p1, "holder"    # I

    .line 198
    iget v0, p0, Lorg/apache/commons/lang3/BitField;->mask:I

    and-int/2addr v0, p1

    iget v1, p0, Lorg/apache/commons/lang3/BitField;->mask:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSet(I)Z
    .locals 1
    .param p1, "holder"    # I

    .line 215
    iget v0, p0, Lorg/apache/commons/lang3/BitField;->mask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(I)I
    .locals 1
    .param p1, "holder"    # I

    .line 227
    iget v0, p0, Lorg/apache/commons/lang3/BitField;->mask:I

    or-int/2addr v0, p1

    return v0
.end method

.method public setBoolean(IZ)I
    .locals 1
    .param p1, "holder"    # I
    .param p2, "flag"    # Z

    .line 240
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->set(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clear(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public setByte(B)B
    .locals 1
    .param p1, "holder"    # B

    .line 253
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->set(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public setByteBoolean(BZ)B
    .locals 1
    .param p1, "holder"    # B
    .param p2, "flag"    # Z

    .line 266
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->setByte(B)B

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clearByte(B)B

    move-result v0

    :goto_0
    return v0
.end method

.method public setShort(S)S
    .locals 1
    .param p1, "holder"    # S

    .line 278
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->set(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public setShortBoolean(SZ)S
    .locals 1
    .param p1, "holder"    # S
    .param p2, "flag"    # Z

    .line 291
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->setShort(S)S

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/BitField;->clearShort(S)S

    move-result v0

    :goto_0
    return v0
.end method

.method public setShortValue(SS)S
    .locals 1
    .param p1, "holder"    # S
    .param p2, "value"    # S

    .line 305
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/BitField;->setValue(II)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public setValue(II)I
    .locals 3
    .param p1, "holder"    # I
    .param p2, "value"    # I

    .line 319
    iget v0, p0, Lorg/apache/commons/lang3/BitField;->mask:I

    not-int v0, v0

    and-int/2addr v0, p1

    iget v1, p0, Lorg/apache/commons/lang3/BitField;->shiftCount:I

    shl-int v1, p2, v1

    iget v2, p0, Lorg/apache/commons/lang3/BitField;->mask:I

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method
