.class public Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "TarArchiveInputStream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/compress/archivers/ArchiveInputStream<",
        "Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final SMALL_BUFFER_SIZE:I = 0x100


# instance fields
.field private atEof:Z

.field private final blockSize:I

.field private currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

.field private currentSparseInputStreamIndex:I

.field private entryOffset:J

.field private entrySize:J

.field private globalPaxHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final globalSparseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;"
        }
    .end annotation
.end field

.field private final lenient:Z

.field private final recordBuffer:[B

.field private final smallBuf:[B

.field private sparseInputStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 126
    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "blockSize"    # I

    .line 148
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "blockSize"    # I
    .param p3, "recordSize"    # I

    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IILjava/lang/String;)V
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "blockSize"    # I
    .param p3, "recordSize"    # I
    .param p4, "encoding"    # Ljava/lang/String;

    .line 172
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;Z)V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IILjava/lang/String;Z)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "blockSize"    # I
    .param p3, "recordSize"    # I
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "lenient"    # Z

    .line 187
    invoke-direct {p0, p1, p4}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 83
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->smallBuf:[B

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalSparseHeaders:Ljava/util/List;

    .line 188
    invoke-static {p4}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 189
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordBuffer:[B

    .line 190
    iput p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->blockSize:I

    .line 191
    iput-boolean p5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->lenient:Z

    .line 192
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILjava/lang/String;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "blockSize"    # I
    .param p3, "encoding"    # Ljava/lang/String;

    .line 203
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 214
    const/16 v0, 0x2800

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;)V

    .line 215
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "lenient"    # Z

    .line 138
    const/16 v3, 0x200

    const/4 v4, 0x0

    const/16 v2, 0x2800

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;-><init>(Ljava/io/InputStream;IILjava/lang/String;Z)V

    .line 139
    return-void
.end method

.method private applyPaxHeadersToCurrentEntry(Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->updateEntryFromPaxHeaders(Ljava/util/Map;)V

    .line 219
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSparseHeaders(Ljava/util/List;)V

    .line 220
    return-void
.end method

.method private buildSparseInputStreams()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    .line 253
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getOrderedSparseHeaders()Ljava/util/List;

    move-result-object v0

    .line 256
    .local v0, "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseZeroInputStream;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseZeroInputStream;-><init>()V

    .line 258
    .local v1, "zeroInputStream":Ljava/io/InputStream;
    const-wide/16 v2, 0x0

    .line 259
    .local v2, "offset":J
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    .line 260
    .local v5, "sparseHeader":Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 261
    .local v6, "zeroBlockSize":J
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-ltz v10, :cond_2

    .line 267
    cmp-long v10, v6, v8

    if-lez v10, :cond_0

    .line 268
    iget-object v10, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    new-instance v11, Lorg/apache/commons/compress/utils/BoundedInputStream;

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v12

    sub-long/2addr v12, v2

    invoke-direct {v11, v1, v12, v13}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_0
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    move-result-wide v10

    cmp-long v8, v10, v8

    if-lez v8, :cond_1

    .line 273
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    new-instance v9, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v10, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    move-result-wide v11

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_1
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v8

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    move-result-wide v10

    add-long v2, v8, v10

    .line 277
    .end local v5    # "sparseHeader":Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    .end local v6    # "zeroBlockSize":J
    goto :goto_0

    .line 263
    .restart local v5    # "sparseHeader":Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    .restart local v6    # "zeroBlockSize":J
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v8, "Corrupted struct sparse detected"

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 279
    .end local v5    # "sparseHeader":Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    .end local v6    # "zeroBlockSize":J
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 280
    const/4 v4, 0x0

    iput v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    .line 282
    :cond_4
    return-void
.end method

.method private consumeRemainderOfLastBlock()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getBytesRead()J

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->blockSize:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    .line 316
    .local v0, "bytesReadOfLastBlock":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 317
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->in:Ljava/io/InputStream;

    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->blockSize:I

    int-to-long v3, v3

    sub-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->count(J)V

    .line 319
    :cond_0
    return-void
.end method

.method private getActuallySkipped(JJJ)J
    .locals 4
    .param p1, "available"    # J
    .param p3, "skipped"    # J
    .param p5, "expected"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    move-wide v0, p3

    .line 332
    .local v0, "actuallySkipped":J
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->in:Ljava/io/InputStream;

    instance-of v2, v2, Ljava/io/FileInputStream;

    if-eqz v2, :cond_0

    .line 333
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 335
    :cond_0
    cmp-long v2, v0, p5

    if-nez v2, :cond_1

    .line 338
    return-wide v0

    .line 336
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Truncated TAR archive"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getRecord()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readRecord()[B

    move-result-object v0

    .line 498
    .local v0, "headerBuf":[B
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isEOFRecord([B)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->setAtEOF(Z)V

    .line 499
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isAtEOF()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 500
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->tryToConsumeSecondEOFRecord()V

    .line 501
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->consumeRemainderOfLastBlock()V

    .line 502
    const/4 v0, 0x0

    .line 504
    :cond_0
    return-object v0
.end method

.method private isDirectory()Z
    .locals 1

    .line 521
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static matches([BI)Z
    .locals 12
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 61
    const/16 v0, 0x107

    .line 62
    .local v0, "versionOffset":I
    const/4 v1, 0x2

    .line 63
    .local v1, "versionLen":I
    const/16 v2, 0x109

    const/4 v3, 0x0

    if-ge p1, v2, :cond_0

    .line 64
    return v3

    .line 67
    :cond_0
    const/16 v2, 0x101

    .line 68
    .local v2, "magicOffset":I
    const/4 v4, 0x6

    .line 69
    .local v4, "magicLen":I
    const-string v5, "ustar\u0000"

    const/16 v6, 0x101

    const/4 v7, 0x6

    invoke-static {v5, p0, v6, v7}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/16 v11, 0x107

    if-eqz v8, :cond_1

    .line 70
    const-string v8, "00"

    invoke-static {v8, p0, v11, v10}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 71
    return v9

    .line 73
    :cond_1
    const-string v8, "ustar "

    invoke-static {v8, p0, v6, v7}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 74
    const-string v8, " \u0000"

    invoke-static {v8, p0, v11, v10}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v8

    if-nez v8, :cond_2

    .line 75
    const-string v8, "0\u0000"

    invoke-static {v8, p0, v11, v10}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 76
    :cond_2
    return v9

    .line 79
    :cond_3
    invoke-static {v5, p0, v6, v7}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 80
    const-string v5, "\u0000\u0000"

    invoke-static {v5, p0, v11, v10}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v9

    goto :goto_0

    :cond_4
    nop

    .line 79
    :goto_0
    return v3
.end method

.method private paxHeaders()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v0, "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    invoke-static {p0, v0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parsePaxHeaders(Ljava/io/InputStream;Ljava/util/List;Ljava/util/Map;J)Ljava/util/Map;

    move-result-object v1

    .line 577
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "GNU.sparse.map"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 578
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseFromPAX01SparseHeaders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v3

    .line 580
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 581
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v2, :cond_2

    .line 584
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->applyPaxHeadersToCurrentEntry(Ljava/util/Map;Ljava/util/List;)V

    .line 587
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isPaxGNU1XSparse()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 588
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getRecordSize()I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parsePAX1XSparseHeaders(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object v0

    .line 589
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSparseHeaders(Ljava/util/List;)V

    .line 594
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->buildSparseInputStreams()V

    .line 595
    return-void

    .line 582
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "premature end of tar archive. Didn\'t find any entry after PAX header."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readGlobalPaxHeaders()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalSparseHeaders:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    invoke-static {p0, v0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parsePaxHeaders(Ljava/io/InputStream;Ljava/util/List;Ljava/util/Map;J)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    .line 652
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 654
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v0, :cond_0

    .line 657
    return-void

    .line 655
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error detected parsing the pax header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readOldGNUSparse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isExtended()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 668
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getRecord()[B

    move-result-object v0

    .line 669
    .local v0, "headerBuf":[B
    if-eqz v0, :cond_1

    .line 672
    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;-><init>([B)V

    .line 673
    .local v1, "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSparseHeaders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;->getSparseHeaders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 674
    .end local v0    # "headerBuf":[B
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;->isExtended()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 670
    .end local v1    # "entry":Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;
    .restart local v0    # "headerBuf":[B
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "premature end of tar archive. Didn\'t find extended_header after header with extended flag."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 679
    .end local v0    # "headerBuf":[B
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->buildSparseInputStreams()V

    .line 680
    return-void
.end method

.method private readSparse([BII)I
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "numToRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 715
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-lt v0, v1, :cond_1

    .line 716
    return v2

    .line 718
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 719
    .local v0, "currentInputStream":Ljava/io/InputStream;
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 722
    .local v1, "readLen":I
    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_2

    .line 723
    return v1

    .line 726
    :cond_2
    if-ne v1, v2, :cond_3

    .line 727
    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    .line 728
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readSparse([BII)I

    move-result v2

    return v2

    .line 732
    :cond_3
    if-ge v1, p3, :cond_5

    .line 733
    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    .line 734
    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-direct {p0, p1, v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readSparse([BII)I

    move-result v3

    .line 735
    .local v3, "readLenOfNext":I
    if-ne v3, v2, :cond_4

    .line 736
    return v1

    .line 738
    :cond_4
    add-int v2, v1, v3

    return v2

    .line 741
    .end local v3    # "readLenOfNext":I
    :cond_5
    return v1

    .line 713
    .end local v0    # "currentInputStream":Ljava/io/InputStream;
    .end local v1    # "readLen":I
    :cond_6
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method private skipRecordPadding()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 799
    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getRecordSize()I

    move-result v4

    int-to-long v4, v4

    rem-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v8, v0

    .line 801
    .local v8, "available":J
    iget-wide v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getRecordSize()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long v10, v0, v2

    .line 802
    .local v10, "numRecords":J
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getRecordSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v10

    iget-wide v2, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    sub-long v12, v0, v2

    .line 803
    .local v12, "padding":J
    iget-object v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, v12, v13}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v14

    .line 805
    .local v14, "skipped":J
    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide v3, v14

    move-wide v5, v12

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getActuallySkipped(JJJ)J

    move-result-wide v0

    .line 807
    .end local v14    # "skipped":J
    .local v0, "skipped":J
    invoke-virtual {v7, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->count(J)V

    .line 809
    .end local v0    # "skipped":J
    .end local v8    # "available":J
    .end local v10    # "numRecords":J
    .end local v12    # "padding":J
    :cond_0
    return-void
.end method

.method private skipSparse(J)J
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 823
    :cond_0
    const-wide/16 v0, 0x0

    .line 824
    .local v0, "bytesSkipped":J
    :goto_0
    cmp-long v2, v0, p1

    if-gez v2, :cond_2

    iget v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 825
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 826
    .local v2, "currentInputStream":Ljava/io/InputStream;
    sub-long v3, p1, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 827
    cmp-long v3, v0, p1

    if-gez v3, :cond_1

    .line 828
    iget v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currentSparseInputStreamIndex:I

    .line 830
    .end local v2    # "currentInputStream":Ljava/io/InputStream;
    :cond_1
    goto :goto_0

    .line 831
    :cond_2
    return-wide v0

    .line 821
    .end local v0    # "bytesSkipped":J
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private tryToConsumeSecondEOFRecord()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 843
    const/4 v0, 0x1

    .line 844
    .local v0, "shouldReset":Z
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    .line 845
    .local v1, "marked":Z
    if-eqz v1, :cond_0

    .line 846
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getRecordSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V

    .line 849
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readRecord()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isEOFRecord([B)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v2, v2, 0x1

    move v0, v2

    .line 851
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 852
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getRecordSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->pushedBackBytes(J)V

    .line 853
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 856
    :cond_1
    return-void

    .line 851
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 852
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getRecordSize()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->pushedBackBytes(J)V

    .line 853
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 855
    :cond_2
    throw v2
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x0

    return v0

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getRealSize()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    sub-long/2addr v0, v2

    .line 236
    .local v0, "available":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 237
    const v2, 0x7fffffff

    return v2

    .line 239
    :cond_1
    long-to-int v2, v0

    return v2
.end method

.method public canReadEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .locals 1
    .param p1, "archiveEntry"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 291
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->sparseInputStreams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 304
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 305
    .end local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 308
    return-void
.end method

.method public getCurrentEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .locals 1

    .line 347
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-object v0
.end method

.method protected getLongNameData()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 359
    .local v0, "longName":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 360
    .local v1, "length":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->smallBuf:[B

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->read([B)I

    move-result v2

    move v1, v2

    if-ltz v2, :cond_0

    .line 361
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->smallBuf:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 364
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-nez v2, :cond_1

    .line 367
    const/4 v2, 0x0

    return-object v2

    .line 369
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 371
    .local v2, "longNameData":[B
    array-length v1, v2

    .line 372
    :goto_1
    if-lez v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    aget-byte v3, v2, v3

    if-nez v3, :cond_2

    .line 373
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 375
    :cond_2
    array-length v3, v2

    if-eq v1, v3, :cond_3

    .line 376
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 378
    :cond_3
    return-object v2
.end method

.method public bridge synthetic getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public getNextTarEntry()Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 403
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isAtEOF()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 404
    return-object v1

    .line 407
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v0, :cond_1

    .line 409
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {p0, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    .line 412
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->skipRecordPadding()V

    .line 415
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getRecord()[B

    move-result-object v0

    .line 417
    .local v0, "headerBuf":[B
    if-nez v0, :cond_2

    .line 419
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 420
    return-object v1

    .line 424
    :cond_2
    :try_start_0
    new-instance v2, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    iget-boolean v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->lenient:Z

    invoke-direct {v2, v3, v0, v4, v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/util/Map;[BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 427
    nop

    .line 429
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    .line 430
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    .line 432
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGNULongLinkEntry()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 433
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getLongNameData()[B

    move-result-object v2

    .line 434
    .local v2, "longLinkData":[B
    if-nez v2, :cond_3

    .line 437
    return-object v1

    .line 439
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v4, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLinkName(Ljava/lang/String;)V

    .line 442
    .end local v2    # "longLinkData":[B
    :cond_4
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGNULongNameEntry()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 443
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getLongNameData()[B

    move-result-object v2

    .line 444
    .local v2, "longNameData":[B
    if-nez v2, :cond_5

    .line 447
    return-object v1

    .line 451
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v3, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setName(Ljava/lang/String;)V

    .line 453
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 454
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setName(Ljava/lang/String;)V

    .line 458
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "longNameData":[B
    :cond_6
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGlobalPaxHeader()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 459
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readGlobalPaxHeaders()V

    .line 463
    :cond_7
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isPaxHeader()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 464
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->paxHeaders()V

    goto :goto_0

    .line 465
    :cond_8
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 466
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalPaxHeaders:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->globalSparseHeaders:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->applyPaxHeadersToCurrentEntry(Ljava/util/Map;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 470
    :cond_9
    :goto_0
    nop

    .line 472
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isOldGNUSparse()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 473
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readOldGNUSparse()V

    .line 480
    :cond_a
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entrySize:J

    .line 482
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-object v1

    .line 468
    :catch_0
    move-exception v1

    .line 469
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error detected parsing the pax header"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 425
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 426
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Error detected parsing the header"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getRecordSize()I
    .locals 1

    .line 513
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordBuffer:[B

    array-length v0, v0

    return v0
.end method

.method protected final isAtEOF()Z
    .locals 1

    .line 517
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->atEof:Z

    return v0
.end method

.method protected isEOFRecord([B)Z
    .locals 1
    .param p1, "record"    # [B

    .line 531
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getRecordSize()I

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/commons/compress/utils/ArchiveUtils;->isArrayZero([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0
    .param p1, "markLimit"    # I

    monitor-enter p0

    .line 541
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public read([BII)I
    .locals 7
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "numToRead"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    if-nez p3, :cond_0

    .line 612
    const/4 v0, 0x0

    return v0

    .line 614
    :cond_0
    const/4 v0, 0x0

    .line 616
    .local v0, "totalRead":I
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isAtEOF()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_7

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 620
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    if-eqz v1, :cond_6

    .line 624
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getRealSize()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-ltz v1, :cond_2

    .line 625
    return v2

    .line 628
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->available()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 630
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSparse()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 632
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->readSparse([BII)I

    move-result v0

    goto :goto_0

    .line 634
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 637
    :goto_0
    if-ne v0, v2, :cond_5

    .line 638
    if-gtz p3, :cond_4

    .line 641
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->setAtEOF(Z)V

    goto :goto_1

    .line 639
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Truncated TAR archive"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 643
    :cond_5
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->count(I)V

    .line 644
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    .line 647
    :goto_1
    return v0

    .line 621
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No current tar entry"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 617
    :cond_7
    :goto_2
    return v2
.end method

.method protected readRecord()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 689
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordBuffer:[B

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    .line 690
    .local v0, "readCount":I
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->count(I)V

    .line 691
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getRecordSize()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 692
    const/4 v1, 0x0

    return-object v1

    .line 695
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->recordBuffer:[B

    return-object v1
.end method

.method public declared-synchronized reset()V
    .locals 0

    monitor-enter p0

    .line 749
    monitor-exit p0

    return-void
.end method

.method protected final setAtEOF(Z)V
    .locals 0
    .param p1, "atEof"    # Z

    .line 752
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->atEof:Z

    .line 753
    return-void
.end method

.method protected final setCurrentEntry(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)V
    .locals 0
    .param p1, "currEntry"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 756
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 757
    return-void
.end method

.method public skip(J)J
    .locals 18
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 770
    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    if-lez v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 774
    :cond_0
    iget-object v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v10, v0

    .line 775
    .local v10, "availableOfInputStream":J
    iget-object v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getRealSize()J

    move-result-wide v0

    iget-wide v2, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    sub-long v12, v0, v2

    .line 776
    .local v12, "available":J
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 779
    .local v14, "numToSkip":J
    iget-object v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->currEntry:Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSparse()Z

    move-result v0

    if-nez v0, :cond_1

    .line 780
    iget-object v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, v14, v15}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v16

    .line 783
    .local v16, "skipped":J
    move-object/from16 v0, p0

    move-wide v1, v10

    move-wide/from16 v3, v16

    move-wide v5, v14

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->getActuallySkipped(JJJ)J

    move-result-wide v0

    .end local v16    # "skipped":J
    .local v0, "skipped":J
    goto :goto_0

    .line 785
    .end local v0    # "skipped":J
    :cond_1
    invoke-direct {v7, v14, v15}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->skipSparse(J)J

    move-result-wide v0

    .line 788
    .restart local v0    # "skipped":J
    :goto_0
    invoke-virtual {v7, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->count(J)V

    .line 789
    iget-wide v2, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    add-long/2addr v2, v0

    iput-wide v2, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveInputStream;->entryOffset:J

    .line 790
    return-wide v0

    .line 771
    .end local v0    # "skipped":J
    .end local v10    # "availableOfInputStream":J
    .end local v12    # "available":J
    .end local v14    # "numToSkip":J
    :cond_2
    :goto_1
    return-wide v0
.end method
