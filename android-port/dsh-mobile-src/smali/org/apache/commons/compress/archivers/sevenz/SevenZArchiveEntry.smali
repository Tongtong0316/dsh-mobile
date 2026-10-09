.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
.super Ljava/lang/Object;
.source "SevenZArchiveEntry.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# static fields
.field static final EMPTY_SEVEN_Z_ARCHIVE_ENTRY_ARRAY:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;


# instance fields
.field private accessDate:Ljava/nio/file/attribute/FileTime;

.field private compressedCrc:J

.field private compressedSize:J

.field private contentMethods:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private crc:J

.field private creationDate:Ljava/nio/file/attribute/FileTime;

.field private hasAccessDate:Z

.field private hasCrc:Z

.field private hasCreationDate:Z

.field private hasLastModifiedDate:Z

.field private hasStream:Z

.field private hasWindowsAttributes:Z

.field private isAntiItem:Z

.field private isDirectory:Z

.field private lastModifiedDate:Ljava/nio/file/attribute/FileTime;

.field private name:Ljava/lang/String;

.field private size:J

.field private windowsAttributes:I


# direct methods
.method public static synthetic $r8$lambda$8IPxU7dsJw6N4YzMNXp1SEHo4BQ(Ljava/util/LinkedList;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->EMPTY_SEVEN_Z_ARCHIVE_ENTRY_ARRAY:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method private equalSevenZMethods(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;",
            ">;)Z"
        }
    .end annotation

    .line 107
    .local p1, "c1":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;>;"
    .local p2, "c2":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 108
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 110
    :cond_1
    if-nez p2, :cond_2

    .line 111
    return v1

    .line 113
    :cond_2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 114
    .local v2, "i2":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    .line 115
    .local v4, "element":Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 116
    return v1

    .line 118
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 119
    return v1

    .line 121
    .end local v4    # "element":Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;
    :cond_4
    goto :goto_1

    .line 122
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static javaTimeToNtfsTime(Ljava/util/Date;)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-static {p0}, Lorg/apache/commons/io/file/attribute/FileTimes;->toNtfsTime(Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static ntfsTimeToJavaTime(J)Ljava/util/Date;
    .locals 1
    .param p0, "ntfsTime"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    invoke-static {p0, p1}, Lorg/apache/commons/io/file/attribute/FileTimes;->ntfsTimeToDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 91
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 92
    return v0

    .line 94
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 97
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 98
    .local v2, "other":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->name:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream:Z

    iget-boolean v4, v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isDirectory:Z

    iget-boolean v4, v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isDirectory:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isAntiItem:Z

    iget-boolean v4, v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isAntiItem:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCreationDate:Z

    iget-boolean v4, v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCreationDate:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasLastModifiedDate:Z

    iget-boolean v4, v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasLastModifiedDate:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasAccessDate:Z

    iget-boolean v4, v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasAccessDate:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->creationDate:Ljava/nio/file/attribute/FileTime;

    iget-object v4, v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->creationDate:Ljava/nio/file/attribute/FileTime;

    .line 100
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->lastModifiedDate:Ljava/nio/file/attribute/FileTime;

    iget-object v4, v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->lastModifiedDate:Ljava/nio/file/attribute/FileTime;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->accessDate:Ljava/nio/file/attribute/FileTime;

    iget-object v4, v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->accessDate:Ljava/nio/file/attribute/FileTime;

    .line 101
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasWindowsAttributes:Z

    iget-boolean v4, v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasWindowsAttributes:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->windowsAttributes:I

    iget v4, v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->windowsAttributes:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCrc:Z

    iget-boolean v4, v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCrc:Z

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->crc:J

    iget-wide v5, v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->crc:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedCrc:J

    iget-wide v5, v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedCrc:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->size:J

    iget-wide v5, v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->size:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedSize:J

    iget-wide v5, v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedSize:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->contentMethods:Ljava/lang/Iterable;

    iget-object v4, v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->contentMethods:Ljava/lang/Iterable;

    .line 103
    invoke-direct {p0, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->equalSevenZMethods(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 98
    :goto_0
    return v0

    .line 95
    .end local v2    # "other":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_3
    :goto_1
    return v1
.end method

.method public getAccessDate()Ljava/util/Date;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/file/attribute/FileTimes;->toDate(Ljava/nio/file/attribute/FileTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getAccessTime()Ljava/nio/file/attribute/FileTime;
    .locals 2

    .line 144
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasAccessDate:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->accessDate:Ljava/nio/file/attribute/FileTime;

    return-object v0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The entry doesn\'t have this timestamp"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getCompressedCrc()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedCrc:J

    long-to-int v0, v0

    return v0
.end method

.method getCompressedCrcValue()J
    .locals 2

    .line 168
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedCrc:J

    return-wide v0
.end method

.method getCompressedSize()J
    .locals 2

    .line 177
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedSize:J

    return-wide v0
.end method

.method public getContentMethods()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->contentMethods:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getCrc()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->crc:J

    long-to-int v0, v0

    return v0
.end method

.method public getCrcValue()J
    .locals 2

    .line 217
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->crc:J

    return-wide v0
.end method

.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .line 228
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCreationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/file/attribute/FileTimes;->toDate(Ljava/nio/file/attribute/FileTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTime()Ljava/nio/file/attribute/FileTime;
    .locals 2

    .line 239
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCreationDate:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->creationDate:Ljava/nio/file/attribute/FileTime;

    return-object v0

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The entry doesn\'t have this timestamp"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHasAccessDate()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasAccessDate:Z

    return v0
.end method

.method public getHasCrc()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCrc:Z

    return v0
.end method

.method public getHasCreationDate()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCreationDate:Z

    return v0
.end method

.method public getHasLastModifiedDate()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasLastModifiedDate:Z

    return v0
.end method

.method public getHasWindowsAttributes()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasWindowsAttributes:Z

    return v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 1

    .line 303
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getLastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/file/attribute/FileTimes;->toDate(Ljava/nio/file/attribute/FileTime;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getLastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .locals 2

    .line 314
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasLastModifiedDate:Z

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->lastModifiedDate:Ljava/nio/file/attribute/FileTime;

    return-object v0

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The entry doesn\'t have this timestamp"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 341
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->size:J

    return-wide v0
.end method

.method public getWindowsAttributes()I
    .locals 1

    .line 350
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->windowsAttributes:I

    return v0
.end method

.method public hasStream()Z
    .locals 1

    .line 365
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 355
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "n":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    return v1
.end method

.method public isAntiItem()Z
    .locals 1

    .line 374
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isAntiItem:Z

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 384
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isDirectory:Z

    return v0
.end method

.method public setAccessDate(J)V
    .locals 1
    .param p1, "ntfsAccessDate"    # J

    .line 403
    invoke-static {p1, p2}, Lorg/apache/commons/io/file/attribute/FileTimes;->ntfsTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->accessDate:Ljava/nio/file/attribute/FileTime;

    .line 404
    return-void
.end method

.method public setAccessDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "accessDate"    # Ljava/util/Date;

    .line 394
    invoke-static {p1}, Lorg/apache/commons/io/file/attribute/FileTimes;->toFileTime(Ljava/util/Date;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAccessTime(Ljava/nio/file/attribute/FileTime;)V

    .line 395
    return-void
.end method

.method public setAccessTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 1
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 413
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasAccessDate:Z

    .line 414
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasAccessDate:Z

    if-eqz v0, :cond_1

    .line 415
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->accessDate:Ljava/nio/file/attribute/FileTime;

    .line 417
    :cond_1
    return-void
.end method

.method public setAntiItem(Z)V
    .locals 0
    .param p1, "isAntiItem"    # Z

    .line 425
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isAntiItem:Z

    .line 426
    return-void
.end method

.method setCompressedCrc(I)V
    .locals 2
    .param p1, "crc"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 436
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedCrc:J

    .line 437
    return-void
.end method

.method setCompressedCrcValue(J)V
    .locals 0
    .param p1, "crc"    # J

    .line 446
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedCrc:J

    .line 447
    return-void
.end method

.method setCompressedSize(J)V
    .locals 0
    .param p1, "size"    # J

    .line 455
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->compressedSize:J

    .line 456
    return-void
.end method

.method public setContentMethods(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 474
    .local p1, "methods":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;>;"
    if-eqz p1, :cond_0

    .line 475
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 476
    .local v0, "l":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;>;"
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry$$ExternalSyntheticLambda0;-><init>(Ljava/util/LinkedList;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 477
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->contentMethods:Ljava/lang/Iterable;

    .line 478
    .end local v0    # "l":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;>;"
    goto :goto_0

    .line 479
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->contentMethods:Ljava/lang/Iterable;

    .line 481
    :goto_0
    return-void
.end method

.method public varargs setContentMethods([Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;)V
    .locals 1
    .param p1, "methods"    # [Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;

    .line 499
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setContentMethods(Ljava/lang/Iterable;)V

    .line 500
    return-void
.end method

.method public setCrc(I)V
    .locals 2
    .param p1, "crc"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 510
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->crc:J

    .line 511
    return-void
.end method

.method public setCrcValue(J)V
    .locals 0
    .param p1, "crc"    # J

    .line 520
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->crc:J

    .line 521
    return-void
.end method

.method public setCreationDate(J)V
    .locals 1
    .param p1, "ntfsCreationDate"    # J

    .line 539
    invoke-static {p1, p2}, Lorg/apache/commons/io/file/attribute/FileTimes;->ntfsTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->creationDate:Ljava/nio/file/attribute/FileTime;

    .line 540
    return-void
.end method

.method public setCreationDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "creationDate"    # Ljava/util/Date;

    .line 530
    invoke-static {p1}, Lorg/apache/commons/io/file/attribute/FileTimes;->toFileTime(Ljava/util/Date;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCreationTime(Ljava/nio/file/attribute/FileTime;)V

    .line 531
    return-void
.end method

.method public setCreationTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 1
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 549
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCreationDate:Z

    .line 550
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCreationDate:Z

    if-eqz v0, :cond_1

    .line 551
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->creationDate:Ljava/nio/file/attribute/FileTime;

    .line 553
    :cond_1
    return-void
.end method

.method public setDirectory(Z)V
    .locals 0
    .param p1, "isDirectory"    # Z

    .line 561
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->isDirectory:Z

    .line 562
    return-void
.end method

.method public setHasAccessDate(Z)V
    .locals 0
    .param p1, "hasAcessDate"    # Z

    .line 570
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasAccessDate:Z

    .line 571
    return-void
.end method

.method public setHasCrc(Z)V
    .locals 0
    .param p1, "hasCrc"    # Z

    .line 579
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCrc:Z

    .line 580
    return-void
.end method

.method public setHasCreationDate(Z)V
    .locals 0
    .param p1, "hasCreationDate"    # Z

    .line 588
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasCreationDate:Z

    .line 589
    return-void
.end method

.method public setHasLastModifiedDate(Z)V
    .locals 0
    .param p1, "hasLastModifiedDate"    # Z

    .line 597
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasLastModifiedDate:Z

    .line 598
    return-void
.end method

.method public setHasStream(Z)V
    .locals 0
    .param p1, "hasStream"    # Z

    .line 606
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream:Z

    .line 607
    return-void
.end method

.method public setHasWindowsAttributes(Z)V
    .locals 0
    .param p1, "hasWindowsAttributes"    # Z

    .line 615
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasWindowsAttributes:Z

    .line 616
    return-void
.end method

.method public setLastModifiedDate(J)V
    .locals 1
    .param p1, "ntfsLastModifiedDate"    # J

    .line 634
    invoke-static {p1, p2}, Lorg/apache/commons/io/file/attribute/FileTimes;->ntfsTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->lastModifiedDate:Ljava/nio/file/attribute/FileTime;

    .line 635
    return-void
.end method

.method public setLastModifiedDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "lastModifiedDate"    # Ljava/util/Date;

    .line 625
    invoke-static {p1}, Lorg/apache/commons/io/file/attribute/FileTimes;->toFileTime(Ljava/util/Date;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)V

    .line 626
    return-void
.end method

.method public setLastModifiedTime(Ljava/nio/file/attribute/FileTime;)V
    .locals 1
    .param p1, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 644
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasLastModifiedDate:Z

    .line 645
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasLastModifiedDate:Z

    if-eqz v0, :cond_1

    .line 646
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->lastModifiedDate:Ljava/nio/file/attribute/FileTime;

    .line 648
    :cond_1
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 656
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->name:Ljava/lang/String;

    .line 657
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .param p1, "size"    # J

    .line 665
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->size:J

    .line 666
    return-void
.end method

.method public setWindowsAttributes(I)V
    .locals 0
    .param p1, "windowsAttributes"    # I

    .line 674
    iput p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->windowsAttributes:I

    .line 675
    return-void
.end method
