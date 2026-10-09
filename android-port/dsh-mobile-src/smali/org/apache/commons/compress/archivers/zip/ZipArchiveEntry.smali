.class public Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
.super Ljava/util/zip/ZipEntry;
.source "ZipArchiveEntry.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;
.implements Lorg/apache/commons/compress/archivers/EntryStreamOffsets;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;,
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;,
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$ExtraFieldParsingMode;
    }
.end annotation


# static fields
.field public static final CRC_UNKNOWN:I = -0x1

.field static final EMPTY_ARRAY:[Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

.field static EMPTY_LINKED_LIST:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLATFORM_FAT:I = 0x0

.field public static final PLATFORM_UNIX:I = 0x3

.field private static final SHORT_MASK:I = 0xffff

.field private static final SHORT_SHIFT:I = 0x10

.field private static final ZIP_DIR_SEP:Ljava/lang/String; = "/"


# instance fields
.field private alignment:I

.field private commentSource:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

.field private dataOffset:J

.field private diskNumberStart:J

.field private externalAttributes:J

.field private final extraFieldFactory:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/apache/commons/compress/archivers/zip/ZipShort;",
            "Lorg/apache/commons/compress/archivers/zip/ZipExtraField;",
            ">;"
        }
    .end annotation
.end field

.field private extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

.field private generalPurposeBit:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

.field private internalAttributes:I

.field private isStreamContiguous:Z

.field private lastModifiedDateSet:Z

.field private localHeaderOffset:J

.field private method:I

.field private name:Ljava/lang/String;

.field private nameSource:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;

.field private platform:I

.field private rawFlag:I

