.class public Lorg/apache/commons/lang3/ArraySorter;
.super Ljava/lang/Object;
.source "ArraySorter.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    return-void
.end method

.method public static sort([B)[B
    .locals 0
    .param p0, "array"    # [B

    .line 38
    if-eqz p0, :cond_0

    .line 39
    invoke-static {p0}, Ljava/util/Arrays;->sort([B)V

    .line 41
    :cond_0
    return-object p0
.end method

.method public static sort([C)[C
    .locals 0
    .param p0, "array"    # [C

    .line 52
    if-eqz p0, :cond_0

    .line 53
    invoke-static {p0}, Ljava/util/Arrays;->sort([C)V

    .line 55
    :cond_0
    return-object p0
.end method

.method public static sort([D)[D
    .locals 0
    .param p0, "array"    # [D

    .line 66
    if-eqz p0, :cond_0

    .line 67
    invoke-static {p0}, Ljava/util/Arrays;->sort([D)V

    .line 69
    :cond_0
    return-object p0
.end method

.method public static sort([F)[F
    .locals 0
    .param p0, "array"    # [F

    .line 80
    if-eqz p0, :cond_0

    .line 81
    invoke-static {p0}, Ljava/util/Arrays;->sort([F)V

    .line 83
    :cond_0
    return-object p0
.end method

.method public static sort([I)[I
    .locals 0
    .param p0, "array"    # [I

    .line 94
    if-eqz p0, :cond_0

    .line 95
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    .line 97
    :cond_0
    return-object p0
.end method

.method public static sort([J)[J
    .locals 0
    .param p0, "array"    # [J

    .line 108
    if-eqz p0, :cond_0

    .line 109
    invoke-static {p0}, Ljava/util/Arrays;->sort([J)V

    .line 111
    :cond_0
    return-object p0
.end method

.method public static sort([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 137
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_0

    .line 138
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 140
    :cond_0
    return-object p0
.end method

.method public static sort([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)[TT;"
        }
    .end annotation

    .line 154
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-eqz p0, :cond_0

    .line 155
    invoke-static {p0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 157
    :cond_0
    return-object p0
.end method

.method public static sort([S)[S
    .locals 0
    .param p0, "array"    # [S

    .line 122
    if-eqz p0, :cond_0

    .line 123
    invoke-static {p0}, Ljava/util/Arrays;->sort([S)V

    .line 125
    :cond_0
    return-object p0
.end method
