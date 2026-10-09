.class abstract Lorg/tukaani/xz/BCJOptions;
.super Lorg/tukaani/xz/FilterOptions;
.source "BCJOptions.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final alignment:I

.field startOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 7
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "alignment"    # I

    .line 11
    invoke-direct {p0}, Lorg/tukaani/xz/FilterOptions;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/BCJOptions;->startOffset:I

    .line 12
    iput p1, p0, Lorg/tukaani/xz/BCJOptions;->alignment:I

    .line 13
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 49
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public getDecoderMemoryUsage()I
    .locals 1

    .line 43
    invoke-static {}, Lorg/tukaani/xz/SimpleInputStream;->getMemoryUsage()I

    move-result v0

    return v0
.end method

.method public getEncoderMemoryUsage()I
    .locals 1

    .line 38
    invoke-static {}, Lorg/tukaani/xz/SimpleOutputStream;->getMemoryUsage()I

    move-result v0

    return v0
.end method

.method public getStartOffset()I
    .locals 1

    .line 33
    iget v0, p0, Lorg/tukaani/xz/BCJOptions;->startOffset:I

    return v0
.end method

.method public setStartOffset(I)V
    .locals 3
    .param p1, "startOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    .line 22
    iget v0, p0, Lorg/tukaani/xz/BCJOptions;->alignment:I

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 26
    iput p1, p0, Lorg/tukaani/xz/BCJOptions;->startOffset:I

    .line 27
    return-void

    .line 23
    :cond_0
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start offset must be a multiple of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/tukaani/xz/BCJOptions;->alignment:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
