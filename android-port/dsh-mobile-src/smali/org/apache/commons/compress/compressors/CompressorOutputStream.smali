.class public abstract Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CompressorOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/io/OutputStream;",
        ">",
        "Ljava/io/FilterOutputStream;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    .local p0, "this":Lorg/apache/commons/compress/compressors/CompressorOutputStream;, "Lorg/apache/commons/compress/compressors/CompressorOutputStream<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lorg/apache/commons/compress/compressors/CompressorOutputStream;, "Lorg/apache/commons/compress/compressors/CompressorOutputStream<TT;>;"
    .local p1, "out":Ljava/io/OutputStream;, "TT;"
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected out()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/apache/commons/compress/compressors/CompressorOutputStream;, "Lorg/apache/commons/compress/compressors/CompressorOutputStream<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorOutputStream;->out:Ljava/io/OutputStream;

    return-object v0
.end method
