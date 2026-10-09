.class public Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "CharSequenceInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/CharSequenceInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/CharSequenceInputStream;",
        "Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private charsetEncoder:Ljava/nio/charset/CharsetEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 86
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->access$000(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->get()Lorg/apache/commons/io/input/CharSequenceInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/CharSequenceInputStream;
    .locals 1

    .line 107
    new-instance v0, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/CharSequenceInputStream;

    return-object v0
.end method

.method getCharsetEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    return-object v0
.end method

.method synthetic lambda$get$0$org-apache-commons-io-input-CharSequenceInputStream$Builder()Lorg/apache/commons/io/input/CharSequenceInputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    new-instance v0, Lorg/apache/commons/io/input/CharSequenceInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->getCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->getBufferSize()I

    move-result v2

    iget-object v3, p0, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/io/input/CharSequenceInputStream;-><init>(Ljava/lang/CharSequence;ILjava/nio/charset/CharsetEncoder;Lorg/apache/commons/io/input/CharSequenceInputStream$1;)V

    return-object v0
.end method

.method synthetic lambda$setCharsetEncoder$1$org-apache-commons-io-input-CharSequenceInputStream$Builder()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->getCharsetDefault()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->access$000(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 116
    invoke-super {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 117
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/input/CharSequenceInputStream;->access$000(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 118
    return-object p0
.end method

.method public setCharsetEncoder(Ljava/nio/charset/CharsetEncoder;)Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;
    .locals 1
    .param p1, "newEncoder"    # Ljava/nio/charset/CharsetEncoder;

    .line 129
    new-instance v0, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;)V

    invoke-static {p1, v0}, Lorg/apache/commons/io/charset/CharsetEncoders;->toCharsetEncoder(Ljava/nio/charset/CharsetEncoder;Ljava/util/function/Supplier;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 130
    iget-object v0, p0, Lorg/apache/commons/io/input/CharSequenceInputStream$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 131
    return-object p0
.end method
