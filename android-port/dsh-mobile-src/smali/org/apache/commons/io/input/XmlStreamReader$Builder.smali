.class public Lorg/apache/commons/io/input/XmlStreamReader$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "XmlStreamReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/XmlStreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/XmlStreamReader;",
        "Lorg/apache/commons/io/input/XmlStreamReader$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private httpContentType:Ljava/lang/String;

.field private lenient:Z

.field private nullCharset:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->nullCharset:Z

    .line 123
    iput-boolean v0, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->lenient:Z

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

    .line 120
    invoke-virtual {p0}, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->get()Lorg/apache/commons/io/input/XmlStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/XmlStreamReader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-boolean v0, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->nullCharset:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "defaultEncoding":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->httpContentType:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 154
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReader;

    invoke-virtual {p0}, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->lenient:Z

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;ZLjava/lang/String;)V

    goto :goto_1

    .line 155
    :cond_1
    new-instance v1, Lorg/apache/commons/io/input/XmlStreamReader;

    invoke-virtual {p0}, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->httpContentType:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->lenient:Z

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;)V

    .line 153
    :goto_1
    return-object v1
.end method

.method public bridge synthetic setCharset(Ljava/lang/String;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->setCharset(Ljava/lang/String;)Lorg/apache/commons/io/input/XmlStreamReader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;
    .locals 0

    .line 120
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/input/XmlStreamReader$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCharset(Ljava/lang/String;)Lorg/apache/commons/io/input/XmlStreamReader$Builder;
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    .line 167
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->nullCharset:Z

    .line 168
    invoke-virtual {p0}, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->getCharsetDefault()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;

    return-object v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/input/XmlStreamReader$Builder;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 161
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->nullCharset:Z

    .line 162
    invoke-super {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;

    return-object v0
.end method

.method public setHttpContentType(Ljava/lang/String;)Lorg/apache/commons/io/input/XmlStreamReader$Builder;
    .locals 0
    .param p1, "httpContentType"    # Ljava/lang/String;

    .line 178
    iput-object p1, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->httpContentType:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public setLenient(Z)Lorg/apache/commons/io/input/XmlStreamReader$Builder;
    .locals 0
    .param p1, "lenient"    # Z

    .line 189
    iput-boolean p1, p0, Lorg/apache/commons/io/input/XmlStreamReader$Builder;->lenient:Z

    .line 190
    return-object p0
.end method
