.class abstract Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;
.super Ljava/lang/Object;
.source "LZMACoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/lzma/LZMACoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "LiteralCoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder$LiteralSubcoder;
    }
.end annotation


# instance fields
.field private final lc:I

.field private final literalPosMask:I

.field final synthetic this$0:Lorg/tukaani/xz/lzma/LZMACoder;


# direct methods
.method constructor <init>(Lorg/tukaani/xz/lzma/LZMACoder;II)V
    .locals 2
    .param p1, "this$0"    # Lorg/tukaani/xz/lzma/LZMACoder;
    .param p2, "lc"    # I
    .param p3, "lp"    # I
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

    .line 91
    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->this$0:Lorg/tukaani/xz/lzma/LZMACoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p2, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->lc:I

    .line 93
    const/4 v0, 0x1

    shl-int v1, v0, p3

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->literalPosMask:I

    .line 94
    return-void
.end method


# virtual methods
.method final getSubcoderIndex(II)I
    .locals 3
    .param p1, "prevByte"    # I
    .param p2, "pos"    # I

    .line 97
    iget v0, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->lc:I

    rsub-int/lit8 v0, v0, 0x8

    shr-int v0, p1, v0

    .line 98
    .local v0, "low":I
    iget v1, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->literalPosMask:I

    and-int/2addr v1, p2

    iget v2, p0, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;->lc:I

    shl-int/2addr v1, v2

    .line 99
    .local v1, "high":I
    add-int v2, v0, v1

    return v2
.end method
