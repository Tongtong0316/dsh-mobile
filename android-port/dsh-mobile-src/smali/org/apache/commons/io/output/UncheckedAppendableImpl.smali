.class final Lorg/apache/commons/io/output/UncheckedAppendableImpl;
.super Ljava/lang/Object;
.source "UncheckedAppendableImpl.java"

# interfaces
.implements Lorg/apache/commons/io/output/UncheckedAppendable;


# instance fields
.field private final appendable:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;)V
    .locals 1
    .param p1, "appendable"    # Ljava/lang/Appendable;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "appendable"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Appendable;

    iput-object v0, p0, Lorg/apache/commons/io/output/UncheckedAppendableImpl;->appendable:Ljava/lang/Appendable;

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/UncheckedAppendableImpl;->append(C)Lorg/apache/commons/io/output/UncheckedAppendable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/UncheckedAppendableImpl;->append(Ljava/lang/CharSequence;)Lorg/apache/commons/io/output/UncheckedAppendable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/UncheckedAppendableImpl;->append(Ljava/lang/CharSequence;II)Lorg/apache/commons/io/output/UncheckedAppendable;

    move-result-object p1

    return-object p1
.end method

.method public append(C)Lorg/apache/commons/io/output/UncheckedAppendable;
    .locals 2
    .param p1, "c"    # C

    .line 44
    iget-object v0, p0, Lorg/apache/commons/io/output/UncheckedAppendableImpl;->appendable:Ljava/lang/Appendable;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/commons/io/output/UncheckedAppendableImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/apache/commons/io/output/UncheckedAppendableImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Appendable;)V

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lorg/apache/commons/io/output/UncheckedAppendable;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 50
    iget-object v0, p0, Lorg/apache/commons/io/output/UncheckedAppendableImpl;->appendable:Ljava/lang/Appendable;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/commons/io/output/UncheckedAppendableImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lorg/apache/commons/io/output/UncheckedAppendableImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Appendable;)V

    invoke-static {v1, p1}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOFunction;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lorg/apache/commons/io/output/UncheckedAppendable;
    .locals 3
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 56
    iget-object v0, p0, Lorg/apache/commons/io/output/UncheckedAppendableImpl;->appendable:Ljava/lang/Appendable;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/commons/io/output/UncheckedAppendableImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/apache/commons/io/output/UncheckedAppendableImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Appendable;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p1, v0, v2}, Lorg/apache/commons/io/function/Uncheck;->apply(Lorg/apache/commons/io/function/IOTriFunction;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/commons/io/output/UncheckedAppendableImpl;->appendable:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
