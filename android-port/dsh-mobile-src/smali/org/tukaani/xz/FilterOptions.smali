.class public abstract Lorg/tukaani/xz/FilterOptions;
.super Ljava/lang/Object;
.source "FilterOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecoderMemoryUsage([Lorg/tukaani/xz/FilterOptions;)I
    .locals 3
    .param p0, "options"    # [Lorg/tukaani/xz/FilterOptions;

    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, "m":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 40
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/tukaani/xz/FilterOptions;->getDecoderMemoryUsage()I

    move-result v2

    add-int/2addr v0, v2

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static getEncoderMemoryUsage([Lorg/tukaani/xz/FilterOptions;)I
    .locals 3
    .param p0, "options"    # [Lorg/tukaani/xz/FilterOptions;

    .line 22
    const/4 v0, 0x0

    .line 24
    .local v0, "m":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 25
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/tukaani/xz/FilterOptions;->getEncoderMemoryUsage()I

    move-result v2

    add-int/2addr v0, v2

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .end local v1    # "i":I
    :cond_0
    return v0
.end method


# virtual methods
.method public abstract getDecoderMemoryUsage()I
.end method

.method public abstract getEncoderMemoryUsage()I
.end method

.method abstract getFilterEncoder()Lorg/tukaani/xz/FilterEncoder;
.end method

.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/tukaani/xz/FilterOptions;->getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;)Lorg/tukaani/xz/FinishableOutputStream;
    .locals 1
    .param p1, "out"    # Lorg/tukaani/xz/FinishableOutputStream;

    .line 60
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/tukaani/xz/FilterOptions;->getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;
.end method
