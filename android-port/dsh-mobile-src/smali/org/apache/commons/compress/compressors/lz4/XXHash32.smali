.class public Lorg/apache/commons/compress/compressors/lz4/XXHash32;
.super Lorg/apache/commons/codec/digest/XXHash32;
.source "XXHash32.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/digest/XXHash32;-><init>(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "seed"    # I

    .line 45
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/digest/XXHash32;-><init>(I)V

    .line 46
    return-void
.end method
