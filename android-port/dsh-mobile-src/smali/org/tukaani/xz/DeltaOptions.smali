.class public final Lorg/tukaani/xz/DeltaOptions;
.super Lorg/tukaani/xz/FilterOptions;
.source "DeltaOptions.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DISTANCE_MAX:I = 0x100

.field public static final DISTANCE_MIN:I = 0x1


# instance fields
.field private distance:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lorg/tukaani/xz/FilterOptions;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/DeltaOptions;->distance:I

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "distance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lorg/tukaani/xz/FilterOptions;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lorg/tukaani/xz/DeltaOptions;->distance:I

    .line 46
    invoke-virtual {p0, p1}, Lorg/tukaani/xz/DeltaOptions;->setDistance(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 98
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public getDecoderMemoryUsage()I
    .locals 1

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public getDistance()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/tukaani/xz/DeltaOptions;->distance:I

    return v0
.end method

.method public getEncoderMemoryUsage()I
    .locals 1

    .line 71
    invoke-static {}, Lorg/tukaani/xz/DeltaOutputStream;->getMemoryUsage()I

    move-result v0

    return v0
.end method

.method getFilterEncoder()Lorg/tukaani/xz/FilterEncoder;
    .locals 1

    .line 92
    new-instance v0, Lorg/tukaani/xz/DeltaEncoder;

    invoke-direct {v0, p0}, Lorg/tukaani/xz/DeltaEncoder;-><init>(Lorg/tukaani/xz/DeltaOptions;)V

    return-object v0
.end method

.method public getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 87
    new-instance v0, Lorg/tukaani/xz/DeltaInputStream;

    iget v1, p0, Lorg/tukaani/xz/DeltaOptions;->distance:I

    invoke-direct {v0, p1, v1}, Lorg/tukaani/xz/DeltaInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;
    .locals 1
    .param p1, "out"    # Lorg/tukaani/xz/FinishableOutputStream;
    .param p2, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 77
    new-instance v0, Lorg/tukaani/xz/DeltaOutputStream;

    invoke-direct {v0, p1, p0}, Lorg/tukaani/xz/DeltaOutputStream;-><init>(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/DeltaOptions;)V

    return-object v0
.end method

.method public setDistance(I)V
    .locals 3
    .param p1, "distance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x100

    if-gt p1, v0, :cond_0

    .line 59
    iput p1, p0, Lorg/tukaani/xz/DeltaOptions;->distance:I

    .line 60
    return-void

    .line 55
    :cond_0
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delta distance must be in the range [1, 256]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
