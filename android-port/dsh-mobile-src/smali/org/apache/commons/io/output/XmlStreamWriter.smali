.class public Lorg/apache/commons/io/output/XmlStreamWriter;
.super Ljava/io/Writer;
.source "XmlStreamWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/output/XmlStreamWriter$Builder;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private final defaultCharset:Ljava/nio/charset/Charset;

.field private final out:Ljava/io/OutputStream;

.field private prologWriter:Ljava/io/StringWriter;

.field private writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/output/XmlStreamWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "defaultEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/io/output/XmlStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/output/XmlStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "defaultEncoding"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p2, v0}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/output/XmlStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 192
    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "defaultEncoding"    # Ljava/nio/charset/Charset;

    .line 176
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 121
    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->prologWriter:Ljava/io/StringWriter;

    .line 177
    iput-object p1, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->out:Ljava/io/OutputStream;

    .line 178
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultCharset:Ljava/nio/charset/Charset;

    .line 179
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Lorg/apache/commons/io/output/XmlStreamWriter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/OutputStream;
    .param p2, "x1"    # Ljava/nio/charset/Charset;
    .param p3, "x2"    # Lorg/apache/commons/io/output/XmlStreamWriter$1;

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/output/XmlStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/output/XmlStreamWriter$Builder;
    .locals 1

    .line 114
    new-instance v0, Lorg/apache/commons/io/output/XmlStreamWriter$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/output/XmlStreamWriter$Builder;-><init>()V

    return-object v0
.end method

.method private detectEncoding([CII)V
    .locals 7
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    move v0, p3

    .line 220
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->prologWriter:Ljava/io/StringWriter;

    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    .line 221
    .local v1, "xmlProlog":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/2addr v2, p3

    const/16 v3, 0x2000

    if-le v2, v3, :cond_0

    .line 222
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    rsub-int v0, v2, 0x2000

    .line 224
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->prologWriter:Ljava/io/StringWriter;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/StringWriter;->write([CII)V

    .line 227
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v4, 0x5

    if-lt v2, v4, :cond_5

    .line 228
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "<?xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 230
    const-string v4, "?>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 231
    .local v4, "xmlPrologEnd":I
    if-lez v4, :cond_2

    .line 233
    sget-object v3, Lorg/apache/commons/io/input/XmlStreamReader;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 235
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "encName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->charset:Ljava/nio/charset/Charset;

    .line 238
    .end local v5    # "encName":Ljava/lang/String;
    goto :goto_0

    .line 241
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultCharset:Ljava/nio/charset/Charset;

    iput-object v3, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->charset:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 243
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lt v2, v3, :cond_3

    .line 246
    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultCharset:Ljava/nio/charset/Charset;

    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->charset:Ljava/nio/charset/Charset;

    goto :goto_1

    .line 243
    :cond_3
    :goto_0
    nop

    .line 248
    .end local v4    # "xmlPrologEnd":I
    :goto_1
    goto :goto_2

    .line 250
    :cond_4
    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultCharset:Ljava/nio/charset/Charset;

    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->charset:Ljava/nio/charset/Charset;

    .line 252
    :goto_2
    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->charset:Ljava/nio/charset/Charset;

    if-eqz v2, :cond_5

    .line 254
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->prologWriter:Ljava/io/StringWriter;

    .line 255
    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    .line 256
    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 257
    if-le p3, v0, :cond_5

    .line 258
    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    add-int v3, p2, v0

    sub-int v4, p3, v0

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 262
    :cond_5
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultCharset:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->charset:Ljava/nio/charset/Charset;

    .line 203
    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    .line 204
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->prologWriter:Ljava/io/StringWriter;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 207
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 274
    :cond_0
    return-void
.end method

.method public getDefaultEncoding()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->defaultCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write([CII)V
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->prologWriter:Ljava/io/StringWriter;

    if-eqz v0, :cond_0

    .line 305
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/output/XmlStreamWriter;->detectEncoding([CII)V

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 309
    :goto_0
    return-void
.end method
