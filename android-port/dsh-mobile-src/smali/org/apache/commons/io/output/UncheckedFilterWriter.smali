.class public final Lorg/apache/commons/io/output/UncheckedFilterWriter;
.super Ljava/io/FilterWriter;
.source "UncheckedFilterWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/output/UncheckedFilterWriter$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/io/Writer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;

    .line 108
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 109
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/Writer;Lorg/apache/commons/io/output/UncheckedFilterWriter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/Writer;
    .param p2, "x1"    # Lorg/apache/commons/io/output/UncheckedFilterWriter$1;

    .line 40
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/UncheckedFilterWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/output/UncheckedFilterWriter$Builder;
    .locals 1

    .line 98
    new-instance v0, Lorg/apache/commons/io/output/UncheckedFilterWriter$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/output/UncheckedFilterWriter$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 116
    new-instance v0, Lorg/apache/commons/io/output/UncheckedFilterWriter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/UncheckedFilterWriter$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/io/output/UncheckedFilterWriter;)V

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Writer;

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 124
    new-instance v0, Lorg/apache/commons/io/output/UncheckedFilterWriter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/UncheckedFilterWriter$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/output/UncheckedFilterWriter;)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Writer;

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 132
    new-instance v0, Lorg/apache/commons/io/output/UncheckedFilterWriter$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/UncheckedFilterWriter$$ExternalSyntheticLambda5;-><init>(Lorg/apache/commons/io/output/UncheckedFilterWriter;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Writer;

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->append(C)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/UncheckedFilterWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 140
    new-instance v0, Lorg/apache/commons/io/output/UncheckedFilterWriter$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/UncheckedFilterWriter$$ExternalSyntheticLambda6;-><init>(Lorg/apache/commons/io/output/UncheckedFilterWriter;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->run(Lorg/apache/commons/io/function/IORunnable;)V

    .line 141
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 148
    new-instance v0, Lorg/apache/commons/io/output/UncheckedFilterWriter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/UncheckedFilterWriter$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/io/output/UncheckedFilterWriter;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->run(Lorg/apache/commons/io/function/IORunnable;)V

    .line 149
    return-void
.end method

.method synthetic lambda$append$0$org-apache-commons-io-output-UncheckedFilterWriter(C)Ljava/io/Writer;
    .locals 1
    .param p1, "x$0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-super {p0, p1}, Ljava/io/FilterWriter;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$append$1$org-apache-commons-io-output-UncheckedFilterWriter(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .param p1, "x$0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-super {p0, p1}, Ljava/io/FilterWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$append$2$org-apache-commons-io-output-UncheckedFilterWriter(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .param p1, "x$0"    # Ljava/lang/CharSequence;
    .param p2, "x$1"    # I
    .param p3, "x$2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$close$3$org-apache-commons-io-output-UncheckedFilterWriter()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    invoke-super {p0}, Ljava/io/FilterWriter;->close()V

    return-void
.end method

.method synthetic lambda$flush$4$org-apache-commons-io-output-UncheckedFilterWriter()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-super {p0}, Ljava/io/FilterWriter;->flush()V

    return-void
.end method

.method synthetic lambda$write$5$org-apache-commons-io-output-UncheckedFilterWriter([C)V
    .locals 0
    .param p1, "x$0"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-super {p0, p1}, Ljava/io/FilterWriter;->write([C)V

    return-void
.end method

.method synthetic lambda$write$6$org-apache-commons-io-output-UncheckedFilterWriter([CII)V
    .locals 0
    .param p1, "x$0"    # [C
    .param p2, "x$1"    # I
    .param p3, "x$2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterWriter;->write([CII)V

    return-void
.end method

.method synthetic lambda$write$7$org-apache-commons-io-output-UncheckedFilterWriter(I)V
    .locals 0
    .param p1, "x$0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-super {p0, p1}, Ljava/io/FilterWriter;->write(I)V

    return-void
.end method

.method synthetic lambda$write$8$org-apache-commons-io-output-UncheckedFilterWriter(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-super {p0, p1}, Ljava/io/FilterWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$write$9$org-apache-commons-io-output-UncheckedFilterWriter(Ljava/lang/String;II)V
    .locals 0
    .param p1, "x$0"    # Ljava/lang/String;
    .param p2, "x$1"    # I
    .param p3, "x$2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterWriter;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 172
    new-instance v0, Lorg/apache/commons/io/output/UncheckedFilterWriter$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/UncheckedFilterWriter$$ExternalSyntheticLambda9;-><init>(Lorg/apache/commons/io/output/UncheckedFilterWriter;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 180
    new-instance v0, Lorg/apache/commons/io/output/UncheckedFilterWriter$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/UncheckedFilterWriter$$ExternalSyntheticLambda8;-><init>(Lorg/apache/commons/io/output/UncheckedFilterWriter;)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 188
    new-instance v0, Lorg/apache/commons/io/output/UncheckedFilterWriter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/UncheckedFilterWriter$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/io/output/UncheckedFilterWriter;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOTriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    return-void
.end method

.method public write([C)V
    .locals 1
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 156
    new-instance v0, Lorg/apache/commons/io/output/UncheckedFilterWriter$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/UncheckedFilterWriter$$ExternalSyntheticLambda7;-><init>(Lorg/apache/commons/io/output/UncheckedFilterWriter;)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public write([CII)V
    .locals 3
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 164
    new-instance v0, Lorg/apache/commons/io/output/UncheckedFilterWriter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/UncheckedFilterWriter$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/io/output/UncheckedFilterWriter;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOTriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    return-void
.end method
