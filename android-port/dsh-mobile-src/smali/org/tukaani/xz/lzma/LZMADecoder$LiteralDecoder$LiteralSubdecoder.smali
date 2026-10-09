.class Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;
.super Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder$LiteralSubcoder;
.source "LZMADecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiteralSubdecoder"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;


# direct methods
.method private constructor <init>(Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    invoke-direct {p0, p1}, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder$LiteralSubcoder;-><init>(Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;Lorg/tukaani/xz/lzma/LZMADecoder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;
    .param p2, "x1"    # Lorg/tukaani/xz/lzma/LZMADecoder$1;

    .line 151
    invoke-direct {p0, p1}, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;-><init>(Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;)V

    return-void
.end method


# virtual methods
.method decode()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    const/4 v0, 0x1

    .line 155
    .local v0, "symbol":I
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    iget-object v1, v1, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    iget-object v1, v1, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->isLiteral()Z

    move-result v1

    const/16 v2, 0x100

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    shl-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    iget-object v3, v3, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-static {v3}, Lorg/tukaani/xz/lzma/LZMADecoder;->access$300(Lorg/tukaani/xz/lzma/LZMADecoder;)Lorg/tukaani/xz/rangecoder/RangeDecoder;

    move-result-object v3

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->probs:[S

    invoke-virtual {v3, v4, v0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v3

    or-int v0, v1, v3

    .line 158
    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 161
    :cond_1
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    iget-object v1, v1, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-static {v1}, Lorg/tukaani/xz/lzma/LZMADecoder;->access$200(Lorg/tukaani/xz/lzma/LZMADecoder;)Lorg/tukaani/xz/lz/LZDecoder;

    move-result-object v1

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    iget-object v3, v3, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    iget-object v3, v3, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Lorg/tukaani/xz/lz/LZDecoder;->getByte(I)I

    move-result v1

    .line 162
    .local v1, "matchByte":I
    const/16 v3, 0x100

    .line 167
    .local v3, "offset":I
    :cond_2
    shl-int/lit8 v1, v1, 0x1

    .line 168
    and-int v4, v1, v3

    .line 169
    .local v4, "matchBit":I
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    iget-object v5, v5, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-static {v5}, Lorg/tukaani/xz/lzma/LZMADecoder;->access$300(Lorg/tukaani/xz/lzma/LZMADecoder;)Lorg/tukaani/xz/rangecoder/RangeDecoder;

    move-result-object v5

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->probs:[S

    add-int v7, v3, v4

    add-int/2addr v7, v0

    invoke-virtual {v5, v6, v7}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v5

    .line 170
    .local v5, "bit":I
    shl-int/lit8 v6, v0, 0x1

    or-int v0, v6, v5

    .line 171
    rsub-int/lit8 v6, v5, 0x0

    not-int v7, v4

    xor-int/2addr v6, v7

    and-int/2addr v3, v6

    .line 172
    if-lt v0, v2, :cond_2

    .line 175
    .end local v1    # "matchByte":I
    .end local v3    # "offset":I
    .end local v4    # "matchBit":I
    .end local v5    # "bit":I
    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    iget-object v1, v1, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-static {v1}, Lorg/tukaani/xz/lzma/LZMADecoder;->access$200(Lorg/tukaani/xz/lzma/LZMADecoder;)Lorg/tukaani/xz/lz/LZDecoder;

    move-result-object v1

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/lz/LZDecoder;->putByte(B)V

    .line 176
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    iget-object v1, v1, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    iget-object v1, v1, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    .line 177
    return-void
.end method
