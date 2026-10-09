.class final Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
.super Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/compress/archivers/zip/ZipFile$1;

    .line 216
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 220
    invoke-super {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 222
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .line 223
    .local v0, "otherEntry":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getLocalHeaderOffset()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getLocalHeaderOffset()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-super {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getDataOffset()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getDataOffset()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 224
    invoke-super {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getDiskNumberStart()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getDiskNumberStart()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 223
    :goto_0
    return v1

    .line 226
    .end local v0    # "otherEntry":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 231
    invoke-super {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getLocalHeaderOffset()J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getLocalHeaderOffset()J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
