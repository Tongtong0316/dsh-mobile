.class public final Lorg/apache/commons/io/input/UncheckedBufferedReader;
.super Ljava/io/BufferedReader;
.source "UncheckedBufferedReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/io/Reader;I)V
    .locals 0
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "bufferSize"    # I

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/Reader;ILorg/apache/commons/io/input/UncheckedBufferedReader$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/Reader;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/commons/io/input/UncheckedBufferedReader$1;

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/UncheckedBufferedReader;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;
    .locals 1

    .line 107
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 127
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda9;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->run(Lorg/apache/commons/io/function/IORunnable;)V

    .line 128
    return-void
.end method

.method synthetic lambda$close$0$org-apache-commons-io-input-UncheckedBufferedReader()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-super {p0}, Ljava/io/BufferedReader;->close()V

    return-void
.end method

.method synthetic lambda$mark$1$org-apache-commons-io-input-UncheckedBufferedReader(I)V
    .locals 0
    .param p1, "x$0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-super {p0, p1}, Ljava/io/BufferedReader;->mark(I)V

    return-void
.end method

.method synthetic lambda$read$2$org-apache-commons-io-input-UncheckedBufferedReader()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-super {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$read$3$org-apache-commons-io-input-UncheckedBufferedReader([C)Ljava/lang/Integer;
    .locals 1
    .param p1, "x$0"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-super {p0, p1}, Ljava/io/BufferedReader;->read([C)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$read$4$org-apache-commons-io-input-UncheckedBufferedReader([CII)Ljava/lang/Integer;
    .locals 1
    .param p1, "x$0"    # [C
    .param p2, "x$1"    # I
    .param p3, "x$2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedReader;->read([CII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$read$5$org-apache-commons-io-input-UncheckedBufferedReader(Ljava/nio/CharBuffer;)Ljava/lang/Integer;
    .locals 1
    .param p1, "x$0"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-super {p0, p1}, Ljava/io/BufferedReader;->read(Ljava/nio/CharBuffer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$readLine$6$org-apache-commons-io-input-UncheckedBufferedReader()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$ready$7$org-apache-commons-io-input-UncheckedBufferedReader()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-super {p0}, Ljava/io/BufferedReader;->ready()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$reset$8$org-apache-commons-io-input-UncheckedBufferedReader()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-super {p0}, Ljava/io/BufferedReader;->reset()V

    return-void
.end method

.method synthetic lambda$skip$9$org-apache-commons-io-input-UncheckedBufferedReader(J)Ljava/lang/Long;
    .locals 2
    .param p1, "x$0"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    invoke-super {p0, p1, p2}, Ljava/io/BufferedReader;->skip(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public mark(I)V
    .locals 2
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 135
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 143
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda6;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 1
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 167
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public read([C)I
    .locals 1
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 151
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 3
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 159
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 175
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 183
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda8;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 191
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda7;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->run(Lorg/apache/commons/io/function/IORunnable;)V

    .line 192
    return-void
.end method

.method public skip(J)J
    .locals 2
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 199
    new-instance v0, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedBufferedReader$$ExternalSyntheticLambda5;-><init>(Lorg/apache/commons/io/input/UncheckedBufferedReader;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
