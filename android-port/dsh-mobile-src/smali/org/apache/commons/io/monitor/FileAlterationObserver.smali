.class public Lorg/apache/commons/io/monitor/FileAlterationObserver;
.super Ljava/lang/Object;
.source "FileAlterationObserver.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x107266629bcfe480L


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final transient fileFilter:Ljava/io/FileFilter;

.field private final transient listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/io/monitor/FileAlterationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final rootEntry:Lorg/apache/commons/io/monitor/FileEntry;


# direct methods
.method public static synthetic $r8$lambda$4i7LXVdy_8VMAS2oB7MOo7Fq3k4(Lorg/apache/commons/io/monitor/FileAlterationObserver;Lorg/apache/commons/io/monitor/FileEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fireOnCreate(Lorg/apache/commons/io/monitor/FileEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JAdsFmxoSUL1HbrcvD-rWBLAaTc(Lorg/apache/commons/io/monitor/FileAlterationListener;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "directory"    # Ljava/io/File;

    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;Ljava/io/FileFilter;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/FileFilter;)V
    .locals 1
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "fileFilter"    # Ljava/io/FileFilter;

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V
    .locals 1
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "fileFilter"    # Ljava/io/FileFilter;
    .param p3, "ioCase"    # Lorg/apache/commons/io/IOCase;

    .line 182
    new-instance v0, Lorg/apache/commons/io/monitor/FileEntry;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/monitor/FileEntry;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "directoryName"    # Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;)V

    .line 218
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/FileFilter;)V
    .locals 1
    .param p1, "directoryName"    # Ljava/lang/String;
    .param p2, "fileFilter"    # Ljava/io/FileFilter;

    .line 227
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;Ljava/io/FileFilter;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V
    .locals 1
    .param p1, "directoryName"    # Ljava/lang/String;
    .param p2, "fileFilter"    # Ljava/io/FileFilter;
    .param p3, "ioCase"    # Lorg/apache/commons/io/IOCase;

    .line 238
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Ljava/io/File;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V

    .line 239
    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/FileFilter;Ljava/util/Comparator;)V
    .locals 2
    .param p1, "rootEntry"    # Lorg/apache/commons/io/monitor/FileEntry;
    .param p2, "fileFilter"    # Ljava/io/FileFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/monitor/FileEntry;",
            "Ljava/io/FileFilter;",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 192
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    .line 193
    const-string v0, "rootEntry"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v0

    const-string v1, "rootEntry.getFile()"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    .line 196
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fileFilter:Ljava/io/FileFilter;

    .line 197
    const-string v0, "comparator"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    .line 198
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/FileFilter;Lorg/apache/commons/io/IOCase;)V
    .locals 1
    .param p1, "rootEntry"    # Lorg/apache/commons/io/monitor/FileEntry;
    .param p2, "fileFilter"    # Ljava/io/FileFilter;
    .param p3, "ioCase"    # Lorg/apache/commons/io/IOCase;

    .line 208
    invoke-static {p3}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->toComparator(Lorg/apache/commons/io/IOCase;)Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/FileFilter;Ljava/util/Comparator;)V

    .line 209
    return-void
.end method

