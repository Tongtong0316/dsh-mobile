.class abstract Lorg/tukaani/xz/delta/DeltaCoder;
.super Ljava/lang/Object;
.source "DeltaCoder.java"


# static fields
.field static final DISTANCE_MAX:I = 0x100

.field static final DISTANCE_MIN:I = 0x1


# instance fields
.field final distance:I

.field final history:[B


# direct methods
.method constructor <init>(I)V
    .locals 3
    .param p1, "distance"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x100

    if-gt p1, v0, :cond_0

    .line 20
    iput p1, p0, Lorg/tukaani/xz/delta/DeltaCoder;->distance:I

    .line 21
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/tukaani/xz/delta/DeltaCoder;->history:[B

    .line 22
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
