.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
.super Ljava/lang/Object;
.source "SevenZFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;,
        Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    }
.end annotation


# static fields
.field private static final DEFAULT_FILE_NAME:Ljava/lang/String; = "unknown archive"

.field static final SIGNATURE_HEADER_SIZE:I = 0x20

.field static final sevenZSignature:[B


# instance fields
.field private final archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

.field private channel:Ljava/nio/channels/SeekableByteChannel;

.field private compressedBytesReadFromCurrentEntry:J

.field private currentEntryIndex:I

.field private currentFolderIndex:I

.field private currentFolderInputStream:Ljava/io/InputStream;

.field private final deferredBlockStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final fileName:Ljava/lang/String;

.field private final maxMemoryLimitKb:I

.field private password:[B

.field private final tryToRecoverBrokenArchives:Z

.field private uncompressedBytesReadFromCurrentEntry:J

.field private final useDefaultNameForUnnamedEntries:Z


# direct methods
.method public static synthetic $r8$lambda$4BQ5ArfWXirWkxf9s4XfDylm8lY()[B
    .locals 1

    invoke-static {}, Lorg/apache/commons/io/IOUtils;->byteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$VOm64xXfZ2rfTCb1WE1acSh87S4(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cOGEan9qYZ2WnG4ze1FuzNShUbE(Ljava/lang/Integer;)J
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 300
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x37t
        0x7at
        -0x44t
        -0x51t
        0x27t
        0x1ct
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "fileName"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 428
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 429
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 487
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 488
    return-void
.end method

.method public constructor <init>(Ljava/io/File;[B)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 442
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->newByteChannel(Ljava/io/File;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    sget-object v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 443
    return-void
.end method

.method public constructor <init>(Ljava/io/File;[C)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 456
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 457
    return-void
.end method

.method public constructor <init>(Ljava/io/File;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "password"    # [C
    .param p3, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 472
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->newByteChannel(Ljava/io/File;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    .line 473
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;->utf16Decode([C)[B

    move-result-object v3

    .line 472
    const/4 v4, 0x1

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 474
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 503
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 504
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 589
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 590
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 6
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 703
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 704
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[B)V
    .locals 6
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 607
    const/4 v4, 0x0

    sget-object v5, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 608
    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZIZZ)V
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "password"    # [B
    .param p4, "closeOnError"    # Z
    .param p5, "maxMemoryLimitKb"    # I
    .param p6, "useDefaultNameForUnnamedEntries"    # Z
    .param p7, "tryToRecoverBrokenArchives"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 408
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    .line 612
    const/4 v0, 0x0

    .line 613
    .local v0, "succeeded":Z
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 614
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 615
    iput p5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->maxMemoryLimitKb:I

    .line 616
    iput-boolean p6, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->useDefaultNameForUnnamedEntries:Z

    .line 617
    iput-boolean p7, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->tryToRecoverBrokenArchives:Z

    .line 619
    :try_start_0
    invoke-direct {p0, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readHeaders([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 620
    if-eqz p3, :cond_0

    .line 621
    array-length v1, p3

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    goto :goto_0

    .line 623
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    :goto_0
    const/4 v0, 0x1

    .line 627
    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    .line 628
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 631
    :cond_1
    return-void

    .line 627
    :catchall_0
    move-exception v1

    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    .line 628
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 630
    :cond_2
    throw v1
.end method

.method synthetic constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZIZZLorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # [B
    .param p4, "x3"    # Z
    .param p5, "x4"    # I
    .param p6, "x5"    # Z
    .param p7, "x6"    # Z
    .param p8, "x7"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-direct/range {p0 .. p7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZIZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 8
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "password"    # [B
    .param p4, "closeOnError"    # Z
    .param p5, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 647
    invoke-virtual {p5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getMaxMemoryLimitInKb()I

    move-result v5

    invoke-virtual {p5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getUseDefaultNameForUnnamedEntries()Z

    move-result v6

    .line 648
    invoke-virtual {p5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->getTryToRecoverBrokenArchives()Z

    move-result v7

    .line 647
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZIZZ)V

    .line 649
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[C)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 666
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 667
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 6
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .param p4, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 685
    invoke-static {p3}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;->utf16Decode([C)[B

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 686
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 572
    const-string v0, "unknown archive"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 573
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[B)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 520
    const-string v0, "unknown archive"

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[B)V

    .line 521
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[C)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 537
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;->DEFAULT:Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 538
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "password"    # [C
    .param p3, "options"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 555
    const-string v0, "unknown archive"

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[CLorg/apache/commons/compress/archivers/sevenz/SevenZFileOptions;)V

    .line 556
    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    .line 83
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    return-wide v0
.end method

.method static synthetic access$114(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;J)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    .param p1, "x1"    # J

    .line 83
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    .line 83
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    return-wide v0
.end method

.method private static assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I
    .locals 3
    .param p0, "what"    # Ljava/lang/String;
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 307
    long-to-int v0, p1

    return v0

    .line 305
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Cannot handle % %,d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;
    .locals 16
    .param p1, "folder"    # Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .param p2, "folderOffset"    # J
    .param p4, "firstPackStreamIndex"    # I
    .param p5, "entry"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 708
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    move-wide/from16 v3, p2

    invoke-interface {v2, v3, v4}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 709
    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v8, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v8, v8, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v9, v8, p4

    invoke-direct {v6, v7, v9, v10}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Ljava/io/InputStream;)V

    .line 741
    .local v2, "inputStreamStack":Ljava/io/InputStream;
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 742
    .local v5, "methods":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getOrderedCoders()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 743
    .local v14, "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    iget-wide v7, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    const-wide/16 v9, 0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    iget-wide v7, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 746
    iget-object v7, v14, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->byId([B)Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    move-result-object v15

    .line 747
    .local v15, "method":Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    iget-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v14}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSizeForCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)J

    move-result-wide v9

    iget-object v12, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    iget v13, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->maxMemoryLimitKb:I

    move-object v8, v2

    move-object v11, v14

    invoke-static/range {v7 .. v13}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[BI)Ljava/io/InputStream;

    move-result-object v2

    .line 748
    new-instance v7, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    invoke-static {v15}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->findByMethod(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)Lorg/apache/commons/compress/archivers/sevenz/AbstractCoder;

    move-result-object v8

    invoke-virtual {v8, v14, v2}, Lorg/apache/commons/compress/archivers/sevenz/AbstractCoder;->getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v7, v15, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 749
    .end local v14    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .end local v15    # "method":Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    goto :goto_0

    .line 744
    .restart local v14    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_0
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Multi input/output stream coders are not yet supported"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 750
    .end local v14    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_1
    move-object/from16 v6, p5

    invoke-virtual {v6, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 751
    iget-boolean v7, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v7, :cond_2

    .line 753
    invoke-static {}, Lorg/apache/commons/io/input/ChecksumInputStream;->builder()Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v7

    new-instance v8, Ljava/util/zip/CRC32;

    invoke-direct {v8}, Ljava/util/zip/CRC32;-><init>()V

    .line 754
    invoke-virtual {v7, v8}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setChecksum(Ljava/util/zip/Checksum;)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v7

    .line 755
    invoke-virtual {v7, v2}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    .line 756
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setCountThreshold(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v7

    iget-wide v8, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    .line 757
    invoke-virtual {v7, v8, v9}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setExpectedChecksumValue(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v7

    .line 758
    invoke-virtual {v7}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->get()Lorg/apache/commons/io/input/ChecksumInputStream;

    move-result-object v7

    .line 753
    return-object v7

    .line 761
    :cond_2
    return-object v2
.end method

.method private buildDecodingStream(IZ)V
    .locals 8
    .param p1, "entryIndex"    # I
    .param p2, "isRandomAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 774
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    if-eqz v0, :cond_7

    .line 777
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    aget v0, v0, p1

    .line 778
    .local v0, "folderIndex":I
    if-gez v0, :cond_0

    .line 779
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 782
    return-void

    .line 784
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v1, v1, p1

    .line 785
    .local v1, "file":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    const/4 v2, 0x0

    .line 786
    .local v2, "isInSameFolder":Z
    iget v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    if-ne v3, v0, :cond_3

    .line 792
    if-lez p1, :cond_1

    .line 793
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v3, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 799
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v3

    if-nez v3, :cond_2

    .line 800
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v3, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v3, v3, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    aget v3, v3, v0

    .line 801
    .local v3, "folderFirstFileIndex":I
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v4, v4, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v4, v4, v3

    .line 802
    .local v4, "folderFirstFile":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 804
    .end local v3    # "folderFirstFileIndex":I
    .end local v4    # "folderFirstFile":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 806
    :cond_3
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 808
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->reopenFolderInputStream(ILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V

    .line 811
    :goto_0
    const/4 v3, 0x0

    .line 812
    .local v3, "haveSkippedEntries":Z
    if-eqz p2, :cond_4

    .line 814
    invoke-direct {p0, p1, v2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipEntriesWhenNeeded(IZI)Z

    move-result v3

    .line 817
    :cond_4
    if-eqz p2, :cond_5

    iget v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    if-ne v4, p1, :cond_5

    if-nez v3, :cond_5

    .line 823
    return-void

    .line 826
    :cond_5
    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 827
    invoke-virtual {v4, v5}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    .line 828
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setMaxCount(J)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    .line 829
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setPropagateClose(Z)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    .line 830
    invoke-virtual {v4}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v4

    .line 831
    .local v4, "fileStream":Ljava/io/InputStream;
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCrc()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 833
    invoke-static {}, Lorg/apache/commons/io/input/ChecksumInputStream;->builder()Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v5

    new-instance v6, Ljava/util/zip/CRC32;

    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    .line 834
    invoke-virtual {v5, v6}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setChecksum(Ljava/util/zip/Checksum;)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v5

    .line 835
    invoke-virtual {v5, v4}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    .line 836
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCrcValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setExpectedChecksumValue(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v5

    .line 837
    invoke-virtual {v5}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->get()Lorg/apache/commons/io/input/ChecksumInputStream;

    move-result-object v4

    .line 841
    :cond_6
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    return-void

    .line 775
    .end local v0    # "folderIndex":I
    .end local v1    # "file":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .end local v2    # "isInSameFolder":Z
    .end local v3    # "haveSkippedEntries":Z
    .end local v4    # "fileStream":Ljava/io/InputStream;
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Archive doesn\'t contain stream information to read entries"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static builder()Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
    .locals 1

    .line 317
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;-><init>()V

    return-object v0
.end method

.method private calculateStreamMap(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 14
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 845
    const/4 v0, 0x0

    .line 846
    .local v0, "nextFolderPackStreamIndex":I
    iget-object v1, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 847
    .local v1, "numFolders":I
    :goto_0
    new-array v2, v1, [I

    .line 848
    .local v2, "folderFirstPackStreamIndex":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 849
    aput v0, v2, v3

    .line 850
    iget-object v4, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v4, v4, v3

    iget-object v4, v4, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    array-length v4, v4

    add-int/2addr v0, v4

    .line 848
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 852
    .end local v3    # "i":I
    :cond_1
    const-wide/16 v3, 0x0

    .line 853
    .local v3, "nextPackStreamOffset":J
    iget-object v5, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v5, v5

    .line 854
    .local v5, "numPackSizes":I
    new-array v6, v5, [J

    .line 855
    .local v6, "packStreamOffsets":[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v5, :cond_2

    .line 856
    aput-wide v3, v6, v7

    .line 857
    iget-object v8, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v9, v8, v7

    add-long/2addr v3, v9

    .line 855
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 859
    .end local v7    # "i":I
    :cond_2
    new-array v7, v1, [I

    .line 860
    .local v7, "folderFirstFileIndex":[I
    iget-object v8, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v8, v8

    new-array v8, v8, [I

    .line 861
    .local v8, "fileFolderIndex":[I
    const/4 v9, 0x0

    .line 862
    .local v9, "nextFolderIndex":I
    const/4 v10, 0x0

    .line 863
    .local v10, "nextFolderUnpackStreamIndex":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    iget-object v12, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v12, v12

    if-ge v11, v12, :cond_a

    .line 864
    iget-object v12, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v12, v12, v11

    invoke-virtual {v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v12

    if-nez v12, :cond_3

    if-nez v10, :cond_3

    .line 865
    const/4 v12, -0x1

    aput v12, v8, v11

    .line 866
    goto :goto_7

    .line 868
    :cond_3
    if-nez v10, :cond_7

    .line 869
    :goto_4
    iget-object v12, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v12, v12

    if-ge v9, v12, :cond_5

    .line 870
    aput v11, v7, v9

    .line 871
    iget-object v12, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v12, v12, v9

    iget v12, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-lez v12, :cond_4

    .line 872
    goto :goto_5

    .line 869
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 875
    :cond_5
    :goto_5
    iget-object v12, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v12, v12

    if-ge v9, v12, :cond_6

    goto :goto_6

    .line 876
    :cond_6
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Too few folders in archive"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 879
    :cond_7
    :goto_6
    aput v9, v8, v11

    .line 880
    iget-object v12, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v12, v12, v11

    invoke-virtual {v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v12

    if-nez v12, :cond_8

    .line 881
    goto :goto_7

    .line 883
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 884
    iget-object v12, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v12, v12, v9

    iget v12, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-lt v10, v12, :cond_9

    .line 885
    add-int/lit8 v9, v9, 0x1

    .line 886
    const/4 v10, 0x0

    .line 863
    :cond_9
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 889
    .end local v11    # "i":I
    :cond_a
    new-instance v11, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    invoke-direct {v11, v2, v6, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;-><init>([I[J[I[I)V

    iput-object v11, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    .line 890
    return-void
.end method

.method private static checkEndOfFile(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "expectRemaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 322
    .local v0, "remaining":I
    if-lt v0, p1, :cond_0

    .line 325
    return-object p0

    .line 323
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "remaining %,d < expectRemaining %,d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkEntryIsInitialized(Ljava/util/Map;I)V
    .locals 2
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;",
            ">;I)V"
        }
    .end annotation

    .line 893
    .local p1, "archiveEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 894
    return-void
.end method

.method private static get(Ljava/nio/ByteBuffer;[B)V
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "to"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 329
    array-length v0, p1

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEndOfFile(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 330
    return-void
.end method

.method private static getChar(Ljava/nio/ByteBuffer;)C
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 333
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEndOfFile(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    return v0
.end method

.method private getCurrentStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 917
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 918
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lorg/apache/commons/compress/utils/ByteUtils;->EMPTY_BYTE_ARRAY:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 920
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 923
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-le v0, v1, :cond_3

    .line 927
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 928
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda2;-><init>()V

    const-wide v4, 0x7fffffffffffffffL

    invoke-static {v0, v4, v5, v1}, Lorg/apache/commons/io/IOUtils;->skip(Ljava/io/InputStream;JLjava/util/function/Supplier;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 930
    .end local v0    # "stream":Ljava/io/InputStream;
    :cond_1
    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    goto :goto_0

    .line 927
    .restart local v0    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1

    .line 932
    .end local v0    # "stream":Ljava/io/InputStream;
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0

    .line 921
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current 7z entry (call getNextEntry() first)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getInt(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 337
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEndOfFile(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method private static getLong(Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 341
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEndOfFile(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getUnsignedByte(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 346
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method private hasCurrentEntryBeenRead()Z
    .locals 9

    .line 1053
    const/4 v0, 0x0

    .line 1054
    .local v0, "hasCurrentEntryBeenRead":Z
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1055
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 1058
    .local v1, "currentEntryInputStream":Ljava/io/InputStream;
    instance-of v2, v1, Lorg/apache/commons/io/input/ChecksumInputStream;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 1059
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/io/input/ChecksumInputStream;

    invoke-virtual {v2}, Lorg/apache/commons/io/input/ChecksumInputStream;->getRemaining()J

    move-result-wide v5

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v7, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    move v0, v3

    goto :goto_2

    .line 1060
    :cond_1
    instance-of v2, v1, Lorg/apache/commons/io/input/BoundedInputStream;

    if-eqz v2, :cond_3

    .line 1061
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-virtual {v2}, Lorg/apache/commons/io/input/BoundedInputStream;->getRemaining()J

    move-result-wide v5

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v7, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    move v0, v3

    .line 1064
    .end local v1    # "currentEntryInputStream":Ljava/io/InputStream;
    :cond_3
    :goto_2
    return v0
.end method

.method private initializeArchive(Lorg/apache/commons/compress/archivers/sevenz/StartHeader;[BZ)Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .locals 8
    .param p1, "startHeader"    # Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .param p2, "password"    # [B
    .param p3, "verifyCrc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1068
    const-string v0, "nextHeaderSize"

    iget-wide v1, p1, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    .line 1069
    iget-wide v0, p1, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    long-to-int v0, v0

    .line 1070
    .local v0, "nextHeaderSizeInt":I
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    const-wide/16 v2, 0x20

    iget-wide v4, p1, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    add-long/2addr v4, v2

    invoke-interface {v1, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1071
    if-eqz p3, :cond_2

    .line 1072
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v1

    .line 1073
    .local v1, "position":J
    new-instance v3, Ljava/util/zip/CheckedInputStream;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v4}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v3, v4, v5}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 1074
    .local v3, "cis":Ljava/util/zip/CheckedInputStream;
    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/zip/CheckedInputStream;->skip(J)J

    move-result-wide v4

    int-to-long v6, v0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1077
    iget-wide v4, p1, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderCrc:J

    invoke-virtual {v3}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1080
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v4, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    goto :goto_0

    .line 1078
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "NextHeader CRC-32 mismatch"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1075
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Problem computing NextHeader CRC-32"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1082
    .end local v1    # "position":J
    .end local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    :cond_2
    :goto_0
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Archive;-><init>()V

    .line 1083
    .local v1, "archive":Lorg/apache/commons/compress/archivers/sevenz/Archive;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1084
    .local v2, "buf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFully(Ljava/nio/ByteBuffer;)V

    .line 1085
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 1086
    .local v3, "nid":I
    const/16 v4, 0x17

    if-ne v3, v4, :cond_3

    .line 1087
    invoke-direct {p0, v2, v1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readEncodedHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;[B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1089
    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-direct {v4}, Lorg/apache/commons/compress/archivers/sevenz/Archive;-><init>()V

    move-object v1, v4

    .line 1090
    invoke-static {v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 1092
    :cond_3
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1095
    invoke-direct {p0, v2, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1096
    const/4 v4, 0x0

    iput-object v4, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    .line 1097
    return-object v1

    .line 1093
    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Broken or unsupported archive: no Header"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static synthetic lambda$checkEntryIsInitialized$0(Ljava/lang/Integer;)Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 893
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$readFilesInfo$1(I)[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .locals 1
    .param p0, "x$0"    # I

    .line 1375
    new-array v0, p0, [Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    return-object v0
.end method

.method public static matches([BI)Z
    .locals 4
    .param p0, "signature"    # [B
    .param p1, "length"    # I

    .line 360
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 361
    return v1

    .line 363
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 364
    aget-byte v2, p0, v0

    sget-object v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_1

    .line 365
    return v1

    .line 363
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static newByteChannel(Ljava/io/File;)Ljava/nio/channels/SeekableByteChannel;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method private readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .locals 4
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1146
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1148
    .local v0, "areAllDefined":I
    if-eqz v0, :cond_1

    .line 1149
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, p2}, Ljava/util/BitSet;-><init>(I)V

    .line 1150
    .local v1, "bits":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 1151
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 1150
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_0
    goto :goto_1

    .line 1154
    .end local v1    # "bits":Ljava/util/BitSet;
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v1

    .line 1156
    .restart local v1    # "bits":Ljava/util/BitSet;
    :goto_1
    return-object v1
.end method

.method private readArchiveProperties(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1161
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 1162
    .local v0, "nid":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1163
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 1164
    .local v2, "propertySize":J
    long-to-int v4, v2

    new-array v4, v4, [B

    .line 1165
    .local v4, "property":[B
    invoke-static {p1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->get(Ljava/nio/ByteBuffer;[B)V

    .line 1166
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 1167
    .end local v2    # "propertySize":J
    .end local v4    # "property":[B
    goto :goto_0

    .line 1168
    :cond_0
    return-void
.end method

.method private readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;
    .locals 5
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1171
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    .line 1172
    .local v0, "bits":Ljava/util/BitSet;
    const/4 v1, 0x0

    .line 1173
    .local v1, "mask":I
    const/4 v2, 0x0

    .line 1174
    .local v2, "cache":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_2

    .line 1175
    if-nez v1, :cond_0

    .line 1176
    const/16 v1, 0x80

    .line 1177
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 1179
    :cond_0
    and-int v4, v2, v1

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 1180
    ushr-int/lit8 v1, v1, 0x1

    .line 1174
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1182
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method

.method private readEncodedHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;[B)Ljava/nio/ByteBuffer;
    .locals 19
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .param p3, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1186
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 1187
    .local v3, "pos":I
    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;)V

    .line 1188
    .local v4, "stats":Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    invoke-direct {v0, v1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V

    .line 1189
    iget v5, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->maxMemoryLimitKb:I

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->assertValidity(I)V

    .line 1190
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1192
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1194
    iget-object v5, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    if-eqz v5, :cond_5

    iget-object v5, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v5, v5

    if-eqz v5, :cond_5

    .line 1197
    iget-object v5, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    if-eqz v5, :cond_4

    iget-object v5, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v5, v5

    if-eqz v5, :cond_4

    .line 1202
    iget-object v5, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 1203
    .local v5, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    const/4 v7, 0x0

    .line 1204
    .local v7, "firstPackStreamIndex":I
    const-wide/16 v8, 0x20

    iget-wide v10, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    add-long/2addr v10, v8

    const-wide/16 v8, 0x0

    add-long/2addr v10, v8

    .line 1206
    .local v10, "folderOffset":J
    iget-object v8, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v8, v10, v11}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1207
    new-instance v8, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v12, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v13, v12, v6

    invoke-direct {v8, v9, v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    move-object v6, v8

    .line 1208
    .local v6, "inputStreamStack":Ljava/io/InputStream;
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getOrderedCoders()Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 1209
    .local v9, "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    iget-wide v12, v9, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    const-wide/16 v14, 0x1

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    iget-wide v12, v9, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    .line 1212
    iget-object v12, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    .line 1213
    invoke-virtual {v5, v9}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSizeForCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;)J

    move-result-wide v14

    iget v13, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->maxMemoryLimitKb:I

    .line 1212
    move/from16 v18, v13

    move-object v13, v6

    move-object/from16 v16, v9

    move-object/from16 v17, p3

    invoke-static/range {v12 .. v18}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[BI)Ljava/io/InputStream;

    move-result-object v6

    .line 1214
    .end local v9    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    goto :goto_0

    .line 1210
    .restart local v9    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_0
    new-instance v8, Ljava/io/IOException;

    const-string v12, "Multi input/output stream coders are not yet supported"

    invoke-direct {v8, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1215
    .end local v9    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_1
    iget-boolean v8, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v8, :cond_2

    .line 1217
    invoke-static {}, Lorg/apache/commons/io/input/ChecksumInputStream;->builder()Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v8

    new-instance v9, Ljava/util/zip/CRC32;

    invoke-direct {v9}, Ljava/util/zip/CRC32;-><init>()V

    .line 1218
    invoke-virtual {v8, v9}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setChecksum(Ljava/util/zip/Checksum;)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v8

    .line 1219
    invoke-virtual {v8, v6}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    .line 1220
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setCountThreshold(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v8

    iget-wide v12, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    .line 1221
    invoke-virtual {v8, v12, v13}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setExpectedChecksumValue(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v8

    .line 1222
    invoke-virtual {v8}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->get()Lorg/apache/commons/io/input/ChecksumInputStream;

    move-result-object v6

    .line 1225
    :cond_2
    const-string v8, "unpackSize"

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v12

    invoke-static {v8, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v8

    .line 1226
    .local v8, "unpackSize":I
    invoke-static {v6, v8}, Lorg/apache/commons/compress/utils/IOUtils;->readRange(Ljava/io/InputStream;I)[B

    move-result-object v9

    .line 1227
    .local v9, "nextHeader":[B
    array-length v12, v9

    if-lt v12, v8, :cond_3

    .line 1230
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 1231
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v12

    return-object v12

    .line 1228
    :cond_3
    new-instance v12, Ljava/io/IOException;

    const-string v13, "premature end of stream"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1198
    .end local v5    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v6    # "inputStreamStack":Ljava/io/InputStream;
    .end local v7    # "firstPackStreamIndex":I
    .end local v8    # "unpackSize":I
    .end local v9    # "nextHeader":[B
    .end local v10    # "folderOffset":J
    :cond_4
    new-instance v5, Ljava/io/IOException;

    const-string v6, "no packed streams, can\'t read encoded header"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1195
    :cond_5
    new-instance v5, Ljava/io/IOException;

    const-string v6, "no folders, can\'t read encoded header"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private readFilesInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 19
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1235
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 1236
    .local v3, "numFilesInt":I
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1237
    .local v4, "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    const/4 v5, 0x0

    .line 1238
    .local v5, "isEmptyStream":Ljava/util/BitSet;
    const/4 v6, 0x0

    .line 1239
    .local v6, "isEmptyFile":Ljava/util/BitSet;
    const/4 v7, 0x0

    .line 1241
    .local v7, "isAnti":Ljava/util/BitSet;
    :goto_0
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 1242
    .local v8, "propertyType":I
    if-nez v8, :cond_a

    .line 1243
    nop

    .line 1346
    .end local v8    # "propertyType":I
    const/4 v8, 0x0

    .line 1347
    .local v8, "nonEmptyFileCounter":I
    const/4 v9, 0x0

    .line 1348
    .local v9, "emptyFileCounter":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v3, :cond_9

    .line 1349
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 1350
    .local v11, "entryAtIndex":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    if-nez v11, :cond_0

    .line 1351
    goto/16 :goto_7

    .line 1353
    :cond_0
    if-eqz v5, :cond_2

    invoke-virtual {v5, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-nez v14, :cond_1

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v14, 0x1

    :goto_3
    invoke-virtual {v11, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasStream(Z)V

    .line 1354
    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1355
    iget-object v14, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    if-eqz v14, :cond_4

    .line 1358
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 1359
    invoke-virtual {v11, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    .line 1360
    iget-object v14, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v14, v14, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v14, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    invoke-virtual {v11, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 1361
    iget-object v14, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v14, v14, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    aget-wide v12, v14, v8

    invoke-virtual {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCrcValue(J)V

    .line 1362
    iget-object v12, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    iget-object v12, v12, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    aget-wide v13, v12, v8

    invoke-virtual {v11, v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    .line 1363
    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-ltz v12, :cond_3

    .line 1366
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1364
    :cond_3
    new-instance v12, Ljava/io/IOException;

    const-string v13, "broken archive, entry with negative size"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1356
    :cond_4
    new-instance v12, Ljava/io/IOException;

    const-string v13, "Archive contains file with streams but no subStreamsInfo"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1368
    :cond_5
    if-eqz v6, :cond_7

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v14, 0x1

    :goto_5
    invoke-virtual {v11, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 1369
    if-eqz v7, :cond_8

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v13, 0x1

    goto :goto_6

    :cond_8
    const/4 v13, 0x0

    :goto_6
    invoke-virtual {v11, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    .line 1370
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 1371
    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    .line 1372
    add-int/lit8 v9, v9, 0x1

    .line 1348
    .end local v11    # "entryAtIndex":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1375
    .end local v10    # "i":I
    :cond_9
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda0;

    invoke-direct {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda1;

    invoke-direct {v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iput-object v10, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 1376
    invoke-direct {v0, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->calculateStreamMap(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1377
    return-void

    .line 1245
    .end local v9    # "emptyFileCounter":I
    .local v8, "propertyType":I
    :cond_a
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v9

    .line 1246
    .local v9, "size":J
    packed-switch v8, :pswitch_data_0

    .line 1341
    :pswitch_0
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v4    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v6    # "isEmptyFile":Ljava/util/BitSet;
    .end local v7    # "isAnti":Ljava/util/BitSet;
    .local v16, "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .local v17, "isEmptyFile":Ljava/util/BitSet;
    .local v18, "isAnti":Ljava/util/BitSet;
    invoke-static {v1, v9, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    goto/16 :goto_e

    .line 1335
    .end local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .end local v18    # "isAnti":Ljava/util/BitSet;
    .restart local v4    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v6    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v7    # "isAnti":Ljava/util/BitSet;
    :pswitch_1
    invoke-static {v1, v9, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    .line 1336
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    goto/16 :goto_e

    .line 1319
    :pswitch_2
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v11

    .line 1320
    .local v11, "attributesDefined":Ljava/util/BitSet;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 1321
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8
    if-ge v12, v3, :cond_c

    .line 1322
    invoke-direct {v0, v4, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEntryIsInitialized(Ljava/util/Map;I)V

    .line 1323
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 1324
    .local v13, "entryAtIndex":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasWindowsAttributes(Z)V

    .line 1325
    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasWindowsAttributes()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1326
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getInt(Ljava/nio/ByteBuffer;)I

    move-result v14

    invoke-virtual {v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setWindowsAttributes(I)V

    .line 1321
    .end local v13    # "entryAtIndex":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 1329
    .end local v12    # "i":I
    :cond_c
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    goto/16 :goto_e

    .line 1306
    .end local v11    # "attributesDefined":Ljava/util/BitSet;
    :pswitch_3
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v11

    .line 1307
    .local v11, "timesDefined":Ljava/util/BitSet;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 1308
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_9
    if-ge v12, v3, :cond_e

    .line 1309
    invoke-direct {v0, v4, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEntryIsInitialized(Ljava/util/Map;I)V

    .line 1310
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 1311
    .restart local v13    # "entryAtIndex":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasLastModifiedDate(Z)V

    .line 1312
    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasLastModifiedDate()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1313
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setLastModifiedDate(J)V

    .line 1308
    .end local v13    # "entryAtIndex":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 1316
    .end local v12    # "i":I
    :cond_e
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    goto/16 :goto_e

    .line 1293
    .end local v11    # "timesDefined":Ljava/util/BitSet;
    :pswitch_4
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v11

    .line 1294
    .restart local v11    # "timesDefined":Ljava/util/BitSet;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 1295
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_a
    if-ge v12, v3, :cond_10

    .line 1296
    invoke-direct {v0, v4, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEntryIsInitialized(Ljava/util/Map;I)V

    .line 1297
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 1298
    .restart local v13    # "entryAtIndex":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasAccessDate(Z)V

    .line 1299
    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasAccessDate()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 1300
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAccessDate(J)V

    .line 1295
    .end local v13    # "entryAtIndex":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 1303
    .end local v12    # "i":I
    :cond_10
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    goto/16 :goto_e

    .line 1280
    .end local v11    # "timesDefined":Ljava/util/BitSet;
    :pswitch_5
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v11

    .line 1281
    .restart local v11    # "timesDefined":Ljava/util/BitSet;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 1282
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_b
    if-ge v12, v3, :cond_12

    .line 1283
    invoke-direct {v0, v4, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEntryIsInitialized(Ljava/util/Map;I)V

    .line 1284
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 1285
    .restart local v13    # "entryAtIndex":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v11, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCreationDate(Z)V

    .line 1286
    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCreationDate()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 1287
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCreationDate(J)V

    .line 1282
    .end local v13    # "entryAtIndex":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 1290
    .end local v12    # "i":I
    :cond_12
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    goto/16 :goto_e

    .line 1260
    .end local v11    # "timesDefined":Ljava/util/BitSet;
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 1261
    const-wide/16 v11, 0x1

    sub-long v11, v9, v11

    long-to-int v11, v11

    new-array v11, v11, [B

    .line 1262
    .local v11, "names":[B
    array-length v12, v11

    .line 1263
    .local v12, "namesLength":I
    invoke-static {v1, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->get(Ljava/nio/ByteBuffer;[B)V

    .line 1264
    const/4 v13, 0x0

    .line 1265
    .local v13, "nextFile":I
    const/4 v14, 0x0

    .line 1266
    .local v14, "nextName":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_c
    if-ge v15, v12, :cond_14

    .line 1267
    aget-byte v16, v11, v15

    if-nez v16, :cond_13

    add-int/lit8 v16, v15, 0x1

    aget-byte v16, v11, v16

    if-nez v16, :cond_13

    .line 1268
    invoke-direct {v0, v4, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->checkEntryIsInitialized(Ljava/util/Map;I)V

    .line 1269
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    move-object/from16 v16, v4

    .end local v4    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    new-instance v4, Ljava/lang/String;

    move-object/from16 v17, v6

    .end local v6    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v17    # "isEmptyFile":Ljava/util/BitSet;
    sub-int v6, v15, v14

    move-object/from16 v18, v7

    .end local v7    # "isAnti":Ljava/util/BitSet;
    .restart local v18    # "isAnti":Ljava/util/BitSet;
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {v4, v11, v14, v6, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v2, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setName(Ljava/lang/String;)V

    .line 1270
    add-int/lit8 v2, v15, 0x2

    .line 1271
    .end local v14    # "nextName":I
    .local v2, "nextName":I
    add-int/lit8 v13, v13, 0x1

    move v14, v2

    goto :goto_d

    .line 1267
    .end local v2    # "nextName":I
    .end local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .end local v18    # "isAnti":Ljava/util/BitSet;
    .restart local v4    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v6    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v7    # "isAnti":Ljava/util/BitSet;
    .restart local v14    # "nextName":I
    :cond_13
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .line 1266
    .end local v4    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v6    # "isEmptyFile":Ljava/util/BitSet;
    .end local v7    # "isAnti":Ljava/util/BitSet;
    .restart local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v17    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v18    # "isAnti":Ljava/util/BitSet;
    :goto_d
    add-int/lit8 v15, v15, 0x2

    move-object/from16 v2, p2

    move-object/from16 v4, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    goto :goto_c

    .end local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .end local v18    # "isAnti":Ljava/util/BitSet;
    .restart local v4    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v6    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v7    # "isAnti":Ljava/util/BitSet;
    :cond_14
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .line 1274
    .end local v4    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v6    # "isEmptyFile":Ljava/util/BitSet;
    .end local v7    # "isAnti":Ljava/util/BitSet;
    .end local v15    # "i":I
    .restart local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v17    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v18    # "isAnti":Ljava/util/BitSet;
    if-ne v14, v12, :cond_15

    if-ne v13, v3, :cond_15

    goto :goto_e

    .line 1275
    :cond_15
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Error parsing file names"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1256
    .end local v11    # "names":[B
    .end local v12    # "namesLength":I
    .end local v13    # "nextFile":I
    .end local v14    # "nextName":I
    .end local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .end local v18    # "isAnti":Ljava/util/BitSet;
    .restart local v4    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v6    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v7    # "isAnti":Ljava/util/BitSet;
    :pswitch_7
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v4    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v6    # "isEmptyFile":Ljava/util/BitSet;
    .end local v7    # "isAnti":Ljava/util/BitSet;
    .restart local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v17    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v18    # "isAnti":Ljava/util/BitSet;
    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    .line 1257
    .end local v18    # "isAnti":Ljava/util/BitSet;
    .local v2, "isAnti":Ljava/util/BitSet;
    move-object v7, v2

    goto :goto_f

    .line 1252
    .end local v2    # "isAnti":Ljava/util/BitSet;
    .end local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v4    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v6    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v7    # "isAnti":Ljava/util/BitSet;
    :pswitch_8
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v4    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v6    # "isEmptyFile":Ljava/util/BitSet;
    .end local v7    # "isAnti":Ljava/util/BitSet;
    .restart local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v17    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v18    # "isAnti":Ljava/util/BitSet;
    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    .line 1253
    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .local v2, "isEmptyFile":Ljava/util/BitSet;
    move-object v6, v2

    goto :goto_f

    .line 1248
    .end local v2    # "isEmptyFile":Ljava/util/BitSet;
    .end local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v18    # "isAnti":Ljava/util/BitSet;
    .restart local v4    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v6    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v7    # "isAnti":Ljava/util/BitSet;
    :pswitch_9
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v4    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .end local v6    # "isEmptyFile":Ljava/util/BitSet;
    .end local v7    # "isAnti":Ljava/util/BitSet;
    .restart local v16    # "fileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;>;"
    .restart local v17    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v18    # "isAnti":Ljava/util/BitSet;
    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    .line 1249
    .end local v5    # "isEmptyStream":Ljava/util/BitSet;
    .local v2, "isEmptyStream":Ljava/util/BitSet;
    move-object v5, v2

    goto :goto_f

    .line 1345
    .end local v2    # "isEmptyStream":Ljava/util/BitSet;
    .end local v8    # "propertyType":I
    .end local v9    # "size":J
    .restart local v5    # "isEmptyStream":Ljava/util/BitSet;
    :goto_e
    move-object/from16 v6, v17

    move-object/from16 v7, v18

    .end local v17    # "isEmptyFile":Ljava/util/BitSet;
    .end local v18    # "isAnti":Ljava/util/BitSet;
    .restart local v6    # "isEmptyFile":Ljava/util/BitSet;
    .restart local v7    # "isAnti":Ljava/util/BitSet;
    :goto_f
    move-object/from16 v2, p2

    move-object/from16 v4, v16

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readFolder(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .locals 31
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1380
    move-object/from16 v0, p1

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;-><init>()V

    .line 1382
    .local v1, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 1383
    .local v2, "numCoders":J
    long-to-int v4, v2

    new-array v4, v4, [Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 1384
    .local v4, "coders":[Lorg/apache/commons/compress/archivers/sevenz/Coder;
    const-wide/16 v5, 0x0

    .line 1385
    .local v5, "totalInStreams":J
    const-wide/16 v7, 0x0

    .line 1386
    .local v7, "totalOutStreams":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v4

    const/4 v11, 0x0

    if-ge v9, v10, :cond_6

    .line 1387
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v10

    .line 1388
    .local v10, "bits":I
    and-int/lit8 v12, v10, 0xf

    .line 1389
    .local v12, "idSize":I
    and-int/lit8 v13, v10, 0x10

    if-nez v13, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    move v13, v11

    .line 1390
    .local v13, "isSimple":Z
    :goto_1
    and-int/lit8 v15, v10, 0x20

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    goto :goto_2

    :cond_1
    move v15, v11

    .line 1391
    .local v15, "hasAttributes":Z
    :goto_2
    and-int/lit16 v14, v10, 0x80

    if-eqz v14, :cond_2

    const/4 v11, 0x1

    .line 1393
    .local v11, "moreAlternativeMethods":Z
    :cond_2
    new-array v14, v12, [B

    .line 1394
    .local v14, "decompressionMethodId":[B
    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->get(Ljava/nio/ByteBuffer;[B)V

    .line 1397
    if-eqz v13, :cond_3

    .line 1398
    const-wide/16 v16, 0x1

    .line 1399
    .local v16, "numInStreams":J
    const-wide/16 v18, 0x1

    move-wide/from16 v23, v16

    move-wide/from16 v25, v18

    .local v18, "numOutStreams":J
    goto :goto_3

    .line 1401
    .end local v16    # "numInStreams":J
    .end local v18    # "numOutStreams":J
    :cond_3
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v16

    .line 1402
    .restart local v16    # "numInStreams":J
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v18

    move-wide/from16 v23, v16

    move-wide/from16 v25, v18

    .line 1404
    .end local v16    # "numInStreams":J
    .local v23, "numInStreams":J
    .local v25, "numOutStreams":J
    :goto_3
    add-long v5, v5, v23

    .line 1405
    add-long v7, v7, v25

    .line 1406
    const/16 v16, 0x0

    .line 1407
    .local v16, "properties":[B
    if-eqz v15, :cond_4

    .line 1408
    move-wide/from16 v27, v2

    .end local v2    # "numCoders":J
    .local v27, "numCoders":J
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 1409
    .local v2, "propertiesSize":J
    move-wide/from16 v29, v5

    .end local v5    # "totalInStreams":J
    .local v29, "totalInStreams":J
    long-to-int v5, v2

    new-array v5, v5, [B

    .line 1410
    .end local v16    # "properties":[B
    .local v5, "properties":[B
    invoke-static {v0, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->get(Ljava/nio/ByteBuffer;[B)V

    goto :goto_4

    .line 1407
    .end local v27    # "numCoders":J
    .end local v29    # "totalInStreams":J
    .local v2, "numCoders":J
    .local v5, "totalInStreams":J
    .restart local v16    # "properties":[B
    :cond_4
    move-wide/from16 v27, v2

    move-wide/from16 v29, v5

    .end local v2    # "numCoders":J
    .end local v5    # "totalInStreams":J
    .restart local v27    # "numCoders":J
    .restart local v29    # "totalInStreams":J
    move-object/from16 v5, v16

    .line 1413
    .end local v16    # "properties":[B
    .local v5, "properties":[B
    :goto_4
    if-nez v11, :cond_5

    .line 1417
    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    move-object/from16 v16, v2

    move-object/from16 v17, v14

    move-wide/from16 v18, v23

    move-wide/from16 v20, v25

    move-object/from16 v22, v5

    invoke-direct/range {v16 .. v22}, Lorg/apache/commons/compress/archivers/sevenz/Coder;-><init>([BJJ[B)V

    aput-object v2, v4, v9

    .line 1386
    .end local v5    # "properties":[B
    .end local v10    # "bits":I
    .end local v11    # "moreAlternativeMethods":Z
    .end local v12    # "idSize":I
    .end local v13    # "isSimple":Z
    .end local v14    # "decompressionMethodId":[B
    .end local v15    # "hasAttributes":Z
    .end local v23    # "numInStreams":J
    .end local v25    # "numOutStreams":J
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v2, v27

    move-wide/from16 v5, v29

    goto :goto_0

    .line 1414
    .restart local v5    # "properties":[B
    .restart local v10    # "bits":I
    .restart local v11    # "moreAlternativeMethods":Z
    .restart local v12    # "idSize":I
    .restart local v13    # "isSimple":Z
    .restart local v14    # "decompressionMethodId":[B
    .restart local v15    # "hasAttributes":Z
    .restart local v23    # "numInStreams":J
    .restart local v25    # "numOutStreams":J
    :cond_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Alternative methods are unsupported, please report. The reference implementation doesn\'t support them either."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1386
    .end local v10    # "bits":I
    .end local v11    # "moreAlternativeMethods":Z
    .end local v12    # "idSize":I
    .end local v13    # "isSimple":Z
    .end local v14    # "decompressionMethodId":[B
    .end local v15    # "hasAttributes":Z
    .end local v23    # "numInStreams":J
    .end local v25    # "numOutStreams":J
    .end local v27    # "numCoders":J
    .end local v29    # "totalInStreams":J
    .restart local v2    # "numCoders":J
    .local v5, "totalInStreams":J
    :cond_6
    move-wide/from16 v27, v2

    .line 1419
    .end local v2    # "numCoders":J
    .end local v9    # "i":I
    .restart local v27    # "numCoders":J
    iput-object v4, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 1420
    iput-wide v5, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalInputStreams:J

    .line 1421
    iput-wide v7, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    .line 1423
    const-wide/16 v2, 0x1

    sub-long v9, v7, v2

    .line 1424
    .local v9, "numBindPairs":J
    long-to-int v12, v9

    new-array v12, v12, [Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 1425
    .local v12, "bindPairs":[Lorg/apache/commons/compress/archivers/sevenz/BindPair;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    array-length v14, v12

    if-ge v13, v14, :cond_7

    .line 1426
    new-instance v14, Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    move-wide/from16 v17, v7

    .end local v7    # "totalOutStreams":J
    .local v17, "totalOutStreams":J
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v7

    invoke-direct {v14, v2, v3, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/BindPair;-><init>(JJ)V

    aput-object v14, v12, v13

    .line 1425
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v7, v17

    const-wide/16 v2, 0x1

    goto :goto_5

    .end local v17    # "totalOutStreams":J
    .restart local v7    # "totalOutStreams":J
    :cond_7
    move-wide/from16 v17, v7

    .line 1428
    .end local v7    # "totalOutStreams":J
    .end local v13    # "i":I
    .restart local v17    # "totalOutStreams":J
    iput-object v12, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 1430
    sub-long v2, v5, v9

    .line 1431
    .local v2, "numPackedStreams":J
    long-to-int v7, v2

    new-array v7, v7, [J

    .line 1432
    .local v7, "packedStreams":[J
    const-wide/16 v13, 0x1

    cmp-long v8, v2, v13

    if-nez v8, :cond_a

    .line 1434
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    long-to-int v13, v5

    if-ge v8, v13, :cond_9

    .line 1435
    invoke-virtual {v1, v8}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->findBindPairForInStream(I)I

    move-result v13

    if-gez v13, :cond_8

    .line 1436
    goto :goto_7

    .line 1434
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1439
    :cond_9
    :goto_7
    int-to-long v13, v8

    aput-wide v13, v7, v11

    .line 1440
    .end local v8    # "i":I
    goto :goto_9

    .line 1441
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_8
    long-to-int v11, v2

    if-ge v8, v11, :cond_b

    .line 1442
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v13

    aput-wide v13, v7, v8

    .line 1441
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 1445
    .end local v8    # "i":I
    :cond_b
    :goto_9
    iput-object v7, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    .line 1447
    return-object v1
.end method

.method private readFully(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1451
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1452
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v0, p1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1453
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1454
    return-void
.end method

.method private readHeader(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 5
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1457
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1458
    .local v0, "pos":I
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckAndCollectStatistics(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;

    move-result-object v1

    .line 1459
    .local v1, "stats":Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->maxMemoryLimitKb:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->assertValidity(I)V

    .line 1460
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1462
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 1464
    .local v2, "nid":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1465
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readArchiveProperties(Ljava/nio/ByteBuffer;)V

    .line 1466
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 1469
    :cond_0
    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 1474
    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1475
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1476
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 1479
    :cond_1
    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 1480
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFilesInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1481
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 1483
    :cond_2
    return-void

    .line 1470
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Additional streams unsupported"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private readHeaders([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .locals 11
    .param p1, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1486
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1487
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFully(Ljava/nio/ByteBuffer;)V

    .line 1488
    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 1489
    .local v1, "signature":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1490
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1494
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 1495
    .local v2, "archiveVersionMajor":B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 1496
    .local v3, "archiveVersionMinor":B
    if-nez v2, :cond_5

    .line 1500
    const/4 v4, 0x0

    .line 1501
    .local v4, "headerLooksValid":Z
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 1502
    .local v5, "startHeaderCrc":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-nez v7, :cond_2

    .line 1504
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v7}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v7

    .line 1505
    .local v7, "currentPosition":J
    const/16 v9, 0x14

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 1506
    .local v9, "peekBuf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFully(Ljava/nio/ByteBuffer;)V

    .line 1507
    iget-object v10, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v10, v7, v8}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1509
    :cond_0
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1510
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    if-eqz v10, :cond_0

    .line 1511
    const/4 v4, 0x1

    .line 1512
    nop

    .line 1515
    .end local v7    # "currentPosition":J
    .end local v9    # "peekBuf":Ljava/nio/ByteBuffer;
    :cond_1
    goto :goto_0

    .line 1516
    :cond_2
    const/4 v4, 0x1

    .line 1519
    :goto_0
    if-eqz v4, :cond_3

    .line 1520
    invoke-direct {p0, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStartHeader(J)Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {p0, v7, p1, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->initializeArchive(Lorg/apache/commons/compress/archivers/sevenz/StartHeader;[BZ)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object v7

    return-object v7

    .line 1523
    :cond_3
    iget-boolean v7, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->tryToRecoverBrokenArchives:Z

    if-eqz v7, :cond_4

    .line 1524
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->tryToLocateEndHeader([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object v7

    return-object v7

    .line 1526
    :cond_4
    new-instance v7, Ljava/io/IOException;

    const-string v8, "archive seems to be invalid.\nYou may want to retry and enable the tryToRecoverBrokenArchives if the archive could be a multi volume archive that has been closed prematurely."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1497
    .end local v4    # "headerLooksValid":Z
    .end local v5    # "startHeaderCrc":J
    :cond_5
    new-instance v4, Ljava/io/IOException;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Unsupported 7z version (%d,%d)"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1491
    .end local v2    # "archiveVersionMajor":B
    .end local v3    # "archiveVersionMinor":B
    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bad 7z signature"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readPackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 8
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1531
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    .line 1532
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1533
    .local v0, "numPackStreamsInt":I
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 1534
    .local v1, "nid":I
    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 1535
    new-array v2, v0, [J

    iput-object v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    .line 1536
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1537
    iget-object v3, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 1536
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1539
    .end local v2    # "i":I
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 1542
    :cond_1
    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 1543
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v2

    iput-object v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    .line 1544
    new-array v2, v0, [J

    iput-object v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    .line 1545
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 1546
    iget-object v3, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1547
    iget-object v3, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getInt(Ljava/nio/ByteBuffer;)I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    aput-wide v4, v3, v2

    .line 1545
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1551
    .end local v2    # "i":I
    :cond_3
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 1553
    :cond_4
    return-void
.end method

.method private readStartHeader(J)Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .locals 20
    .param p1, "startHeaderCrc"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1557
    move-object/from16 v1, p0

    new-instance v0, Ljava/io/DataInputStream;

    invoke-static {}, Lorg/apache/commons/io/input/ChecksumInputStream;->builder()Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v2

    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 1559
    invoke-virtual {v2, v3}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setChecksum(Ljava/util/zip/Checksum;)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;

    iget-object v4, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    const-wide/16 v5, 0x14

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/BoundedSeekableByteChannelInputStream;-><init>(Ljava/nio/channels/SeekableByteChannel;J)V

    .line 1560
    invoke-virtual {v2, v3}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    .line 1561
    invoke-virtual {v2, v5, v6}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setCountThreshold(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v2

    .line 1562
    move-wide/from16 v3, p1

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setExpectedChecksumValue(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v2

    .line 1563
    invoke-virtual {v2}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->get()Lorg/apache/commons/io/input/ChecksumInputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v0

    .line 1565
    .local v2, "dataInputStream":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v5

    .line 1566
    .local v5, "nextHeaderOffset":J
    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_1

    const-wide/16 v7, 0x20

    add-long v9, v5, v7

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v11

    cmp-long v0, v9, v11

    if-gtz v0, :cond_1

    .line 1569
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v9

    move-wide v14, v9

    .line 1570
    .local v14, "nextHeaderSize":J
    add-long v16, v5, v14

    .line 1571
    .local v16, "nextHeaderEnd":J
    cmp-long v0, v16, v5

    if-ltz v0, :cond_0

    add-long v7, v16, v7

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-gtz v0, :cond_0

    .line 1574
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    int-to-long v7, v0

    const-wide v9, 0xffffffffL

    and-long v18, v7, v9

    .line 1575
    .local v18, "nextHeaderCrc":J
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    move-object v7, v0

    move-wide v8, v5

    move-wide v10, v14

    move-wide/from16 v12, v18

    invoke-direct/range {v7 .. v13}, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;-><init>(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1576
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 1575
    return-object v0

    .line 1572
    .end local v18    # "nextHeaderCrc":J
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v7, "nextHeaderSize is out of bounds"

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "dataInputStream":Ljava/io/DataInputStream;
    .end local p1    # "startHeaderCrc":J
    throw v0

    .line 1567
    .end local v14    # "nextHeaderSize":J
    .end local v16    # "nextHeaderEnd":J
    .restart local v2    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local p1    # "startHeaderCrc":J
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v7, "nextHeaderOffset is out of bounds"

    invoke-direct {v0, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "dataInputStream":Ljava/io/DataInputStream;
    .end local p1    # "startHeaderCrc":J
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1557
    .end local v5    # "nextHeaderOffset":J
    .restart local v2    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local p1    # "startHeaderCrc":J
    :catchall_0
    move-exception v0

    move-object v5, v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v5
.end method

.method private readStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 2
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1580
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1582
    .local v0, "nid":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1583
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readPackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1584
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1587
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1588
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUnpackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1589
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0

    .line 1592
    :cond_1
    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->EMPTY_FOLDER_ARRAY:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 1595
    :goto_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 1596
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readSubStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 1597
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1599
    :cond_2
    return-void
.end method

.method private readSubStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 24
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1602
    move-object/from16 v0, p2

    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    .line 1603
    .local v6, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iput v5, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 1602
    .end local v6    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1605
    :cond_0
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v1, v1

    int-to-long v1, v1

    .line 1607
    .local v1, "unpackStreamsCount":J
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 1608
    .local v4, "nid":I
    const/16 v6, 0xd

    if-ne v4, v6, :cond_2

    .line 1609
    const-wide/16 v1, 0x0

    .line 1610
    iget-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 1611
    .local v9, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    .line 1612
    .local v10, "numStreams":J
    long-to-int v12, v10

    iput v12, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 1613
    add-long/2addr v1, v10

    .line 1610
    .end local v9    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v10    # "numStreams":J
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1615
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 1618
    :cond_2
    long-to-int v6, v1

    .line 1619
    .local v6, "totalUnpackStreams":I
    new-instance v7, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    invoke-direct {v7, v6}, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;-><init>(I)V

    .line 1620
    .local v7, "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    const/4 v8, 0x0

    .line 1621
    .local v8, "nextUnpackStream":I
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_2
    const/16 v12, 0x9

    if-ge v11, v10, :cond_6

    aget-object v13, v9, v11

    .line 1622
    .local v13, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget v14, v13, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-nez v14, :cond_3

    .line 1623
    goto :goto_4

    .line 1625
    :cond_3
    const-wide/16 v14, 0x0

    .line 1626
    .local v14, "sum":J
    if-ne v4, v12, :cond_4

    .line 1627
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    iget v3, v13, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    sub-int/2addr v3, v5

    if-ge v12, v3, :cond_4

    .line 1628
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v17

    .line 1629
    .local v17, "size":J
    iget-object v3, v7, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    add-int/lit8 v19, v8, 0x1

    .end local v8    # "nextUnpackStream":I
    .local v19, "nextUnpackStream":I
    aput-wide v17, v3, v8

    .line 1630
    add-long v14, v14, v17

    .line 1627
    .end local v17    # "size":J
    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v19

    goto :goto_3

    .line 1633
    .end local v12    # "i":I
    .end local v19    # "nextUnpackStream":I
    .restart local v8    # "nextUnpackStream":I
    :cond_4
    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v17

    cmp-long v3, v14, v17

    if-gtz v3, :cond_5

    .line 1636
    iget-object v3, v7, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    add-int/lit8 v12, v8, 0x1

    .end local v8    # "nextUnpackStream":I
    .local v12, "nextUnpackStream":I
    invoke-virtual {v13}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v17

    sub-long v17, v17, v14

    aput-wide v17, v3, v8

    move v8, v12

    .line 1621
    .end local v12    # "nextUnpackStream":I
    .end local v13    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v14    # "sum":J
    .restart local v8    # "nextUnpackStream":I
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1634
    .restart local v13    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .restart local v14    # "sum":J
    :cond_5
    new-instance v3, Ljava/io/IOException;

    const-string v5, "sum of unpack sizes of folder exceeds total unpack size"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1638
    .end local v13    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v14    # "sum":J
    :cond_6
    if-ne v4, v12, :cond_7

    .line 1639
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 1642
    :cond_7
    const/4 v3, 0x0

    .line 1643
    .local v3, "numDigests":I
    iget-object v9, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_a

    aget-object v12, v9, v11

    .line 1644
    .local v12, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-ne v13, v5, :cond_8

    iget-boolean v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-nez v13, :cond_9

    .line 1645
    :cond_8
    iget v13, v12, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    add-int/2addr v3, v13

    .line 1643
    .end local v12    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1649
    :cond_a
    const/16 v9, 0xa

    if-ne v4, v9, :cond_10

    .line 1650
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct {v9, v10, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v11

    .line 1651
    .local v11, "hasMissingCrc":Ljava/util/BitSet;
    new-array v12, v3, [J

    .line 1652
    .local v12, "missingCrcs":[J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    if-ge v13, v3, :cond_c

    .line 1653
    invoke-virtual {v11, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1654
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getInt(Ljava/nio/ByteBuffer;)I

    move-result v14

    int-to-long v14, v14

    const-wide v17, 0xffffffffL

    and-long v14, v14, v17

    aput-wide v14, v12, v13

    .line 1652
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1657
    .end local v13    # "i":I
    :cond_c
    const/4 v13, 0x0

    .line 1658
    .local v13, "nextCrc":I
    const/4 v14, 0x0

    .line 1659
    .local v14, "nextMissingCrc":I
    iget-object v15, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v5, v15

    move/from16 v16, v14

    move v14, v13

    const/4 v13, 0x0

    .end local v13    # "nextCrc":I
    .local v14, "nextCrc":I
    .local v16, "nextMissingCrc":I
    :goto_7
    if-ge v13, v5, :cond_f

    move-wide/from16 v18, v1

    .end local v1    # "unpackStreamsCount":J
    .local v18, "unpackStreamsCount":J
    aget-object v1, v15, v13

    .line 1660
    .local v1, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget v2, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    move/from16 v20, v3

    const/4 v3, 0x1

    .end local v3    # "numDigests":I
    .local v20, "numDigests":I
    if-ne v2, v3, :cond_d

    iget-boolean v2, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v2, :cond_d

    .line 1661
    iget-object v2, v7, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    invoke-virtual {v2, v14, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 1662
    iget-object v2, v7, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    move/from16 v17, v4

    .end local v4    # "nid":I
    .local v17, "nid":I
    iget-wide v3, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    aput-wide v3, v2, v14

    .line 1663
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 1660
    .end local v17    # "nid":I
    .restart local v4    # "nid":I
    :cond_d
    move/from16 v17, v4

    .line 1665
    .end local v4    # "nid":I
    .restart local v17    # "nid":I
    const/4 v2, 0x0

    move/from16 v3, v16

    .end local v16    # "nextMissingCrc":I
    .local v2, "i":I
    .local v3, "nextMissingCrc":I
    :goto_8
    iget v4, v1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-ge v2, v4, :cond_e

    .line 1666
    iget-object v4, v7, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    move-object/from16 v21, v1

    .end local v1    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .local v21, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    invoke-virtual {v11, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    invoke-virtual {v4, v14, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 1667
    iget-object v1, v7, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    aget-wide v22, v12, v3

    aput-wide v22, v1, v14

    .line 1668
    add-int/lit8 v14, v14, 0x1

    .line 1669
    add-int/lit8 v3, v3, 0x1

    .line 1665
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v21

    goto :goto_8

    .end local v21    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .restart local v1    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    :cond_e
    move-object/from16 v21, v1

    .end local v1    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .restart local v21    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    move/from16 v16, v3

    .line 1659
    .end local v2    # "i":I
    .end local v3    # "nextMissingCrc":I
    .end local v21    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .restart local v16    # "nextMissingCrc":I
    :goto_9
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v17

    move-wide/from16 v1, v18

    move/from16 v3, v20

    goto :goto_7

    .line 1674
    .end local v17    # "nid":I
    .end local v18    # "unpackStreamsCount":J
    .end local v20    # "numDigests":I
    .local v1, "unpackStreamsCount":J
    .local v3, "numDigests":I
    .restart local v4    # "nid":I
    :cond_f
    move-wide/from16 v18, v1

    move/from16 v20, v3

    move/from16 v17, v4

    .end local v1    # "unpackStreamsCount":J
    .end local v3    # "numDigests":I
    .end local v4    # "nid":I
    .restart local v17    # "nid":I
    .restart local v18    # "unpackStreamsCount":J
    .restart local v20    # "numDigests":I
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v4

    .end local v17    # "nid":I
    .restart local v4    # "nid":I
    goto :goto_a

    .line 1649
    .end local v11    # "hasMissingCrc":Ljava/util/BitSet;
    .end local v12    # "missingCrcs":[J
    .end local v14    # "nextCrc":I
    .end local v16    # "nextMissingCrc":I
    .end local v18    # "unpackStreamsCount":J
    .end local v20    # "numDigests":I
    .restart local v1    # "unpackStreamsCount":J
    .restart local v3    # "numDigests":I
    :cond_10
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide/from16 v18, v1

    move/from16 v20, v3

    move/from16 v17, v4

    .line 1677
    .end local v1    # "unpackStreamsCount":J
    .end local v3    # "numDigests":I
    .restart local v18    # "unpackStreamsCount":J
    .restart local v20    # "numDigests":I
    :goto_a
    iput-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    .line 1678
    return-void
.end method

.method private static readUint64(Ljava/nio/ByteBuffer;)J
    .locals 10
    .param p0, "in"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    .line 378
    .local v0, "firstByte":J
    const/16 v2, 0x80

    .line 379
    .local v2, "mask":I
    const-wide/16 v3, 0x0

    .line 380
    .local v3, "value":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v6, 0x8

    if-ge v5, v6, :cond_1

    .line 381
    int-to-long v6, v2

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 382
    add-int/lit8 v6, v2, -0x1

    int-to-long v6, v6

    and-long/2addr v6, v0

    mul-int/lit8 v8, v5, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v6, v3

    return-wide v6

    .line 384
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v6

    int-to-long v6, v6

    .line 385
    .local v6, "nextByte":J
    mul-int/lit8 v8, v5, 0x8

    shl-long v8, v6, v8

    or-long/2addr v3, v8

    .line 386
    ushr-int/lit8 v2, v2, 0x1

    .line 380
    .end local v6    # "nextByte":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 388
    .end local v5    # "i":I
    :cond_1
    return-wide v3
.end method

.method private readUnpackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 12
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1681
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1682
    .local v0, "nid":I
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 1683
    .local v1, "numFoldersInt":I
    new-array v2, v1, [Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 1684
    .local v2, "folders":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iput-object v2, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 1685
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    .line 1686
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1687
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFolder(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/Folder;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1686
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1690
    .end local v3    # "i":I
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1691
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 1692
    .local v6, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    const-string v7, "totalOutputStreams"

    iget-wide v8, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    invoke-static {v7, v8, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    .line 1693
    iget-wide v7, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    long-to-int v7, v7

    new-array v7, v7, [J

    iput-object v7, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    .line 1694
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    int-to-long v8, v7

    iget-wide v10, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 1695
    iget-object v8, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v9

    aput-wide v9, v8, v7

    .line 1694
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1691
    .end local v6    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v7    # "i":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1699
    :cond_2
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1700
    const/16 v3, 0xa

    if-ne v0, v3, :cond_5

    .line 1701
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v3

    .line 1702
    .local v3, "crcsDefined":Ljava/util/BitSet;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v1, :cond_4

    .line 1703
    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1704
    aget-object v6, v2, v5

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 1705
    aget-object v6, v2, v5

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getInt(Ljava/nio/ByteBuffer;)I

    move-result v7

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    iput-wide v7, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    goto :goto_4

    .line 1707
    :cond_3
    aget-object v6, v2, v5

    iput-boolean v4, v6, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 1702
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1711
    .end local v5    # "i":I
    :cond_4
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1713
    .end local v3    # "crcsDefined":Ljava/util/BitSet;
    :cond_5
    return-void
.end method

.method private reopenFolderInputStream(ILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V
    .locals 10
    .param p1, "folderIndex"    # I
    .param p2, "file"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1723
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1724
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1725
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1726
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 1728
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v0, v0, p1

    .line 1729
    .local v0, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    aget v7, v1, p1

    .line 1730
    .local v7, "firstPackStreamIndex":I
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-wide v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    const-wide/16 v3, 0x20

    add-long/2addr v1, v3

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v3, v3, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v3, v3, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    aget-wide v4, v3, v7

    add-long v8, v1, v4

    .line 1732
    .local v8, "folderOffset":J
    move-object v1, p0

    move-object v2, v0

    move-wide v3, v8

    move v5, v7

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 1733
    return-void
.end method

.method private sanityCheckAndCollectStatistics(Ljava/nio/ByteBuffer;)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    .locals 5
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1736
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;)V

    .line 1738
    .local v0, "stats":Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 1740
    .local v1, "nid":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1741
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckArchiveProperties(Ljava/nio/ByteBuffer;)V

    .line 1742
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 1745
    :cond_0
    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 1750
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1751
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V

    .line 1752
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 1755
    :cond_1
    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 1756
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckFilesInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V

    .line 1757
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 1760
    :cond_2
    if-nez v1, :cond_3

    .line 1764
    return-object v0

    .line 1761
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Badly terminated header, found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1746
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Additional streams unsupported"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private sanityCheckArchiveProperties(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1768
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 1769
    .local v0, "nid":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 1770
    const-string v2, "propertySize"

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v2

    .line 1771
    .local v2, "propertySize":I
    int-to-long v3, v2

    invoke-static {p1, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v3

    int-to-long v5, v2

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 1774
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 1775
    .end local v2    # "propertySize":I
    goto :goto_0

    .line 1772
    .restart local v2    # "propertySize":I
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "invalid property size"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1776
    .end local v2    # "propertySize":I
    :cond_1
    return-void
.end method

.method private sanityCheckFilesInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V
    .locals 11
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "stats"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1779
    const-string v0, "numFiles"

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v0

    invoke-static {p2, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$402(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;I)I

    .line 1781
    const/4 v0, -0x1

    .line 1783
    .local v0, "emptyStreams":I
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 1784
    .local v1, "propertyType":I
    if-nez v1, :cond_0

    .line 1785
    nop

    .line 1895
    .end local v1    # "propertyType":I
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$400(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$502(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;I)I

    .line 1896
    return-void

    .line 1787
    .restart local v1    # "propertyType":I
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 1788
    .local v2, "size":J
    const/4 v4, -0x1

    const-string v5, "Not implemented"

    packed-switch v1, :pswitch_data_0

    .line 1888
    :pswitch_0
    invoke-static {p1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_11

    goto/16 :goto_2

    .line 1880
    :pswitch_1
    invoke-static {p1, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    goto/16 :goto_2

    .line 1881
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Incomplete kDummy property"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1874
    :pswitch_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "kStartPos is unsupported, please report"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1863
    :pswitch_3
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$400(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v4

    invoke-direct {p0, p1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    .line 1864
    .local v4, "attributesDefined":I
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 1865
    .local v6, "external":I
    if-nez v6, :cond_3

    .line 1868
    mul-int/lit8 v5, v4, 0x4

    int-to-long v7, v5

    invoke-static {p1, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    mul-int/lit8 v5, v4, 0x4

    int-to-long v9, v5

    cmp-long v5, v7, v9

    if-ltz v5, :cond_2

    goto/16 :goto_2

    .line 1869
    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string v7, "invalid windows attributes size"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1866
    :cond_3
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1852
    .end local v4    # "attributesDefined":I
    .end local v6    # "external":I
    :pswitch_4
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$400(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v4

    invoke-direct {p0, p1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    .line 1853
    .local v4, "timesDefined":I
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 1854
    .restart local v6    # "external":I
    if-nez v6, :cond_5

    .line 1857
    mul-int/lit8 v5, v4, 0x8

    int-to-long v7, v5

    invoke-static {p1, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    mul-int/lit8 v5, v4, 0x8

    int-to-long v9, v5

    cmp-long v5, v7, v9

    if-ltz v5, :cond_4

    goto/16 :goto_2

    .line 1858
    :cond_4
    new-instance v5, Ljava/io/IOException;

    const-string v7, "invalid modification dates size"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1855
    :cond_5
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1841
    .end local v4    # "timesDefined":I
    .end local v6    # "external":I
    :pswitch_5
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$400(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v4

    invoke-direct {p0, p1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    .line 1842
    .restart local v4    # "timesDefined":I
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 1843
    .restart local v6    # "external":I
    if-nez v6, :cond_7

    .line 1846
    mul-int/lit8 v5, v4, 0x8

    int-to-long v7, v5

    invoke-static {p1, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    mul-int/lit8 v5, v4, 0x8

    int-to-long v9, v5

    cmp-long v5, v7, v9

    if-ltz v5, :cond_6

    goto/16 :goto_2

    .line 1847
    :cond_6
    new-instance v5, Ljava/io/IOException;

    const-string v7, "invalid access dates size"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1844
    :cond_7
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1830
    .end local v4    # "timesDefined":I
    .end local v6    # "external":I
    :pswitch_6
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$400(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v4

    invoke-direct {p0, p1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    .line 1831
    .restart local v4    # "timesDefined":I
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 1832
    .restart local v6    # "external":I
    if-nez v6, :cond_9

    .line 1835
    mul-int/lit8 v5, v4, 0x8

    int-to-long v7, v5

    invoke-static {p1, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    mul-int/lit8 v5, v4, 0x8

    int-to-long v9, v5

    cmp-long v5, v7, v9

    if-ltz v5, :cond_8

    goto/16 :goto_2

    .line 1836
    :cond_8
    new-instance v5, Ljava/io/IOException;

    const-string v7, "invalid creation dates size"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1833
    :cond_9
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1808
    .end local v4    # "timesDefined":I
    .end local v6    # "external":I
    :pswitch_7
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 1809
    .local v4, "external":I
    if-nez v4, :cond_e

    .line 1812
    const-wide/16 v5, 0x1

    sub-long v5, v2, v5

    const-string v7, "file names length"

    invoke-static {v7, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v5

    .line 1813
    .local v5, "namesLength":I
    and-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_d

    .line 1817
    const/4 v6, 0x0

    .line 1818
    .local v6, "filesSeen":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_b

    .line 1819
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getChar(Ljava/nio/ByteBuffer;)C

    move-result v8

    .line 1820
    .local v8, "c":C
    if-nez v8, :cond_a

    .line 1821
    add-int/lit8 v6, v6, 0x1

    .line 1818
    .end local v8    # "c":C
    :cond_a
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 1824
    .end local v7    # "i":I
    :cond_b
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$400(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v7

    if-ne v6, v7, :cond_c

    goto :goto_2

    .line 1825
    :cond_c
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid number of file names ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " instead of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$400(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1814
    .end local v6    # "filesSeen":I
    :cond_d
    new-instance v6, Ljava/io/IOException;

    const-string v7, "File names length invalid"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1810
    .end local v5    # "namesLength":I
    :cond_e
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1801
    .end local v4    # "external":I
    :pswitch_8
    if-eq v0, v4, :cond_f

    .line 1804
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1805
    goto :goto_2

    .line 1802
    :cond_f
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Header format error: kEmptyStream must appear before kAnti"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1794
    :pswitch_9
    if-eq v0, v4, :cond_10

    .line 1797
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    .line 1798
    goto :goto_2

    .line 1795
    :cond_10
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Header format error: kEmptyStream must appear before kEmptyFile"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1790
    :pswitch_a
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$400(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v4

    invoke-direct {p0, p1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    .line 1791
    nop

    .line 1894
    .end local v1    # "propertyType":I
    .end local v2    # "size":J
    :goto_2
    goto/16 :goto_0

    .line 1889
    .restart local v1    # "propertyType":I
    .restart local v2    # "size":J
    :cond_11
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incomplete property of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private sanityCheckFolder(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I
    .locals 19
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "stats"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1900
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "numCoders"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v2

    .line 1901
    .local v2, "numCoders":I
    if-eqz v2, :cond_11

    .line 1904
    int-to-long v3, v2

    invoke-static {v1, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$614(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;J)J

    .line 1906
    const-wide/16 v3, 0x0

    .line 1907
    .local v3, "totalOutStreams":J
    const-wide/16 v5, 0x0

    .line 1908
    .local v5, "totalInStreams":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const-wide/16 v8, 0x1

    const/4 v11, 0x1

    if-ge v7, v2, :cond_7

    .line 1909
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v12

    .line 1910
    .local v12, "bits":I
    and-int/lit8 v13, v12, 0xf

    .line 1911
    .local v13, "idSize":I
    new-array v14, v13, [B

    invoke-static {v0, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->get(Ljava/nio/ByteBuffer;[B)V

    .line 1913
    and-int/lit8 v14, v12, 0x10

    if-nez v14, :cond_0

    move v14, v11

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    .line 1914
    .local v14, "isSimple":Z
    :goto_1
    and-int/lit8 v15, v12, 0x20

    if-eqz v15, :cond_1

    move v15, v11

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    .line 1915
    .local v15, "hasAttributes":Z
    :goto_2
    and-int/lit16 v10, v12, 0x80

    if-eqz v10, :cond_2

    move v10, v11

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    .line 1916
    .local v10, "moreAlternativeMethods":Z
    :goto_3
    if-nez v10, :cond_6

    .line 1921
    if-eqz v14, :cond_3

    .line 1922
    add-long/2addr v5, v8

    .line 1923
    add-long/2addr v3, v8

    move v11, v10

    goto :goto_4

    .line 1925
    :cond_3
    const-string v8, "numInStreams"

    move v11, v10

    .end local v10    # "moreAlternativeMethods":Z
    .local v11, "moreAlternativeMethods":Z
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v5, v8

    .line 1926
    const-string v8, "numOutStreams"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v3, v8

    .line 1929
    :goto_4
    if-eqz v15, :cond_5

    .line 1930
    const-string v8, "propertiesSize"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v8

    .line 1931
    .local v8, "propertiesSize":I
    int-to-long v9, v8

    invoke-static {v0, v9, v10}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v9

    move/from16 v16, v2

    move-wide/from16 v17, v3

    .end local v2    # "numCoders":I
    .end local v3    # "totalOutStreams":J
    .local v16, "numCoders":I
    .local v17, "totalOutStreams":J
    int-to-long v2, v8

    cmp-long v2, v9, v2

    if-ltz v2, :cond_4

    goto :goto_5

    .line 1932
    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string v3, "invalid propertiesSize in folder"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1929
    .end local v8    # "propertiesSize":I
    .end local v16    # "numCoders":I
    .end local v17    # "totalOutStreams":J
    .restart local v2    # "numCoders":I
    .restart local v3    # "totalOutStreams":J
    :cond_5
    move/from16 v16, v2

    move-wide/from16 v17, v3

    .line 1908
    .end local v2    # "numCoders":I
    .end local v3    # "totalOutStreams":J
    .end local v11    # "moreAlternativeMethods":Z
    .end local v12    # "bits":I
    .end local v13    # "idSize":I
    .end local v14    # "isSimple":Z
    .end local v15    # "hasAttributes":Z
    .restart local v16    # "numCoders":I
    .restart local v17    # "totalOutStreams":J
    :goto_5
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v16

    move-wide/from16 v3, v17

    goto :goto_0

    .line 1917
    .end local v16    # "numCoders":I
    .end local v17    # "totalOutStreams":J
    .restart local v2    # "numCoders":I
    .restart local v3    # "totalOutStreams":J
    .restart local v10    # "moreAlternativeMethods":Z
    .restart local v12    # "bits":I
    .restart local v13    # "idSize":I
    .restart local v14    # "isSimple":Z
    .restart local v15    # "hasAttributes":Z
    :cond_6
    move/from16 v16, v2

    .end local v2    # "numCoders":I
    .restart local v16    # "numCoders":I
    new-instance v2, Ljava/io/IOException;

    const-string v8, "Alternative methods are unsupported, please report. The reference implementation doesn\'t support them either."

    invoke-direct {v2, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1908
    .end local v10    # "moreAlternativeMethods":Z
    .end local v12    # "bits":I
    .end local v13    # "idSize":I
    .end local v14    # "isSimple":Z
    .end local v15    # "hasAttributes":Z
    .end local v16    # "numCoders":I
    .restart local v2    # "numCoders":I
    :cond_7
    move/from16 v16, v2

    .line 1936
    .end local v2    # "numCoders":I
    .end local v7    # "i":I
    .restart local v16    # "numCoders":I
    const-string v2, "totalInStreams"

    invoke-static {v2, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    .line 1937
    const-string v2, "totalOutStreams"

    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    .line 1938
    invoke-static {v1, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$714(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;J)J

    .line 1939
    invoke-static {v1, v5, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$814(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;J)J

    .line 1941
    const-wide/16 v12, 0x0

    cmp-long v2, v3, v12

    if-eqz v2, :cond_10

    .line 1945
    const-string v2, "numBindPairs"

    sub-long v7, v3, v8

    invoke-static {v2, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v2

    .line 1946
    .local v2, "numBindPairs":I
    int-to-long v7, v2

    cmp-long v7, v5, v7

    if-ltz v7, :cond_f

    .line 1949
    new-instance v7, Ljava/util/BitSet;

    long-to-int v8, v5

    invoke-direct {v7, v8}, Ljava/util/BitSet;-><init>(I)V

    .line 1950
    .local v7, "inStreamsBound":Ljava/util/BitSet;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    if-ge v8, v2, :cond_a

    .line 1951
    const-string v9, "inIndex"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    invoke-static {v9, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v9

    .line 1952
    .local v9, "inIndex":I
    int-to-long v12, v9

    cmp-long v10, v5, v12

    if-lez v10, :cond_9

    .line 1955
    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 1956
    const-string v10, "outIndex"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v12

    invoke-static {v10, v12, v13}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v10

    .line 1957
    .local v10, "outIndex":I
    int-to-long v12, v10

    cmp-long v12, v3, v12

    if-lez v12, :cond_8

    .line 1950
    .end local v9    # "inIndex":I
    .end local v10    # "outIndex":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1958
    .restart local v9    # "inIndex":I
    .restart local v10    # "outIndex":I
    :cond_8
    new-instance v11, Ljava/io/IOException;

    const-string v12, "outIndex is bigger than number of outStreams"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1953
    .end local v10    # "outIndex":I
    :cond_9
    new-instance v10, Ljava/io/IOException;

    const-string v11, "inIndex is bigger than number of inStreams"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1962
    .end local v8    # "i":I
    .end local v9    # "inIndex":I
    :cond_a
    int-to-long v8, v2

    sub-long v8, v5, v8

    const-string v10, "numPackedStreams"

    invoke-static {v10, v8, v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v8

    .line 1964
    .local v8, "numPackedStreams":I
    if-ne v8, v11, :cond_c

    .line 1965
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_b

    goto :goto_8

    .line 1966
    :cond_b
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Couldn\'t find stream\'s bind pair index"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1969
    :cond_c
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7
    if-ge v9, v8, :cond_e

    .line 1970
    const-string v10, "packedStreamIndex"

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v10

    .line 1971
    .local v10, "packedStreamIndex":I
    int-to-long v11, v10

    cmp-long v11, v11, v5

    if-gez v11, :cond_d

    .line 1969
    .end local v10    # "packedStreamIndex":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1972
    .restart local v10    # "packedStreamIndex":I
    :cond_d
    new-instance v11, Ljava/io/IOException;

    const-string v12, "packedStreamIndex is bigger than number of totalInStreams"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1977
    .end local v9    # "i":I
    .end local v10    # "packedStreamIndex":I
    :cond_e
    :goto_8
    long-to-int v9, v3

    return v9

    .line 1947
    .end local v7    # "inStreamsBound":Ljava/util/BitSet;
    .end local v8    # "numPackedStreams":I
    :cond_f
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Total input streams can\'t be less than the number of bind pairs"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1942
    .end local v2    # "numBindPairs":I
    :cond_10
    new-instance v2, Ljava/io/IOException;

    const-string v7, "Total output streams can\'t be 0"

    invoke-direct {v2, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1902
    .end local v3    # "totalOutStreams":J
    .end local v5    # "totalInStreams":J
    .end local v16    # "numCoders":I
    .local v2, "numCoders":I
    :cond_11
    move/from16 v16, v2

    .end local v2    # "numCoders":I
    .restart local v16    # "numCoders":I
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Folder without coders"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private sanityCheckPackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V
    .locals 21
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "stats"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1981
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 1982
    .local v2, "packPos":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-string v7, ") is out of range"

    if-ltz v6, :cond_6

    const-wide/16 v8, 0x20

    add-long v10, v2, v8

    iget-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v6}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v12

    cmp-long v6, v10, v12

    if-gtz v6, :cond_6

    add-long v10, v2, v8

    cmp-long v6, v10, v4

    if-ltz v6, :cond_6

    .line 1985
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    .line 1986
    .local v10, "numPackStreams":J
    const-string v6, "numPackStreams"

    invoke-static {v6, v10, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v6

    move-object/from16 v12, p2

    invoke-static {v12, v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$902(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;I)I

    .line 1987
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 1988
    .local v6, "nid":I
    const/16 v13, 0x9

    if-ne v6, v13, :cond_2

    .line 1989
    const-wide/16 v13, 0x0

    .line 1990
    .local v13, "totalPackSizes":J
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$900(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v4

    if-ge v15, v4, :cond_1

    .line 1991
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    .line 1992
    .local v4, "packSize":J
    add-long/2addr v13, v4

    .line 1993
    add-long v18, v2, v8

    add-long v18, v18, v13

    .line 1994
    .local v18, "endOfPackStreams":J
    const-wide/16 v16, 0x0

    cmp-long v20, v4, v16

    if-ltz v20, :cond_0

    iget-object v8, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v8}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v8

    cmp-long v8, v18, v8

    if-gtz v8, :cond_0

    cmp-long v8, v18, v2

    if-ltz v8, :cond_0

    .line 1990
    .end local v4    # "packSize":J
    .end local v18    # "endOfPackStreams":J
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v4, v16

    const-wide/16 v8, 0x20

    goto :goto_0

    .line 1995
    .restart local v4    # "packSize":J
    .restart local v18    # "endOfPackStreams":J
    :cond_0
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v6

    .end local v6    # "nid":I
    .local v16, "nid":I
    const-string v6, "packSize ("

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1990
    .end local v4    # "packSize":J
    .end local v16    # "nid":I
    .end local v18    # "endOfPackStreams":J
    .restart local v6    # "nid":I
    :cond_1
    move/from16 v16, v6

    .line 1998
    .end local v6    # "nid":I
    .end local v15    # "i":I
    .restart local v16    # "nid":I
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v6

    .end local v16    # "nid":I
    .restart local v6    # "nid":I
    goto :goto_1

    .line 1988
    .end local v13    # "totalPackSizes":J
    :cond_2
    move/from16 v16, v6

    .line 2001
    :goto_1
    const/16 v4, 0xa

    if-ne v6, v4, :cond_4

    .line 2002
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$900(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v4

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    .line 2003
    .local v4, "crcsDefined":I
    mul-int/lit8 v5, v4, 0x4

    int-to-long v7, v5

    invoke-static {v1, v7, v8}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    mul-int/lit8 v5, v4, 0x4

    int-to-long v13, v5

    cmp-long v5, v7, v13

    if-ltz v5, :cond_3

    .line 2006
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v6

    goto :goto_2

    .line 2004
    :cond_3
    new-instance v5, Ljava/io/IOException;

    const-string v7, "invalid number of CRCs in PackInfo"

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2009
    .end local v4    # "crcsDefined":I
    :cond_4
    :goto_2
    if-nez v6, :cond_5

    .line 2012
    return-void

    .line 2010
    :cond_5
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Badly terminated PackInfo ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1982
    .end local v6    # "nid":I
    .end local v10    # "numPackStreams":J
    :cond_6
    move-object/from16 v12, p2

    .line 1983
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packPos ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private sanityCheckStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V
    .locals 3
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "stats"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2015
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 2017
    .local v0, "nid":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2018
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckPackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V

    .line 2019
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 2022
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 2023
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckUnpackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V

    .line 2024
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 2027
    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 2028
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckSubStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V

    .line 2029
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 2032
    :cond_2
    if-nez v0, :cond_3

    .line 2035
    return-void

    .line 2033
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Badly terminated StreamsInfo"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sanityCheckSubStreamsInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V
    .locals 9
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "stats"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2039
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 2040
    .local v0, "nid":I
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 2041
    .local v1, "numUnpackSubStreamsPerFolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    .line 2042
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1000(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2043
    const-string v3, "numStreams"

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2042
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2045
    .end local v2    # "i":I
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1102(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;J)J

    .line 2046
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_1

    .line 2048
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1000(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p2, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1102(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;J)J

    .line 2051
    :goto_1
    const-string v2, "totalUnpackStreams"

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1100(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    .line 2053
    const/16 v2, 0x9

    if-ne v0, v2, :cond_6

    .line 2054
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2055
    .local v3, "numUnpackSubStreams":I
    if-nez v3, :cond_2

    .line 2056
    goto :goto_2

    .line 2058
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    add-int/lit8 v5, v3, -0x1

    if-ge v4, v5, :cond_4

    .line 2059
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    .line 2060
    .local v5, "size":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_3

    .line 2058
    .end local v5    # "size":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2061
    .restart local v5    # "size":J
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v7, "negative unpackSize"

    invoke-direct {v2, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2064
    .end local v3    # "numUnpackSubStreams":I
    .end local v4    # "i":I
    .end local v5    # "size":J
    :cond_4
    goto :goto_2

    .line 2065
    :cond_5
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 2068
    :cond_6
    const/4 v2, 0x0

    .line 2069
    .local v2, "numDigests":I
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2070
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1200(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)Ljava/util/BitSet;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1000(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v3

    goto :goto_4

    :cond_7
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1000(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v3

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1200(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    sub-int/2addr v3, v4

    :goto_4
    move v2, v3

    goto :goto_8

    .line 2072
    :cond_8
    const/4 v3, 0x0

    .line 2073
    .local v3, "folderIdx":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2074
    .local v5, "numUnpackSubStreams":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1200(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)Ljava/util/BitSet;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-static {p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1200(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)Ljava/util/BitSet;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "folderIdx":I
    .local v7, "folderIdx":I
    invoke-virtual {v6, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v7

    goto :goto_6

    :cond_9
    move v3, v7

    goto :goto_7

    .line 2075
    .end local v7    # "folderIdx":I
    .restart local v3    # "folderIdx":I
    :cond_a
    :goto_6
    add-int/2addr v2, v5

    .line 2077
    .end local v5    # "numUnpackSubStreams":I
    :goto_7
    goto :goto_5

    .line 2080
    .end local v3    # "folderIdx":I
    :cond_b
    :goto_8
    const/16 v3, 0xa

    if-ne v0, v3, :cond_d

    .line 2081
    const-string v3, "numDigests"

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    .line 2082
    invoke-direct {p0, p1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    .line 2083
    .local v3, "missingCrcs":I
    mul-int/lit8 v4, v3, 0x4

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    mul-int/lit8 v6, v3, 0x4

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_c

    .line 2086
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_9

    .line 2084
    :cond_c
    new-instance v4, Ljava/io/IOException;

    const-string v5, "invalid number of missing CRCs in SubStreamInfo"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2089
    .end local v3    # "missingCrcs":I
    :cond_d
    :goto_9
    if-nez v0, :cond_e

    .line 2092
    return-void

    .line 2090
    :cond_e
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Badly terminated SubStreamsInfo"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private sanityCheckUnpackInfo(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)V
    .locals 18
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "stats"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2095
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 2096
    .local v2, "nid":I
    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 2099
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    .line 2100
    .local v3, "numFolders":J
    const-string v5, "numFolders"

    invoke-static {v5, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->assertFitsIntoNonNegativeInt(Ljava/lang/String;J)I

    move-result v5

    invoke-static {v1, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1002(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;I)I

    .line 2101
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 2102
    .local v5, "external":I
    if-nez v5, :cond_9

    .line 2106
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 2107
    .local v6, "numberOfOutputStreamsPerFolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1000(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 2108
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sanityCheckFolder(Ljava/nio/ByteBuffer;Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2107
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2111
    .end local v7    # "i":I
    :cond_0
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$700(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)J

    move-result-wide v7

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1000(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v7, v9

    .line 2112
    .local v7, "totalNumberOfBindPairs":J
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$800(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)J

    move-result-wide v9

    sub-long/2addr v9, v7

    .line 2113
    .local v9, "packedStreamsRequiredByFolders":J
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$900(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v11

    int-to-long v11, v11

    cmp-long v11, v9, v11

    if-ltz v11, :cond_8

    .line 2117
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 2118
    const/16 v11, 0xc

    if-ne v2, v11, :cond_7

    .line 2122
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 2123
    .local v12, "numberOfOutputStreams":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v12, :cond_2

    .line 2124
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    .line 2125
    .local v14, "unpackSize":J
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-ltz v16, :cond_1

    .line 2123
    .end local v14    # "unpackSize":J
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2126
    .restart local v14    # "unpackSize":J
    :cond_1
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-wide/from16 v16, v3

    .end local v3    # "numFolders":J
    .local v16, "numFolders":J
    const-string v3, "negative unpackSize"

    invoke-direct {v11, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2123
    .end local v14    # "unpackSize":J
    .end local v16    # "numFolders":J
    .restart local v3    # "numFolders":J
    :cond_2
    move-wide/from16 v16, v3

    .line 2129
    .end local v3    # "numFolders":J
    .end local v12    # "numberOfOutputStreams":I
    .end local v13    # "i":I
    .restart local v16    # "numFolders":J
    goto :goto_1

    .line 2131
    .end local v16    # "numFolders":J
    .restart local v3    # "numFolders":J
    :cond_3
    move-wide/from16 v16, v3

    .end local v3    # "numFolders":J
    .restart local v16    # "numFolders":J
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 2132
    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    .line 2133
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1000(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)I

    move-result v3

    move-object/from16 v4, p0

    invoke-direct {v4, v0, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/nio/ByteBuffer;I)Ljava/util/BitSet;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1202(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;Ljava/util/BitSet;)Ljava/util/BitSet;

    .line 2134
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;->access$1200(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$ArchiveStatistics;)Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v3

    .line 2135
    .local v3, "crcsDefined":I
    mul-int/lit8 v11, v3, 0x4

    int-to-long v11, v11

    invoke-static {v0, v11, v12}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->skipBytesFully(Ljava/nio/ByteBuffer;J)J

    move-result-wide v11

    mul-int/lit8 v13, v3, 0x4

    int-to-long v13, v13

    cmp-long v11, v11, v13

    if-ltz v11, :cond_4

    .line 2138
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getUnsignedByte(Ljava/nio/ByteBuffer;)I

    move-result v2

    goto :goto_3

    .line 2136
    :cond_4
    new-instance v11, Ljava/io/IOException;

    const-string v12, "invalid number of CRCs in UnpackInfo"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2132
    .end local v3    # "crcsDefined":I
    :cond_5
    move-object/from16 v4, p0

    .line 2141
    :goto_3
    if-nez v2, :cond_6

    .line 2144
    return-void

    .line 2142
    :cond_6
    new-instance v3, Ljava/io/IOException;

    const-string v11, "Badly terminated UnpackInfo"

    invoke-direct {v3, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2119
    .end local v16    # "numFolders":J
    .local v3, "numFolders":J
    :cond_7
    move-wide/from16 v16, v3

    .end local v3    # "numFolders":J
    .restart local v16    # "numFolders":J
    new-instance v3, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Expected kCodersUnpackSize, got "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2114
    .end local v16    # "numFolders":J
    .restart local v3    # "numFolders":J
    :cond_8
    move-wide/from16 v16, v3

    .end local v3    # "numFolders":J
    .restart local v16    # "numFolders":J
    new-instance v3, Ljava/io/IOException;

    const-string v11, "archive doesn\'t contain enough packed streams"

    invoke-direct {v3, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2103
    .end local v6    # "numberOfOutputStreamsPerFolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "totalNumberOfBindPairs":J
    .end local v9    # "packedStreamsRequiredByFolders":J
    .end local v16    # "numFolders":J
    .restart local v3    # "numFolders":J
    :cond_9
    move-wide/from16 v16, v3

    .end local v3    # "numFolders":J
    .restart local v16    # "numFolders":J
    new-instance v3, Ljava/io/IOException;

    const-string v6, "External unsupported"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2097
    .end local v5    # "external":I
    .end local v16    # "numFolders":J
    :cond_a
    move-object/from16 v4, p0

    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected kFolder, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static skipBytesFully(Ljava/nio/ByteBuffer;J)J
    .locals 4
    .param p0, "input"    # Ljava/nio/ByteBuffer;
    .param p1, "bytesToSkip"    # J

    .line 392
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 393
    const-wide/16 v0, 0x0

    return-wide v0

    .line 395
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 396
    .local v0, "current":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 397
    .local v1, "maxSkip":I
    int-to-long v2, v1

    cmp-long v2, v2, p1

    if-gez v2, :cond_1

    .line 398
    int-to-long p1, v1

    .line 400
    :cond_1
    long-to-int v2, p1

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 401
    return-wide p1
.end method

.method private skipEntriesWhenNeeded(IZI)Z
    .locals 10
    .param p1, "entryIndex"    # I
    .param p2, "isInSameFolder"    # Z
    .param p3, "folderIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2168
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v0, v0, p1

    .line 2171
    .local v0, "file":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    const/4 v2, 0x0

    if-ne v1, p1, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->hasCurrentEntryBeenRead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2172
    return v2

    .line 2180
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    iget v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    aget v1, v1, v3

    .line 2181
    .local v1, "filesToSkipStartIndex":I
    const/4 v3, 0x1

    if-eqz p2, :cond_2

    .line 2182
    iget v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    if-ge v4, p1, :cond_1

    .line 2184
    iget v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    add-int/lit8 v1, v4, 0x1

    goto :goto_0

    .line 2189
    :cond_1
    invoke-direct {p0, p3, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->reopenFolderInputStream(ILorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V

    .line 2193
    :cond_2
    :goto_0
    move v4, v1

    .local v4, "i":I
    :goto_1
    if-ge v4, p1, :cond_4

    .line 2194
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v5, v5, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v5, v5, v4

    .line 2195
    .local v5, "fileToSkip":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 2196
    invoke-virtual {v6, v7}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    .line 2197
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setMaxCount(J)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    .line 2198
    invoke-virtual {v6, v2}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setPropagateClose(Z)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    .line 2199
    invoke-virtual {v6}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v6

    .line 2200
    .local v6, "fileStreamToSkip":Ljava/io/InputStream;
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCrc()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2202
    invoke-static {}, Lorg/apache/commons/io/input/ChecksumInputStream;->builder()Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v7

    new-instance v8, Ljava/util/zip/CRC32;

    invoke-direct {v8}, Ljava/util/zip/CRC32;-><init>()V

    .line 2203
    invoke-virtual {v7, v8}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setChecksum(Ljava/util/zip/Checksum;)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v7

    .line 2204
    invoke-virtual {v7, v6}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    .line 2205
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setCountThreshold(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v7

    .line 2206
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCrcValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->setExpectedChecksumValue(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;

    move-result-object v7

    .line 2207
    invoke-virtual {v7}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->get()Lorg/apache/commons/io/input/ChecksumInputStream;

    move-result-object v6

    .line 2210
    :cond_3
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->deferredBlockStreams:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2213
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getContentMethods()Ljava/lang/Iterable;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 2193
    .end local v5    # "fileToSkip":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .end local v6    # "fileStreamToSkip":Ljava/io/InputStream;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2215
    .end local v4    # "i":I
    :cond_4
    return v3
.end method

.method private tryToLocateEndHeader([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .locals 27
    .param p1, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2224
    move-object/from16 v1, p0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2225
    .local v3, "nidBuf":Ljava/nio/ByteBuffer;
    const-wide/32 v4, 0x100000

    .line 2227
    .local v4, "searchLimit":J
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v6

    const-wide/16 v8, 0x14

    add-long/2addr v6, v8

    .line 2230
    .local v6, "previousDataSize":J
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v8

    const-wide/32 v10, 0x100000

    add-long/2addr v8, v10

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v12

    cmp-long v0, v8, v12

    if-lez v0, :cond_0

    .line 2231
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v8

    .local v8, "minPos":J
    goto :goto_0

    .line 2233
    .end local v8    # "minPos":J
    :cond_0
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v8

    sub-long/2addr v8, v10

    .line 2235
    .restart local v8    # "minPos":J
    :goto_0
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    .line 2237
    .local v10, "pos":J
    :goto_1
    cmp-long v0, v10, v8

    if-lez v0, :cond_5

    .line 2238
    sub-long/2addr v10, v12

    .line 2239
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, v10, v11}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 2240
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 2241
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0, v3}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-lt v0, v2, :cond_4

    .line 2244
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v14, 0x0

    aget-byte v15, v0, v14

    .line 2246
    .local v15, "nid":I
    const/16 v0, 0x17

    if-eq v15, v0, :cond_2

    if-ne v15, v2, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v2, p1

    goto :goto_3

    .line 2249
    :cond_2
    :goto_2
    sub-long v23, v10, v6

    .line 2250
    .local v23, "nextHeaderOffset":J
    :try_start_0
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v16

    sub-long v25, v16, v10

    .line 2251
    .local v25, "nextHeaderSize":J
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    const-wide/16 v21, 0x0

    move-object/from16 v16, v0

    move-wide/from16 v17, v23

    move-wide/from16 v19, v25

    invoke-direct/range {v16 .. v22}, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;-><init>(JJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2252
    .local v0, "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    move-object/from16 v2, p1

    :try_start_1
    invoke-direct {v1, v0, v2, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->initializeArchive(Lorg/apache/commons/compress/archivers/sevenz/StartHeader;[BZ)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object v14

    .line 2254
    .local v14, "result":Lorg/apache/commons/compress/archivers/sevenz/Archive;
    iget-object v12, v14, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v12, v12

    if-lez v12, :cond_3

    iget-object v12, v14, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v12, v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lez v12, :cond_3

    .line 2255
    return-object v14

    .line 2259
    .end local v0    # "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .end local v14    # "result":Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .end local v23    # "nextHeaderOffset":J
    .end local v25    # "nextHeaderSize":J
    :cond_3
    goto :goto_3

    .line 2257
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v2, p1

    .line 2261
    .end local v15    # "nid":I
    :goto_3
    const/4 v2, 0x1

    const-wide/16 v12, 0x1

    goto :goto_1

    .line 2242
    :cond_4
    move-object/from16 v2, p1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 2262
    :cond_5
    move-object/from16 v2, p1

    new-instance v0, Ljava/io/IOException;

    const-string v12, "Start header corrupt and unable to guess end header"

    invoke-direct {v0, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 903
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    if-eqz v0, :cond_2

    .line 905
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 908
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    if-eqz v2, :cond_0

    .line 909
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 911
    :cond_0
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 912
    goto :goto_0

    .line 907
    :catchall_0
    move-exception v2

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->channel:Ljava/nio/channels/SeekableByteChannel;

    .line 908
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    if-eqz v3, :cond_1

    .line 909
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 911
    :cond_1
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 912
    throw v2

    .line 914
    :cond_2
    :goto_0
    return-void
.end method

.method public getDefaultName()Ljava/lang/String;
    .locals 4

    .line 947
    const-string v0, "unknown archive"

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 951
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, "lastSegment":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 953
    .local v1, "dotPos":I
    if-lez v1, :cond_1

    .line 954
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 956
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 948
    .end local v0    # "lastSegment":Ljava/lang/String;
    .end local v1    # "dotPos":I
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntries()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 973
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getInputStream(Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)Ljava/io/InputStream;
    .locals 4
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 988
    const/4 v0, -0x1

    .line 989
    .local v0, "entryIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 990
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v2, v2, v1

    if-ne p1, v2, :cond_0

    .line 991
    move v0, v1

    .line 992
    goto :goto_1

    .line 989
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 996
    .end local v1    # "i":I
    :cond_1
    :goto_1
    if-ltz v0, :cond_2

    .line 1000
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecodingStream(IZ)V

    .line 1001
    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 1002
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    aget v1, v1, v0

    iput v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 1003
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 997
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1013
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 1014
    const/4 v0, 0x0

    return-object v0

    .line 1016
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 1017
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v0, v0, v1

    .line 1018
    .local v0, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->useDefaultNameForUnnamedEntries:Z

    if-eqz v1, :cond_1

    .line 1019
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setName(Ljava/lang/String;)V

    .line 1021
    :cond_1
    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecodingStream(IZ)V

    .line 1022
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->compressedBytesReadFromCurrentEntry:J

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    .line 1023
    return-object v0
.end method

.method public getStatisticsForCurrentEntry()Lorg/apache/commons/compress/utils/InputStreamStatistics;
    .locals 1

    .line 1033
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$2;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V

    return-object v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1107
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1108
    .local v0, "b":I
    if-ltz v0, :cond_0

    .line 1109
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    .line 1111
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1122
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1135
    if-nez p3, :cond_0

    .line 1136
    const/4 v0, 0x0

    return v0

    .line 1138
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getCurrentStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1139
    .local v0, "cnt":I
    if-lez v0, :cond_1

    .line 1140
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->uncompressedBytesReadFromCurrentEntry:J

    .line 1142
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2220
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/Archive;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