.field private rawName:[B

.field private size:J

.field private time:J

.field private unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

.field private versionMadeBy:I

.field private versionRequired:I


# direct methods
.method public static synthetic $r8$lambda$OQ5ZnjzeKkoNsCvZViNw4jrec6A(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 222
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->EMPTY_ARRAY:[Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 223
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->EMPTY_LINKED_LIST:Ljava/util/LinkedList;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 302
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "inputFile"    # Ljava/io/File;
    .param p2, "entryName"    # Ljava/lang/String;

    .line 317
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/util/function/Function;Ljava/io/File;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 435
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/function/Function;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/util/function/Function;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public varargs constructor <init>(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)V
    .locals 1
    .param p1, "inputPath"    # Ljava/nio/file/Path;
    .param p2, "entryName"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/util/function/Function;Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)V

    .line 422
    return-void
.end method

.method private constructor <init>(Ljava/util/function/Function;Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .param p2, "inputFile"    # Ljava/io/File;
    .param p3, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/apache/commons/compress/archivers/zip/ZipShort;",
            "Lorg/apache/commons/compress/archivers/zip/ZipExtraField;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 333
    .local p1, "extraFieldFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/apache/commons/compress/archivers/zip/ZipShort;Lorg/apache/commons/compress/archivers/zip/ZipExtraField;>;"
    invoke-static {p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->toEntryName(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/util/function/Function;Ljava/lang/String;)V

    .line 335
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 340
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setTime(J)V

    .line 342
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private constructor <init>(Ljava/util/function/Function;Ljava/lang/String;)V
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/apache/commons/compress/archivers/zip/ZipShort;",
            "Lorg/apache/commons/compress/archivers/zip/ZipExtraField;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 375
    .local p1, "extraFieldFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/apache/commons/compress/archivers/zip/ZipShort;Lorg/apache/commons/compress/archivers/zip/ZipExtraField;>;"
    invoke-direct {p0, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 261
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->method:I

    .line 270
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->size:J

    .line 274
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    .line 282
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    invoke-direct {v2}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->generalPurposeBit:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 283
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->localHeaderOffset:J

    .line 284
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->dataOffset:J

    .line 287
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;->NAME:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->nameSource:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;

    .line 291
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;->COMMENT:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->commentSource:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    .line 297
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->time:J

    .line 376
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFieldFactory:Ljava/util/function/Function;

    .line 377
    invoke-virtual {p0, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method private varargs constructor <init>(Ljava/util/function/Function;Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)V
    .locals 1
    .param p2, "inputPath"    # Ljava/nio/file/Path;
    .param p3, "entryName"    # Ljava/lang/String;
    .param p4, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/apache/commons/compress/archivers/zip/ZipShort;",
            "Lorg/apache/commons/compress/archivers/zip/ZipExtraField;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    .local p1, "extraFieldFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/apache/commons/compress/archivers/zip/ZipShort;Lorg/apache/commons/compress/archivers/zip/ZipExtraField;>;"
    invoke-static {p2, p3, p4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->toEntryName(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/util/function/Function;Ljava/lang/String;)V

    .line 361
    invoke-direct {p0, p2, p4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V

    .line 362
    return-void
.end method

.method private constructor <init>(Ljava/util/function/Function;Ljava/util/zip/ZipEntry;)V
    .locals 3
    .param p2, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/apache/commons/compress/archivers/zip/ZipShort;",
            "Lorg/apache/commons/compress/archivers/zip/ZipExtraField;",
            ">;",
            "Ljava/util/zip/ZipEntry;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 392
    .local p1, "extraFieldFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/apache/commons/compress/archivers/zip/ZipShort;Lorg/apache/commons/compress/archivers/zip/ZipExtraField;>;"
    invoke-direct {p0, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 261
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->method:I

    .line 270
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->size:J

    .line 274
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    .line 282
    new-instance v2, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    invoke-direct {v2}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->generalPurposeBit:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 283
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->localHeaderOffset:J

    .line 284
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->dataOffset:J

    .line 287
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;->NAME:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->nameSource:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;

    .line 291
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;->COMMENT:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->commentSource:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    .line 297
    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->time:J

    .line 393
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFieldFactory:Ljava/util/function/Function;

    .line 394
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v0

    .line 396
    .local v0, "extra":[B
    if-eqz v0, :cond_0

    .line 397
    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$ExtraFieldParsingMode;->BEST_EFFORT:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$ExtraFieldParsingMode;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->parseExtraFields([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 402
    :goto_0
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setMethod(I)V

    .line 403
    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->size:J

    .line 404
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 1
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 469
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/util/function/Function;Ljava/util/zip/ZipEntry;)V

    .line 470
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 449
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 450
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getInternalAttributes()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setInternalAttributes(I)V

    .line 451
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExternalAttributes(J)V

    .line 452
    invoke-direct {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 453
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getPlatform()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setPlatform(I)V

    .line 454
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    move-result-object v0

    .line 455
    .local v0, "other":Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;)V

    .line 456
    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/util/function/Function;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 61
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFieldFactory:Ljava/util/function/Function;

    return-object v0
.end method

.method private addInfoZipExtendedTimestamp(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    .locals 1
    .param p1, "lastModifiedTime"    # Ljava/nio/file/attribute/FileTime;
    .param p2, "lastAccessTime"    # Ljava/nio/file/attribute/FileTime;
    .param p3, "creationTime"    # Ljava/nio/file/attribute/FileTime;

    .line 514
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;-><init>()V

    .line 515
    .local v0, "infoZipTimestamp":Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;
    if-eqz p1, :cond_0

    .line 516
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->setModifyFileTime(Ljava/nio/file/attribute/FileTime;)V

    .line 518
    :cond_0
    if-eqz p2, :cond_1

    .line 519
    invoke-virtual {v0, p2}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->setAccessFileTime(Ljava/nio/file/attribute/FileTime;)V

    .line 521
    :cond_1
    if-eqz p3, :cond_2

    .line 522
    invoke-virtual {v0, p3}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->setCreateFileTime(Ljava/nio/file/attribute/FileTime;)V

    .line 524
    :cond_2
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalAddExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 525
    return-void
.end method

.method private addNTFSTimestamp(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V
    .locals 1
    .param p1, "lastModifiedTime"    # Ljava/nio/file/attribute/FileTime;
    .param p2, "lastAccessTime"    # Ljava/nio/file/attribute/FileTime;
    .param p3, "creationTime"    # Ljava/nio/file/attribute/FileTime;

    .line 528
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;-><init>()V

    .line 529
    .local v0, "ntfsTimestamp":Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;
    if-eqz p1, :cond_0

    .line 530
    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setModifyFileTime(Ljava/nio/file/attribute/FileTime;)V

    .line 532
    :cond_0
    if-eqz p2, :cond_1

    .line 533
    invoke-virtual {v0, p2}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setAccessFileTime(Ljava/nio/file/attribute/FileTime;)V

    .line 535
    :cond_1
    if-eqz p3, :cond_2

    .line 536
    invoke-virtual {v0, p3}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->setCreateFileTime(Ljava/nio/file/attribute/FileTime;)V

    .line 538
    :cond_2
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalAddExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 539
    return-void
.end method

.method private static canConvertToInfoZipExtendedTimestamp(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)Z
    .locals 1
    .param p0, "lastModifiedTime"    # Ljava/nio/file/attribute/FileTime;
    .param p1, "lastAccessTime"    # Ljava/nio/file/attribute/FileTime;
    .param p2, "creationTime"    # Ljava/nio/file/attribute/FileTime;

    .line 234
    invoke-static {p0}, Lorg/apache/commons/io/file/attribute/FileTimes;->isUnixTime(Ljava/nio/file/attribute/FileTime;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/io/file/attribute/FileTimes;->isUnixTime(Ljava/nio/file/attribute/FileTime;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/apache/commons/io/file/attribute/FileTimes;->isUnixTime(Ljava/nio/file/attribute/FileTime;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private copyOf([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;I)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 1
    .param p1, "src"    # [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .param p2, "length"    # I

    .line 557
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    return-object v0
.end method

.method private findMatching(Lorg/apache/commons/compress/archivers/zip/ZipShort;Ljava/util/List;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 2
    .param p1, "headerId"    # Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/archivers/zip/ZipShort;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/zip/ZipExtraField;",
            ">;)",
            "Lorg/apache/commons/compress/archivers/zip/ZipExtraField;"
        }
    .end annotation

    .line 593
    .local p2, "fs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipExtraField;>;"
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    return-object v0
.end method

.method private findUnparseable(Ljava/util/List;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/zip/ZipExtraField;",
            ">;)",
            "Lorg/apache/commons/compress/archivers/zip/ZipExtraField;"
        }
    .end annotation

    .line 597
    .local p1, "fs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipExtraField;>;"
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    return-object v0
.end method

.method private getAllExtraFields()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 2

    .line 611
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    .line 612
    .local v0, "allExtraFieldsNoCopy":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    if-ne v0, v1, :cond_0

    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->copyOf([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;I)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 1

    .line 621
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    if-nez v0, :cond_0

    .line 622
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getUnparseableOnly()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    return-object v0

    .line 624
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMergedFields()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    :goto_0
    return-object v0
.end method

.method private getMergedFields()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 3

    .line 815
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->copyOf([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;I)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    .line 816
    .local v0, "zipExtraFields":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    array-length v1, v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    aput-object v2, v0, v1

    .line 817
    return-object v0
.end method

.method private getParseableExtraFields()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 2

    .line 857
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getParseableExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    .line 858
    .local v0, "parseableExtraFields":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    if-ne v0, v1, :cond_0

    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->copyOf([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;I)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private getParseableExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 1

    .line 862
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    if-nez v0, :cond_0

    .line 863
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->EMPTY_ZIP_EXTRA_FIELD_ARRAY:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    return-object v0

    .line 865
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    return-object v0
.end method

.method private getUnparseableOnly()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 3

    .line 960
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->EMPTY_ZIP_EXTRA_FIELD_ARRAY:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    aput-object v2, v0, v1

    :goto_0
    return-object v0
.end method

.method private internalAddExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V
    .locals 3
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 998
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_0

    .line 999
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    goto :goto_0

    .line 1000
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1001
    new-array v0, v1, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    goto :goto_0

    .line 1003
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1004
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalRemoveExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 1006
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    array-length v2, v2

    add-int/2addr v2, v1

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->copyOf([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;I)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    .line 1007
    .local v0, "zipExtraFields":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    array-length v2, v0

    sub-int/2addr v2, v1

    aput-object p1, v0, v2

    .line 1008
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 1010
    .end local v0    # "zipExtraFields":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :goto_0
    return-void
.end method

.method private internalRemoveExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V
    .locals 6
    .param p1, "type"    # Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 1013
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    if-nez v0, :cond_0

    .line 1014
    return-void

    .line 1016
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .local v0, "newResult":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipExtraField;>;"
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 1018
    .local v4, "extraField":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1019
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    .end local v4    # "extraField":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1022
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    array-length v1, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1023
    return-void

    .line 1025
    :cond_3
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->EMPTY_ZIP_EXTRA_FIELD_ARRAY:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 1026
    return-void
.end method

.method private internalSetLastModifiedTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 2
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 1029
    invoke-super {p0, p1}, Ljava/util/zip/ZipEntry;->setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 1030
    invoke-virtual {p1}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->time:J

    .line 1031
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->lastModifiedDateSet:Z

    .line 1032
    return-void
.end method

.method private static isDirectoryEntryName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "entryName"    # Ljava/lang/String;

    .line 238
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$findMatching$0(Lorg/apache/commons/compress/archivers/zip/ZipShort;Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)Z
    .locals 1
    .param p0, "headerId"    # Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .param p1, "f"    # Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 593
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private mergeExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;Z)V
    .locals 9
    .param p1, "f"    # [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .param p2, "local"    # Z

    .line 1067
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    if-nez v0, :cond_0

    .line 1068
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    goto/16 :goto_6

    .line 1070
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p1, v2

    .line 1072
    .local v3, "element":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    instance-of v4, v3, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v4, :cond_1

    .line 1073
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .local v4, "existing":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    goto :goto_1

    .line 1075
    .end local v4    # "existing":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :cond_1
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v4

    .line 1077
    .restart local v4    # "existing":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :goto_1
    if-nez v4, :cond_2

    .line 1078
    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalAddExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    goto :goto_5

    .line 1080
    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getLocalFileDataData()[B

    move-result-object v5

    goto :goto_2

    :cond_3
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object v5

    .line 1082
    .local v5, "b":[B
    :goto_2
    if-eqz p2, :cond_4

    .line 1083
    :try_start_0
    array-length v6, v5

    invoke-interface {v4, v5, v1, v6}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->parseFromLocalFileData([BII)V

    goto :goto_3

    .line 1085
    :cond_4
    array-length v6, v5

    invoke-interface {v4, v5, v1, v6}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->parseFromCentralDirectoryData([BII)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    :goto_3
    goto :goto_5

    .line 1087
    :catch_0
    move-exception v6

    .line 1089
    .local v6, "ex":Ljava/util/zip/ZipException;
    new-instance v7, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;

    invoke-direct {v7}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;-><init>()V

    .line 1090
    .local v7, "u":Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->setHeaderId(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 1091
    if-eqz p2, :cond_5

    .line 1092
    invoke-virtual {v7, v5}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->setLocalFileDataData([B)V

    .line 1093
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->setCentralDirectoryData([B)V

    goto :goto_4

    .line 1095
    :cond_5
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getLocalFileDataData()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->setLocalFileDataData([B)V

    .line 1096
    invoke-virtual {v7, v5}, Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;->setCentralDirectoryData([B)V

    .line 1098
    :goto_4
    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalRemoveExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 1099
    invoke-direct {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalAddExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 1070
    .end local v3    # "element":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .end local v4    # "existing":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .end local v5    # "b":[B
    .end local v6    # "ex":Ljava/util/zip/ZipException;
    .end local v7    # "u":Lorg/apache/commons/compress/archivers/zip/UnrecognizedExtraField;
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1103
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 1105
    :goto_6
    return-void
.end method

.method private parseExtraFields([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 1
    .param p1, "data"    # [B
    .param p2, "local"    # Z
    .param p3, "parsingBehavior"    # Lorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 1108
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFieldFactory:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    .line 1109
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$1;

    invoke-direct {v0, p0, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$1;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;)V

    invoke-static {p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->parse([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    return-object v0

    .line 1128
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->parse([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    return-object v0
.end method

.method private requiresExtraTimeFields()Z
    .locals 1

    .line 1158
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCreationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1161
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->lastModifiedDateSet:Z

    return v0

    .line 1159
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private varargs setAttributes(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)V
    .locals 3
    .param p1, "inputPath"    # Ljava/nio/file/Path;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1178
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-static {p1, v0, p2}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    .line 1179
    .local v0, "attributes":Ljava/nio/file/attribute/BasicFileAttributes;
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1180
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 1182
    :cond_0
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-super {p0, v1}, Ljava/util/zip/ZipEntry;->setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 1183
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-super {p0, v1}, Ljava/util/zip/ZipEntry;->setCreationTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 1184
    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-super {p0, v1}, Ljava/util/zip/ZipEntry;->setLastAccessTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 1185
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtraTimeFields()V

    .line 1186
    return-void
.end method

.method private setExtraTimeFields()V
    .locals 4

    .line 1303
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1304
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalRemoveExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 1306
    :cond_0
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1307
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalRemoveExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 1309
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->requiresExtraTimeFields()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1310
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    .line 1311
    .local v0, "lastModifiedTime":Ljava/nio/file/attribute/FileTime;
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    .line 1312
    .local v1, "lastAccessTime":Ljava/nio/file/attribute/FileTime;
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCreationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    .line 1313
    .local v2, "creationTime":Ljava/nio/file/attribute/FileTime;
    invoke-static {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->canConvertToInfoZipExtendedTimestamp(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1314
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addInfoZipExtendedTimestamp(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    .line 1316
    :cond_2
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addNTFSTimestamp(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    .line 1318
    .end local v0    # "lastModifiedTime":Ljava/nio/file/attribute/FileTime;
    .end local v1    # "lastAccessTime":Ljava/nio/file/attribute/FileTime;
    .end local v2    # "creationTime":Ljava/nio/file/attribute/FileTime;
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 1319
    return-void
.end method

.method private static toDirectoryEntryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "entryName"    # Ljava/lang/String;

    .line 242
    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isDirectoryEntryName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static toEntryName(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "inputFile"    # Ljava/io/File;
    .param p1, "entryName"    # Ljava/lang/String;

    .line 246
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->toDirectoryEntryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private static varargs toEntryName(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/lang/String;
    .locals 1
    .param p0, "inputPath"    # Ljava/nio/file/Path;
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "options"    # [Ljava/nio/file/LinkOption;

    .line 250
    invoke-static {p0, p2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->toDirectoryEntryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method private updateTimeFieldsFromExtraFields()V
    .locals 0

    .line 1516
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->updateTimeFromExtendedTimestampField()V

    .line 1518
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->updateTimeFromNtfsField()V

    .line 1519
    return-void
.end method

.method private updateTimeFromExtendedTimestampField()V
    .locals 3

    .line 1526
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    .line 1527
    .local v0, "extraField":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    instance-of v1, v0, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;

    if-eqz v1, :cond_2

    .line 1528
    move-object v1, v0

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;

    .line 1529
    .local v1, "extendedTimestamp":Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->isBit0_modifyTimePresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1530
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->getModifyFileTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    .line 1531
    .local v2, "modifyTime":Ljava/nio/file/attribute/FileTime;
    if-eqz v2, :cond_0

    .line 1532
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalSetLastModifiedTime(Ljava/nio/file/attribute/FileTime;)V

    .line 1535
    .end local v2    # "modifyTime":Ljava/nio/file/attribute/FileTime;
    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->isBit1_accessTimePresent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1536
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->getAccessFileTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    .line 1537
    .local v2, "accessTime":Ljava/nio/file/attribute/FileTime;
    if-eqz v2, :cond_1

    .line 1538
    invoke-super {p0, v2}, Ljava/util/zip/ZipEntry;->setLastAccessTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 1541
    .end local v2    # "accessTime":Ljava/nio/file/attribute/FileTime;
    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->isBit2_createTimePresent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1542
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;->getCreateFileTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    .line 1543
    .local v2, "creationTime":Ljava/nio/file/attribute/FileTime;
    if-eqz v2, :cond_2

    .line 1544
    invoke-super {p0, v2}, Ljava/util/zip/ZipEntry;->setCreationTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 1548
    .end local v1    # "extendedTimestamp":Lorg/apache/commons/compress/archivers/zip/X5455_ExtendedTimestamp;
    .end local v2    # "creationTime":Ljava/nio/file/attribute/FileTime;
    :cond_2
    return-void
.end method

.method private updateTimeFromNtfsField()V
    .locals 5

    .line 1555
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    .line 1556
    .local v0, "extraField":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    instance-of v1, v0, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;

    if-eqz v1, :cond_2

    .line 1557
    move-object v1, v0

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;

    .line 1558
    .local v1, "ntfsTimestamp":Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getModifyFileTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    .line 1559
    .local v2, "modifyTime":Ljava/nio/file/attribute/FileTime;
    if-eqz v2, :cond_0

    .line 1560
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalSetLastModifiedTime(Ljava/nio/file/attribute/FileTime;)V

    .line 1562
    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getAccessFileTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v3

    .line 1563
    .local v3, "accessTime":Ljava/nio/file/attribute/FileTime;
    if-eqz v3, :cond_1

    .line 1564
    invoke-super {p0, v3}, Ljava/util/zip/ZipEntry;->setLastAccessTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 1566
    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;->getCreateFileTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v4

    .line 1567
    .local v4, "creationTime":Ljava/nio/file/attribute/FileTime;
    if-eqz v4, :cond_2

    .line 1568
    invoke-super {p0, v4}, Ljava/util/zip/ZipEntry;->setCreationTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 1571
    .end local v1    # "ntfsTimestamp":Lorg/apache/commons/compress/archivers/zip/X000A_NTFS;
    .end local v2    # "modifyTime":Ljava/nio/file/attribute/FileTime;
    .end local v3    # "accessTime":Ljava/nio/file/attribute/FileTime;
    .end local v4    # "creationTime":Ljava/nio/file/attribute/FileTime;
    :cond_2
    return-void
.end method


# virtual methods
.method public addAsFirstExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V
    .locals 6
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 482
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_0

    .line 483
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    goto :goto_1

    .line 485
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 486
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalRemoveExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 488
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 489
    .local v0, "copy":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    array-length v1, v1

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 490
    .local v1, "newLen":I
    :goto_0
    new-array v3, v1, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 491
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 492
    if-eqz v0, :cond_3

    .line 493
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    array-length v5, v5

    sub-int/2addr v5, v2

    invoke-static {v0, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    .end local v0    # "copy":[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .end local v1    # "newLen":I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 497
    return-void
.end method

.method public addExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V
    .locals 0
    .param p1, "ze"    # Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 509
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalAddExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 510
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 511
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 548
    invoke-super {p0}, Ljava/util/zip/ZipEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 550
    .local v0, "e":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getInternalAttributes()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setInternalAttributes(I)V

    .line 551
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExternalAttributes(J)V

    .line 552
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 553
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .line 562
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 563
    return v0

    .line 565
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 568
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 569
    .local v2, "other":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 570
    .local v3, "myName":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 571
    .local v4, "otherName":Ljava/lang/String;
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 572
    return v1

    .line 574
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getComment()Ljava/lang/String;

    move-result-object v5

    .line 575
    .local v5, "myComment":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getComment()Ljava/lang/String;

    move-result-object v6

    .line 576
    .local v6, "otherComment":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 577
    const-string v5, ""

    .line 579
    :cond_3
    if-nez v6, :cond_4

    .line 580
    const-string v6, ""

    .line 582
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 583
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCreationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCreationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 584
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getInternalAttributes()I

    move-result v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getInternalAttributes()I

    move-result v8

    if-ne v7, v8, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getPlatform()I

    move-result v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getPlatform()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 585
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v8

    if-ne v7, v8, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    .line 586
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    .line 587
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCentralDirectoryExtra()[B

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCentralDirectoryExtra()[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 588
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalFileDataExtra()[B

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalFileDataExtra()[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->localHeaderOffset:J

    iget-wide v9, v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->localHeaderOffset:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->dataOffset:J

    iget-wide v9, v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->dataOffset:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->generalPurposeBit:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    iget-object v8, v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->generalPurposeBit:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 589
    invoke-virtual {v7, v8}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    .line 582
    :goto_0
    return v0

    .line 566
    .end local v2    # "other":Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .end local v3    # "myName":Ljava/lang/String;
    .end local v4    # "otherName":Ljava/lang/String;
    .end local v5    # "myComment":Ljava/lang/String;
    .end local v6    # "otherComment":Ljava/lang/String;
    :cond_6
    :goto_1
    return v1
.end method

.method protected getAlignment()I
    .locals 1

    .line 607
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->alignment:I

    return v0
.end method

.method public getCentralDirectoryExtra()[B
    .locals 1

    .line 633
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->mergeCentralDirectoryData([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)[B

    move-result-object v0

    return-object v0
.end method

.method public getCommentSource()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;
    .locals 1

    .line 643
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->commentSource:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    return-object v0
.end method

.method public getDataOffset()J
    .locals 2

    .line 648
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->dataOffset:J

    return-wide v0
.end method

.method public getDiskNumberStart()J
    .locals 2

    .line 658
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->diskNumberStart:J

    return-wide v0
.end method

.method public getExternalAttributes()J
    .locals 2

    .line 671
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->externalAttributes:J

    return-wide v0
.end method

.method public getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 5
    .param p1, "type"    # Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 681
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 683
    .local v3, "extraField":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    invoke-interface {v3}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 684
    return-object v3

    .line 682
    .end local v3    # "extraField":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 688
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtraFields()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 1

    .line 702
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getParseableExtraFields()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    return-object v0
.end method

.method public getExtraFields(Lorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 11
    .param p1, "parsingBehavior"    # Lorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 727
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$ExtraFieldParsingMode;->BEST_EFFORT:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$ExtraFieldParsingMode;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 728
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraFields(Z)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    return-object v0

    .line 730
    :cond_0
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$ExtraFieldParsingMode;->ONLY_PARSEABLE_LENIENT:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$ExtraFieldParsingMode;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 731
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraFields(Z)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    return-object v0

    .line 733
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtra()[B

    move-result-object v0

    .line 734
    .local v0, "local":[B
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->parseExtraFields([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v3

    .line 735
    .local v1, "localFields":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipExtraField;>;"
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCentralDirectoryExtra()[B

    move-result-object v3

    .line 736
    .local v3, "central":[B
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {p0, v3, v2, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->parseExtraFields([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 737
    .local v4, "centralFields":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipExtraField;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v5, "merged":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipExtraField;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 740
    .local v7, "l":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    instance-of v8, v7, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v8, :cond_2

    .line 741
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->findUnparseable(Ljava/util/List;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v8

    .local v8, "c":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    goto :goto_1

    .line 743
    .end local v8    # "c":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :cond_2
    invoke-interface {v7}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->findMatching(Lorg/apache/commons/compress/archivers/zip/ZipShort;Ljava/util/List;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v8

    .line 745
    .restart local v8    # "c":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :goto_1
    if-eqz v8, :cond_4

    .line 746
    invoke-interface {v8}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object v9

    .line 747
    .local v9, "cd":[B
    if-eqz v9, :cond_3

    array-length v10, v9

    if-lez v10, :cond_3

    .line 748
    array-length v10, v9

    invoke-interface {v7, v9, v2, v10}, Lorg/apache/commons/compress/archivers/zip/ZipExtraField;->parseFromCentralDirectoryData([BII)V

    .line 750
    :cond_3
    invoke-interface {v4, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 752
    .end local v9    # "cd":[B
    :cond_4
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    .end local v7    # "l":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .end local v8    # "c":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    goto :goto_0

    .line 754
    :cond_5
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 755
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->EMPTY_ZIP_EXTRA_FIELD_ARRAY:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    return-object v2
.end method

.method public getExtraFields(Z)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    .locals 1
    .param p1, "includeUnparseable"    # Z

    .line 714
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getAllExtraFields()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getParseableExtraFields()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getGeneralPurposeBit()Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    .locals 1

    .line 765
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->generalPurposeBit:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    return-object v0
.end method

.method public getInternalAttributes()I
    .locals 1

    .line 778
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalAttributes:I

    return v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 3

    .line 791
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLocalFileDataExtra()[B
    .locals 2

    .line 800
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtra()[B

    move-result-object v0

    .line 801
    .local v0, "extra":[B
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/commons/compress/utils/ByteUtils;->EMPTY_BYTE_ARRAY:[B

    :goto_0
    return-object v1
.end method

.method public getLocalHeaderOffset()J
    .locals 2

    .line 811
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->localHeaderOffset:J

    return-wide v0
.end method

.method public getMethod()I
    .locals 1

    .line 829
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->method:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 843
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->name:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getNameSource()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;
    .locals 1

    .line 853
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->nameSource:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;

    return-object v0
.end method

.method public getPlatform()I
    .locals 1

    .line 874
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    return v0
.end method

.method public getRawFlag()I
    .locals 1

    .line 884
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawFlag:I

    return v0
.end method

.method public getRawName()[B
    .locals 2

    .line 898
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawName:[B

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawName:[B

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawName:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0

    .line 901
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 916
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->size:J

    return-wide v0
.end method

.method public getTime()J
    .locals 4

    .line 933
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->lastModifiedDateSet:Z

    if-eqz v0, :cond_0

    .line 934
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    return-wide v0

    .line 936
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->time:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->time:J

    goto :goto_0

    :cond_1
    invoke-super {p0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getUnixMode()I
    .locals 4

    .line 945
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v0

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getUnparseableExtraFieldData()Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;
    .locals 1

    .line 956
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    return-object v0
.end method

.method public getVersionMadeBy()I
    .locals 1

    .line 970
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->versionMadeBy:I

    return v0
.end method

.method public getVersionRequired()I
    .locals 1

    .line 980
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->versionRequired:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 994
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 1041
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isDirectoryEntryName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStreamContiguous()Z
    .locals 1

    .line 1046
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isStreamContiguous:Z

    return v0
.end method

.method public isUnixSymlink()Z
    .locals 2

    .line 1056
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getUnixMode()I

    move-result v0

    const v1, 0xf000

    and-int/2addr v0, v1

    const v1, 0xa000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V
    .locals 1
    .param p1, "type"    # Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 1137
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1140
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalRemoveExtraField(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    .line 1141
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 1142
    return-void

    .line 1138
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public removeUnparseableExtraFieldData()V
    .locals 1

    .line 1150
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_0

    .line 1153
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 1154
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 1155
    return-void

    .line 1151
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public setAlignment(I)V
    .locals 3
    .param p1, "alignment"    # I

    .line 1171
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 1174
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->alignment:I

    .line 1175
    return-void

    .line 1172
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for alignment, must be power of two and no bigger than 65535 but is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCentralDirectoryExtra([B)V
    .locals 3
    .param p1, "b"    # [B

    .line 1195
    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$ExtraFieldParsingMode;->BEST_EFFORT:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$ExtraFieldParsingMode;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->parseExtraFields([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->mergeExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    nop

    .line 1200
    return-void

    .line 1196
    :catch_0
    move-exception v0

    .line 1198
    .local v0, "e":Ljava/util/zip/ZipException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCommentSource(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;)V
    .locals 0
    .param p1, "commentSource"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    .line 1209
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->commentSource:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$CommentSource;

    .line 1210
    return-void
.end method

.method public setCreationTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .locals 0
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 1214
    invoke-super {p0, p1}, Ljava/util/zip/ZipEntry;->setCreationTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 1215
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtraTimeFields()V

    .line 1216
    return-object p0
.end method

.method protected setDataOffset(J)V
    .locals 0
    .param p1, "dataOffset"    # J

    .line 1230
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->dataOffset:J

    .line 1231
    return-void
.end method

.method public setDiskNumberStart(J)V
    .locals 0
    .param p1, "diskNumberStart"    # J

    .line 1240
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->diskNumberStart:J

    .line 1241
    return-void
.end method

.method public setExternalAttributes(J)V
    .locals 0
    .param p1, "value"    # J

    .line 1249
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->externalAttributes:J

    .line 1250
    return-void
.end method

.method protected setExtra()V
    .locals 1

    .line 1258
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getAllExtraFieldsNoCopy()[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->mergeLocalFileDataData([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)[B

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 1260
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->updateTimeFieldsFromExtraFields()V

    .line 1261
    return-void
.end method

.method public setExtra([B)V
    .locals 4
    .param p1, "extra"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1273
    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$ExtraFieldParsingMode;->BEST_EFFORT:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$ExtraFieldParsingMode;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->parseExtraFields([BZLorg/apache/commons/compress/archivers/zip/ExtraFieldParsingBehavior;)[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->mergeExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1278
    nop

    .line 1279
    return-void

    .line 1274
    :catch_0
    move-exception v0

    .line 1276
    .local v0, "e":Ljava/util/zip/ZipException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing extra fields for entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1277
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setExtraFields([Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V
    .locals 5
    .param p1, "fields"    # [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 1287
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 1288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1289
    .local v0, "newFields":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/archivers/zip/ZipExtraField;>;"
    if-eqz p1, :cond_1

    .line 1290
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 1291
    .local v3, "field":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    instance-of v4, v3, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    if-eqz v4, :cond_0

    .line 1292
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->unparseableExtra:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    goto :goto_1

    .line 1294
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1290
    .end local v3    # "field":Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1298
    :cond_1
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ExtraFieldUtils;->EMPTY_ZIP_EXTRA_FIELD_ARRAY:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->extraFields:[Lorg/apache/commons/compress/archivers/zip/ZipExtraField;

    .line 1299
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtra()V

    .line 1300
    return-void
.end method

.method public setGeneralPurposeBit(Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;)V
    .locals 0
    .param p1, "generalPurposeBit"    # Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 1328
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->generalPurposeBit:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 1329
    return-void
.end method

.method public setInternalAttributes(I)V
    .locals 0
    .param p1, "internalAttributes"    # I

    .line 1337
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalAttributes:I

    .line 1338
    return-void
.end method

.method public setLastAccessTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .locals 0
    .param p1, "fileTime"    # Ljava/nio/file/attribute/FileTime;

    .line 1342
    invoke-super {p0, p1}, Ljava/util/zip/ZipEntry;->setLastAccessTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 1343
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtraTimeFields()V

    .line 1344
    return-object p0
.end method

.method public setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;
    .locals 0
    .param p1, "fileTime"    # Ljava/nio/file/attribute/FileTime;

    .line 1349
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->internalSetLastModifiedTime(Ljava/nio/file/attribute/FileTime;)V

    .line 1350
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtraTimeFields()V

    .line 1351
    return-object p0
.end method

.method protected setLocalHeaderOffset(J)V
    .locals 0
    .param p1, "localHeaderOffset"    # J

    .line 1355
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->localHeaderOffset:J

    .line 1356
    return-void
.end method

.method public setMethod(I)V
    .locals 3
    .param p1, "method"    # I

    .line 1367
    if-ltz p1, :cond_0

    .line 1370
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->method:I

    .line 1371
    return-void

    .line 1368
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZIP compression method can not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1379
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getPlatform()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1380
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 1382
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->name:Ljava/lang/String;

    .line 1383
    return-void
.end method

.method protected setName(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rawName"    # [B

    .line 1393
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setName(Ljava/lang/String;)V

    .line 1394
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawName:[B

    .line 1395
    return-void
.end method

.method public setNameSource(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;)V
    .locals 0
    .param p1, "nameSource"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;

    .line 1404
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->nameSource:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry$NameSource;

    .line 1405
    return-void
.end method

.method protected setPlatform(I)V
    .locals 0
    .param p1, "platform"    # I

    .line 1413
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    .line 1414
    return-void
.end method

.method public setRawFlag(I)V
    .locals 0
    .param p1, "rawFlag"    # I

    .line 1423
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->rawFlag:I

    .line 1424
    return-void
.end method

.method public setSize(J)V
    .locals 2
    .param p1, "size"    # J

    .line 1434
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1437
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->size:J

    .line 1438
    return-void

    .line 1435
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid entry size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setStreamContiguous(Z)V
    .locals 0
    .param p1, "isStreamContiguous"    # Z

    .line 1441
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isStreamContiguous:Z

    .line 1442
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "timeEpochMillis"    # J

    .line 1468
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->isDosTime(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1469
    invoke-super {p0, p1, p2}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 1470
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->time:J

    .line 1471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->lastModifiedDateSet:Z

    .line 1472
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExtraTimeFields()V

    goto :goto_0

    .line 1474
    :cond_0
    invoke-static {p1, p2}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Ljava/util/zip/ZipEntry;

    .line 1476
    :goto_0
    return-void
.end method

.method public setTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 2
    .param p1, "fileTime"    # Ljava/nio/file/attribute/FileTime;

    .line 1451
    invoke-virtual {p1}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setTime(J)V

    .line 1452
    return-void
.end method

.method public setUnixMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 1485
    shl-int/lit8 v0, p1, 0x10

    .line 1487
    and-int/lit16 v1, p1, 0x80

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    .line 1489
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x10

    :cond_1
    or-int/2addr v0, v2

    int-to-long v0, v0

    .line 1485
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setExternalAttributes(J)V

    .line 1491
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->platform:I

    .line 1492
    return-void
.end method

.method public setVersionMadeBy(I)V
    .locals 0
    .param p1, "versionMadeBy"    # I

    .line 1501
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->versionMadeBy:I

    .line 1502
    return-void
.end method

.method public setVersionRequired(I)V
    .locals 0
    .param p1, "versionRequired"    # I

    .line 1511
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->versionRequired:I

    .line 1512
    return-void
.end method
