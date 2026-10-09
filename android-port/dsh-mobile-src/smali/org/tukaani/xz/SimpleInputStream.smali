.class Lorg/tukaani/xz/SimpleInputStream;
.super Ljava/io/InputStream;
.source "SimpleInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FILTER_BUF_SIZE:I = 0x1000


# instance fields
.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private final filterBuf:[B

.field private filtered:I

.field private in:Ljava/io/InputStream;

.field private pos:I

.field private final simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

.field private final tempBuf:[B

.field private unfiltered:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 11
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "simpleFilter"    # Lorg/tukaani/xz/simple/SimpleFilter;

    .line 31
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 17
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    .line 19
    iput v0, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    .line 20
    iput v0, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    .line 22
    iput-boolean v0, p0, Lorg/tukaani/xz/SimpleInputStream;->endReached:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->tempBuf:[B

    .line 34
    if-eqz p1, :cond_1

    .line 39
    if-eqz p2, :cond_0

    .line 41
    iput-object p1, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    .line 42
    iput-object p2, p0, Lorg/tukaani/xz/SimpleInputStream;->simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

    .line 43
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static getMemoryUsage()I
    .locals 1

    .line 28
    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 124
    iget v0, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    return v0

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 119
    :cond_1
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iput-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    .line 134
    goto :goto_0

    .line 133
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    .line 134
    throw v1

    .line 136
    :cond_0
    :goto_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->tempBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/tukaani/xz/SimpleInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->tempBuf:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([BII)I
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    if-ltz p2, :cond_a

    if-ltz p3, :cond_a

    add-int v0, p2, p3

    if-ltz v0, :cond_a

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_a

    .line 55
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 56
    return v0

    .line 58
    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_9

    .line 61
    iget-object v1, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_8

    .line 65
    const/4 v1, 0x0

    .line 69
    .local v1, "size":I
    :goto_0
    :try_start_0
    iget v2, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 70
    .local v2, "copySize":I
    iget-object v3, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    iget v4, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    invoke-static {v3, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    .line 72
    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    .line 73
    add-int/2addr p2, v2

    .line 74
    sub-int/2addr p3, v2

    .line 75
    add-int/2addr v1, v2

    .line 80
    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget v4, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v3, v4

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_1

    .line 81
    iget-object v3, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget-object v6, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    iget v7, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    iget v8, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v7, v8

    invoke-static {v3, v5, v6, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iput v0, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    .line 86
    :cond_1
    const/4 v3, -0x1

    if-eqz p3, :cond_6

    iget-boolean v5, p0, Lorg/tukaani/xz/SimpleInputStream;->endReached:Z

    if-eqz v5, :cond_2

    goto :goto_2

    .line 89
    :cond_2
    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    if-nez v5, :cond_5

    .line 92
    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget v6, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    add-int/2addr v5, v6

    iget v6, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    .line 93
    .local v4, "inSize":I
    iget-object v5, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    iget-object v6, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    iget v7, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget v8, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    add-int/2addr v7, v8

    iget v8, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v4, v5

    .line 96
    if-ne v4, v3, :cond_3

    .line 99
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/tukaani/xz/SimpleInputStream;->endReached:Z

    .line 100
    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    iput v3, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    .line 101
    iput v0, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    goto :goto_1

    .line 104
    :cond_3
    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    .line 105
    iget-object v3, p0, Lorg/tukaani/xz/SimpleInputStream;->simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

    iget-object v5, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    iget v6, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget v7, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    invoke-interface {v3, v5, v6, v7}, Lorg/tukaani/xz/simple/SimpleFilter;->code([BII)I

    move-result v3

    iput v3, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    .line 106
    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    if-gt v3, v5, :cond_4

    .line 107
    iget v3, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    sub-int/2addr v3, v5

    iput v3, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    .line 109
    .end local v2    # "copySize":I
    .end local v4    # "inSize":I
    :goto_1
    goto/16 :goto_0

    .line 106
    .restart local v2    # "copySize":I
    .restart local v4    # "inSize":I
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "buf":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v0

    .line 89
    .end local v4    # "inSize":I
    .restart local p1    # "buf":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "buf":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .restart local p1    # "buf":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_6
    :goto_2
    if-lez v1, :cond_7

    move v3, v1

    :cond_7
    return v3

    .line 110
    .end local v1    # "size":I
    .end local v2    # "copySize":I
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    .line 112
    throw v0

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 59
    :cond_9
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_a
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
