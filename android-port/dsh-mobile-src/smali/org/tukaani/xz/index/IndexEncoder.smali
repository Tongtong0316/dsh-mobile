.class public Lorg/tukaani/xz/index/IndexEncoder;
.super Lorg/tukaani/xz/index/IndexBase;
.source "IndexEncoder.java"


# instance fields
.field private final records:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/tukaani/xz/index/IndexRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string v1, "XZ Stream or its Index has grown too big"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/tukaani/xz/index/IndexBase;-><init>(Lorg/tukaani/xz/XZIOException;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/index/IndexEncoder;->records:Ljava/util/ArrayList;

    .line 20
    return-void
.end method


# virtual methods
.method public add(JJ)V
    .locals 2
    .param p1, "unpaddedSize"    # J
    .param p3, "uncompressedSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/XZIOException;
        }
    .end annotation

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Lorg/tukaani/xz/index/IndexBase;->add(JJ)V

    .line 26
    iget-object v0, p0, Lorg/tukaani/xz/index/IndexEncoder;->records:Ljava/util/ArrayList;

    new-instance v1, Lorg/tukaani/xz/index/IndexRecord;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/tukaani/xz/index/IndexRecord;-><init>(JJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 31
    .local v0, "crc32":Ljava/util/zip/CRC32;
    new-instance v1, Ljava/util/zip/CheckedOutputStream;

    invoke-direct {v1, p1, v0}, Ljava/util/zip/CheckedOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Checksum;)V

    .line 34
    .local v1, "outChecked":Ljava/util/zip/CheckedOutputStream;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/zip/CheckedOutputStream;->write(I)V

    .line 37
    iget-wide v3, p0, Lorg/tukaani/xz/index/IndexEncoder;->recordCount:J

    invoke-static {v1, v3, v4}, Lorg/tukaani/xz/common/EncoderUtil;->encodeVLI(Ljava/io/OutputStream;J)V

    .line 40
    iget-object v3, p0, Lorg/tukaani/xz/index/IndexEncoder;->records:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/tukaani/xz/index/IndexRecord;

    .line 41
    .local v4, "record":Lorg/tukaani/xz/index/IndexRecord;
    iget-wide v5, v4, Lorg/tukaani/xz/index/IndexRecord;->unpadded:J

    invoke-static {v1, v5, v6}, Lorg/tukaani/xz/common/EncoderUtil;->encodeVLI(Ljava/io/OutputStream;J)V

    .line 42
    iget-wide v5, v4, Lorg/tukaani/xz/index/IndexRecord;->uncompressed:J

    invoke-static {v1, v5, v6}, Lorg/tukaani/xz/common/EncoderUtil;->encodeVLI(Ljava/io/OutputStream;J)V

    .line 43
    .end local v4    # "record":Lorg/tukaani/xz/index/IndexRecord;
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lorg/tukaani/xz/index/IndexEncoder;->getIndexPaddingSize()I

    move-result v3

    .local v3, "i":I
    :goto_1
    if-lez v3, :cond_1

    .line 47
    invoke-virtual {v1, v2}, Ljava/util/zip/CheckedOutputStream;->write(I)V

    .line 46
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 50
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    .line 51
    .local v2, "value":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    .line 52
    mul-int/lit8 v5, v4, 0x8

    ushr-long v5, v2, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write(I)V

    .line 51
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 53
    .end local v4    # "i":I
    :cond_2
    return-void
.end method

.method public bridge synthetic getIndexSize()J
    .locals 2

    .line 14
    invoke-super {p0}, Lorg/tukaani/xz/index/IndexBase;->getIndexSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getStreamSize()J
    .locals 2

    .line 14
    invoke-super {p0}, Lorg/tukaani/xz/index/IndexBase;->getStreamSize()J

    move-result-wide v0

    return-wide v0
.end method