.method private checkAndFire(Lorg/apache/commons/io/monitor/FileEntry;[Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V
    .locals 8
    .param p1, "parentEntry"    # Lorg/apache/commons/io/monitor/FileEntry;
    .param p2, "previousEntries"    # [Lorg/apache/commons/io/monitor/FileEntry;
    .param p3, "currentEntries"    # [Ljava/io/File;

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "c":I
    array-length v1, p3

    if-lez v1, :cond_0

    array-length v1, p3

    new-array v1, v1, [Lorg/apache/commons/io/monitor/FileEntry;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/commons/io/monitor/FileEntry;->EMPTY_FILE_ENTRY_ARRAY:[Lorg/apache/commons/io/monitor/FileEntry;

    .line 262
    .local v1, "actualEntries":[Lorg/apache/commons/io/monitor/FileEntry;
    :goto_0
    array-length v2, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, p2, v3

    .line 263
    .local v4, "previousEntry":Lorg/apache/commons/io/monitor/FileEntry;
    :goto_2
    array-length v5, p3

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    invoke-virtual {v4}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v6

    aget-object v7, p3, v0

    invoke-interface {v5, v6, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1

    .line 264
    aget-object v5, p3, v0

    invoke-direct {p0, p1, v5}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->createFileEntry(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v5

    aput-object v5, v1, v0

    .line 265
    aget-object v5, v1, v0

    invoke-direct {p0, v5}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fireOnCreate(Lorg/apache/commons/io/monitor/FileEntry;)V

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 268
    :cond_1
    array-length v5, p3

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    invoke-virtual {v4}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v6

    aget-object v7, p3, v0

    invoke-interface {v5, v6, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_2

    .line 269
    aget-object v5, p3, v0

    invoke-direct {p0, v4, v5}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fireOnChange(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    .line 270
    invoke-virtual {v4}, Lorg/apache/commons/io/monitor/FileEntry;->getChildren()[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v5

    aget-object v6, p3, v0

    invoke-direct {p0, v6}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->checkAndFire(Lorg/apache/commons/io/monitor/FileEntry;[Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    .line 271
    aput-object v4, v1, v0

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 274
    :cond_2
    invoke-virtual {v4}, Lorg/apache/commons/io/monitor/FileEntry;->getChildren()[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v5

    sget-object v6, Lorg/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    invoke-direct {p0, v4, v5, v6}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->checkAndFire(Lorg/apache/commons/io/monitor/FileEntry;[Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    .line 275
    invoke-direct {p0, v4}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fireOnDelete(Lorg/apache/commons/io/monitor/FileEntry;)V

    .line 262
    .end local v4    # "previousEntry":Lorg/apache/commons/io/monitor/FileEntry;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 278
    :cond_3
    :goto_4
    array-length v2, p3

    if-ge v0, v2, :cond_4

    .line 279
    aget-object v2, p3, v0

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->createFileEntry(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v2

    aput-object v2, v1, v0

    .line 280
    aget-object v2, v1, v0

    invoke-direct {p0, v2}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fireOnCreate(Lorg/apache/commons/io/monitor/FileEntry;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 282
    :cond_4
    invoke-virtual {p1, v1}, Lorg/apache/commons/io/monitor/FileEntry;->setChildren([Lorg/apache/commons/io/monitor/FileEntry;)V

    .line 283
    return-void
.end method

.method private createFileEntry(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;
    .locals 2
    .param p1, "parent"    # Lorg/apache/commons/io/monitor/FileEntry;
    .param p2, "file"    # Ljava/io/File;

    .line 314
    invoke-virtual {p1, p2}, Lorg/apache/commons/io/monitor/FileEntry;->newChildInstance(Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v0

    .line 315
    .local v0, "entry":Lorg/apache/commons/io/monitor/FileEntry;
    invoke-virtual {v0, p2}, Lorg/apache/commons/io/monitor/FileEntry;->refresh(Ljava/io/File;)Z

    .line 316
    invoke-direct {p0, p2, v0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listFileEntries(Ljava/io/File;Lorg/apache/commons/io/monitor/FileEntry;)[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/monitor/FileEntry;->setChildren([Lorg/apache/commons/io/monitor/FileEntry;)V

    .line 317
    return-object v0
.end method

.method private fireOnChange(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/commons/io/monitor/FileEntry;
    .param p2, "file"    # Ljava/io/File;

    .line 337
    invoke-virtual {p1, p2}, Lorg/apache/commons/io/monitor/FileEntry;->refresh(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 346
    :cond_0
    return-void
.end method

.method private fireOnCreate(Lorg/apache/commons/io/monitor/FileEntry;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/commons/io/monitor/FileEntry;

    .line 354
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda4;-><init>(Lorg/apache/commons/io/monitor/FileEntry;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 361
    invoke-virtual {p1}, Lorg/apache/commons/io/monitor/FileEntry;->getChildren()[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda5;-><init>(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 362
    return-void
.end method

.method private fireOnDelete(Lorg/apache/commons/io/monitor/FileEntry;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/commons/io/monitor/FileEntry;

    .line 370
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda8;-><init>(Lorg/apache/commons/io/monitor/FileEntry;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 377
    return-void
.end method

.method static synthetic lambda$fireOnChange$2(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;Lorg/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 1
    .param p0, "entry"    # Lorg/apache/commons/io/monitor/FileEntry;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/monitor/FileAlterationListener;

    .line 339
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-interface {p2, p1}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onDirectoryChange(Ljava/io/File;)V

    goto :goto_0

    .line 342
    :cond_0
    invoke-interface {p2, p1}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onFileChange(Ljava/io/File;)V

    .line 344
    :goto_0
    return-void
.end method

.method static synthetic lambda$fireOnCreate$3(Lorg/apache/commons/io/monitor/FileEntry;Lorg/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 1
    .param p0, "entry"    # Lorg/apache/commons/io/monitor/FileEntry;
    .param p1, "listener"    # Lorg/apache/commons/io/monitor/FileAlterationListener;

    .line 355
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onDirectoryCreate(Ljava/io/File;)V

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onFileCreate(Ljava/io/File;)V

    .line 360
    :goto_0
    return-void
.end method

.method static synthetic lambda$fireOnDelete$4(Lorg/apache/commons/io/monitor/FileEntry;Lorg/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 1
    .param p0, "entry"    # Lorg/apache/commons/io/monitor/FileEntry;
    .param p1, "listener"    # Lorg/apache/commons/io/monitor/FileAlterationListener;

    .line 371
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onDirectoryDelete(Ljava/io/File;)V

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onFileDelete(Ljava/io/File;)V

    .line 376
    :goto_0
    return-void
.end method

.method static synthetic lambda$listFileEntries$6(I)[Lorg/apache/commons/io/monitor/FileEntry;
    .locals 1
    .param p0, "x$0"    # I

    .line 426
    new-array v0, p0, [Lorg/apache/commons/io/monitor/FileEntry;

    return-object v0
.end method

.method private listFileEntries(Ljava/io/File;Lorg/apache/commons/io/monitor/FileEntry;)[Lorg/apache/commons/io/monitor/FileEntry;
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "entry"    # Lorg/apache/commons/io/monitor/FileEntry;

    .line 426
    invoke-direct {p0, p1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/io/monitor/FileAlterationObserver;Lorg/apache/commons/io/monitor/FileEntry;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/io/monitor/FileEntry;

    return-object v0
.end method

.method private listFiles(Ljava/io/File;)[Ljava/io/File;
    .locals 1
    .param p1, "directory"    # Ljava/io/File;

    .line 436
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fileFilter:Ljava/io/FileFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->sort([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    :goto_0
    return-object v0
.end method

.method private sort([Ljava/io/File;)[Ljava/io/File;
    .locals 2
    .param p1, "files"    # [Ljava/io/File;

    .line 451
    if-nez p1, :cond_0

    .line 452
    sget-object v0, Lorg/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    return-object v0

    .line 454
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 455
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->comparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 457
    :cond_1
    return-object p1
.end method

.method private static toComparator(Lorg/apache/commons/io/IOCase;)Ljava/util/Comparator;
    .locals 2
    .param p0, "ioCase"    # Lorg/apache/commons/io/IOCase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/IOCase;",
            ")",
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 125
    sget-object v0, Lorg/apache/commons/io/monitor/FileAlterationObserver$1;->$SwitchMap$org$apache$commons$io$IOCase:[I

    sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, v1}, Lorg/apache/commons/io/IOCase;->value(Lorg/apache/commons/io/IOCase;Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/IOCase;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/io/IOCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 131
    sget-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_COMPARATOR:Ljava/util/Comparator;

    return-object v0

    .line 129
    :pswitch_0
    sget-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

    return-object v0

    .line 127
    :pswitch_1
    sget-object v0, Lorg/apache/commons/io/comparator/NameFileComparator;->NAME_SYSTEM_COMPARATOR:Ljava/util/Comparator;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addListener(Lorg/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/commons/io/monitor/FileAlterationListener;

    .line 247
    if-eqz p1, :cond_0

    .line 248
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_0
    return-void
.end method

.method public checkAndNotify()V
    .locals 4

    .line 291
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda6;-><init>(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 294
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v0

    .line 295
    .local v0, "rootFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    iget-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v2}, Lorg/apache/commons/io/monitor/FileEntry;->getChildren()[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v2

    invoke-direct {p0, v0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->checkAndFire(Lorg/apache/commons/io/monitor/FileEntry;[Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v1}, Lorg/apache/commons/io/monitor/FileEntry;->isExists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    iget-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v2}, Lorg/apache/commons/io/monitor/FileEntry;->getChildren()[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->checkAndFire(Lorg/apache/commons/io/monitor/FileEntry;[Lorg/apache/commons/io/monitor/FileEntry;[Ljava/io/File;)V

    .line 303
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    new-instance v2, Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda7;-><init>(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 304
    return-void
.end method

.method public destroy()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 328
    return-void
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 385
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v0}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFileFilter()Ljava/io/FileFilter;
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fileFilter:Ljava/io/FileFilter;

    return-object v0
.end method

.method public getListeners()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/io/monitor/FileAlterationListener;",
            ">;"
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public initialize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v1}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/monitor/FileEntry;->refresh(Ljava/io/File;)Z

    .line 415
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-virtual {v1}, Lorg/apache/commons/io/monitor/FileEntry;->getFile()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listFileEntries(Ljava/io/File;Lorg/apache/commons/io/monitor/FileEntry;)[Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/monitor/FileEntry;->setChildren([Lorg/apache/commons/io/monitor/FileEntry;)V

    .line 416
    return-void
.end method

.method synthetic lambda$checkAndNotify$0$org-apache-commons-io-monitor-FileAlterationObserver(Lorg/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/commons/io/monitor/FileAlterationListener;

    .line 291
    invoke-interface {p1, p0}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onStart(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    return-void
.end method

.method synthetic lambda$checkAndNotify$1$org-apache-commons-io-monitor-FileAlterationObserver(Lorg/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/commons/io/monitor/FileAlterationListener;

    .line 303
    invoke-interface {p1, p0}, Lorg/apache/commons/io/monitor/FileAlterationListener;->onStop(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    return-void
.end method

.method synthetic lambda$listFileEntries$5$org-apache-commons-io-monitor-FileAlterationObserver(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;
    .locals 1
    .param p1, "entry"    # Lorg/apache/commons/io/monitor/FileEntry;
    .param p2, "f"    # Ljava/io/File;

    .line 426
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->createFileEntry(Lorg/apache/commons/io/monitor/FileEntry;Ljava/io/File;)Lorg/apache/commons/io/monitor/FileEntry;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Lorg/apache/commons/io/monitor/FileAlterationListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/apache/commons/io/monitor/FileAlterationListener;

    .line 445
    if-eqz p1, :cond_0

    .line 446
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/monitor/FileAlterationObserver$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/monitor/FileAlterationListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 448
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const-string v1, "[file=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->fileFilter:Ljava/io/FileFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    const-string v1, ", listeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    iget-object v1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
