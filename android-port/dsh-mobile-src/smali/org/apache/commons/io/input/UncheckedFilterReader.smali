.class public final Lorg/apache/commons/io/input/UncheckedFilterReader;
.super Ljava/io/FilterReader;
.source "UncheckedFilterReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/UncheckedFilterReader$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .param p1, "reader"    # Ljava/io/Reader;

    .line 110
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 111
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/Reader;Lorg/apache/commons/io/input/UncheckedFilterReader$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/Reader;
    .param p2, "x1"    # Lorg/apache/commons/io/input/UncheckedFilterReader$1;

    .line 41
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/UncheckedFilterReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/UncheckedFilterReader$Builder;
    .locals 1

    .line 100
    new-instance v0, Lorg/apache/commons/io/input/UncheckedFilterReader$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/UncheckedFilterReader$Builder;-><init>()V

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

    .line 118
    new-instance v0, Lorg/apache/commons/io/input/UncheckedFilterReader$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedFilterReader$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/io/input/UncheckedFilterReader;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->run(Lorg/apache/commons/io/function/IORunnable;)V

    .line 119
    return-void
.end method

.method synthetic lambda$close$0$org-apache-commons-io-input-UncheckedFilterReader()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-super {p0}, Ljava/io/FilterReader;->close()V

    return-void
.end method

.method synthetic lambda$mark$1$org-apache-commons-io-input-UncheckedFilterReader(I)V
    .locals 0
    .param p1, "x$0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-super {p0, p1}, Ljava/io/FilterReader;->mark(I)V

    return-void
.end method

.method synthetic lambda$read$2$org-apache-commons-io-input-UncheckedFilterReader()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-super {p0}, Ljava/io/FilterReader;->read()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$read$3$org-apache-commons-io-input-UncheckedFilterReader([C)Ljava/lang/Integer;
    .locals 1
    .param p1, "x$0"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-super {p0, p1}, Ljava/io/FilterReader;->read([C)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$read$4$org-apache-commons-io-input-UncheckedFilterReader([CII)Ljava/lang/Integer;
    .locals 1
    .param p1, "x$0"    # [C
    .param p2, "x$1"    # I
    .param p3, "x$2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterReader;->read([CII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$read$5$org-apache-commons-io-input-UncheckedFilterReader(Ljava/nio/CharBuffer;)Ljava/lang/Integer;
    .locals 1
    .param p1, "x$0"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-super {p0, p1}, Ljava/io/FilterReader;->read(Ljava/nio/CharBuffer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$ready$6$org-apache-commons-io-input-UncheckedFilterReader()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-super {p0}, Ljava/io/FilterReader;->ready()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$reset$7$org-apache-commons-io-input-UncheckedFilterReader()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-super {p0}, Ljava/io/FilterReader;->reset()V

    return-void
.end method

.method synthetic lambda$skip$8$org-apache-commons-io-input-UncheckedFilterReader(J)Ljava/lang/Long;
    .locals 2
    .param p1, "x$0"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-super {p0, p1, p2}, Ljava/io/FilterReader;->skip(J)J

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

    .line 126
    new-instance v0, Lorg/apache/commons/io/input/UncheckedFilterReader$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedFilterReader$$ExternalSyntheticLambda6;-><init>(Lorg/apache/commons/io/input/UncheckedFilterReader;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 134
    new-instance v0, Lorg/apache/commons/io/input/UncheckedFilterReader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedFilterReader$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/input/UncheckedFilterReader;)V

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

    .line 158
    new-instance v0, Lorg/apache/commons/io/input/UncheckedFilterReader$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedFilterReader$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/io/input/UncheckedFilterReader;)V

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

    .line 142
    new-instance v0, Lorg/apache/commons/io/input/UncheckedFilterReader$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedFilterReader$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/io/input/UncheckedFilterReader;)V

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

    .line 150
    new-instance v0, Lorg/apache/commons/io/input/UncheckedFilterReader$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedFilterReader$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/io/input/UncheckedFilterReader;)V

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

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 166
    new-instance v0, Lorg/apache/commons/io/input/UncheckedFilterReader$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedFilterReader$$ExternalSyntheticLambda5;-><init>(Lorg/apache/commons/io/input/UncheckedFilterReader;)V

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

    .line 174
    new-instance v0, Lorg/apache/commons/io/input/UncheckedFilterReader$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedFilterReader$$ExternalSyntheticLambda7;-><init>(Lorg/apache/commons/io/input/UncheckedFilterReader;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->run(Lorg/apache/commons/io/function/IORunnable;)V

    .line 175
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

    .line 182
    new-instance v0, Lorg/apache/commons/io/input/UncheckedFilterReader$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedFilterReader$$ExternalSyntheticLambda8;-><init>(Lorg/apache/commons/io/input/UncheckedFilterReader;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
