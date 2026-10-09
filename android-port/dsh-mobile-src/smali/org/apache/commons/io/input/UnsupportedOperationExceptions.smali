.class final Lorg/apache/commons/io/input/UnsupportedOperationExceptions;
.super Ljava/lang/Object;
.source "UnsupportedOperationExceptions.java"


# static fields
.field private static final MARK_RESET:Ljava/lang/String; = "mark/reset"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static mark()Ljava/lang/UnsupportedOperationException;
    .locals 1

    .line 38
    const-string v0, "mark/reset"

    invoke-static {v0}, Lorg/apache/commons/io/input/UnsupportedOperationExceptions;->method(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    return-object v0
.end method

.method static method(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;
    .locals 3
    .param p0, "method"    # Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static reset()Ljava/lang/UnsupportedOperationException;
    .locals 1

    .line 58
    const-string v0, "mark/reset"

    invoke-static {v0}, Lorg/apache/commons/io/input/UnsupportedOperationExceptions;->method(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    return-object v0
.end method
