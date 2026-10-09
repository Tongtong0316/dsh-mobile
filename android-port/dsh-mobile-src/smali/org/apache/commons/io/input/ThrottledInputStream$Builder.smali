.class public Lorg/apache/commons/io/input/ThrottledInputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "ThrottledInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ThrottledInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/ThrottledInputStream;",
        "Lorg/apache/commons/io/input/ThrottledInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private maxBytesPerSecond:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 82
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->maxBytesPerSecond:J

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

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->get()Lorg/apache/commons/io/input/ThrottledInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/ThrottledInputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Lorg/apache/commons/io/input/ThrottledInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->maxBytesPerSecond:J

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/io/input/ThrottledInputStream;-><init>(Ljava/io/InputStream;JLorg/apache/commons/io/input/ThrottledInputStream$1;)V

    return-object v0
.end method

.method public setMaxBytesPerSecond(J)V
    .locals 0
    .param p1, "maxBytesPerSecond"    # J

    .line 115
    iput-wide p1, p0, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;->maxBytesPerSecond:J

    .line 116
    return-void
.end method
