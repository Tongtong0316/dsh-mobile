.class public Lorg/apache/commons/io/input/BoundedInputStream$Builder;
.super Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;
.source "BoundedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/BoundedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder<",
        "Lorg/apache/commons/io/input/BoundedInputStream$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;-><init>()V

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

    .line 209
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/BoundedInputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    new-instance v7, Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->getCount()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->getMaxCount()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->isPropagateClose()Z

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/BoundedInputStream;-><init>(Ljava/io/InputStream;JJZ)V

    return-object v7
.end method

.method public bridge synthetic setCount(J)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;
    .locals 0

    .line 209
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->setCount(J)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMaxCount(J)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;
    .locals 0

    .line 209
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->setMaxCount(J)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPropagateClose(Z)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;
    .locals 0

    .line 209
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->setPropagateClose(Z)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object p1

    return-object p1
.end method
