.class public final Lorg/tukaani/xz/ARM64Options;
.super Lorg/tukaani/xz/BCJOptions;
.source "ARM64Options.java"


# static fields
.field private static final ALIGNMENT:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/tukaani/xz/BCJOptions;-><init>(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-super {p0}, Lorg/tukaani/xz/BCJOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDecoderMemoryUsage()I
    .locals 1

    .line 15
    invoke-super {p0}, Lorg/tukaani/xz/BCJOptions;->getDecoderMemoryUsage()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getEncoderMemoryUsage()I
    .locals 1

    .line 15
    invoke-super {p0}, Lorg/tukaani/xz/BCJOptions;->getEncoderMemoryUsage()I

    move-result v0

    return v0
.end method

.method getFilterEncoder()Lorg/tukaani/xz/FilterEncoder;
    .locals 3

    .line 35
    new-instance v0, Lorg/tukaani/xz/BCJEncoder;

    const-wide/16 v1, 0xa

    invoke-direct {v0, p0, v1, v2}, Lorg/tukaani/xz/BCJEncoder;-><init>(Lorg/tukaani/xz/BCJOptions;J)V

    return-object v0
.end method

.method public getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 30
    new-instance v0, Lorg/tukaani/xz/SimpleInputStream;

    new-instance v1, Lorg/tukaani/xz/simple/ARM64;

    const/4 v2, 0x0

    iget v3, p0, Lorg/tukaani/xz/ARM64Options;->startOffset:I

    invoke-direct {v1, v2, v3}, Lorg/tukaani/xz/simple/ARM64;-><init>(ZI)V

    invoke-direct {v0, p1, v1}, Lorg/tukaani/xz/SimpleInputStream;-><init>(Ljava/io/InputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V

    return-object v0
.end method

.method public getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;
    .locals 4
    .param p1, "out"    # Lorg/tukaani/xz/FinishableOutputStream;
    .param p2, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 25
    new-instance v0, Lorg/tukaani/xz/SimpleOutputStream;

    new-instance v1, Lorg/tukaani/xz/simple/ARM64;

    const/4 v2, 0x1

    iget v3, p0, Lorg/tukaani/xz/ARM64Options;->startOffset:I

    invoke-direct {v1, v2, v3}, Lorg/tukaani/xz/simple/ARM64;-><init>(ZI)V

    invoke-direct {v0, p1, v1}, Lorg/tukaani/xz/SimpleOutputStream;-><init>(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V

    return-object v0
.end method

.method public bridge synthetic getStartOffset()I
    .locals 1

    .line 15
    invoke-super {p0}, Lorg/tukaani/xz/BCJOptions;->getStartOffset()I

    move-result v0

    return v0
.end method

.method public bridge synthetic setStartOffset(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    .line 15
    invoke-super {p0, p1}, Lorg/tukaani/xz/BCJOptions;->setStartOffset(I)V

    return-void
.end method
