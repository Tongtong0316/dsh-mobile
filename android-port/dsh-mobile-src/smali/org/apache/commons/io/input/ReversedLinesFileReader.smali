.class public Lorg/apache/commons/io/input/ReversedLinesFileReader;
.super Ljava/lang/Object;
.source "ReversedLinesFileReader.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/ReversedLinesFileReader$Builder;,
        Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;
    }
.end annotation


# static fields
.field private static final DEFAULT_BLOCK_SIZE:I

.field private static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field private final avoidNewlineSplitBufferSize:I

.field private final blockSize:I

.field private final byteDecrement:I

.field private final channel:Ljava/nio/channels/SeekableByteChannel;

.field private final charset:Ljava/nio/charset/Charset;

.field private currentFilePart:Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

.field private final newLineSequences:[[B

.field private final totalBlockCount:J

.field private final totalByteLength:J

.field private trailingNewlineOfFileSkipped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 269
    invoke-static {}, Lorg/apache/commons/io/FileSystem;->getCurrent()Lorg/apache/commons/io/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/io/FileSystem;->getBlockSize()I

    move-result v0

    sput v0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->DEFAULT_BLOCK_SIZE:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    sget v0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->DEFAULT_BLOCK_SIZE:I

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/input/ReversedLinesFileReader;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    .line 303
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILjava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "blockSize"    # I
    .param p3, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/input/ReversedLinesFileReader;-><init>(Ljava/nio/file/Path;ILjava/lang/String;)V

    .line 352
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILjava/nio/charset/Charset;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "blockSize"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 334
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/input/ReversedLinesFileReader;-><init>(Ljava/nio/file/Path;ILjava/nio/charset/Charset;)V

    .line 335
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 317
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/io/input/ReversedLinesFileReader;-><init>(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V

    .line 318
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;ILjava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "blockSize"    # I
    .param p3, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 453
    invoke-static {p3}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/ReversedLinesFileReader;-><init>(Ljava/nio/file/Path;ILjava/nio/charset/Charset;)V

    .line 454
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;ILjava/nio/charset/Charset;)V
    .locals 11
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "blockSize"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput p2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->blockSize:I

    .line 384
    invoke-static {p3}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->charset:Ljava/nio/charset/Charset;

    .line 387
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 388
    .local v0, "charsetEncoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v1

    .line 389
    .local v1, "maxBytesPerChar":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->charset:Ljava/nio/charset/Charset;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-ne v2, v4, :cond_0

    goto/16 :goto_2

    .line 392
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->charset:Ljava/nio/charset/Charset;

    const-string v4, "Shift_JIS"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->charset:Ljava/nio/charset/Charset;

    .line 394
    const-string v4, "windows-31j"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->charset:Ljava/nio/charset/Charset;

    .line 395
    const-string v4, "x-windows-949"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->charset:Ljava/nio/charset/Charset;

    .line 396
    const-string v4, "gbk"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->charset:Ljava/nio/charset/Charset;

    .line 397
    const-string v4, "x-windows-950"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    if-ne v2, v4, :cond_1

    goto :goto_1

    .line 399
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->charset:Ljava/nio/charset/Charset;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    if-eq v2, v4, :cond_4

    iget-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->charset:Ljava/nio/charset/Charset;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    if-ne v2, v4, :cond_2

    goto :goto_0

    .line 404
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->charset:Ljava/nio/charset/Charset;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    if-ne v2, v3, :cond_3

    .line 405
    new-instance v2, Ljava/io/UnsupportedEncodingException;

    const-string v3, "For UTF-16, you need to specify the byte order (use UTF-16BE or UTF-16LE)"

    invoke-direct {v2, v3}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 408
    :cond_3
    new-instance v2, Ljava/io/UnsupportedEncodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported yet (feel free to submit a patch)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 403
    :cond_4
    :goto_0
    const/4 v2, 0x2

    iput v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I

    goto :goto_3

    .line 398
    :cond_5
    :goto_1
    iput v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I

    goto :goto_3

    .line 391
    :cond_6
    :goto_2
    iput v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I

    .line 414
    :goto_3
    sget-object v2, Lorg/apache/commons/io/StandardLineSeparator;->CRLF:Lorg/apache/commons/io/StandardLineSeparator;

    iget-object v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->charset:Ljava/nio/charset/Charset;

    .line 415
    invoke-virtual {v2, v4}, Lorg/apache/commons/io/StandardLineSeparator;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    sget-object v4, Lorg/apache/commons/io/StandardLineSeparator;->LF:Lorg/apache/commons/io/StandardLineSeparator;

    iget-object v5, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->charset:Ljava/nio/charset/Charset;

    .line 416
    invoke-virtual {v4, v5}, Lorg/apache/commons/io/StandardLineSeparator;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    sget-object v5, Lorg/apache/commons/io/StandardLineSeparator;->CR:Lorg/apache/commons/io/StandardLineSeparator;

    iget-object v6, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->charset:Ljava/nio/charset/Charset;

    .line 417
    invoke-virtual {v5, v6}, Lorg/apache/commons/io/StandardLineSeparator;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    filled-new-array {v2, v4, v5}, [[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->newLineSequences:[[B

    .line 420
    iget-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->newLineSequences:[[B

    const/4 v4, 0x0

    aget-object v2, v2, v4

    array-length v2, v2

    iput v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->avoidNewlineSplitBufferSize:I

    .line 423
    new-array v2, v3, [Ljava/nio/file/OpenOption;

    sget-object v3, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v2, v4

    invoke-static {p1, v2}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 424
    iget-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->totalByteLength:J

    .line 425
    iget-wide v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->totalByteLength:J

    int-to-long v4, p2

    rem-long/2addr v2, v4

    long-to-int v2, v2

    .line 426
    .local v2, "lastBlockLength":I
    if-lez v2, :cond_7

    .line 427
    iget-wide v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->totalByteLength:J

    int-to-long v5, p2

    div-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->totalBlockCount:J

    goto :goto_4

    .line 429
    :cond_7
    iget-wide v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->totalByteLength:J

    int-to-long v5, p2

    div-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->totalBlockCount:J

    .line 430
    iget-wide v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->totalByteLength:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_8

    .line 431
    move v2, p2

    .line 434
    :cond_8
    :goto_4
    new-instance v10, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    iget-wide v5, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->totalBlockCount:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    move-object v4, p0

    move v7, v2

    invoke-direct/range {v3 .. v9}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;-><init>(Lorg/apache/commons/io/input/ReversedLinesFileReader;JI[BLorg/apache/commons/io/input/ReversedLinesFileReader$1;)V

    iput-object v10, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->currentFilePart:Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    .line 436
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 366
    sget v0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->DEFAULT_BLOCK_SIZE:I

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/io/input/ReversedLinesFileReader;-><init>(Ljava/nio/file/Path;ILjava/nio/charset/Charset;)V

    .line 367
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 50
    sget v0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->DEFAULT_BLOCK_SIZE:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/io/input/ReversedLinesFileReader;

    .line 50
    iget v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->blockSize:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/io/input/ReversedLinesFileReader;

    .line 50
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->channel:Ljava/nio/channels/SeekableByteChannel;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/commons/io/input/ReversedLinesFileReader;)[[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/io/input/ReversedLinesFileReader;

    .line 50
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->newLineSequences:[[B

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/io/input/ReversedLinesFileReader;

    .line 50
    iget v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->avoidNewlineSplitBufferSize:I

    return v0
.end method

.method static synthetic access$500(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/io/input/ReversedLinesFileReader;

    .line 50
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/io/input/ReversedLinesFileReader;

    .line 50
    iget v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->byteDecrement:I

    return v0
.end method

.method public static builder()Lorg/apache/commons/io/input/ReversedLinesFileReader$Builder;
    .locals 1

    .line 278
    new-instance v0, Lorg/apache/commons/io/input/ReversedLinesFileReader$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$Builder;-><init>()V

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

    .line 463
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 464
    return-void
.end method

.method public readLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->currentFilePart:Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    invoke-static {v0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->access$800(Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 476
    iget-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->currentFilePart:Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    invoke-static {v1}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->access$900(Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;)Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->currentFilePart:Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    .line 477
    iget-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->currentFilePart:Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    if-nez v1, :cond_0

    .line 479
    goto :goto_1

    .line 481
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->currentFilePart:Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    invoke-static {v1}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->access$800(Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 485
    :cond_1
    :goto_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->trailingNewlineOfFileSkipped:Z

    if-nez v1, :cond_2

    .line 486
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader;->trailingNewlineOfFileSkipped:Z

    .line 487
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 490
    :cond_2
    return-object v0
.end method

.method public readLines(I)Ljava/util/List;
    .locals 3
    .param p1, "lineCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    if-ltz p1, :cond_2

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 513
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 514
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 516
    return-object v0

    .line 518
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    .end local v2    # "line":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    .end local v1    # "i":I
    :cond_1
    return-object v0

    .line 510
    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lineCount < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3
    .param p1, "lineCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->readLines(I)Ljava/util/List;

    move-result-object v0

    .line 537
    .local v0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 538
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method
