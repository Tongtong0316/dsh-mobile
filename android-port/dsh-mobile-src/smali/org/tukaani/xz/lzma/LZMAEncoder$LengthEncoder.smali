.class Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;
.super Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;
.source "LZMAEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/lzma/LZMAEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LengthEncoder"
.end annotation


# static fields
.field private static final PRICE_UPDATE_INTERVAL:I = 0x20


# instance fields
.field private final counters:[I

.field private final prices:[[I

.field final synthetic this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;


# direct methods
.method constructor <init>(Lorg/tukaani/xz/lzma/LZMAEncoder;II)V
    .locals 4
    .param p1, "this$0"    # Lorg/tukaani/xz/lzma/LZMAEncoder;
    .param p2, "pb"    # I
    .param p3, "niceLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 641
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-direct {p0, p1}, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;-><init>(Lorg/tukaani/xz/lzma/LZMACoder;)V

    .line 642
    const/4 v0, 0x1

    shl-int v1, v0, p2

    .line 643
    .local v1, "posStates":I
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->counters:[I

    .line 648
    add-int/lit8 v2, p3, -0x2

    add-int/2addr v2, v0

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 650
    .local v2, "lenSymbols":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v0

    const/4 v0, 0x0

    aput v1, v3, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->prices:[[I

    .line 651
    return-void
.end method

.method private updatePrices(I)V
    .locals 9
    .param p1, "posState"    # I

    .line 699
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->choice:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    invoke-static {v0, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v0

    .line 701
    .local v0, "choice0Price":I
    const/4 v2, 0x0

    .line 702
    .local v2, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 703
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->prices:[[I

    aget-object v3, v3, p1

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->low:[[S

    aget-object v4, v4, p1

    .line 704
    invoke-static {v4, v2}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitTreePrice([SI)I

    move-result v4

    add-int/2addr v4, v0

    aput v4, v3, v2

    .line 702
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 706
    :cond_0
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->choice:[S

    aget-short v4, v4, v1

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v0

    .line 707
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->choice:[S

    aget-short v4, v4, v5

    invoke-static {v4, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v1

    .line 709
    .local v1, "choice1Price":I
    :goto_1
    const/16 v4, 0x10

    if-ge v2, v4, :cond_1

    .line 710
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->prices:[[I

    aget-object v4, v4, p1

    add-int v6, v0, v1

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->mid:[[S

    aget-object v7, v7, p1

    add-int/lit8 v8, v2, -0x8

    .line 711
    invoke-static {v7, v8}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitTreePrice([SI)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v4, v2

    .line 709
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 714
    :cond_1
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->choice:[S

    aget-short v4, v4, v5

    invoke-static {v4, v5}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitPrice(II)I

    move-result v1

    .line 716
    :goto_2
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->prices:[[I

    aget-object v4, v4, p1

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 717
    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->prices:[[I

    aget-object v4, v4, p1

    add-int v5, v0, v1

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->high:[S

    add-int/lit8 v7, v2, -0x8

    sub-int/2addr v7, v3

    .line 718
    invoke-static {v6, v7}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->getBitTreePrice([SI)I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v4, v2

    .line 716
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 720
    :cond_2
    return-void
.end method


# virtual methods
.method encode(II)V
    .locals 5
    .param p1, "len"    # I
    .param p2, "posState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 664
    add-int/lit8 p1, p1, -0x2

    .line 666
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ge p1, v2, :cond_0

    .line 667
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-static {v2}, Lorg/tukaani/xz/lzma/LZMAEncoder;->access$100(Lorg/tukaani/xz/lzma/LZMAEncoder;)Lorg/tukaani/xz/rangecoder/RangeEncoder;

    move-result-object v2

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->choice:[S

    invoke-virtual {v2, v3, v0, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 668
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-static {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->access$100(Lorg/tukaani/xz/lzma/LZMAEncoder;)Lorg/tukaani/xz/rangecoder/RangeEncoder;

    move-result-object v0

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->low:[[S

    aget-object v2, v2, p2

    invoke-virtual {v0, v2, p1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBitTree([SI)V

    goto :goto_0

    .line 670
    :cond_0
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-static {v3}, Lorg/tukaani/xz/lzma/LZMAEncoder;->access$100(Lorg/tukaani/xz/lzma/LZMAEncoder;)Lorg/tukaani/xz/rangecoder/RangeEncoder;

    move-result-object v3

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->choice:[S

    invoke-virtual {v3, v4, v0, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 671
    add-int/lit8 p1, p1, -0x8

    .line 673
    if-ge p1, v2, :cond_1

    .line 674
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-static {v2}, Lorg/tukaani/xz/lzma/LZMAEncoder;->access$100(Lorg/tukaani/xz/lzma/LZMAEncoder;)Lorg/tukaani/xz/rangecoder/RangeEncoder;

    move-result-object v2

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->choice:[S

    invoke-virtual {v2, v3, v1, v0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 675
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-static {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->access$100(Lorg/tukaani/xz/lzma/LZMAEncoder;)Lorg/tukaani/xz/rangecoder/RangeEncoder;

    move-result-object v0

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->mid:[[S

    aget-object v2, v2, p2

    invoke-virtual {v0, v2, p1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBitTree([SI)V

    goto :goto_0

    .line 677
    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-static {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->access$100(Lorg/tukaani/xz/lzma/LZMAEncoder;)Lorg/tukaani/xz/rangecoder/RangeEncoder;

    move-result-object v0

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->choice:[S

    invoke-virtual {v0, v2, v1, v1}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBit([SII)V

    .line 678
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->this$0:Lorg/tukaani/xz/lzma/LZMAEncoder;

    invoke-static {v0}, Lorg/tukaani/xz/lzma/LZMAEncoder;->access$100(Lorg/tukaani/xz/lzma/LZMAEncoder;)Lorg/tukaani/xz/rangecoder/RangeEncoder;

    move-result-object v0

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->high:[S

    add-int/lit8 v3, p1, -0x8

    invoke-virtual {v0, v2, v3}, Lorg/tukaani/xz/rangecoder/RangeEncoder;->encodeBitTree([SI)V

    .line 682
    :goto_0
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->counters:[I

    aget v2, v0, p2

    sub-int/2addr v2, v1

    aput v2, v0, p2

    .line 683
    return-void
.end method

.method getPrice(II)I
    .locals 2
    .param p1, "len"    # I
    .param p2, "posState"    # I

    .line 686
    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->prices:[[I

    aget-object v0, v0, p2

    add-int/lit8 v1, p1, -0x2

    aget v0, v0, v1

    return v0
.end method

.method reset()V
    .locals 3

    .line 655
    invoke-super {p0}, Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;->reset()V

    .line 659
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->counters:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 660
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->counters:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 661
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method updatePrices()V
    .locals 3

    .line 690
    const/4 v0, 0x0

    .local v0, "posState":I
    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->counters:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 691
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->counters:[I

    aget v1, v1, v0

    if-gtz v1, :cond_0

    .line 692
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->counters:[I

    const/16 v2, 0x20

    aput v2, v1, v0

    .line 693
    invoke-direct {p0, v0}, Lorg/tukaani/xz/lzma/LZMAEncoder$LengthEncoder;->updatePrices(I)V

    .line 690
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 696
    .end local v0    # "posState":I
    :cond_1
    return-void
.end method
