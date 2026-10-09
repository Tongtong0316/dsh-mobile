.class public Lorg/apache/commons/io/output/WriterOutputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "WriterOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/output/WriterOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/output/WriterOutputStream;",
        "Lorg/apache/commons/io/output/WriterOutputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private charsetDecoder:Ljava/nio/charset/CharsetDecoder;

.field private writeImmediately:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 111
    invoke-virtual {p0}, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    .line 112
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

    .line 102
    invoke-virtual {p0}, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->get()Lorg/apache/commons/io/output/WriterOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/output/WriterOutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Lorg/apache/commons/io/output/WriterOutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->getWriter()Ljava/io/Writer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->getBufferSize()I

    move-result v3

    iget-boolean v4, p0, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->writeImmediately:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/io/output/WriterOutputStream;-><init>(Ljava/io/Writer;Ljava/nio/charset/CharsetDecoder;IZ)V

    return-object v0
.end method

.method public bridge synthetic setCharset(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->setCharset(Ljava/lang/String;)Lorg/apache/commons/io/output/WriterOutputStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/output/WriterOutputStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCharset(Ljava/lang/String;)Lorg/apache/commons/io/output/WriterOutputStream$Builder;
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    .line 148
    invoke-super {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 149
    invoke-virtual {p0}, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    .line 150
    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/output/WriterOutputStream$Builder;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 141
    invoke-super {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 142
    invoke-virtual {p0}, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    .line 143
    return-object p0
.end method

.method public setCharsetDecoder(Ljava/nio/charset/CharsetDecoder;)Lorg/apache/commons/io/output/WriterOutputStream$Builder;
    .locals 1
    .param p1, "charsetDecoder"    # Ljava/nio/charset/CharsetDecoder;

    .line 160
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->getCharsetDefault()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    .line 161
    iget-object v0, p0, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->charsetDecoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 162
    return-object p0
.end method

.method public setWriteImmediately(Z)Lorg/apache/commons/io/output/WriterOutputStream$Builder;
    .locals 0
    .param p1, "writeImmediately"    # Z

    .line 176
    iput-boolean p1, p0, Lorg/apache/commons/io/output/WriterOutputStream$Builder;->writeImmediately:Z

    .line 177
    return-object p0
.end method
