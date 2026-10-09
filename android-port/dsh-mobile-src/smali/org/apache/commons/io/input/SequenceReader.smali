.class public Lorg/apache/commons/io/input/SequenceReader;
.super Ljava/io/Reader;
.source "SequenceReader.java"


# instance fields
.field private reader:Ljava/io/Reader;

.field private final readers:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Ljava/io/Reader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$shTLAUDLRQkNj8Pu1JWiqjwr_do(Lorg/apache/commons/io/input/SequenceReader;)Ljava/io/Reader;
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/io/input/SequenceReader;->nextReader()Ljava/io/Reader;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/io/Reader;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p1, "readers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/io/Reader;>;"
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 49
    const-string v0, "readers"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/SequenceReader;->readers:Ljava/util/Iterator;

    .line 50
    new-instance v0, Lorg/apache/commons/io/input/SequenceReader$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/SequenceReader$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/input/SequenceReader;)V

    invoke-static {v0}, Lorg/apache/commons/io/function/Uncheck;->get(Lorg/apache/commons/io/function/IOSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Reader;

    iput-object v0, p0, Lorg/apache/commons/io/input/SequenceReader;->reader:Ljava/io/Reader;

    .line 51
    return-void
.end method

.method public varargs constructor <init>([Ljava/io/Reader;)V
    .locals 1
    .param p1, "readers"    # [Ljava/io/Reader;

    .line 59
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/SequenceReader;-><init>(Ljava/lang/Iterable;)V

    .line 60
    return-void
.end method

.method private nextReader()Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/apache/commons/io/input/SequenceReader;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/apache/commons/io/input/SequenceReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/SequenceReader;->readers:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lorg/apache/commons/io/input/SequenceReader;->readers:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Reader;

    iput-object v0, p0, Lorg/apache/commons/io/input/SequenceReader;->reader:Ljava/io/Reader;

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/input/SequenceReader;->reader:Ljava/io/Reader;

    .line 89
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/io/input/SequenceReader;->reader:Ljava/io/Reader;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/io/input/SequenceReader;->nextReader()Ljava/io/Reader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    const/4 v0, -0x1

    .line 100
    .local v0, "c":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/io/input/SequenceReader;->reader:Ljava/io/Reader;

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lorg/apache/commons/io/input/SequenceReader;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v0

    .line 102
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 103
    goto :goto_1

    .line 105
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/io/input/SequenceReader;->nextReader()Ljava/io/Reader;

    goto :goto_0

    .line 107
    :cond_1
    :goto_1
    return v0
.end method

.method public read([CII)I
    .locals 3
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    const-string v0, "cbuf"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    if-ltz p3, :cond_4

    if-ltz p2, :cond_4

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "count":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/io/input/SequenceReader;->reader:Ljava/io/Reader;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 123
    iget-object v1, p0, Lorg/apache/commons/io/input/SequenceReader;->reader:Ljava/io/Reader;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 124
    .local v1, "readLen":I
    if-ne v1, v2, :cond_0

    .line 125
    invoke-direct {p0}, Lorg/apache/commons/io/input/SequenceReader;->nextReader()Ljava/io/Reader;

    goto :goto_1

    .line 127
    :cond_0
    add-int/2addr v0, v1

    .line 128
    add-int/2addr p2, v1

    .line 129
    sub-int/2addr p3, v1

    .line 130
    if-gtz p3, :cond_1

    .line 131
    goto :goto_2

    .line 134
    .end local v1    # "readLen":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 135
    :cond_2
    :goto_2
    if-lez v0, :cond_3

    .line 136
    return v0

    .line 138
    :cond_3
    return v2

    .line 119
    .end local v0    # "count":I
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array Size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
