.class public Lorg/apache/commons/io/input/CircularInputStream;
.super Ljava/io/InputStream;
.source "CircularInputStream.java"


# instance fields
.field private byteCount:J

.field private position:I

.field private final repeatedContent:[B

.field private final targetByteCount:J


# direct methods
.method public constructor <init>([BJ)V
    .locals 2
    .param p1, "repeatContent"    # [B
    .param p2, "targetByteCount"    # J

    .line 64
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->position:I

    .line 65
    invoke-static {p1}, Lorg/apache/commons/io/input/CircularInputStream;->validate([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->repeatedContent:[B

    .line 66
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 69
    iput-wide p2, p0, Lorg/apache/commons/io/input/CircularInputStream;->targetByteCount:J

    .line 70
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "repeatContent is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validate([B)[B
    .locals 4
    .param p0, "repeatContent"    # [B

    .line 44
    const-string v0, "repeatContent"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p0, v1

    .line 46
    .local v2, "b":B
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 45
    .end local v2    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .restart local v2    # "b":B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "repeatContent contains the end-of-stream marker -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    .end local v2    # "b":B
    :cond_1
    return-object p0
.end method


# virtual methods
.method public read()I
    .locals 4

    .line 74
    iget-wide v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->targetByteCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 75
    iget-wide v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->byteCount:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/CircularInputStream;->targetByteCount:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 76
    const/4 v0, -0x1

    return v0

    .line 78
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->byteCount:J

    .line 80
    :cond_1
    iget v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->position:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/commons/io/input/CircularInputStream;->repeatedContent:[B

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->position:I

    .line 81
    iget-object v0, p0, Lorg/apache/commons/io/input/CircularInputStream;->repeatedContent:[B

    iget v1, p0, Lorg/apache/commons/io/input/CircularInputStream;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
