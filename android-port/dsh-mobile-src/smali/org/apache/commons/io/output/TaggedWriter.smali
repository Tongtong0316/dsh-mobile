.class public Lorg/apache/commons/io/output/TaggedWriter;
.super Lorg/apache/commons/io/output/ProxyWriter;
.source "TaggedWriter.java"


# instance fields
.field private final tag:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "proxy"    # Ljava/io/Writer;

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyWriter;-><init>(Ljava/io/Writer;)V

    .line 70
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/TaggedWriter;->tag:Ljava/io/Serializable;

    .line 79
    return-void
.end method


# virtual methods
.method protected handleIOException(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v0, Lorg/apache/commons/io/TaggedIOException;

    iget-object v1, p0, Lorg/apache/commons/io/output/TaggedWriter;->tag:Ljava/io/Serializable;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/io/TaggedIOException;-><init>(Ljava/io/IOException;Ljava/io/Serializable;)V

    throw v0
.end method

.method public isCauseOf(Ljava/lang/Exception;)Z
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 100
    iget-object v0, p0, Lorg/apache/commons/io/output/TaggedWriter;->tag:Ljava/io/Serializable;

    invoke-static {p1, v0}, Lorg/apache/commons/io/TaggedIOException;->isTaggedWith(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public throwIfCauseOf(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/apache/commons/io/output/TaggedWriter;->tag:Ljava/io/Serializable;

    invoke-static {p1, v0}, Lorg/apache/commons/io/TaggedIOException;->throwCauseIfTaggedWith(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 115
    return-void
.end method
