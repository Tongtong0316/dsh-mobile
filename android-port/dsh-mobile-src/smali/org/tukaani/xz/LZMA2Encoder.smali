.class Lorg/tukaani/xz/LZMA2Encoder;
.super Lorg/tukaani/xz/LZMA2Coder;
.source "LZMA2Encoder.java"

# interfaces
.implements Lorg/tukaani/xz/FilterEncoder;


# instance fields
.field private final options:Lorg/tukaani/xz/LZMA2Options;

.field private final props:[B


# direct methods
.method constructor <init>(Lorg/tukaani/xz/LZMA2Options;)V
    .locals 4
    .param p1, "options"    # Lorg/tukaani/xz/LZMA2Options;

    .line 13
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2Coder;-><init>()V

    .line 11
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2Encoder;->props:[B

    .line 14
    invoke-virtual {p1}, Lorg/tukaani/xz/LZMA2Options;->getPresetDict()[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 18
    invoke-virtual {p1}, Lorg/tukaani/xz/LZMA2Options;->getMode()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2Encoder;->props:[B

    aput-byte v1, v0, v1

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lorg/tukaani/xz/LZMA2Options;->getDictSize()I

    move-result v0

    const/16 v2, 0x1000

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 23
    .local v0, "d":I
    iget-object v2, p0, Lorg/tukaani/xz/LZMA2Encoder;->props:[B

    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Lorg/tukaani/xz/lzma/LZMAEncoder;->getDistSlot(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x17

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 27
    .end local v0    # "d":I
    :goto_0
    invoke-virtual {p1}, Lorg/tukaani/xz/LZMA2Options;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tukaani/xz/LZMA2Options;

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2Encoder;->options:Lorg/tukaani/xz/LZMA2Options;

    .line 28
    return-void

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XZ doesn\'t support a preset dictionary for now"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFilterID()J
    .locals 2

    .line 32
    const-wide/16 v0, 0x21

    return-wide v0
.end method

.method public getFilterProps()[B
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2Encoder;->props:[B

    return-object v0
.end method

.method public getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;
    .locals 1
    .param p1, "out"    # Lorg/tukaani/xz/FinishableOutputStream;
    .param p2, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 48
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2Encoder;->options:Lorg/tukaani/xz/LZMA2Options;

    invoke-virtual {v0, p1, p2}, Lorg/tukaani/xz/LZMA2Options;->getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public supportsFlushing()Z
    .locals 1

    .line 42
    const/4 v0, 0x1

    return v0
.end method
