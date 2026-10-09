.class public Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "UnsynchronizedByteArrayInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;",
        "Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private length:I

.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

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

    .line 82
    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->get()Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    new-instance v0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/io/build/AbstractOrigin;->getByteArray()[B

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->offset:I

    iget v3, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->length:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public bridge synthetic setByteArray([B)Lorg/apache/commons/io/build/AbstractOriginSupplier;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->setByteArray([B)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setByteArray([B)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;
    .locals 1
    .param p1, "origin"    # [B

    .line 113
    const-string v0, "origin"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->length:I

    .line 114
    invoke-super {p0, p1}, Lorg/apache/commons/io/build/AbstractStreamBuilder;->setByteArray([B)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;

    return-object v0
.end method

.method public setLength(I)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;
    .locals 2
    .param p1, "length"    # I

    .line 124
    if-ltz p1, :cond_0

    .line 127
    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->length:I

    .line 128
    return-object p0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOffset(I)Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;
    .locals 2
    .param p1, "offset"    # I

    .line 138
    if-ltz p1, :cond_0

    .line 141
    iput p1, p0, Lorg/apache/commons/io/input/UnsynchronizedByteArrayInputStream$Builder;->offset:I

    .line 142
    return-object p0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
