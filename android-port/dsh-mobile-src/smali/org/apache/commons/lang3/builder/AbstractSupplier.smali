.class public abstract Lorg/apache/commons/lang3/builder/AbstractSupplier;
.super Ljava/lang/Object;
.source "AbstractSupplier.java"

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Lorg/apache/commons/lang3/builder/AbstractSupplier<",
        "TT;TB;TE;>;E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/function/FailableSupplier<",
        "TT;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    .local p0, "this":Lorg/apache/commons/lang3/builder/AbstractSupplier;, "Lorg/apache/commons/lang3/builder/AbstractSupplier<TT;TB;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method protected asThis()Lorg/apache/commons/lang3/builder/AbstractSupplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/apache/commons/lang3/builder/AbstractSupplier;, "Lorg/apache/commons/lang3/builder/AbstractSupplier<TT;TB;TE;>;"
    return-object p0
.end method
