.class public final Lorg/apache/commons/lang3/ArrayFill;
.super Ljava/lang/Object;
.source "ArrayFill.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method

.method public static fill([BB)[B
    .locals 0
    .param p0, "a"    # [B
    .param p1, "val"    # B

    .line 38
    if-eqz p0, :cond_0

    .line 39
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([BB)V

    .line 41
    :cond_0
    return-object p0
.end method

.method public static fill([CC)[C
    .locals 0
    .param p0, "a"    # [C
    .param p1, "val"    # C

    .line 53
    if-eqz p0, :cond_0

    .line 54
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([CC)V

    .line 56
    :cond_0
    return-object p0
.end method

.method public static fill([DD)[D
    .locals 0
    .param p0, "a"    # [D
    .param p1, "val"    # D

    .line 68
    if-eqz p0, :cond_0

    .line 69
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->fill([DD)V

    .line 71
    :cond_0
    return-object p0
.end method

.method public static fill([FF)[F
    .locals 0
    .param p0, "a"    # [F
    .param p1, "val"    # F

    .line 83
    if-eqz p0, :cond_0

    .line 84
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([FF)V

    .line 86
    :cond_0
    return-object p0
.end method

.method public static fill([II)[I
    .locals 0
    .param p0, "a"    # [I
    .param p1, "val"    # I

    .line 98
    if-eqz p0, :cond_0

    .line 99
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    .line 101
    :cond_0
    return-object p0
.end method

.method public static fill([JJ)[J
    .locals 0
    .param p0, "a"    # [J
    .param p1, "val"    # J

    .line 113
    if-eqz p0, :cond_0

    .line 114
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    .line 116
    :cond_0
    return-object p0
.end method

.method public static fill([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .line 144
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 145
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    :cond_0
    return-object p0
.end method

.method public static fill([SS)[S
    .locals 0
    .param p0, "a"    # [S
    .param p1, "val"    # S

    .line 128
    if-eqz p0, :cond_0

    .line 129
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([SS)V

    .line 131
    :cond_0
    return-object p0
.end method
