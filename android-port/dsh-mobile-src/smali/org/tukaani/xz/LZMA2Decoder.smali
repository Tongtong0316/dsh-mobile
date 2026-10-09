.class Lorg/tukaani/xz/LZMA2Decoder;
.super Lorg/tukaani/xz/LZMA2Coder;
.source "LZMA2Decoder.java"

# interfaces
.implements Lorg/tukaani/xz/FilterDecoder;


# instance fields
.field private dictSize:I


# direct methods
.method constructor <init>([B)V
    .locals 4
    .param p1, "props"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2Coder;-><init>()V

    .line 15
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x25

    if-gt v2, v3, :cond_0

    .line 19
    aget-byte v2, p1, v0

    and-int/2addr v2, v1

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/tukaani/xz/LZMA2Decoder;->dictSize:I

    .line 20
    iget v2, p0, Lorg/tukaani/xz/LZMA2Decoder;->dictSize:I

    aget-byte v0, p1, v0

    ushr-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xb

    shl-int v0, v2, v0

    iput v0, p0, Lorg/tukaani/xz/LZMA2Decoder;->dictSize:I

    .line 21
    return-void

    .line 16
    :cond_0
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "Unsupported LZMA2 properties"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 30
    new-instance v0, Lorg/tukaani/xz/LZMA2InputStream;

    iget v1, p0, Lorg/tukaani/xz/LZMA2Decoder;->dictSize:I

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p2}, Lorg/tukaani/xz/LZMA2InputStream;-><init>(Ljava/io/InputStream;I[BLorg/tukaani/xz/ArrayCache;)V

    return-object v0
.end method

.method public getMemoryUsage()I
    .locals 1

    .line 25
    iget v0, p0, Lorg/tukaani/xz/LZMA2Decoder;->dictSize:I

    invoke-static {v0}, Lorg/tukaani/xz/LZMA2InputStream;->getMemoryUsage(I)I

    move-result v0

    return v0
.end method
