.class public final Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;
.super Lorg/tukaani/xz/rangecoder/RangeDecoder;
.source "RangeDecoderFromStream.java"


# instance fields
.field private final inData:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;-><init>()V

    .line 17
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->inData:Ljava/io/DataInputStream;

    .line 19
    iget-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->inData:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->inData:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->code:I

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->range:I

    .line 24
    return-void

    .line 20
    :cond_0
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    .line 27
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public normalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->range:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 33
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->code:I

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->inData:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->code:I

    .line 34
    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->range:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->range:I

    .line 36
    :cond_0
    return-void
.end method
