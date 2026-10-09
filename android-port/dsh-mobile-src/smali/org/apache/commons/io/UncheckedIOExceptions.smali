.class final Lorg/apache/commons/io/UncheckedIOExceptions;
.super Ljava/lang/Object;
.source "UncheckedIOExceptions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static create(Ljava/lang/Object;)Ljava/io/UncheckedIOException;
    .locals 3
    .param p0, "message"    # Ljava/lang/Object;

    .line 41
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "string":Ljava/lang/String;
    new-instance v1, Ljava/io/UncheckedIOException;

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Ljava/io/UncheckedIOException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    return-object v1
.end method

.method public static wrap(Ljava/io/IOException;Ljava/lang/Object;)Ljava/io/UncheckedIOException;
    .locals 2
    .param p0, "e"    # Ljava/io/IOException;
    .param p1, "message"    # Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    return-object v0
.end method
