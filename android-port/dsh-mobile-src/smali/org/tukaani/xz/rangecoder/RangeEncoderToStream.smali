.class public final Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;
.super Lorg/tukaani/xz/rangecoder/RangeEncoder;
.source "RangeEncoderToStream.java"


# instance fields
.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 14
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoder;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;->out:Ljava/io/OutputStream;

    .line 16
    invoke-virtual {p0}, Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;->reset()V

    .line 17
    return-void
.end method


# virtual methods
.method writeByte(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeEncoderToStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 22
    return-void
.end method
