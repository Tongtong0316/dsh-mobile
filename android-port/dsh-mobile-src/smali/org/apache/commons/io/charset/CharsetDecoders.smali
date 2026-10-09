.class public final Lorg/apache/commons/io/charset/CharsetDecoders;
.super Ljava/lang/Object;
.source "CharsetDecoders.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static toCharsetDecoder(Ljava/nio/charset/CharsetDecoder;)Ljava/nio/charset/CharsetDecoder;
    .locals 1
    .param p0, "charsetDecoder"    # Ljava/nio/charset/CharsetDecoder;

    .line 37
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    :goto_0
    return-object v0
.end method
