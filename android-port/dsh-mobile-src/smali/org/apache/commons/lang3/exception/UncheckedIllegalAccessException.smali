.class public Lorg/apache/commons/lang3/exception/UncheckedIllegalAccessException;
.super Lorg/apache/commons/lang3/exception/UncheckedReflectiveOperationException;
.source "UncheckedIllegalAccessException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 36
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/exception/UncheckedReflectiveOperationException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method
