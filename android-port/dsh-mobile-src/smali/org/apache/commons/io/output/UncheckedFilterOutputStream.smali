.class public final Lorg/apache/commons/io/output/UncheckedFilterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "UncheckedFilterOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/output/UncheckedFilterOutputStream$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 109
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/OutputStream;Lorg/apache/commons/io/output/UncheckedFilterOutputStream$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/OutputStream;
    .param p2, "x1"    # Lorg/apache/commons/io/output/UncheckedFilterOutputStream$1;

    .line 39
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/output/UncheckedFilterOutputStream$Builder;
    .locals 1

    .line 99
    new-instance v0, Lorg/apache/commons/io/output/UncheckedFilterOutputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream$Builder;-><init>()V

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

    .line 117
    new-instance v0, Lorg/apache/commons/io/output/UncheckedFilterOutputStream$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/io/output/UncheckedFilterOutputStream;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->run(Lorg/apache/commons/io/function/IORunnable;)V

    .line 118
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 125
    new-instance v0, Lorg/apache/commons/io/output/UncheckedFilterOutputStream$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/io/output/UncheckedFilterOutputStream;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->run(Lorg/apache/commons/io/function/IORunnable;)V

    .line 126
    return-void
.end method

.method synthetic lambda$close$0$org-apache-commons-io-output-UncheckedFilterOutputStream()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    return-void
.end method

.method synthetic lambda$flush$1$org-apache-commons-io-output-UncheckedFilterOutputStream()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    return-void
.end method

.method synthetic lambda$write$2$org-apache-commons-io-output-UncheckedFilterOutputStream([B)V
    .locals 0
    .param p1, "x$0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write([B)V

    return-void
.end method

.method synthetic lambda$write$3$org-apache-commons-io-output-UncheckedFilterOutputStream([BII)V
    .locals 0
    .param p1, "x$0"    # [B
    .param p2, "x$1"    # I
    .param p3, "x$2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterOutputStream;->write([BII)V

    return-void
.end method

.method synthetic lambda$write$4$org-apache-commons-io-output-UncheckedFilterOutputStream(I)V
    .locals 0
    .param p1, "x$0"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 149
    new-instance v0, Lorg/apache/commons/io/output/UncheckedFilterOutputStream$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/output/UncheckedFilterOutputStream;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 133
    new-instance v0, Lorg/apache/commons/io/output/UncheckedFilterOutputStream$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/io/output/UncheckedFilterOutputStream;)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 141
    new-instance v0, Lorg/apache/commons/io/output/UncheckedFilterOutputStream$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/output/UncheckedFilterOutputStream$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/io/output/UncheckedFilterOutputStream;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lorg/apache/commons/io/function/Uncheck;->accept(Lorg/apache/commons/io/function/IOTriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    return-void
.end method
