.class Lorg/tukaani/xz/SimpleOutputStream;
.super Lorg/tukaani/xz/FinishableOutputStream;
.source "SimpleOutputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FILTER_BUF_SIZE:I = 0x1000


# instance fields
.field private exception:Ljava/io/IOException;

.field private final filterBuf:[B

.field private finished:Z

.field private out:Lorg/tukaani/xz/FinishableOutputStream;

.field private pos:I

.field private final simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

.field private final tempBuf:[B

.field private unfiltered:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 10
    return-void
.end method

.method constructor <init>(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V
    .locals 2
    .param p1, "out"    # Lorg/tukaani/xz/FinishableOutputStream;
    .param p2, "simpleFilter"    # Lorg/tukaani/xz/simple/SimpleFilter;

    .line 30
    invoke-direct {p0}, Lorg/tukaani/xz/FinishableOutputStream;-><init>()V

    .line 16
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->filterBuf:[B

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    .line 18
    iput v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    .line 20
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    .line 21
    iput-boolean v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->finished:Z

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->tempBuf:[B

    .line 31
    if-eqz p1, :cond_0

    .line 34
    iput-object p1, p0, Lorg/tukaani/xz/SimpleOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    .line 35
    iput-object p2, p0, Lorg/tukaani/xz/SimpleOutputStream;->simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

    .line 36
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static getMemoryUsage()I
    .locals 1

    .line 26
    const/4 v0, 0x5

    return v0
.end method

.method private writePending()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-boolean v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->finished:Z

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 95
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    iget-object v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->filterBuf:[B

    iget v2, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    iget v3, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/tukaani/xz/FinishableOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    nop

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->finished:Z

    .line 102
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    .line 98
    throw v0

    .line 92
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    if-eqz v0, :cond_2

    .line 127
    iget-boolean v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 132
    :try_start_0
    invoke-direct {p0}, Lorg/tukaani/xz/SimpleOutputStream;->writePending()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 137
    :cond_0
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/FinishableOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    goto :goto_2

    .line 138
    :catch_1
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 142
    iput-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    .line 145
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    .line 148
    :cond_2
    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_3

    .line 150
    return-void

    .line 149
    :cond_3
    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    throw v0
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-boolean v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 113
    invoke-direct {p0}, Lorg/tukaani/xz/SimpleOutputStream;->writePending()V

    .line 116
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/FinishableOutputStream;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    .line 119
    throw v0

    .line 122
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "Flushing is not supported"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->tempBuf:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 41
    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->tempBuf:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/SimpleOutputStream;->write([BII)V

    .line 42
    return-void
.end method

.method public write([BII)V
    .locals 7
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    add-int v0, p2, p3

    if-ltz v0, :cond_5

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_5

    .line 49
    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_4

    .line 52
    iget-boolean v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->finished:Z

    if-nez v0, :cond_3

    .line 55
    :goto_0
    if-lez p3, :cond_2

    .line 57
    iget v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    iget v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    add-int/2addr v0, v1

    const/16 v1, 0x1000

    rsub-int v0, v0, 0x1000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 58
    .local v0, "copySize":I
    iget-object v2, p0, Lorg/tukaani/xz/SimpleOutputStream;->filterBuf:[B

    iget v3, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    iget v4, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    add-int/2addr v3, v4

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    add-int/2addr p2, v0

    .line 60
    sub-int/2addr p3, v0

    .line 61
    iget v2, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    .line 64
    iget-object v2, p0, Lorg/tukaani/xz/SimpleOutputStream;->simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

    iget-object v3, p0, Lorg/tukaani/xz/SimpleOutputStream;->filterBuf:[B

    iget v4, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    iget v5, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    invoke-interface {v2, v3, v4, v5}, Lorg/tukaani/xz/simple/SimpleFilter;->code([BII)I

    move-result v2

    .line 65
    .local v2, "filtered":I
    iget v3, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    if-gt v2, v3, :cond_1

    .line 66
    iget v3, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    .line 70
    :try_start_0
    iget-object v3, p0, Lorg/tukaani/xz/SimpleOutputStream;->out:Lorg/tukaani/xz/FinishableOutputStream;

    iget-object v4, p0, Lorg/tukaani/xz/SimpleOutputStream;->filterBuf:[B

    iget v5, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    invoke-virtual {v3, v4, v5, v2}, Lorg/tukaani/xz/FinishableOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    nop

    .line 76
    iget v3, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    .line 81
    iget v3, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    iget v4, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    add-int/2addr v3, v4

    if-ne v3, v1, :cond_0

    .line 82
    iget-object v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->filterBuf:[B

    iget v3, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    iget-object v4, p0, Lorg/tukaani/xz/SimpleOutputStream;->filterBuf:[B

    iget v5, p0, Lorg/tukaani/xz/SimpleOutputStream;->unfiltered:I

    const/4 v6, 0x0

    invoke-static {v1, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iput v6, p0, Lorg/tukaani/xz/SimpleOutputStream;->pos:I

    .line 85
    .end local v0    # "copySize":I
    .end local v2    # "filtered":I
    :cond_0
    goto :goto_0

    .line 71
    .restart local v0    # "copySize":I
    .restart local v2    # "filtered":I
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/io/IOException;
    iput-object v1, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    .line 73
    throw v1

    .line 65
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 86
    .end local v0    # "copySize":I
    .end local v2    # "filtered":I
    :cond_2
    return-void

    .line 53
    :cond_3
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream finished or closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_4
    iget-object v0, p0, Lorg/tukaani/xz/SimpleOutputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 47
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
