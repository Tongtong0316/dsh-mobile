.class public Lorg/apache/commons/compress/utils/ExactMath;
.super Ljava/lang/Object;
.source "ExactMath.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static add(IJ)I
    .locals 3
    .param p0, "x"    # I
    .param p1, "y"    # J

    .line 39
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->addExact(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "exp":Ljava/lang/ArithmeticException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument too large or result overflows"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
