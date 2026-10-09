.class public Lorg/apache/commons/lang3/NumberRange;
.super Lorg/apache/commons/lang3/Range;
.source "NumberRange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Number;",
        ">",
        "Lorg/apache/commons/lang3/Range<",
        "TN;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;",
            "Ljava/util/Comparator<",
            "TN;>;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lorg/apache/commons/lang3/NumberRange;, "Lorg/apache/commons/lang3/NumberRange<TN;>;"
    .local p1, "number1":Ljava/lang/Number;, "TN;"
    .local p2, "number2":Ljava/lang/Number;, "TN;"
    .local p3, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<TN;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 46
    return-void
.end method
