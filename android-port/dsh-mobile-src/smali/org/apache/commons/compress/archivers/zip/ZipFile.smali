.class public Lorg/apache/commons/compress/archivers/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ZipFile$Builder;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedFileChannelInputStream;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$StoredStatisticsStream;,
        Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;
    }
.end annotation


# static fields
.field static final BYTE_SHIFT:I = 0x8

.field private static final CFD_DISK_OFFSET:I = 0x6

.field private static final CFD_LENGTH_OFFSET:I = 0xc

.field private static final CFD_LOCATOR_RELATIVE_OFFSET:I = 0x8

.field private static final CFH_LEN:I = 0x2a

.field private static final CFH_SIG:J

.field private static final DEFAULT_CHARSET_NAME:Ljava/lang/String;

.field private static final HASH_SIZE:I = 0x1fd

.field private static final LFH_OFFSET_FOR_FILENAME_LENGTH:J = 0x1aL

.field private static final MAX_EOCD_SIZE:I = 0x10015

.field static final MIN_EOCD_SIZE:I = 0x16

.field static final NIBLET_MASK:I = 0xf

.field private static final ONE_ZERO_BYTE:[B

.field private static final POS_0:I = 0x0

.field private static final POS_1:I = 0x1

.field private static final POS_2:I = 0x2

.field private static final POS_3:I = 0x3

.field private static final READ:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Ljava/nio/file/StandardOpenOption;",
            ">;"
        }
    .end annotation
.end field

.field private static final ZIP64_EOCDL_LENGTH:I = 0x14

.field private static final ZIP64_EOCDL_LOCATOR_OFFSET:I = 0x8

.field private static final ZIP64_EOCD_CFD_DISK_OFFSET:I = 0x14

.field private static final ZIP64_EOCD_CFD_LOCATOR_OFFSET:I = 0x30

.field private static final ZIP64_EOCD_CFD_LOCATOR_RELATIVE_OFFSET:I = 0x18

.field private static final offsetComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final archive:Ljava/nio/channels/SeekableByteChannel;

.field private centralDirectoryStartDiskNumber:J

.field private centralDirectoryStartOffset:J

.field private centralDirectoryStartRelativeOffset:J

.field private final cfhBbuf:Ljava/nio/ByteBuffer;

