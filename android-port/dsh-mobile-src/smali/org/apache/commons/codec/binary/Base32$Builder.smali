.class public Lorg/apache/commons/codec/binary/Base32$Builder;
.super Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;
.source "Base32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/binary/Base32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder<",
        "Lorg/apache/commons/codec/binary/Base32;",
        "Lorg/apache/commons/codec/binary/Base32$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-static {}, Lorg/apache/commons/codec/binary/Base32;->access$000()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/binary/BaseNCodec$AbstractBuilder;-><init>([B)V

    .line 71
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Base32$Builder;->get()Lorg/apache/commons/codec/binary/Base32;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/codec/binary/Base32;
    .locals 8

    .line 75
    new-instance v7, Lorg/apache/commons/codec/binary/Base32;

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Base32$Builder;->getLineLength()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Base32$Builder;->getLineSeparator()[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Base32$Builder;->getEncodeTable()[B

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Base32$Builder;->getPadding()B

    move-result v4

    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/Base32$Builder;->getDecodingPolicy()Lorg/apache/commons/codec/CodecPolicy;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[B[BBLorg/apache/commons/codec/CodecPolicy;Lorg/apache/commons/codec/binary/Base32$1;)V

    return-object v7
.end method
