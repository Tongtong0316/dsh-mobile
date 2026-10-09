.class public final Lorg/apache/commons/io/input/UncheckedFilterInputStream;
.super Ljava/io/FilterInputStream;
.source "UncheckedFilterInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/UncheckedFilterInputStream$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 109
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/io/input/UncheckedFilterInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Lorg/apache/commons/io/input/UncheckedFilterInputStream$1;

    .line 41
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/UncheckedFilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/UncheckedFilterInputStream$Builder;
    .locals 1

    .line 99
    new-instance v0, Lorg/apache/commons/io/input/UncheckedFilterInputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/UncheckedFilterInputStream$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 117
    new-instance v0, Lorg/apache/commons/io/input/UncheckedFilterInputStream$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedFilterInputStream$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/io/input/UncheckedFilterInputStream;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 125
    new-instance v0, Lorg/apache/commons/io/input/UncheckedFilterInputStream$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedFilterInputStream$$ExternalSyntheticLambda3;-><init>(Lorg/apache/commons/io/input/UncheckedFilterInputStream;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->run(Lorg/apache/commons/io/function/IORunnable;)V

    .line 126
    return-void
.end method

.method synthetic lambda$available$0$org-apache-commons-io-input-UncheckedFilterInputStream()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$close$1$org-apache-commons-io-input-UncheckedFilterInputStream()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    return-void
.end method

.method synthetic lambda$read$2$org-apache-commons-io-input-UncheckedFilterInputStream()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$read$3$org-apache-commons-io-input-UncheckedFilterInputStream([B)Ljava/lang/Integer;
    .locals 1
    .param p1, "x$0"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$read$4$org-apache-commons-io-input-UncheckedFilterInputStream([BII)Ljava/lang/Integer;
    .locals 1
    .param p1, "x$0"    # [B
    .param p2, "x$1"    # I
    .param p3, "x$2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$reset$5$org-apache-commons-io-input-UncheckedFilterInputStream()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    return-void
.end method

.method synthetic lambda$skip$6$org-apache-commons-io-input-UncheckedFilterInputStream(J)Ljava/lang/Long;
    .locals 2
    .param p1, "x$0"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 133
    new-instance v0, Lorg/apache/commons/io/input/UncheckedFilterInputStream$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedFilterInputStream$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/input/UncheckedFilterInputStream;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 141
    new-instance v0, Lorg/apache/commons/io/input/UncheckedFilterInputStream$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedFilterInputStream$$ExternalSyntheticLambda6;-><init>(Lorg/apache/commons/io/input/UncheckedFilterInputStream;)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 149
    new-instance v0, Lorg/apache/commons/io/input/UncheckedFilterInputStream$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedFilterInputStream$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/io/input/UncheckedFilterInputStream;)V

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

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    monitor-enter p0

    .line 157
    :try_start_0
    new-instance v0, Lorg/apache/commons/io/input/UncheckedFilterInputStream$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedFilterInputStream$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/io/input/UncheckedFilterInputStream;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->run(Lorg/apache/commons/io/function/IORunnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 156
    .end local p0    # "this":Lorg/apache/commons/io/input/UncheckedFilterInputStream;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UncheckedIOException;
        }
    .end annotation

    .line 165
    new-instance v0, Lorg/apache/commons/io/input/UncheckedFilterInputStream$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/UncheckedFilterInputStream$$ExternalSyntheticLambda5;-><init>(Lorg/apache/commons/io/input/UncheckedFilterInputStream;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
