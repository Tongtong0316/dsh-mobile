.class public Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
.super Ljava/lang/Object;
.source "TarArchiveEntry.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;
.implements Lorg/apache/commons/compress/archivers/tar/TarConstants;
.implements Lorg/apache/commons/compress/archivers/EntryStreamOffsets;


# static fields
.field public static final DEFAULT_DIR_MODE:I = 0x41ed

.field public static final DEFAULT_FILE_MODE:I = 0x81a4

.field private static final EMPTY_TAR_ARCHIVE_ENTRY_ARRAY:[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

.field public static final MAX_NAMELEN:I = 0x1f

.field public static final MILLIS_PER_SECOND:I = 0x3e8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final PAX_EXTENDED_HEADER_FILE_TIMES_PATTERN:Ljava/util/regex/Pattern;

.field public static final UNKNOWN:J = -0x1L


# instance fields
.field private aTime:Ljava/nio/file/attribute/FileTime;

.field private birthTime:Ljava/nio/file/attribute/FileTime;

.field private cTime:Ljava/nio/file/attribute/FileTime;

.field private checkSumOK:Z

.field private dataOffset:J

.field private devMajor:I

.field private devMinor:I

.field private final extraPaxHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final file:Ljava/nio/file/Path;

.field private groupId:J

.field private groupName:Ljava/lang/String;

.field private isExtended:Z

.field private linkFlag:B

.field private linkName:Ljava/lang/String;

.field private final linkOptions:[Ljava/nio/file/LinkOption;

.field private mTime:Ljava/nio/file/attribute/FileTime;

.field private magic:Ljava/lang/String;

.field private mode:I

.field private name:Ljava/lang/String;

.field private paxGNU1XSparse:Z

.field private paxGNUSparse:Z

.field private final preserveAbsolutePath:Z

.field private realSize:J

.field private size:J

.field private sparseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;"
        }
    .end annotation
.end field

.field private starSparse:Z

.field private userId:J

.field private userName:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->EMPTY_TAR_ARCHIVE_ENTRY_ARRAY:[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 221
    const-string v0, "-?\\d{1,19}(?:\\.\\d{1,19})?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->PAX_EXTENDED_HEADER_FILE_TIMES_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 473
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 337
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    .line 340
    const-string v1, "ustar\u0000"

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    .line 343
    const-string v1, "00"

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    .line 349
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    .line 384
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->extraPaxHeaders:Ljava/util/Map;

    .line 386
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->dataOffset:J

    .line 491
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "normalizedName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/nio/file/Path;

    .line 493
    sget-object v3, Lorg/apache/commons/compress/utils/IOUtils;->EMPTY_LINK_OPTIONS:[Ljava/nio/file/LinkOption;

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkOptions:[Ljava/nio/file/LinkOption;

    .line 495
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/nio/file/Path;

    new-array v4, v1, [Ljava/nio/file/LinkOption;

    invoke-direct {p0, v3, v2, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->readFileMode(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    goto :goto_0

    .line 496
    :catch_0
    move-exception v3

    .line 499
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 500
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    .line 503
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    .line 505
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/nio/file/Path;

    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-direct {p0, v0, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->readOsSpecificProperties(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 510
    goto :goto_1

    .line 506
    :catch_1
    move-exception v0

    .line 509
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mTime:Ljava/nio/file/attribute/FileTime;

    .line 511
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->preserveAbsolutePath:Z

    .line 512
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 600
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;Z)V

    .line 601
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "linkFlag"    # B

    .line 637
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;BZ)V

    .line 638
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "linkFlag"    # B
    .param p3, "preserveAbsolutePath"    # Z

    .line 654
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/lang/String;Z)V

    .line 655
    iput-byte p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    .line 656
    const/16 v0, 0x4c

    if-ne p2, v0, :cond_0

    .line 657
    const-string v0, "ustar "

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    .line 658
    const-string v0, " \u0000"

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    .line 660
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "preserveAbsolutePath"    # Z

    .line 616
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Z)V

    .line 617
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 618
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 619
    .local v0, "isDir":Z
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 620
    if-eqz v0, :cond_0

    const/16 v1, 0x41ed

    goto :goto_0

    :cond_0
    const v1, 0x81a4

    :goto_0
    iput v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    .line 621
    if-eqz v0, :cond_1

    const/16 v1, 0x35

    goto :goto_1

    :cond_1
    const/16 v1, 0x30

    :goto_1
    iput-byte v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    .line 622
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mTime:Ljava/nio/file/attribute/FileTime;

    .line 623
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    .line 624
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 2
    .param p1, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)V

    .line 565
    return-void
.end method

.method public varargs constructor <init>(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)V
    .locals 4
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "linkOptions"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 337
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    .line 340
    const-string v1, "ustar\u0000"

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    .line 343
    const-string v1, "00"

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    .line 349
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    .line 384
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->extraPaxHeaders:Ljava/util/Map;

    .line 386
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->dataOffset:J

    .line 581
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 582
    .local v2, "normalizedName":Ljava/lang/String;
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/nio/file/Path;

    .line 583
    if-nez p3, :cond_0

    sget-object v3, Lorg/apache/commons/compress/utils/IOUtils;->EMPTY_LINK_OPTIONS:[Ljava/nio/file/LinkOption;

    goto :goto_0

    :cond_0
    move-object v3, p3

    :goto_0
    iput-object v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkOptions:[Ljava/nio/file/LinkOption;

    .line 584
    invoke-direct {p0, p1, v2, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->readFileMode(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)V

    .line 585
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    .line 586
    new-array v0, v1, [Ljava/nio/file/LinkOption;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->readOsSpecificProperties(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V

    .line 587
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->preserveAbsolutePath:Z

    .line 588
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;[BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V
    .locals 7
    .param p2, "headerBuf"    # [B
    .param p3, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .param p4, "lenient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Lorg/apache/commons/compress/archivers/zip/ZipEncoding;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    .local p1, "globalPaxHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Z)V

    .line 529
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseTarHeader(Ljava/util/Map;[BLorg/apache/commons/compress/archivers/zip/ZipEncoding;ZZ)V

    .line 530
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;[BLorg/apache/commons/compress/archivers/zip/ZipEncoding;ZJ)V
    .locals 0
    .param p2, "headerBuf"    # [B
    .param p3, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .param p4, "lenient"    # Z
    .param p5, "dataOffset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Lorg/apache/commons/compress/archivers/zip/ZipEncoding;",
            "ZJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    .local p1, "globalPaxHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/util/Map;[BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V

    .line 548
    invoke-virtual {p0, p5, p6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setDataOffset(J)V

    .line 549
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .param p1, "preserveAbsolutePath"    # Z

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 337
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    .line 340
    const-string v1, "ustar\u0000"

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    .line 343
    const-string v1, "00"

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    .line 349
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    .line 384
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->extraPaxHeaders:Ljava/util/Map;

    .line 386
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->dataOffset:J

    .line 392
    const-string v1, "user.name"

    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "user":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f

    if-le v1, v2, :cond_0

    .line 394
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 396
    :cond_0
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    .line 397
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/nio/file/Path;

    .line 398
    sget-object v1, Lorg/apache/commons/compress/utils/IOUtils;->EMPTY_LINK_OPTIONS:[Ljava/nio/file/LinkOption;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkOptions:[Ljava/nio/file/LinkOption;

    .line 399
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->preserveAbsolutePath:Z

    .line 400
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "headerBuf"    # [B

    .line 409
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Z)V

    .line 410
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseTarHeader([B)V

    .line 411
    return-void
.end method

.method public constructor <init>([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;)V
    .locals 1
    .param p1, "headerBuf"    # [B
    .param p2, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V

    .line 424
    return-void
.end method

.method public constructor <init>([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V
    .locals 1
    .param p1, "headerBuf"    # [B
    .param p2, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .param p3, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/util/Map;[BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V

    .line 439
    return-void
.end method

.method public constructor <init>([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;ZJ)V
    .locals 0
    .param p1, "headerBuf"    # [B
    .param p2, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .param p3, "lenient"    # Z
    .param p4, "dataOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V

    .line 455
    invoke-virtual {p0, p4, p5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setDataOffset(J)V

    .line 456
    return-void
.end method

.method private evaluateType(Ljava/util/Map;[B)I
    .locals 3
    .param p2, "header"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)I"
        }
    .end annotation

    .line 718
    .local p1, "globalPaxHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ustar "

    const/16 v1, 0x101

    const/4 v2, 0x6

    invoke-static {v0, p2, v1, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    const/4 v0, 0x2

    return v0

    .line 721
    :cond_0
    const-string v0, "ustar\u0000"

    invoke-static {v0, p2, v1, v2}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 722
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isXstar(Ljava/util/Map;[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    const/4 v0, 0x4

    return v0

    .line 725
    :cond_1
    const/4 v0, 0x3

    return v0

    .line 727
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static fileTimeFromOptionalSeconds(J)Ljava/nio/file/attribute/FileTime;
    .locals 2
    .param p0, "seconds"    # J

    .line 224
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/attribute/FileTimes;->fromUnixTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private fill(BI[BI)I
    .locals 2
    .param p1, "value"    # B
    .param p2, "offset"    # I
    .param p3, "outbuf"    # [B
    .param p4, "length"    # I

    .line 731
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 732
    add-int v1, p2, v0

    aput-byte p1, p3, v1

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 734
    .end local v0    # "i":I
    :cond_0
    add-int v0, p2, p4

    return v0
.end method

.method private fill(II[BI)I
    .locals 1
    .param p1, "value"    # I
    .param p2, "offset"    # I
    .param p3, "outbuf"    # [B
    .param p4, "length"    # I

    .line 738
    int-to-byte v0, p1

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fill(BI[BI)I

    move-result v0

    return v0
.end method

.method private isInvalidPrefix([B)Z
    .locals 4
    .param p1, "header"    # [B

    .line 1253
    const/16 v0, 0x1db

    aget-byte v1, p1, v0

    if-eqz v1, :cond_1

    .line 1255
    const/16 v1, 0x9c

    aget-byte v1, p1, v1

    const/16 v2, 0x4d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    .line 1256
    return v3

    .line 1261
    :cond_0
    const/16 v1, 0x1d0

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    aget-byte v0, p1, v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 1262
    return v3

    .line 1265
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isInvalidXtarTime([BII)Z
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1270
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3

    .line 1271
    add-int/lit8 v0, p3, -0x1

    .line 1272
    .local v0, "lastIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_2

    .line 1273
    add-int v3, p2, v1

    aget-byte v3, p1, v3

    .line 1274
    .local v3, "b":B
    const/16 v4, 0x30

    if-lt v3, v4, :cond_1

    const/16 v4, 0x37

    if-le v3, v4, :cond_0

    goto :goto_1

    .line 1272
    .end local v3    # "b":B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1275
    .restart local v3    # "b":B
    :cond_1
    :goto_1
    return v2

    .line 1279
    .end local v1    # "i":I
    .end local v3    # "b":B
    :cond_2
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    .line 1280
    .local v1, "b":B
    const/16 v3, 0x20

    if-eq v1, v3, :cond_3

    if-eqz v1, :cond_3

    .line 1281
    return v2

    .line 1284
    .end local v0    # "lastIndex":I
    .end local v1    # "b":B
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private isXstar(Ljava/util/Map;[B)Z
    .locals 5
    .param p2, "header"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)Z"
        }
    .end annotation

    .line 1385
    .local p1, "globalPaxHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v0, 0x1fc

    const/4 v1, 0x4

    const-string v2, "tar\u0000"

    invoke-static {v2, p2, v0, v1}, Lorg/apache/commons/compress/utils/ArchiveUtils;->matchAsciiBuffer(Ljava/lang/String;[BII)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1386
    return v1

    .line 1394
    :cond_0
    const-string v0, "SCHILY.archtype"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1395
    .local v0, "archType":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1396
    const-string v3, "xustar"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "exustar"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    .line 1399
    :cond_3
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isInvalidPrefix([B)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1400
    return v2

    .line 1402
    :cond_4
    const/16 v3, 0x1dc

    const/16 v4, 0xc

    invoke-direct {p0, p2, v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isInvalidXtarTime([BII)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1403
    return v2

    .line 1405
    :cond_5
    const/16 v3, 0x1e8

    invoke-direct {p0, p2, v3, v4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isInvalidXtarTime([BII)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1406
    return v2

    .line 1408
    :cond_6
    return v1
.end method

.method static synthetic lambda$getOrderedSparseHeaders$0(Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;)Z
    .locals 4
    .param p0, "s"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    .line 1003
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

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

.method private static normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "preserveAbsolutePath"    # Z

    .line 231
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 232
    invoke-static {}, Lorg/apache/commons/lang3/SystemProperties;->getOsName()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "property":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 234
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "osName":Ljava/lang/String;
    const-string v3, "windows"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x3a

    if-eqz v3, :cond_3

    .line 240
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x2

    if-le v3, v5, :cond_4

    .line 241
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 242
    .local v3, "ch1":C
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 244
    .local v6, "ch2":C
    if-ne v6, v4, :cond_2

    const/16 v4, 0x61

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7a

    if-le v3, v4, :cond_1

    :cond_0
    const/16 v4, 0x41

    if-lt v3, v4, :cond_2

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_2

    .line 245
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 247
    .end local v3    # "ch1":C
    .end local v6    # "ch2":C
    :cond_2
    goto :goto_0

    .line 248
    :cond_3
    const-string v3, "netware"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 249
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 250
    .local v3, "colon":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 251
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 257
    .end local v1    # "property":Ljava/lang/String;
    .end local v2    # "osName":Ljava/lang/String;
    .end local v3    # "colon":I
    :cond_4
    :goto_0
    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 262
    :goto_1
    if-nez p1, :cond_5

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 263
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 265
    :cond_5
    return-object p0
.end method

.method private static parseInstantFromDecimalSeconds(Ljava/lang/String;)Ljava/time/Instant;
    .locals 10
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->PAX_EXTENDED_HEADER_FILE_TIMES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "\'"

    const-string v2, "Corrupted PAX header. Time field value is invalid \'"

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, "epochSeconds":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v3

    .line 276
    .local v3, "seconds":J
    sget-object v5, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v0, v5}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v5

    .line 278
    .local v5, "nanos":J
    :try_start_0
    invoke-static {v3, v4, v5, v6}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v1
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 279
    :catch_0
    move-exception v7

    goto :goto_0

    :catch_1
    move-exception v7

    .line 282
    .local v7, "e":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 271
    .end local v0    # "epochSeconds":Ljava/math/BigDecimal;
    .end local v3    # "seconds":J
    .end local v5    # "nanos":J
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseOctalOrBinary([BIIZ)J
    .locals 3
    .param p1, "header"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "lenient"    # Z

    .line 1412
    if-eqz p4, :cond_0

    .line 1414
    :try_start_0
    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 1415
    :catch_0
    move-exception v0

    .line 1416
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-wide/16 v1, -0x1

    return-wide v1

    .line 1419
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method private parseTarHeader(Ljava/util/Map;[BLorg/apache/commons/compress/archivers/zip/ZipEncoding;ZZ)V
    .locals 3
    .param p2, "header"    # [B
    .param p3, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .param p4, "oldStyle"    # Z
    .param p5, "lenient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Lorg/apache/commons/compress/archivers/zip/ZipEncoding;",
            "ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1461
    .local p1, "globalPaxHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseTarHeaderUnwrapped(Ljava/util/Map;[BLorg/apache/commons/compress/archivers/zip/ZipEncoding;ZZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1464
    nop

    .line 1465
    return-void

    .line 1462
    :catch_0
    move-exception v0

    .line 1463
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Corrupted TAR archive."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private parseTarHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;ZZ)V
    .locals 6
    .param p1, "header"    # [B
    .param p2, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .param p3, "oldStyle"    # Z
    .param p4, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1455
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseTarHeader(Ljava/util/Map;[BLorg/apache/commons/compress/archivers/zip/ZipEncoding;ZZ)V

    .line 1456
    return-void
.end method

.method private parseTarHeaderUnwrapped(Ljava/util/Map;[BLorg/apache/commons/compress/archivers/zip/ZipEncoding;ZZ)V
    .locals 8
    .param p2, "header"    # [B
    .param p3, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .param p4, "oldStyle"    # Z
    .param p5, "lenient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Lorg/apache/commons/compress/archivers/zip/ZipEncoding;",
            "ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1469
    .local p1, "globalPaxHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1470
    .local v0, "offset":I
    const/16 v1, 0x64

    if-eqz p4, :cond_0

    invoke-static {p2, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {p2, v0, v1, p3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 1471
    add-int/2addr v0, v1

    .line 1472
    const/16 v2, 0x8

    invoke-direct {p0, p2, v0, v2, p5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseOctalOrBinary([BIIZ)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    .line 1473
    add-int/2addr v0, v2

    .line 1474
    invoke-direct {p0, p2, v0, v2, p5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseOctalOrBinary([BIIZ)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-long v3, v3

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    .line 1475
    add-int/2addr v0, v2

    .line 1476
    invoke-direct {p0, p2, v0, v2, p5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseOctalOrBinary([BIIZ)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-long v3, v3

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    .line 1477
    add-int/2addr v0, v2

    .line 1478
    const/16 v3, 0xc

    invoke-static {p2, v0, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctalOrBinary([BII)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    .line 1479
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_b

    .line 1482
    add-int/2addr v0, v3

    .line 1483
    invoke-direct {p0, p2, v0, v3, p5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseOctalOrBinary([BIIZ)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/io/file/attribute/FileTimes;->fromUnixTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mTime:Ljava/nio/file/attribute/FileTime;

    .line 1484
    add-int/2addr v0, v3

    .line 1485
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->verifyCheckSum([B)Z

    move-result v4

    iput-boolean v4, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->checkSumOK:Z

    .line 1486
    add-int/2addr v0, v2

    .line 1487
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "offset":I
    .local v4, "offset":I
    aget-byte v0, p2, v0

    iput-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    .line 1488
    if-eqz p4, :cond_1

    invoke-static {p2, v4, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {p2, v4, v1, p3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    .line 1489
    add-int/2addr v4, v1

    .line 1490
    const/4 v0, 0x6

    invoke-static {p2, v4, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    .line 1491
    add-int/2addr v4, v0

    .line 1492
    const/4 v0, 0x2

    invoke-static {p2, v4, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    .line 1493
    add-int/2addr v4, v0

    .line 1494
    const/16 v0, 0x20

    if-eqz p4, :cond_2

    invoke-static {p2, v4, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-static {p2, v4, v0, p3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    .line 1495
    add-int/2addr v4, v0

    .line 1496
    if-eqz p4, :cond_3

    invoke-static {p2, v4, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    invoke-static {p2, v4, v0, p3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    .line 1497
    add-int/2addr v4, v0

    .line 1498
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x33

    if-eq v0, v1, :cond_5

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x34

    if-ne v0, v1, :cond_4

    goto :goto_4

    .line 1504
    :cond_4
    add-int/lit8 v4, v4, 0x10

    goto :goto_5

    .line 1499
    :cond_5
    :goto_4
    invoke-direct {p0, p2, v4, v2, p5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseOctalOrBinary([BIIZ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    .line 1500
    add-int/2addr v4, v2

    .line 1501
    invoke-direct {p0, p2, v4, v2, p5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseOctalOrBinary([BIIZ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    .line 1502
    add-int/2addr v4, v2

    .line 1506
    :goto_5
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->evaluateType(Ljava/util/Map;[B)I

    move-result v0

    .line 1507
    .local v0, "type":I
    const-string v1, "/"

    packed-switch v0, :pswitch_data_0

    .line 1539
    :pswitch_0
    const/16 v2, 0x9b

    if-eqz p4, :cond_8

    invoke-static {p2, v4, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 1525
    :pswitch_1
    const/16 v2, 0x83

    if-eqz p4, :cond_6

    invoke-static {p2, v4, v2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BII)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 1526
    :cond_6
    invoke-static {p2, v4, v2, p3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v5

    :goto_6
    nop

    .line 1527
    .local v5, "xstarPrefix":Ljava/lang/String;
    add-int/2addr v4, v2

    .line 1528
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 1531
    :cond_7
    invoke-direct {p0, p2, v4, v3, p5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseOctalOrBinary([BIIZ)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fileTimeFromOptionalSeconds(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->aTime:Ljava/nio/file/attribute/FileTime;

    .line 1532
    add-int/2addr v4, v3

    .line 1533
    invoke-direct {p0, p2, v4, v3, p5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseOctalOrBinary([BIIZ)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fileTimeFromOptionalSeconds(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->cTime:Ljava/nio/file/attribute/FileTime;

    .line 1534
    add-int/2addr v4, v3

    .line 1535
    goto/16 :goto_8

    .line 1509
    .end local v5    # "xstarPrefix":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0, p2, v4, v3, p5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseOctalOrBinary([BIIZ)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fileTimeFromOptionalSeconds(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->aTime:Ljava/nio/file/attribute/FileTime;

    .line 1510
    add-int/2addr v4, v3

    .line 1511
    invoke-direct {p0, p2, v4, v3, p5}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseOctalOrBinary([BIIZ)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fileTimeFromOptionalSeconds(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->cTime:Ljava/nio/file/attribute/FileTime;

    .line 1512
    add-int/2addr v4, v3

    .line 1513
    add-int/2addr v4, v3

    .line 1514
    const/4 v1, 0x4

    add-int/2addr v4, v1

    .line 1515
    add-int/lit8 v4, v4, 0x1

    .line 1516
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p2, v4, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->readSparseStructs([BII)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->sparseHeaders:Ljava/util/List;

    .line 1517
    add-int/lit8 v4, v4, 0x60

    .line 1518
    invoke-static {p2, v4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseBoolean([BI)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isExtended:Z

    .line 1519
    add-int/lit8 v4, v4, 0x1

    .line 1520
    invoke-static {p2, v4, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->realSize:J

    .line 1521
    add-int/2addr v4, v3

    .line 1522
    goto :goto_8

    .line 1539
    :cond_8
    invoke-static {p2, v4, v2, p3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object v3

    .line 1540
    .local v3, "prefix":Ljava/lang/String;
    :goto_7
    add-int/2addr v4, v2

    .line 1543
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 1546
    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 1551
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_a
    :goto_8
    return-void

    .line 1480
    .end local v4    # "offset":I
    .local v0, "offset":I
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "broken archive, entry with negative size"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processPaxHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1561
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->extraPaxHeaders:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->processPaxHeader(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1562
    return-void
.end method

.method private processPaxHeader(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1584
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "linkpath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "SCHILY.filetype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "LIBARCHIVE.creationtime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "uname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "mtime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "gname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "ctime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_7
    const-string v0, "atime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_8
    const-string v0, "size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_9
    const-string v0, "path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_a
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_b
    const-string v0, "gid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_c
    const-string v0, "GNU.sparse.size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_d
    const-string v0, "GNU.sparse.realsize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_e
    const-string v0, "SCHILY.devminor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_f
    const-string v0, "SCHILY.devmajor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1648
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->extraPaxHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1643
    :pswitch_0
    const-string v0, "sparse"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1644
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fillStarSparseData(Ljava/util/Map;)V

    goto/16 :goto_2

    .line 1640
    :pswitch_1
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fillGNUSparse1xData(Ljava/util/Map;)V

    .line 1641
    goto/16 :goto_2

    .line 1637
    :pswitch_2
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fillGNUSparse0xData(Ljava/util/Map;)V

    .line 1638
    goto/16 :goto_2

    .line 1630
    :pswitch_3
    invoke-static {p2}, Lorg/apache/commons/compress/utils/ParsingUtils;->parseIntValue(Ljava/lang/String;)I

    move-result v0

    .line 1631
    .local v0, "devMajor":I
    if-ltz v0, :cond_1

    .line 1634
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setDevMajor(I)V

    .line 1635
    goto/16 :goto_2

    .line 1632
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Corrupted TAR archive. Dev-Major is negative"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1623
    .end local v0    # "devMajor":I
    :pswitch_4
    invoke-static {p2}, Lorg/apache/commons/compress/utils/ParsingUtils;->parseIntValue(Ljava/lang/String;)I

    move-result v0

    .line 1624
    .local v0, "devMinor":I
    if-ltz v0, :cond_2

    .line 1627
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setDevMinor(I)V

    .line 1628
    goto/16 :goto_2

    .line 1625
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Corrupted TAR archive. Dev-Minor is negative"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1620
    .end local v0    # "devMinor":I
    :pswitch_5
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseInstantFromDecimalSeconds(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setCreationTime(Ljava/nio/file/attribute/FileTime;)V

    .line 1621
    goto :goto_2

    .line 1617
    :pswitch_6
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseInstantFromDecimalSeconds(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setStatusChangeTime(Ljava/nio/file/attribute/FileTime;)V

    .line 1618
    goto :goto_2

    .line 1614
    :pswitch_7
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseInstantFromDecimalSeconds(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLastAccessTime(Ljava/nio/file/attribute/FileTime;)V

    .line 1615
    goto :goto_2

    .line 1611
    :pswitch_8
    invoke-static {p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseInstantFromDecimalSeconds(Ljava/lang/String;)Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)V

    .line 1612
    goto :goto_2

    .line 1604
    :pswitch_9
    invoke-static {p2}, Lorg/apache/commons/compress/utils/ParsingUtils;->parseLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 1605
    .local v0, "size":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 1608
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setSize(J)V

    .line 1609
    goto :goto_2

    .line 1606
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Corrupted TAR archive. Entry size is negative"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1601
    .end local v0    # "size":J
    :pswitch_a
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserName(Ljava/lang/String;)V

    .line 1602
    goto :goto_2

    .line 1598
    :pswitch_b
    invoke-static {p2}, Lorg/apache/commons/compress/utils/ParsingUtils;->parseLongValue(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserId(J)V

    .line 1599
    goto :goto_2

    .line 1595
    :pswitch_c
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupName(Ljava/lang/String;)V

    .line 1596
    goto :goto_2

    .line 1592
    :pswitch_d
    invoke-static {p2}, Lorg/apache/commons/compress/utils/ParsingUtils;->parseLongValue(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupId(J)V

    .line 1593
    goto :goto_2

    .line 1589
    :pswitch_e
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLinkName(Ljava/lang/String;)V

    .line 1590
    goto :goto_2

    .line 1586
    :pswitch_f
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setName(Ljava/lang/String;)V

    .line 1587
    nop

    .line 1650
    :cond_4
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7240fdec -> :sswitch_f
        -0x723d4bf0 -> :sswitch_e
        -0x108a42f3 -> :sswitch_d
        -0x98f3691 -> :sswitch_c
        0x18fc2 -> :sswitch_b
        0x1c450 -> :sswitch_a
        0x346425 -> :sswitch_9
        0x35e001 -> :sswitch_8
        0x58d3aae -> :sswitch_7
        0x5a969b0 -> :sswitch_6
        0x5deef72 -> :sswitch_5
        0x63654ba -> :sswitch_4
        0x6a43880 -> :sswitch_3
        0x122211dd -> :sswitch_2
        0x1fa1f206 -> :sswitch_1
        0x473a871f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private varargs readFileMode(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)V
    .locals 3
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "normalizedName"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1653
    invoke-static {p1, p3}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1654
    const/16 v0, 0x41ed

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    .line 1655
    const/16 v0, 0x35

    iput-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    .line 1657
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1658
    .local v0, "nameLength":I
    if-eqz v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 1661
    :cond_0
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    goto :goto_1

    .line 1659
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 1663
    .end local v0    # "nameLength":I
    :goto_1
    goto :goto_2

    .line 1664
    :cond_2
    const v0, 0x81a4

    iput v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    .line 1665
    const/16 v0, 0x30

    iput-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    .line 1666
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 1667
    invoke-static {p1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    .line 1669
    :goto_2
    return-void
.end method

.method private varargs readOsSpecificProperties(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V
    .locals 4
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1672
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->supportedFileAttributeViews()Ljava/util/Set;

    move-result-object v0

    .line 1673
    .local v0, "availableAttributeViews":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "posix"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1674
    const-class v1, Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-static {p1, v1, p2}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    check-cast v1, Ljava/nio/file/attribute/PosixFileAttributes;

    .line 1675
    .local v1, "posixFileAttributes":Ljava/nio/file/attribute/PosixFileAttributes;
    invoke-interface {v1}, Ljava/nio/file/attribute/PosixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)V

    .line 1676
    invoke-interface {v1}, Ljava/nio/file/attribute/PosixFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setCreationTime(Ljava/nio/file/attribute/FileTime;)V

    .line 1677
    invoke-interface {v1}, Ljava/nio/file/attribute/PosixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLastAccessTime(Ljava/nio/file/attribute/FileTime;)V

    .line 1678
    invoke-interface {v1}, Ljava/nio/file/attribute/PosixFileAttributes;->owner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/attribute/UserPrincipal;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    .line 1679
    invoke-interface {v1}, Ljava/nio/file/attribute/PosixFileAttributes;->group()Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/attribute/GroupPrincipal;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    .line 1680
    const-string v2, "unix"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1681
    const-string v2, "unix:uid"

    invoke-static {p1, v2, p2}, Ljava/nio/file/Files;->getAttribute(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    .line 1682
    const-string v2, "unix:gid"

    invoke-static {p1, v2, p2}, Ljava/nio/file/Files;->getAttribute(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    .line 1684
    :try_start_0
    const-string v2, "unix:ctime"

    invoke-static {p1, v2, p2}, Ljava/nio/file/Files;->getAttribute(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/attribute/FileTime;

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setStatusChangeTime(Ljava/nio/file/attribute/FileTime;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1687
    goto :goto_0

    .line 1685
    :catch_0
    move-exception v2

    .line 1689
    .end local v1    # "posixFileAttributes":Ljava/nio/file/attribute/PosixFileAttributes;
    :cond_0
    :goto_0
    goto :goto_2

    .line 1690
    :cond_1
    const-string v1, "dos"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1691
    const-class v1, Ljava/nio/file/attribute/DosFileAttributes;

    invoke-static {p1, v1, p2}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    check-cast v1, Ljava/nio/file/attribute/DosFileAttributes;

    .line 1692
    .local v1, "dosFileAttributes":Ljava/nio/file/attribute/DosFileAttributes;
    invoke-interface {v1}, Ljava/nio/file/attribute/DosFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)V

    .line 1693
    invoke-interface {v1}, Ljava/nio/file/attribute/DosFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setCreationTime(Ljava/nio/file/attribute/FileTime;)V

    .line 1694
    invoke-interface {v1}, Ljava/nio/file/attribute/DosFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLastAccessTime(Ljava/nio/file/attribute/FileTime;)V

    .line 1695
    .end local v1    # "dosFileAttributes":Ljava/nio/file/attribute/DosFileAttributes;
    goto :goto_1

    .line 1696
    :cond_2
    const-class v1, Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-static {p1, v1, p2}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    .line 1697
    .local v1, "basicFileAttributes":Ljava/nio/file/attribute/BasicFileAttributes;
    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)V

    .line 1698
    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setCreationTime(Ljava/nio/file/attribute/FileTime;)V

    .line 1699
    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLastAccessTime(Ljava/nio/file/attribute/FileTime;)V

    .line 1701
    .end local v1    # "basicFileAttributes":Ljava/nio/file/attribute/BasicFileAttributes;
    :goto_1
    invoke-static {p1, p2}, Ljava/nio/file/Files;->getOwner(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/attribute/UserPrincipal;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    .line 1703
    :goto_2
    return-void
.end method

.method private writeEntryHeaderField(J[BIIZ)I
    .locals 5
    .param p1, "value"    # J
    .param p3, "outbuf"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .param p6, "starMode"    # Z

    .line 2025
    if-nez p6, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    add-int/lit8 v2, p5, -0x1

    mul-int/lit8 v2, v2, 0x3

    const-wide/16 v3, 0x1

    shl-long v2, v3, v2

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    .line 2029
    :cond_0
    invoke-static {v0, v1, p3, p4, p5}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatLongOctalBytes(J[BII)I

    move-result v0

    return v0

    .line 2031
    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatLongOctalOrBinaryBytes(J[BII)I

    move-result v0

    return v0
.end method

.method private writeEntryHeaderOptionalTimeField(Ljava/nio/file/attribute/FileTime;I[BI)I
    .locals 7
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;
    .param p2, "offset"    # I
    .param p3, "outbuf"    # [B
    .param p4, "fieldLength"    # I

    .line 2035
    if-eqz p1, :cond_0

    .line 2036
    invoke-static {p1}, Lorg/apache/commons/compress/utils/TimeUtils;->toUnixTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p3

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result p2

    goto :goto_0

    .line 2038
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fill(II[BI)I

    move-result p2

    .line 2040
    :goto_0
    return p2
.end method


# virtual methods
.method public addPaxHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 672
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->processPaxHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    nop

    .line 676
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid input"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearExtraPaxHeaders()V
    .locals 1

    .line 684
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->extraPaxHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 685
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "it"    # Ljava/lang/Object;

    .line 695
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 698
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->equals(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Z

    move-result v0

    return v0

    .line 696
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Z
    .locals 2
    .param p1, "it"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 708
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method fillGNUSparse0xData(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 742
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->paxGNUSparse:Z

    .line 743
    const-string v0, "GNU.sparse.size"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/compress/utils/ParsingUtils;->parseIntValue(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->realSize:J

    .line 744
    const-string v0, "GNU.sparse.name"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 748
    :cond_0
    return-void
.end method

.method fillGNUSparse1xData(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 751
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->paxGNUSparse:Z

    .line 752
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->paxGNU1XSparse:Z

    .line 753
    const-string v0, "GNU.sparse.name"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 756
    :cond_0
    const-string v0, "GNU.sparse.realsize"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 757
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/compress/utils/ParsingUtils;->parseIntValue(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->realSize:J

    .line 759
    :cond_1
    return-void
.end method

.method fillStarSparseData(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 762
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->starSparse:Z

    .line 763
    const-string v0, "SCHILY.realsize"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/compress/utils/ParsingUtils;->parseLongValue(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->realSize:J

    .line 766
    :cond_0
    return-void
.end method

.method public getCreationTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 775
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->birthTime:Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public getDataOffset()J
    .locals 2

    .line 785
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->dataOffset:J

    return-wide v0
.end method

.method public getDevMajor()I
    .locals 1

    .line 795
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    return v0
.end method

.method public getDevMinor()I
    .locals 1

    .line 805
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    return v0
.end method

.method public getDirectoryEntries()[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;
    .locals 5

    .line 818
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/nio/file/Path;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 821
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 822
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/nio/file/Path;

    invoke-static {v1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    .local v1, "dirStream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_1
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    .line 824
    .local v3, "p":Ljava/nio/file/Path;
    new-instance v4, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-direct {v4, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;-><init>(Ljava/nio/file/Path;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 825
    nop

    .end local v3    # "p":Ljava/nio/file/Path;
    goto :goto_0

    .line 826
    :cond_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 828
    .end local v1    # "dirStream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_2
    nop

    .line 829
    sget-object v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->EMPTY_TAR_ARCHIVE_ENTRY_ARRAY:[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-object v1

    .line 822
    .restart local v1    # "dirStream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;>;"
    :cond_3
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 826
    .end local v1    # "dirStream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;>;"
    :catch_0
    move-exception v1

    .line 827
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->EMPTY_TAR_ARCHIVE_ENTRY_ARRAY:[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-object v2

    .line 819
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;>;"
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    :goto_2
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->EMPTY_TAR_ARCHIVE_ENTRY_ARRAY:[Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    return-object v0
.end method

.method public getExtraPaxHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 840
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->extraPaxHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExtraPaxHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 850
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->extraPaxHeaders:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 863
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/nio/file/Path;

    if-nez v0, :cond_0

    .line 864
    const/4 v0, 0x0

    return-object v0

    .line 866
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 877
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 886
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAccessTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 896
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->aTime:Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 1

    .line 907
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getModTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getLastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 917
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mTime:Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public getLinkFlag()B
    .locals 1

    .line 927
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    return v0
.end method

.method public getLinkName()Ljava/lang/String;
    .locals 1

    .line 936
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    return-object v0
.end method

.method public getLongGroupId()J
    .locals 2

    .line 946
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    return-wide v0
.end method

.method public getLongUserId()J
    .locals 2

    .line 956
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    return-wide v0
.end method

.method public getModTime()Ljava/util/Date;
    .locals 2

    .line 975
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mTime:Ljava/nio/file/attribute/FileTime;

    .line 976
    .local v0, "fileTime":Ljava/nio/file/attribute/FileTime;
    invoke-static {v0}, Lorg/apache/commons/io/file/attribute/FileTimes;->toDate(Ljava/nio/file/attribute/FileTime;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getMode()I
    .locals 1

    .line 965
    iget v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 989
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderedSparseHeaders()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1000
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->sparseHeaders:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->sparseHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 1003
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->sparseHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry$$ExternalSyntheticLambda1;-><init>()V

    .line 1004
    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1005
    .local v0, "orderedAndFiltered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1006
    .local v1, "numberOfHeaders":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 1007
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    .line 1008
    .local v3, "str":Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v1, :cond_2

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v4

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    goto :goto_1

    .line 1009
    :cond_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Corrupted TAR archive. Sparse blocks for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " overlap each other."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1011
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v4

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    .line 1006
    .end local v3    # "str":Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1013
    .restart local v3    # "str":Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    :cond_3
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unreadable TAR archive. Offset and numbytes for sparse block in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " too large."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1016
    .end local v2    # "i":I
    .end local v3    # "str":Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1017
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    .line 1018
    .local v2, "last":Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v3

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getRealSize()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_5

    goto :goto_2

    .line 1019
    :cond_5
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Corrupted TAR archive. Sparse block extends beyond real size of the entry"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1022
    .end local v2    # "last":Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;
    :cond_6
    :goto_2
    return-object v0

    .line 1001
    .end local v0    # "orderedAndFiltered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    .end local v1    # "numberOfHeaders":I
    :cond_7
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 1

    .line 1036
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/nio/file/Path;

    return-object v0
.end method

.method public getRealSize()J
    .locals 2

    .line 1051
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isSparse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1052
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getSize()J

    move-result-wide v0

    return-wide v0

    .line 1054
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->realSize:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .line 1068
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    return-wide v0
.end method

.method public getSparseHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;"
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->sparseHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getStatusChangeTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 1088
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->cTime:Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public getUserId()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1099
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 1108
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1118
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBlockDevice()Z
    .locals 2

    .line 1128
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCharacterDevice()Z
    .locals 2

    .line 1138
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCheckSumOK()Z
    .locals 1

    .line 1149
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->checkSumOK:Z

    return v0
.end method

.method public isDescendent(Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;)Z
    .locals 2
    .param p1, "desc"    # Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;

    .line 1159
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 3

    .line 1169
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/nio/file/Path;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/nio/file/Path;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkOptions:[Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    return v0

    .line 1172
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x35

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 1173
    return v2

    .line 1175
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isPaxHeader()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGlobalPaxHeader()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isExtended()Z
    .locals 1

    .line 1184
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isExtended:Z

    return v0
.end method

.method public isFIFO()Z
    .locals 2

    .line 1194
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x36

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFile()Z
    .locals 3

    .line 1204
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/nio/file/Path;

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->file:Ljava/nio/file/Path;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkOptions:[Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    return v0

    .line 1207
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v2, 0x30

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 1210
    :cond_1
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v2, 0x35

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1208
    :cond_3
    :goto_1
    return v1
.end method

.method public isGNULongLinkEntry()Z
    .locals 2

    .line 1230
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGNULongNameEntry()Z
    .locals 2

    .line 1239
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGNUSparse()Z
    .locals 1

    .line 1248
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isOldGNUSparse()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isPaxGNUSparse()Z

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

.method public isGlobalPaxHeader()Z
    .locals 2

    .line 1221
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLink()Z
    .locals 2

    .line 1294
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOldGNUSparse()Z
    .locals 2

    .line 1304
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x53

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaxGNU1XSparse()Z
    .locals 1

    .line 1314
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->paxGNU1XSparse:Z

    return v0
.end method

.method public isPaxGNUSparse()Z
    .locals 1

    .line 1324
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->paxGNUSparse:Z

    return v0
.end method

.method public isPaxHeader()Z
    .locals 2

    .line 1335
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x78

    if-eq v0, v1, :cond_1

    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x58

    if-ne v0, v1, :cond_0

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

.method public isSparse()Z
    .locals 1

    .line 1345
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isGNUSparse()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->isStarSparse()Z

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

.method public isStarSparse()Z
    .locals 1

    .line 1355
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->starSparse:Z

    return v0
.end method

.method public isStreamContiguous()Z
    .locals 1

    .line 1365
    const/4 v0, 0x1

    return v0
.end method

.method public isSymbolicLink()Z
    .locals 2

    .line 1375
    iget-byte v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parseTarHeader([B)V
    .locals 4
    .param p1, "header"    # [B

    .line 1430
    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseTarHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1438
    goto :goto_0

    .line 1431
    :catch_0
    move-exception v0

    .line 1433
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    sget-object v1, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseTarHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;ZZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1437
    nop

    .line 1439
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    return-void

    .line 1434
    .restart local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1436
    .local v1, "ex2":Ljava/io/IOException;
    new-instance v2, Ljava/io/UncheckedIOException;

    invoke-direct {v2, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public parseTarHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;)V
    .locals 1
    .param p1, "header"    # [B
    .param p2, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1451
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->parseTarHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;ZZ)V

    .line 1452
    return-void
.end method

.method public setCreationTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 0
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 1712
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->birthTime:Ljava/nio/file/attribute/FileTime;

    .line 1713
    return-void
.end method

.method public setDataOffset(J)V
    .locals 2
    .param p1, "dataOffset"    # J

    .line 1722
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1725
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->dataOffset:J

    .line 1726
    return-void

    .line 1723
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The offset can not be smaller than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDevMajor(I)V
    .locals 3
    .param p1, "devNo"    # I

    .line 1736
    if-ltz p1, :cond_0

    .line 1739
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    .line 1740
    return-void

    .line 1737
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Major device number is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDevMinor(I)V
    .locals 3
    .param p1, "devNo"    # I

    .line 1750
    if-ltz p1, :cond_0

    .line 1753
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    .line 1754
    return-void

    .line 1751
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minor device number is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGroupId(I)V
    .locals 2
    .param p1, "groupId"    # I

    .line 1762
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupId(J)V

    .line 1763
    return-void
.end method

.method public setGroupId(J)V
    .locals 0
    .param p1, "groupId"    # J

    .line 1772
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    .line 1773
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .line 1781
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    .line 1782
    return-void
.end method

.method public setIds(II)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "groupId"    # I

    .line 1791
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserId(I)V

    .line 1792
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupId(I)V

    .line 1793
    return-void
.end method

.method public setLastAccessTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 0
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 1802
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->aTime:Ljava/nio/file/attribute/FileTime;

    .line 1803
    return-void
.end method

.method public setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 1
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 1812
    const-string v0, "time"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mTime:Ljava/nio/file/attribute/FileTime;

    .line 1813
    return-void
.end method

.method public setLinkName(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .line 1823
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    .line 1824
    return-void
.end method

.method public setModTime(J)V
    .locals 1
    .param p1, "time"    # J

    .line 1863
    invoke-static {p1, p2}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)V

    .line 1864
    return-void
.end method

.method public setModTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 0
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 1853
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)V

    .line 1854
    return-void
.end method

.method public setModTime(Ljava/util/Date;)V
    .locals 1
    .param p1, "time"    # Ljava/util/Date;

    .line 1842
    invoke-static {p1}, Lorg/apache/commons/io/file/attribute/FileTimes;->toFileTime(Ljava/util/Date;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)V

    .line 1843
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 1832
    iput p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    .line 1833
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1872
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->preserveAbsolutePath:Z

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->normalizeFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    .line 1873
    return-void
.end method

.method public setNames(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;

    .line 1882
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserName(Ljava/lang/String;)V

    .line 1883
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setGroupName(Ljava/lang/String;)V

    .line 1884
    return-void
.end method

.method public setSize(J)V
    .locals 3
    .param p1, "size"    # J

    .line 1893
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1896
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    .line 1897
    return-void

    .line 1894
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSparseHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;)V"
        }
    .end annotation

    .line 1906
    .local p1, "sparseHeaders":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;>;"
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->sparseHeaders:Ljava/util/List;

    .line 1907
    return-void
.end method

.method public setStatusChangeTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 0
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 1916
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->cTime:Ljava/nio/file/attribute/FileTime;

    .line 1917
    return-void
.end method

.method public setUserId(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1925
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->setUserId(J)V

    .line 1926
    return-void
.end method

.method public setUserId(J)V
    .locals 0
    .param p1, "userId"    # J

    .line 1935
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    .line 1936
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .line 1944
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    .line 1945
    return-void
.end method

.method updateEntryFromPaxHeaders(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1954
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1955
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3, p1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->processPaxHeader(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1956
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 1957
    :cond_0
    return-void
.end method

.method public writeEntryHeader([B)V
    .locals 3
    .param p1, "outbuf"    # [B

    .line 1969
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1977
    goto :goto_0

    .line 1970
    :catch_0
    move-exception v1

    .line 1972
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1976
    nop

    .line 1978
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_0
    return-void

    .line 1973
    .restart local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1975
    .local v0, "ex2":Ljava/io/IOException;
    new-instance v2, Ljava/io/UncheckedIOException;

    invoke-direct {v2, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public writeEntryHeader([BLorg/apache/commons/compress/archivers/zip/ZipEncoding;Z)V
    .locals 13
    .param p1, "outbuf"    # [B
    .param p2, "encoding"    # Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .param p3, "starMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1991
    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    const/4 v0, 0x0

    .line 1992
    .local v0, "offset":I
    iget-object v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->name:Ljava/lang/String;

    const/16 v10, 0x64

    invoke-static {v1, p1, v0, v10, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result v11

    .line 1993
    .end local v0    # "offset":I
    .local v11, "offset":I
    iget v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mode:I

    int-to-long v1, v0

    const/16 v5, 0x8

    move-object v0, p0

    move-object v3, p1

    move v4, v11

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v11

    .line 1994
    iget-wide v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userId:J

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v11

    .line 1995
    iget-wide v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupId:J

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v11

    .line 1996
    iget-wide v1, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->size:J

    const/16 v5, 0xc

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v11

    .line 1997
    iget-object v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->mTime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v0}, Lorg/apache/commons/compress/utils/TimeUtils;->toUnixTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v1

    move-object v0, p0

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v0

    .line 1998
    .end local v11    # "offset":I
    .restart local v0    # "offset":I
    move v11, v0

    .line 1999
    .local v11, "csOffset":I
    const/16 v1, 0x20

    const/16 v12, 0x8

    invoke-direct {p0, v1, v0, p1, v12}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fill(BI[BI)I

    move-result v0

    .line 2000
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "offset":I
    .local v2, "offset":I
    iget-byte v3, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkFlag:B

    aput-byte v3, v8, v0

    .line 2001
    iget-object v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->linkName:Ljava/lang/String;

    invoke-static {v0, p1, v2, v10, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result v0

    .line 2002
    .end local v2    # "offset":I
    .restart local v0    # "offset":I
    iget-object v2, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->magic:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-static {v2, p1, v0, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BII)I

    move-result v0

    .line 2003
    iget-object v2, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->version:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, p1, v0, v3}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BII)I

    move-result v0

    .line 2004
    iget-object v2, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->userName:Ljava/lang/String;

    invoke-static {v2, p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result v0

    .line 2005
    iget-object v2, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->groupName:Ljava/lang/String;

    invoke-static {v2, p1, v0, v1, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result v10

    .line 2006
    .end local v0    # "offset":I
    .local v10, "offset":I
    iget v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMajor:I

    int-to-long v1, v0

    const/16 v5, 0x8

    move-object v0, p0

    move-object v3, p1

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v10

    .line 2007
    iget v0, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->devMinor:I

    int-to-long v1, v0

    move-object v0, p0

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderField(J[BIIZ)I

    move-result v0

    .line 2008
    .end local v10    # "offset":I
    .restart local v0    # "offset":I
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 2010
    const/16 v2, 0x83

    invoke-direct {p0, v1, v0, p1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fill(II[BI)I

    move-result v0

    .line 2011
    iget-object v2, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->aTime:Ljava/nio/file/attribute/FileTime;

    const/16 v3, 0xc

    invoke-direct {p0, v2, v0, p1, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderOptionalTimeField(Ljava/nio/file/attribute/FileTime;I[BI)I

    move-result v0

    .line 2012
    iget-object v2, v7, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->cTime:Ljava/nio/file/attribute/FileTime;

    invoke-direct {p0, v2, v0, p1, v3}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->writeEntryHeaderOptionalTimeField(Ljava/nio/file/attribute/FileTime;I[BI)I

    move-result v0

    .line 2014
    invoke-direct {p0, v1, v0, p1, v12}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fill(II[BI)I

    move-result v0

    .line 2017
    const/4 v2, 0x4

    invoke-direct {p0, v1, v0, p1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fill(II[BI)I

    move-result v0

    .line 2019
    :cond_0
    array-length v2, v8

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v0, p1, v2}, Lorg/apache/commons/compress/archivers/tar/TarArchiveEntry;->fill(II[BI)I

    move-result v0

    .line 2020
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->computeCheckSum([B)J

    move-result-wide v1

    .line 2021
    .local v1, "chk":J
    invoke-static {v1, v2, p1, v11, v12}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatCheckSumOctalBytes(J[BII)I

    .line 2022
    return-void
.end method
