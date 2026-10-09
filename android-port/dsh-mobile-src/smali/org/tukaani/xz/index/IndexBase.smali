.class abstract Lorg/tukaani/xz/index/IndexBase;
.super Ljava/lang/Object;
.source "IndexBase.java"


# instance fields
.field blocksSum:J

.field indexListSize:J

.field private final invalidIndexException:Lorg/tukaani/xz/XZIOException;

.field recordCount:J

.field uncompressedSum:J


# direct methods
.method constructor <init>(Lorg/tukaani/xz/XZIOException;)V
    .locals 2
    .param p1, "invalidIndexException"    # Lorg/tukaani/xz/XZIOException;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->blocksSum:J

    .line 13
    iput-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->uncompressedSum:J

    .line 14
    iput-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->indexListSize:J

    .line 15
    iput-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->recordCount:J

    .line 18
    iput-object p1, p0, Lorg/tukaani/xz/index/IndexBase;->invalidIndexException:Lorg/tukaani/xz/XZIOException;

    .line 19
    return-void
.end method

.method private getUnpaddedIndexSize()J
    .locals 4

    .line 23
    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->recordCount:J

    invoke-static {v0, v1}, Lorg/tukaani/xz/common/Util;->getVLISize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/tukaani/xz/index/IndexBase;->indexListSize:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method add(JJ)V
    .locals 6
    .param p1, "unpaddedSize"    # J
    .param p3, "uncompressedSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/XZIOException;
        }
    .end annotation

    .line 40
    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->blocksSum:J

    const-wide/16 v2, 0x3

    add-long/2addr v2, p1

    const-wide/16 v4, -0x4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->blocksSum:J

    .line 41
    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->uncompressedSum:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->uncompressedSum:J

    .line 42
    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->indexListSize:J

    invoke-static {p1, p2}, Lorg/tukaani/xz/common/Util;->getVLISize(J)I

    move-result v2

    .line 43
    invoke-static {p3, p4}, Lorg/tukaani/xz/common/Util;->getVLISize(J)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->indexListSize:J

    .line 44
    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->recordCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->recordCount:J

    .line 46
    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->blocksSum:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->uncompressedSum:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lorg/tukaani/xz/index/IndexBase;->getIndexSize()J

    move-result-wide v0

    const-wide v4, 0x400000000L

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lorg/tukaani/xz/index/IndexBase;->getStreamSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 50
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/index/IndexBase;->invalidIndexException:Lorg/tukaani/xz/XZIOException;

    throw v0
.end method

.method getIndexPaddingSize()I
    .locals 4

    .line 36
    const-wide/16 v0, 0x4

    invoke-direct {p0}, Lorg/tukaani/xz/index/IndexBase;->getUnpaddedIndexSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getIndexSize()J
    .locals 4

    .line 27
    invoke-direct {p0}, Lorg/tukaani/xz/index/IndexBase;->getUnpaddedIndexSize()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const-wide/16 v2, -0x4

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getStreamSize()J
    .locals 6

    .line 31
    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->blocksSum:J

    const-wide/16 v2, 0xc

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/tukaani/xz/index/IndexBase;->getIndexSize()J

    move-result-wide v4

    add-long/2addr v0, v4

    add-long/2addr v0, v2

    return-wide v0
.end method
