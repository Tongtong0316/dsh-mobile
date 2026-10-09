.class public Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "FileWriterWithEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/output/FileWriterWithEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/output/FileWriterWithEncoding;",
        "Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private append:Z

.field private charsetEncoder:Ljava/nio/charset/CharsetEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 88
    invoke-super {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

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
    invoke-virtual {p0}, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->get()Lorg/apache/commons/io/output/FileWriterWithEncoding;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/output/FileWriterWithEncoding;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Mismatched Charset(%s) and CharsetEncoder(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 116
    .local v0, "encoder":Ljava/lang/Object;
    :goto_1
    new-instance v1, Lorg/apache/commons/io/output/FileWriterWithEncoding;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/io/build/AbstractOrigin;->getFile()Ljava/io/File;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->append:Z

    invoke-static {v2, v0, v3}, Lorg/apache/commons/io/output/FileWriterWithEncoding;->access$000(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/OutputStreamWriter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/OutputStreamWriter;Lorg/apache/commons/io/output/FileWriterWithEncoding$1;)V

    return-object v1
.end method

.method public setAppend(Z)Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;
    .locals 0
    .param p1, "append"    # Z

    .line 126
    iput-boolean p1, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->append:Z

    .line 127
    return-object p0
.end method

.method public setCharsetEncoder(Ljava/nio/charset/CharsetEncoder;)Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;
    .locals 0
    .param p1, "charsetEncoder"    # Ljava/nio/charset/CharsetEncoder;

    .line 137
    iput-object p1, p0, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;->charsetEncoder:Ljava/nio/charset/CharsetEncoder;

    .line 138
    return-object p0
.end method