.field private final cfhBuf:[B

.field private volatile closed:Z

.field private final dwordBbuf:Ljava/nio/ByteBuffer;

.field private final dwordBuf:[B

.field private final encoding:Ljava/nio/charset/Charset;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field private firstLocalFileHeaderOffset:J

.field private final isSplitZipArchive:Z

.field private final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final shortBbuf:Ljava/nio/ByteBuffer;

.field private final shortBuf:[B

.field private final useUnicodeExtraFields:Z

.field private final wordBbuf:Ljava/nio/ByteBuffer;

.field private final wordBuf:[B

.field private final zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method public static synthetic $r8$lambda$QPYilrdLVwitq3C8vNVra-Jw6mQ(Ljava/io/Closeable;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 261
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DEFAULT_CHARSET_NAME:Ljava/lang/String;

    .line 263
    sget-object v0, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->READ:Ljava/util/EnumSet;

    .line 272
    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->ONE_ZERO_BYTE:[B

    .line 297
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->CFH_SIG:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_SIG:J

    .line 467
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda5;-><init>()V

    .line 468
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->offsetComparator:Ljava/util/Comparator;

    .line 467
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 702
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DEFAULT_CHARSET_NAME:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 715
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/file/Path;Ljava/lang/String;Z)V

    .line 716
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "useUnicodeExtraFields"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 729
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/file/Path;Ljava/lang/String;ZZ)V

    .line 730
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;ZZ)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "useUnicodeExtraFields"    # Z
    .param p4, "ignoreLocalFileHeader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 753
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->newReadByteChannel(Ljava/nio/file/Path;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 754
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 943
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DEFAULT_CHARSET_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/file/Path;Ljava/lang/String;)V

    .line 944
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 956
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/file/Path;Ljava/lang/String;Z)V

    .line 957
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;)V
    .locals 3
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 836
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DEFAULT_CHARSET_NAME:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "a SeekableByteChannel"

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 837
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 853
    const-string v0, "a SeekableByteChannel"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 854
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "channelDescription"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "useUnicodeExtraFields"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 898
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 899
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "channelDescription"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "useUnicodeExtraFields"    # Z
    .param p5, "ignoreLocalFileHeader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 926
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 927
    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 7
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "channelDescription"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "useUnicodeExtraFields"    # Z
    .param p5, "closeOnError"    # Z
    .param p6, "ignoreLocalFileHeader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 931
    invoke-static {p3}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZ)V

    .line 932
    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZ)V
    .locals 5
    .param p1, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "channelDescription"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/nio/charset/Charset;
    .param p4, "useUnicodeExtraFields"    # Z
    .param p5, "closeOnError"    # Z
    .param p6, "ignoreLocalFileHeader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    .line 633
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1fd

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    .line 670
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBuf:[B

    .line 672
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBuf:[B

    .line 674
    const/16 v0, 0x2a

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    .line 676
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->shortBuf:[B

    .line 678
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBuf:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBbuf:Ljava/nio/ByteBuffer;

    .line 680
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBuf:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    .line 682
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBbuf:Ljava/nio/ByteBuffer;

    .line 684
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->shortBuf:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->shortBbuf:Ljava/nio/ByteBuffer;

    .line 858
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->isSplitZipArchive:Z

    .line 859
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Builder;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p3, v0}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->encoding:Ljava/nio/charset/Charset;

    .line 860
    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/nio/charset/Charset;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 861
    iput-boolean p4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->useUnicodeExtraFields:Z

    .line 862
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    .line 863
    const/4 v0, 0x0

    .line 865
    .local v0, "success":Z
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->populateFromCentralDirectory()Ljava/util/Map;

    move-result-object v1

    .line 866
    .local v1, "entriesWithoutUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    if-nez p6, :cond_0

    .line 867
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->resolveLocalFileHeaderData(Ljava/util/Map;)V

    .line 869
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->fillNameMap()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    const/4 v0, 0x1

    .line 874
    .end local v1    # "entriesWithoutUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    .line 875
    if-nez v0, :cond_1

    if-eqz p5, :cond_1

    .line 876
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 879
    :cond_1
    return-void

    .line 874
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 871
    :catch_0
    move-exception v1

    .line 872
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading Zip content from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "success":Z
    .end local p1    # "channel":Ljava/nio/channels/SeekableByteChannel;
    .end local p2    # "channelDescription":Ljava/lang/String;
    .end local p3    # "encoding":Ljava/nio/charset/Charset;
    .end local p4    # "useUnicodeExtraFields":Z
    .end local p5    # "closeOnError":Z
    .end local p6    # "ignoreLocalFileHeader":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 874
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "success":Z
    .restart local p1    # "channel":Ljava/nio/channels/SeekableByteChannel;
    .restart local p2    # "channelDescription":Ljava/lang/String;
    .restart local p3    # "encoding":Ljava/nio/charset/Charset;
    .restart local p4    # "useUnicodeExtraFields":Z
    .restart local p5    # "closeOnError":Z
    .restart local p6    # "ignoreLocalFileHeader":Z
    :goto_0
    xor-int/lit8 v2, v0, 0x1

    iput-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    .line 875
    if-nez v0, :cond_2

    if-eqz p5, :cond_2

    .line 876
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 878
    :cond_2
    throw v1
.end method

.method synthetic constructor <init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZLorg/apache/commons/compress/archivers/zip/ZipFile$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/nio/channels/SeekableByteChannel;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/nio/charset/Charset;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .param p6, "x5"    # Z
    .param p7, "x6"    # Lorg/apache/commons/compress/archivers/zip/ZipFile$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/nio/charset/Charset;ZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 766
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->DEFAULT_CHARSET_NAME:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/file/Path;Ljava/lang/String;)V

    .line 767
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 780
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/file/Path;Ljava/lang/String;Z)V

    .line 781
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "useUnicodeExtraFields"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 795
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/file/Path;Ljava/lang/String;ZZ)V

    .line 796
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/lang/String;ZZ)V
    .locals 7
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "useUnicodeExtraFields"    # Z
    .param p4, "ignoreLocalFileHeader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 819
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->newReadByteChannel(Ljava/nio/file/Path;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v1

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 820
    return-void
.end method

.method static synthetic access$000(Ljava/nio/file/Path;J[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
    .param p0, "x0"    # Ljava/nio/file/Path;
    .param p1, "x1"    # J
    .param p3, "x2"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->openZipChannel(Ljava/nio/file/Path;J[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lorg/apache/commons/compress/archivers/zip/ZipFile$Builder;
    .locals 1

    .line 477
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Builder;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Builder;-><init>()V

    return-object v0
.end method

.method public static closeQuietly(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    .locals 0
    .param p0, "zipFile"    # Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 486
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 487
    return-void
.end method

.method private createBoundedInputStream(JJ)Lorg/apache/commons/compress/utils/BoundedArchiveInputStream;
    .locals 14
    .param p1, "start"    # J
    .param p3, "remaining"    # J

    .line 1011
    move-object v0, p0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    cmp-long v1, p3, v1

    if-ltz v1, :cond_1

    add-long v1, p1, p3

    cmp-long v1, v1, p1

    if-ltz v1, :cond_1

    .line 1014
    iget-object v1, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    instance-of v1, v1, Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedFileChannelInputStream;

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    move-object v7, v2

    check-cast v7, Ljava/nio/channels/FileChannel;

    move-object v2, v1

    move-wide v3, p1

    move-wide/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedFileChannelInputStream;-><init>(JJLjava/nio/channels/FileChannel;)V

    goto :goto_0

    .line 1015
    :cond_0
    new-instance v1, Lorg/apache/commons/compress/utils/BoundedSeekableByteChannelInputStream;

    iget-object v13, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    move-object v8, v1

    move-wide v9, p1

    move-wide/from16 v11, p3

    invoke-direct/range {v8 .. v13}, Lorg/apache/commons/compress/utils/BoundedSeekableByteChannelInputStream;-><init>(JJLjava/nio/channels/SeekableByteChannel;)V

    .line 1014
    :goto_0
    return-object v1

    .line 1012
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Corrupted archive, stream boundaries are out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private fillNameMap()V
    .locals 2

    .line 1019
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1026
    return-void
.end method

.method private getDataOffset(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)J
    .locals 4
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1056
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getDataOffset()J

    move-result-wide v0

    .line 1057
    .local v0, "s":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1058
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->setDataOffset(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)[I

    .line 1059
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getDataOffset()J

    move-result-wide v2

    return-wide v2

    .line 1061
    :cond_0
    return-wide v0
.end method

.method static synthetic lambda$fillNameMap$1(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "k"    # Ljava/lang/String;

    .line 1023
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$openZipChannel$0(JLjava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/String;I)Ljava/nio/file/Path;
    .locals 4
    .param p0, "numberOfDisks"    # J
    .param p2, "path"    # Ljava/nio/file/Path;
    .param p3, "parent"    # Ljava/nio/file/Path;
    .param p4, "basename"    # Ljava/lang/String;
    .param p5, "i"    # I

    .line 534
    int-to-long v0, p5

    const-wide/16 v2, 0x1

    sub-long v2, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 535
    return-object p2

    .line 537
    :cond_0
    add-int/lit8 v0, p5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s.z%02d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 538
    .local v0, "lowercase":Ljava/nio/file/Path;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 539
    return-object v0

    .line 541
    :cond_1
    add-int/lit8 v2, p5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p4, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s.Z%02d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 542
    .local v2, "uppercase":Ljava/nio/file/Path;
    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 543
    return-object v2

    .line 545
    :cond_2
    return-object v0
.end method

.method private static newReadByteChannel(Ljava/nio/file/Path;)Ljava/nio/channels/SeekableByteChannel;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->READ:Ljava/util/EnumSet;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p0, v0, v1}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    return-object v0
.end method

.method private static openZipChannel(Ljava/nio/file/Path;J[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;
    .locals 16
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "maxNumberOfDisks"    # J
    .param p3, "openOptions"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    move-wide/from16 v1, p1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/nio/file/OpenOption;

    sget-object v4, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    move-object/from16 v4, p0

    invoke-static {v4, v3}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 502
    .local v3, "channel":Ljava/nio/channels/FileChannel;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v6

    .line 504
    .local v12, "channels":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/FileChannel;>;"
    :try_start_0
    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtEndOfCentralDirectoryRecord(Ljava/nio/channels/SeekableByteChannel;)Z

    move-result v6

    move v13, v6

    .line 506
    .local v13, "is64":Z
    const-wide/16 v6, 0x4

    if-eqz v13, :cond_0

    .line 507
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    add-long/2addr v8, v6

    add-long/2addr v8, v6

    const-wide/16 v6, 0x8

    add-long/2addr v8, v6

    invoke-virtual {v3, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 508
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 509
    .local v0, "buf":Ljava/nio/ByteBuffer;
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 510
    invoke-static {v3, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 511
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 512
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    .line 513
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .local v6, "numberOfDisks":J
    move-wide v14, v6

    goto :goto_0

    .line 514
    .end local v6    # "numberOfDisks":J
    :cond_0
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v3, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 515
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 516
    .local v6, "buf":Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 517
    invoke-static {v3, v6}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 518
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 519
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    const v8, 0xffff

    and-int/2addr v7, v8

    add-int/2addr v7, v0

    int-to-long v7, v7

    move-wide v6, v7

    move-wide v14, v6

    .line 521
    .end local v6    # "buf":Ljava/nio/ByteBuffer;
    .local v14, "numberOfDisks":J
    :goto_0
    const-wide/32 v6, 0x7fffffff

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    cmp-long v0, v14, v8

    if-gtz v0, :cond_2

    .line 525
    const-wide/16 v6, 0x1

    cmp-long v0, v14, v6

    if-gtz v0, :cond_1

    .line 526
    return-object v3

    .line 528
    :cond_1
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    .line 530
    invoke-interface/range {p0 .. p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v10

    .line 531
    .local v10, "parent":Ljava/nio/file/Path;
    invoke-interface/range {p0 .. p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v0, v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 533
    .local v11, "basename":Ljava/lang/String;
    long-to-int v0, v14

    invoke-static {v5, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v5, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda2;

    move-object v6, v5

    move-wide v7, v14

    move-object/from16 v9, p0

    invoke-direct/range {v6 .. v11}, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda2;-><init>(JLjava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 546
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 533
    move-object/from16 v5, p3

    :try_start_1
    invoke-static {v0, v5}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->forPaths(Ljava/util/List;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    return-object v0

    .line 522
    .end local v10    # "parent":Ljava/nio/file/Path;
    .end local v11    # "basename":Ljava/lang/String;
    :cond_2
    move-object/from16 v5, p3

    new-instance v0, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Too many disks for zip archive, max="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " actual="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "channel":Ljava/nio/channels/FileChannel;
    .end local v12    # "channels":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/FileChannel;>;"
    .end local p0    # "path":Ljava/nio/file/Path;
    .end local p1    # "maxNumberOfDisks":J
    .end local p3    # "openOptions":[Ljava/nio/file/OpenOption;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    .end local v13    # "is64":Z
    .end local v14    # "numberOfDisks":J
    .restart local v3    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v12    # "channels":Ljava/util/List;, "Ljava/util/List<Ljava/nio/channels/FileChannel;>;"
    .restart local p0    # "path":Ljava/nio/file/Path;
    .restart local p1    # "maxNumberOfDisks":J
    .restart local p3    # "openOptions":[Ljava/nio/file/OpenOption;
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v5, p3

    .line 548
    .local v0, "ex":Ljava/lang/Throwable;
    :goto_1
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 549
    new-instance v6, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v12, v6}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 550
    throw v0
.end method

.method private populateFromCentralDirectory()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1274
    .local v0, "noUTF8Flag":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtCentralDirectory()V

    .line 1275
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartOffset:J

    .line 1277
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1278
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v1, v2}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1279
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBuf:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v1

    .line 1281
    .local v1, "sig":J
    sget-wide v3, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_SIG:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->startsWithLocalFileHeader()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 1282
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Central directory is empty, can\'t expand corrupt archive."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1285
    :cond_1
    :goto_0
    sget-wide v3, Lorg/apache/commons/compress/archivers/zip/ZipFile;->CFH_SIG:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 1286
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->readCentralDirectoryEntry(Ljava/util/Map;)V

    .line 1287
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1288
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v3, v4}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1289
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBuf:[B

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v1

    goto :goto_0

    .line 1291
    :cond_2
    return-object v0
.end method

.method private positionAtCentralDirectory()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1299
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtEndOfCentralDirectoryRecord(Ljava/nio/channels/SeekableByteChannel;)Z

    move-result v0

    .line 1300
    .local v0, "is64":Z
    if-nez v0, :cond_0

    .line 1301
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtCentralDirectory32()V

    goto :goto_0

    .line 1303
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->positionAtCentralDirectory64()V

    .line 1305
    :goto_0
    return-void
.end method

.method private positionAtCentralDirectory32()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1313
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0

    .line 1314
    .local v0, "endOfCentralDirectoryRecordOffset":J
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->isSplitZipArchive:Z

    if-eqz v2, :cond_0

    .line 1315
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 1316
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->shortBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1317
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->shortBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1318
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->shortBuf:[B

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([B)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartDiskNumber:J

    .line 1320
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 1322
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1323
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1324
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBuf:[B

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartRelativeOffset:J

    .line 1325
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartDiskNumber:J

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartRelativeOffset:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->position(JJ)Ljava/nio/channels/SeekableByteChannel;

    goto :goto_0

    .line 1327
    :cond_0
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 1328
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1329
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1330
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBuf:[B

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v2

    .line 1332
    .local v2, "centralDirectoryLength":J
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1333
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v4, v5}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1334
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartDiskNumber:J

    .line 1335
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBuf:[B

    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartRelativeOffset:J

    .line 1337
    sub-long v6, v0, v2

    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartRelativeOffset:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->firstLocalFileHeaderOffset:J

    .line 1338
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartRelativeOffset:J

    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->firstLocalFileHeaderOffset:J

    add-long/2addr v5, v7

    invoke-interface {v4, v5, v6}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1340
    .end local v2    # "centralDirectoryLength":J
    :goto_0
    return-void
.end method

.method private positionAtCentralDirectory64()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1349
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 1350
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->isSplitZipArchive:Z

    if-eqz v1, :cond_0

    .line 1351
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1352
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1353
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBuf:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v0

    .line 1355
    .local v0, "diskNumberOfEOCD":J
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1356
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1357
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBuf:[B

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v2

    .line 1358
    .local v2, "relativeOffsetOfEOCD":J
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    check-cast v4, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->position(JJ)Ljava/nio/channels/SeekableByteChannel;

    .line 1359
    .end local v0    # "diskNumberOfEOCD":J
    .end local v2    # "relativeOffsetOfEOCD":J
    goto :goto_0

    .line 1360
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 1361
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1362
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1363
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBuf:[B

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1366
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1367
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1368
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBuf:[B

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_SIG:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1372
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->isSplitZipArchive:Z

    if-eqz v0, :cond_1

    .line 1373
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 1374
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1375
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1376
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBuf:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartDiskNumber:J

    .line 1378
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 1380
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1381
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1382
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBuf:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartRelativeOffset:J

    .line 1383
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartDiskNumber:J

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartRelativeOffset:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->position(JJ)Ljava/nio/channels/SeekableByteChannel;

    goto :goto_1

    .line 1385
    :cond_1
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 1386
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1387
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1388
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartDiskNumber:J

    .line 1389
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->dwordBuf:[B

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue([B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartRelativeOffset:J

    .line 1390
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartRelativeOffset:J

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1392
    :goto_1
    return-void

    .line 1369
    :cond_2
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "Archive\'s ZIP64 end of central directory locator is corrupt."

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static positionAtEndOfCentralDirectoryRecord(Ljava/nio/channels/SeekableByteChannel;)Z
    .locals 9
    .param p0, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    const-wide/32 v3, 0x10015

    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    const-wide/16 v1, 0x16

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->tryToLocateSignature(Ljava/nio/channels/SeekableByteChannel;JJ[B)Z

    move-result v0

    .line 561
    .local v0, "found":Z
    if-eqz v0, :cond_2

    .line 564
    const/4 v1, 0x0

    .line 565
    .local v1, "found64":Z
    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v2

    .line 566
    .local v2, "position":J
    const-wide/16 v4, 0x14

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 567
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 568
    .local v6, "wordBuf":Ljava/nio/ByteBuffer;
    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-interface {p0, v7, v8}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 569
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 570
    invoke-static {p0, v6}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 571
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 572
    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZIP64_EOCD_LOC_SIG:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 573
    if-nez v1, :cond_0

    .line 574
    invoke-interface {p0, v2, v3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    goto :goto_0

    .line 576
    :cond_0
    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v4

    const-wide/16 v7, 0x4

    sub-long/2addr v4, v7

    invoke-interface {p0, v4, v5}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 580
    .end local v6    # "wordBuf":Ljava/nio/ByteBuffer;
    :cond_1
    :goto_0
    return v1

    .line 562
    .end local v1    # "found64":Z
    .end local v2    # "position":J
    :cond_2
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "Archive is not a ZIP archive"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readCentralDirectoryEntry(Ljava/util/Map;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1401
    .local p1, "noUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1402
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v2, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v0, v2}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1403
    const/4 v0, 0x0

    .line 1404
    .local v0, "off":I
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile$1;)V

    .line 1406
    .local v2, "ze":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    iget-object v4, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v4, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v4

    .line 1407
    .local v4, "versionMadeBy":I
    add-int/lit8 v0, v0, 0x2

    .line 1408
    invoke-virtual {v2, v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setVersionMadeBy(I)V

    .line 1409
    shr-int/lit8 v5, v4, 0x8

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v2, v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setPlatform(I)V

    .line 1411
    iget-object v5, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v5, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setVersionRequired(I)V

    .line 1412
    add-int/lit8 v0, v0, 0x2

    .line 1414
    iget-object v5, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v5, v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->parse([BI)Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v5

    .line 1415
    .local v5, "gpFlag":Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->usesUTF8ForNames()Z

    move-result v6

    .line 1416
    .local v6, "hasUTF8Flag":Z
    if-eqz v6, :cond_0

    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->ZIP_ENCODING_UTF_8:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    goto :goto_0

    :cond_0
    iget-object v7, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 1417
    .local v7, "entryEncoding":Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    :goto_0
    if-eqz v6, :cond_1

    .line 1418
    sget-object v8, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;->NAME_WITH_EFS_FLAG:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;

    invoke-virtual {v2, v8}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setNameSource(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;)V

    .line 1420
    :cond_1
    invoke-virtual {v2, v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;)V

    .line 1421
    iget-object v8, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v8, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v8

    invoke-virtual {v2, v8}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setRawFlag(I)V

    .line 1423
    add-int/lit8 v0, v0, 0x2

    .line 1426
    iget-object v8, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v8, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v8

    invoke-virtual {v2, v8}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setMethod(I)V

    .line 1427
    add-int/lit8 v0, v0, 0x2

    .line 1429
    iget-object v8, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v8, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v8

    .line 1430
    .local v8, "time":J
    invoke-virtual {v2, v8, v9}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setTime(J)V

    .line 1431
    add-int/lit8 v0, v0, 0x4

    .line 1433
    iget-object v10, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v10, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setCrc(J)V

    .line 1434
    add-int/lit8 v0, v0, 0x4

    .line 1436
    iget-object v10, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v10, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v10

    .line 1437
    .local v10, "size":J
    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-ltz v14, :cond_a

    .line 1440
    invoke-virtual {v2, v10, v11}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setCompressedSize(J)V

    .line 1441
    add-int/lit8 v0, v0, 0x4

    .line 1443
    iget-object v14, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v14, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v10

    .line 1444
    cmp-long v12, v10, v12

    if-ltz v12, :cond_9

    .line 1447
    invoke-virtual {v2, v10, v11}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setSize(J)V

    .line 1448
    add-int/lit8 v0, v0, 0x4

    .line 1450
    iget-object v12, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v12, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v12

    .line 1451
    .local v12, "fileNameLen":I
    add-int/lit8 v0, v0, 0x2

    .line 1452
    if-ltz v12, :cond_8

    .line 1456
    iget-object v13, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v13, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v13

    .line 1457
    .local v13, "extraLen":I
    add-int/lit8 v0, v0, 0x2

    .line 1458
    if-ltz v13, :cond_7

    .line 1462
    iget-object v14, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v14, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v14

    .line 1463
    .local v14, "commentLen":I
    add-int/lit8 v0, v0, 0x2

    .line 1464
    if-ltz v14, :cond_6

    .line 1468
    iget-object v15, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v15, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v15

    move/from16 v17, v4

    .end local v4    # "versionMadeBy":I
    .local v17, "versionMadeBy":I
    int-to-long v3, v15

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setDiskNumberStart(J)V

    .line 1469
    add-int/lit8 v0, v0, 0x2

    .line 1471
    iget-object v3, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setInternalAttributes(I)V

    .line 1472
    add-int/lit8 v0, v0, 0x2

    .line 1474
    iget-object v3, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setExternalAttributes(J)V

    .line 1475
    add-int/lit8 v3, v0, 0x4

    .line 1477
    .end local v0    # "off":I
    .local v3, "off":I
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v0, v12}, Lorg/apache/commons/compress/utils/IOUtils;->readRange(Ljava/nio/channels/ReadableByteChannel;I)[B

    move-result-object v4

    .line 1478
    .local v4, "fileName":[B
    array-length v0, v4

    if-lt v0, v12, :cond_5

    .line 1481
    invoke-interface {v7, v4}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setName(Ljava/lang/String;[B)V

    .line 1484
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->cfhBuf:[B

    invoke-static {v0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v18

    move-wide/from16 v20, v8

    .end local v8    # "time":J
    .local v20, "time":J
    iget-wide v8, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->firstLocalFileHeaderOffset:J

    add-long v8, v18, v8

    invoke-virtual {v2, v8, v9}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setLocalHeaderOffset(J)V

    .line 1486
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1488
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v0, v13}, Lorg/apache/commons/compress/utils/IOUtils;->readRange(Ljava/nio/channels/ReadableByteChannel;I)[B

    move-result-object v8

    .line 1489
    .local v8, "cdExtraData":[B
    array-length v0, v8

    if-lt v0, v13, :cond_4

    .line 1493
    :try_start_0
    invoke-virtual {v2, v8}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setCentralDirectoryExtra([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1498
    nop

    .line 1500
    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->setSizesAndOffsetFromZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 1501
    invoke-direct {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->sanityCheckLFHOffset(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 1503
    iget-object v0, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v0, v14}, Lorg/apache/commons/compress/utils/IOUtils;->readRange(Ljava/nio/channels/ReadableByteChannel;I)[B

    move-result-object v0

    .line 1504
    .local v0, "comment":[B
    array-length v9, v0

    if-lt v9, v14, :cond_3

    .line 1507
    invoke-interface {v7, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setComment(Ljava/lang/String;)V

    .line 1509
    if-nez v6, :cond_2

    iget-boolean v9, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile;->useUnicodeExtraFields:Z

    if-eqz v9, :cond_2

    .line 1510
    new-instance v9, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;

    const/4 v15, 0x0

    invoke-direct {v9, v4, v0, v15}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;-><init>([B[BLorg/apache/commons/compress/archivers/zip/ZipFile$1;)V

    move-object/from16 v15, p1

    invoke-interface {v15, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1509
    :cond_2
    move-object/from16 v15, p1

    .line 1513
    :goto_1
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setStreamContiguous(Z)V

    .line 1514
    return-void

    .line 1505
    :cond_3
    move-object/from16 v15, p1

    new-instance v9, Ljava/io/EOFException;

    invoke-direct {v9}, Ljava/io/EOFException;-><init>()V

    throw v9

    .line 1494
    .end local v0    # "comment":[B
    :catch_0
    move-exception v0

    move-object/from16 v15, p1

    move-object v9, v0

    move-object v0, v9

    .line 1495
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v9, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v3

    .end local v3    # "off":I
    .local v16, "off":I
    const-string v3, "Invalid extra data in entry "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    move-object v1, v9

    .line 1496
    .local v1, "z":Ljava/util/zip/ZipException;
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1497
    throw v1

    .line 1490
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "z":Ljava/util/zip/ZipException;
    .end local v16    # "off":I
    .restart local v3    # "off":I
    :cond_4
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 1479
    .end local v20    # "time":J
    .local v8, "time":J
    :cond_5
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 1465
    .end local v3    # "off":I
    .end local v17    # "versionMadeBy":I
    .local v0, "off":I
    .local v4, "versionMadeBy":I
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v3, "broken archive, entry with negative commentLen"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1459
    .end local v14    # "commentLen":I
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v3, "broken archive, entry with negative extraLen"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1453
    .end local v13    # "extraLen":I
    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string v3, "broken archive, entry with negative fileNameLen"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1445
    .end local v12    # "fileNameLen":I
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v3, "broken archive, entry with negative size"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1438
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v3, "broken archive, entry with negative compressed size"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private resolveLocalFileHeaderData(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            "Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1523
    .local p1, "entriesWithoutUTF8Flag":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;>;"
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 1525
    .local v1, "zipArchiveEntry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .line 1526
    .local v2, "ze":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->setDataOffset(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)[I

    move-result-object v3

    .line 1527
    .local v3, "lens":[I
    const/4 v4, 0x0

    aget v4, v3, v4

    .line 1528
    .local v4, "fileNameLen":I
    const/4 v5, 0x1

    aget v5, v3, v5

    .line 1529
    .local v5, "extraFieldLen":I
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->skipBytes(I)V

    .line 1530
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-static {v6, v5}, Lorg/apache/commons/compress/utils/IOUtils;->readRange(Ljava/nio/channels/ReadableByteChannel;I)[B

    move-result-object v6

    .line 1531
    .local v6, "localExtraData":[B
    array-length v7, v6

    if-lt v7, v5, :cond_1

    .line 1535
    :try_start_0
    invoke-virtual {v2, v6}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->setExtra([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1540
    nop

    .line 1542
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1543
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;

    .line 1544
    .local v7, "nc":Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;
    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->access$400(Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;)[B

    move-result-object v8

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->access$500(Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;)[B

    move-result-object v9

    invoke-static {v2, v8, v9}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->setNameAndCommentFromExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;[B[B)V

    .line 1546
    .end local v1    # "zipArchiveEntry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v2    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    .end local v3    # "lens":[I
    .end local v4    # "fileNameLen":I
    .end local v5    # "extraFieldLen":I
    .end local v6    # "localExtraData":[B
    .end local v7    # "nc":Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;
    :cond_0
    goto :goto_0

    .line 1536
    .restart local v1    # "zipArchiveEntry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .restart local v2    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    .restart local v3    # "lens":[I
    .restart local v4    # "fileNameLen":I
    .restart local v5    # "extraFieldLen":I
    .restart local v6    # "localExtraData":[B
    :catch_0
    move-exception v0

    .line 1537
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/util/zip/ZipException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid extra data in entry "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 1538
    .local v7, "z":Ljava/util/zip/ZipException;
    invoke-virtual {v7, v0}, Ljava/util/zip/ZipException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1539
    throw v7

    .line 1532
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v7    # "z":Ljava/util/zip/ZipException;
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 1547
    .end local v1    # "zipArchiveEntry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v2    # "ze":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    .end local v3    # "lens":[I
    .end local v4    # "fileNameLen":I
    .end local v5    # "extraFieldLen":I
    .end local v6    # "localExtraData":[B
    :cond_2
    return-void
.end method

.method private sanityCheckLFHOffset(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 7
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1550
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getDiskNumberStart()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    .line 1553
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalHeaderOffset()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    .line 1556
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->isSplitZipArchive:Z

    const-string v1, " starts after central directory"

    const-string v2, "local file header for "

    if-eqz v0, :cond_2

    .line 1557
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getDiskNumberStart()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartDiskNumber:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    .line 1560
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getDiskNumberStart()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartDiskNumber:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalHeaderOffset()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartRelativeOffset:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1561
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1558
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " starts on a later disk than central directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1563
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalHeaderOffset()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartOffset:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_4

    .line 1566
    :cond_3
    :goto_0
    return-void

    .line 1564
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1554
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "broken archive, entry with negative local file header offset"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1551
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "broken archive, entry with negative disk number"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setDataOffset(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)[I
    .locals 9
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1569
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalHeaderOffset()J

    move-result-wide v0

    .line 1570
    .local v0, "offset":J
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->isSplitZipArchive:Z

    const-wide/16 v3, 0x1a

    if-eqz v2, :cond_0

    .line 1571
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getDiskNumberStart()J

    move-result-wide v5

    add-long v7, v0, v3

    invoke-virtual {v2, v5, v6, v7, v8}, Lorg/apache/commons/compress/archivers/zip/ZipSplitReadOnlySeekableByteChannel;->position(JJ)Ljava/nio/channels/SeekableByteChannel;

    .line 1573
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v5

    sub-long v0, v5, v3

    goto :goto_0

    .line 1575
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    add-long v5, v0, v3

    invoke-interface {v2, v5, v6}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1577
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1578
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v2, v5}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1579
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1580
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->shortBuf:[B

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1581
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->shortBuf:[B

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([B)I

    move-result v2

    .line 1582
    .local v2, "fileNameLen":I
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->shortBuf:[B

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1583
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->shortBuf:[B

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([B)I

    move-result v5

    .line 1584
    .local v5, "extraFieldLen":I
    add-long/2addr v3, v0

    const-wide/16 v6, 0x2

    add-long/2addr v3, v6

    add-long/2addr v3, v6

    int-to-long v6, v2

    add-long/2addr v3, v6

    int-to-long v6, v5

    add-long/2addr v3, v6

    invoke-virtual {p1, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setDataOffset(J)V

    .line 1585
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getDataOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v6

    add-long/2addr v3, v6

    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->centralDirectoryStartOffset:J

    cmp-long v3, v3, v6

    if-gtz v3, :cond_1

    .line 1588
    filled-new-array {v2, v5}, [I

    move-result-object v3

    return-object v3

    .line 1586
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " overlaps with central directory."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private setSizesAndOffsetFromZip64Extra(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 12
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1600
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    .line 1601
    .local v0, "extra":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1602
    :cond_0
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "archive contains unparseable zip64 extra field"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1604
    :cond_1
    :goto_0
    move-object v1, v0

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;

    .line 1605
    .local v1, "z64":Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;
    if-eqz v1, :cond_d

    .line 1606
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v6

    .line 1607
    .local v2, "hasUncompressedSize":Z
    :goto_1
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v7

    cmp-long v7, v7, v4

    if-nez v7, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v6

    .line 1608
    .local v7, "hasCompressedSize":Z
    :goto_2
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalHeaderOffset()J

    move-result-wide v8

    cmp-long v4, v8, v4

    if-nez v4, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    move v4, v6

    .line 1609
    .local v4, "hasRelativeHeaderOffset":Z
    :goto_3
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getDiskNumberStart()J

    move-result-wide v8

    const-wide/32 v10, 0xffff

    cmp-long v5, v8, v10

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    move v3, v6

    .line 1610
    .local v3, "hasDiskStart":Z
    :goto_4
    invoke-virtual {v1, v2, v7, v4, v3}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->reparseCentralDirectoryData(ZZZZ)V

    .line 1612
    const-wide/16 v5, 0x0

    if-eqz v2, :cond_7

    .line 1613
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v8

    .line 1614
    .local v8, "size":J
    cmp-long v10, v8, v5

    if-ltz v10, :cond_6

    .line 1617
    invoke-virtual {p1, v8, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .end local v8    # "size":J
    goto :goto_5

    .line 1615
    .restart local v8    # "size":J
    :cond_6
    new-instance v5, Ljava/io/IOException;

    const-string v6, "broken archive, entry with negative size"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1618
    .end local v8    # "size":J
    :cond_7
    if-eqz v7, :cond_8

    .line 1619
    new-instance v8, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v1, v8}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    goto :goto_6

    .line 1618
    :cond_8
    :goto_5
    nop

    .line 1622
    :goto_6
    if-eqz v7, :cond_a

    .line 1623
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getCompressedSize()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v8

    .line 1624
    .restart local v8    # "size":J
    cmp-long v5, v8, v5

    if-ltz v5, :cond_9

    .line 1627
    invoke-virtual {p1, v8, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .end local v8    # "size":J
    goto :goto_7

    .line 1625
    .restart local v8    # "size":J
    :cond_9
    new-instance v5, Ljava/io/IOException;

    const-string v6, "broken archive, entry with negative compressed size"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1628
    .end local v8    # "size":J
    :cond_a
    if-eqz v2, :cond_b

    .line 1629
    new-instance v5, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v8

    invoke-direct {v5, v8, v9}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>(J)V

    invoke-virtual {v1, v5}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->setCompressedSize(Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;)V

    goto :goto_8

    .line 1628
    :cond_b
    :goto_7
    nop

    .line 1632
    :goto_8
    if-eqz v4, :cond_c

    .line 1633
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getRelativeHeaderOffset()Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;->getLongValue()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setLocalHeaderOffset(J)V

    .line 1636
    :cond_c
    if-eqz v3, :cond_d

    .line 1637
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/Zip64ExtendedInformationExtraField;->getDiskStartNumber()Lorg/apache/commons/compress/archivers/zip/ZipLong;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setDiskNumberStart(J)V

    .line 1640
    .end local v2    # "hasUncompressedSize":Z
    .end local v3    # "hasDiskStart":Z
    .end local v4    # "hasRelativeHeaderOffset":Z
    .end local v7    # "hasCompressedSize":Z
    :cond_d
    return-void
.end method

.method private skipBytes(I)V
    .locals 6
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1646
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v0

    .line 1647
    .local v0, "currentPosition":J
    int-to-long v2, p1

    add-long/2addr v2, v0

    .line 1648
    .local v2, "newPosition":J
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v4}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 1651
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v4, v2, v3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1652
    return-void

    .line 1649
    :cond_0
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4
.end method

.method private sortByOffset([Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)[Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 1
    .param p1, "allEntries"    # [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 1661
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->offsetComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1662
    return-object p1
.end method

.method private startsWithLocalFileHeader()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1669
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->firstLocalFileHeaderOffset:J

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 1670
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1671
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBbuf:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 1672
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->wordBuf:[B

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method private static tryToLocateSignature(Ljava/nio/channels/SeekableByteChannel;JJ[B)Z
    .locals 8
    .param p0, "channel"    # Ljava/nio/channels/SeekableByteChannel;
    .param p1, "minDistanceFromEnd"    # J
    .param p3, "maxDistanceFromEnd"    # J
    .param p5, "sig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 590
    .local v0, "wordBuf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 591
    .local v1, "found":Z
    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 592
    .local v2, "off":J
    invoke-interface {p0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v4

    sub-long/2addr v4, p3

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 593
    .local v4, "stopSearching":J
    cmp-long v6, v2, v6

    if-ltz v6, :cond_1

    .line 594
    :goto_0
    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 595
    invoke-interface {p0, v2, v3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 597
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 598
    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 599
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    nop

    .line 603
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 604
    .local v6, "curr":I
    const/4 v7, 0x0

    aget-byte v7, p5, v7

    if-ne v6, v7, :cond_0

    .line 605
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 606
    const/4 v7, 0x1

    aget-byte v7, p5, v7

    if-ne v6, v7, :cond_0

    .line 607
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 608
    const/4 v7, 0x2

    aget-byte v7, p5, v7

    if-ne v6, v7, :cond_0

    .line 609
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 610
    const/4 v7, 0x3

    aget-byte v7, p5, v7

    if-ne v6, v7, :cond_0

    .line 611
    const/4 v1, 0x1

    .line 612
    goto :goto_1

    .line 594
    .end local v6    # "curr":I
    :cond_0
    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    goto :goto_0

    .line 600
    :catch_0
    move-exception v6

    .line 601
    .local v6, "ex":Ljava/io/EOFException;
    nop

    .line 619
    .end local v6    # "ex":Ljava/io/EOFException;
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 620
    invoke-interface {p0, v2, v3}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 622
    :cond_2
    return v1
.end method


# virtual methods
.method public canReadEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z
    .locals 1
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 970
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->canHandleEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 983
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    .line 984
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->archive:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 985
    return-void
.end method

.method public copyRawEntries(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryPredicate;)V
    .locals 3
    .param p1, "target"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    .param p2, "predicate"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryPredicate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 998
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntriesInPhysicalOrder()Ljava/util/Enumeration;

    move-result-object v0

    .line 999
    .local v0, "src":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1000
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 1001
    .local v1, "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    invoke-interface {p2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntryPredicate;->test(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1002
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getRawInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->addRawArchiveEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/io/InputStream;)V

    .line 1004
    .end local v1    # "entry":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    :cond_0
    goto :goto_0

    .line 1005
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1036
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->closed:Z

    if-nez v0, :cond_0

    .line 1037
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1041
    nop

    .line 1042
    return-void

    .line 1040
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1041
    throw v0
.end method

.method public getContentBeforeFirstLocalFileHeader()Ljava/io/InputStream;
    .locals 4

    .line 1052
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->firstLocalFileHeaderOffset:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->firstLocalFileHeaderOffset:J

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->createBoundedInputStream(JJ)Lorg/apache/commons/compress/utils/BoundedArchiveInputStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 1070
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->encoding:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntries(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 1093
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->EMPTY_LINKED_LIST:Ljava/util/LinkedList;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public getEntries()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 1082
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEntriesInPhysicalOrder(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 1119
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->EMPTY_LINKED_LIST:Ljava/util/LinkedList;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 1120
    .local v0, "linkedList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->EMPTY_ARRAY:[Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->sortByOffset([Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)[Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getEntriesInPhysicalOrder()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation

    .line 1107
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->entries:Ljava/util/List;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->EMPTY_ARRAY:[Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 1108
    .local v0, "allEntries":[Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->sortByOffset([Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)[Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1133
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 1134
    .local v0, "entries":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getFirstLocalFileHeaderOffset()J
    .locals 2

    .line 1144
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->firstLocalFileHeaderOffset:J

    return-wide v0
.end method

.method public getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;
    .locals 6
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1155
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    if-nez v0, :cond_0

    .line 1156
    const/4 v0, 0x0

    return-object v0

    .line 1159
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 1164
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getRawInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1165
    .local v0, "is":Ljava/io/InputStream;
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$2;->$SwitchMap$org$apache$commons$compress$archivers$zip$ZipMethod:[I

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getMethodByCode(I)Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1212
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getMethodByCode(I)Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/apache/commons/compress/archivers/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipMethod;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    throw v1

    .line 1197
    :pswitch_0
    new-instance v1, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1

    .line 1195
    :pswitch_1
    new-instance v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1

    .line 1178
    :pswitch_2
    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 1184
    .local v1, "inflater":Ljava/util/zip/Inflater;
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;

    new-instance v3, Ljava/io/SequenceInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipFile;->ONE_ZERO_BYTE:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v0, v4}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    invoke-direct {v2, p0, v3, v1, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/io/InputStream;Ljava/util/zip/Inflater;Ljava/util/zip/Inflater;)V

    return-object v2

    .line 1172
    .end local v1    # "inflater":Ljava/util/zip/Inflater;
    :pswitch_3
    :try_start_0
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->getSlidingDictionarySize()I

    move-result v2

    .line 1173
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->getNumberOfShannonFanoTrees()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/commons/compress/archivers/zip/ExplodingInputStream;-><init>(IILjava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    return-object v1

    .line 1174
    :catch_0
    move-exception v1

    .line 1175
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "bad IMPLODE data"

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1169
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :pswitch_4
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1

    .line 1167
    :pswitch_5
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$StoredStatisticsStream;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$StoredStatisticsStream;-><init>(Ljava/io/InputStream;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRawInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;
    .locals 6
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1232
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1233
    return-object v1

    .line 1235
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getDataOffset(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)J

    move-result-wide v2

    .line 1236
    .local v2, "start":J
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 1237
    return-object v1

    .line 1239
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v0

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->createBoundedInputStream(JJ)Lorg/apache/commons/compress/utils/BoundedArchiveInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getUnixSymlink(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/lang/String;
    .locals 3
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1254
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isUnixSymlink()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1255
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getInputStream(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 1256
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1257
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1256
    :cond_0
    return-object v1

    .line 1255
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 1259
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$fillNameMap$2$org-apache-commons-compress-archivers-zip-ZipFile(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 3
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 1022
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1023
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile;->nameMap:Ljava/util/Map;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 1024
    .local v1, "entriesOfThatName":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1025
    return-void
.end method
