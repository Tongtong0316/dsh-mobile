.class public Lorg/apache/commons/io/output/FileWriterWithEncoding;
.super Lorg/apache/commons/io/output/ProxyWriter;
.source "FileWriterWithEncoding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 260
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charsetName"    # Ljava/lang/String;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 275
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/output/FileWriterWithEncoding;->initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/OutputStreamWriter;)V

    .line 276
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V

    .line 200
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/output/FileWriterWithEncoding;->initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/OutputStreamWriter;)V

    .line 216
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charsetEncoder"    # Ljava/nio/charset/CharsetEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;Z)V

    .line 230
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;Z)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charsetEncoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 245
    invoke-static {p1, p2, p3}, Lorg/apache/commons/io/output/FileWriterWithEncoding;->initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/OutputStreamWriter;)V

    .line 246
    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStreamWriter;)V
    .locals 0
    .param p1, "outputStreamWriter"    # Ljava/io/OutputStreamWriter;

    .line 279
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyWriter;-><init>(Ljava/io/Writer;)V

    .line 280
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/OutputStreamWriter;Lorg/apache/commons/io/output/FileWriterWithEncoding$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/OutputStreamWriter;
    .param p2, "x1"    # Lorg/apache/commons/io/output/FileWriterWithEncoding$1;

    .line 53
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/OutputStreamWriter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 352
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "charsetName"    # Ljava/lang/String;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 366
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 367
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 293
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V

    .line 294
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V

    .line 309
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/nio/charset/CharsetEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;Z)V

    .line 323
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;Z)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "charsetEncoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 337
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/output/FileWriterWithEncoding;-><init>(Ljava/io/File;Ljava/nio/charset/CharsetEncoder;Z)V

    .line 338
    return-void
.end method

.method static synthetic access$000(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/OutputStreamWriter;
    .locals 1
    .param p0, "x0"    # Ljava/io/File;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/output/FileWriterWithEncoding;->initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/OutputStreamWriter;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;
    .locals 1

    .line 150
    new-instance v0, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/output/FileWriterWithEncoding$Builder;-><init>()V

    return-object v0
.end method

.method private static initWriter(Ljava/io/File;Ljava/lang/Object;Z)Ljava/io/OutputStreamWriter;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "encoding"    # Ljava/lang/Object;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    const-string v0, "file"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 167
    .local v1, "fileExistedAlready":Z
    :try_start_0
    invoke-static {p0, p2}, Lorg/apache/commons/io/FileUtils;->newOutputStream(Ljava/io/File;Z)Ljava/io/OutputStream;

    move-result-object v2

    move-object v0, v2

    .line 168
    if-eqz p1, :cond_2

    instance-of v2, p1, Ljava/nio/charset/Charset;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    instance-of v2, p1, Ljava/nio/charset/CharsetEncoder;

    if-eqz v2, :cond_1

    .line 172
    new-instance v2, Ljava/io/OutputStreamWriter;

    move-object v3, p1

    check-cast v3, Ljava/nio/charset/CharsetEncoder;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/CharsetEncoder;)V

    return-object v2

    .line 174
    :cond_1
    new-instance v2, Ljava/io/OutputStreamWriter;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object v2

    .line 169
    :cond_2
    :goto_0
    new-instance v2, Ljava/io/OutputStreamWriter;

    move-object v3, p1

    check-cast v3, Ljava/nio/charset/Charset;

    invoke-static {v3}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 175
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 177
    .local v2, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 180
    goto :goto_2

    .line 178
    :catch_2
    move-exception v3

    .line 179
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v2, v3}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 181
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    if-nez v1, :cond_3

    .line 182
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 184
    :cond_3
    throw v2
.end method
