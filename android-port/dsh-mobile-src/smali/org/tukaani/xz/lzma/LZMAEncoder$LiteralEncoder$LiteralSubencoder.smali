.class Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;
.super Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder$LiteralSubcoder;
.source "LZMAEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiteralSubencoder"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;


# direct methods
.method private constructor <init>(Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 550
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;->this$1:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    invoke-direct {p0, p1}, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder$LiteralSubcoder;-><init>(Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;Lorg/tukaani/xz/lzma/LZMAEncoder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;
    .param p2, "x1"    # Lorg/tukaani/xz/lzma/LZMAEncoder$1;

    .line 550
    invoke-direct {p0, p1}, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;-><init>(Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;)V

    return-void
.end method


# virtual methods
.method encode()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;->this$1:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    iget-object v0, v0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    iget-object v0, v0, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;->this$1:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    iget-object v1, v1, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    iget v1, v1, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v0

    or-int/lit16 v0, v0, 0x100

    .line 554
    .local v0, "symbol":I
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;->this$1:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    iget-object v1, v1, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    iget-object v1, v1, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->isLiteral()Z

    move-result v1

    const/high16 v2, 0x10000

    if-eqz v1, :cond_1

    .line 559
    :cond_0
    ushr-int/lit8 v1, v0, 0x8

    .line 560
    .local v1, "subencoderIndex":I
    ushr-int/lit8 v3, v0, 0x7

    and-int/lit8 v3, v3, 0x1

    .line 561
    .local v3, "bit":I
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;->this$1:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    iget-object v4, v4, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-static {v4}, Lorg/tukaani/xz/lzma/LZMAEncoder;->access$100(Lorg/tukaani/xz/lzma/LZMAEncoder;)Lorg/tukaani/xz/rangecoder/RangeEncoder;

    move-result-object v4

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;->probs:[S

    invoke-virtual {v4, v5, v1, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 562
    shl-int/lit8 v0, v0, 0x1

    .line 563
    if-lt v0, v2, :cond_0

    .line 565
    .end local v1    # "subencoderIndex":I
    .end local v3    # "bit":I
    goto :goto_0

    .line 566
    :cond_1
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;->this$1:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    iget-object v1, v1, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    iget-object v1, v1, Lorg/tukaani/xz/lzma/LZMAEncoder;->lz:Lorg/tukaani/xz/lz/LZEncoder;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;->this$1:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    iget-object v3, v3, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    iget-object v3, v3, Lorg/tukaani/xz/lzma/LZMAEncoder;->reps:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;->this$1:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    iget-object v4, v4, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    iget v4, v4, Lorg/tukaani/xz/lzma/LZMAEncoder;->readAhead:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lorg/tukaani/xz/lz/LZEncoder;->getByte(I)I

    move-result v1

    .line 567
    .local v1, "matchByte":I
    const/16 v3, 0x100

    .line 573
    .local v3, "offset":I
    :cond_2
    shl-int/lit8 v1, v1, 0x1

    .line 574
    and-int v4, v1, v3

    .line 575
    .local v4, "matchBit":I
    add-int v5, v3, v4

    ushr-int/lit8 v6, v0, 0x8

    add-int/2addr v5, v6

    .line 576
    .local v5, "subencoderIndex":I
    ushr-int/lit8 v6, v0, 0x7

    and-int/lit8 v6, v6, 0x1

    .line 577
    .local v6, "bit":I
    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;->this$1:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    iget-object v7, v7, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-static {v7}, Lorg/tukaani/xz/lzma/LZMAEncoder;->access$100(Lorg/tukaani/xz/lzma/LZMAEncoder;)Lorg/tukaani/xz/rangecoder/RangeEncoder;

    move-result-object v7

    iget-object v8, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;->probs:[S

    invoke-virtual {v7, v8, v5, v6}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 578
    shl-int/lit8 v0, v0, 0x1

    .line 579
    xor-int v7, v1, v0

    not-int v7, v7

    and-int/2addr v3, v7

    .line 580
    if-lt v0, v2, :cond_2

    .line 583
    .end local v1    # "matchByte":I
    .end local v3    # "offset":I
    .end local v4    # "matchBit":I
    .end local v5    # "subencoderIndex":I
    .end local v6    # "bit":I
    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;->this$1:Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;

    iget-object v1, v1, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    iget-object v1, v1, Lorg/tukaani/xz/lzma/LZMAEncoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    .line 584
    return-void
.end method

.method getMatchedPrice(II)I
    .locals 6
    .param p1, "symbol"    # I
    .param p2, "matchByte"    # I

    .line 605
    const/4 v0, 0x0

    .line 606
    .local v0, "price":I
    const/16 v1, 0x100

    .line 611
    .local v1, "offset":I
    or-int/lit16 p1, p1, 0x100

    .line 614
    :cond_0
    shl-int/lit8 p2, p2, 0x1

    .line 615
    and-int v2, p2, v1

    .line 616
    .local v2, "matchBit":I
    add-int v3, v1, v2

    ushr-int/lit8 v4, p1, 0x8

    add-int/2addr v3, v4

    .line 617
    .local v3, "subencoderIndex":I
    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x1

    .line 618
    .local v4, "bit":I
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;->probs:[S

    aget-short v5, v5, v3

    invoke-static {v5, v4}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v5

    add-int/2addr v0, v5

    .line 620
    shl-int/lit8 p1, p1, 0x1

    .line 621
    xor-int v5, p2, p1

    not-int v5, v5

    and-int/2addr v1, v5

    .line 622
    const/high16 v5, 0x10000

    if-lt p1, v5, :cond_0

    .line 624
    return v0
.end method

.method getNormalPrice(I)I
    .locals 4
    .param p1, "symbol"    # I

    .line 587
    const/4 v0, 0x0

    .line 591
    .local v0, "price":I
    or-int/lit16 p1, p1, 0x100

    .line 594
    :cond_0
    ushr-int/lit8 v1, p1, 0x8

    .line 595
    .local v1, "subencoderIndex":I
    ushr-int/lit8 v2, p1, 0x7

    and-int/lit8 v2, v2, 0x1

    .line 596
    .local v2, "bit":I
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LiteralEncoder$LiteralSubencoder;->probs:[S

    aget-short v3, v3, v1

    invoke-static {v3, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 598
    shl-int/lit8 p1, p1, 0x1

    .line 599
    const/high16 v3, 0x10000

    if-lt p1, v3, :cond_0

    .line 601
    return v0
.end method
