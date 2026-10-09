.class public final Lorg/apache/commons/compress/archivers/Lister;
.super Ljava/lang/Object;
.source "Lister.java"


# static fields
.field private static final FACTORY:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;


# instance fields
.field private final args:[Ljava/lang/String;

.field private final quiet:Z


# direct methods
.method public static synthetic $r8$lambda$7K4LkutmeGo0zI0-b7r0c4f8_vw(Lorg/apache/commons/compress/archivers/Lister;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/Lister;->println(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jeylU3_PA2GF71ZeMnn8XGhZPmk(Lorg/apache/commons/compress/archivers/Lister;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/Lister;->println(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-object v0, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->DEFAULT:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    sput-object v0, Lorg/apache/commons/compress/archivers/Lister;->FACTORY:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v2, v0}, Lorg/apache/commons/compress/archivers/Lister;-><init>(Z[Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method varargs constructor <init>(Z[Ljava/lang/String;)V
    .locals 2
    .param p1, "quiet"    # Z
    .param p2, "args"    # [Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/Lister;->quiet:Z

    .line 108
    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/Lister;->args:[Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string v1, "args[0]"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method private static createArchiveInputStream([Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/apache/commons/compress/archivers/ArchiveInputStream<",
            "+TE;>;E::",
            "Lorg/apache/commons/compress/archivers/ArchiveEntry;",
            ">([",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;
        }
    .end annotation

    .line 53
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 54
    sget-object v0, Lorg/apache/commons/compress/archivers/Lister;->FACTORY:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    aget-object v1, p0, v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    sget-object v0, Lorg/apache/commons/compress/archivers/Lister;->FACTORY:Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->createArchiveInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v0

    return-object v0
.end method

.method private static detectFormat(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/io/BufferedInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->detect(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 61
    return-object v1

    .line 60
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private varargs list(Ljava/nio/file/Path;[Ljava/lang/String;)V
    .locals 5
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Analyzing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/Lister;->println(Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t exist or is a directory"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    :cond_0
    array-length v1, p2

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    aget-object v1, p2, v2

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/Lister;->detectFormat(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "format":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/Lister;->println(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    const-string v0, "zip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :sswitch_1
    const-string v0, "tar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_2
    const-string v2, "7z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :goto_1
    const/4 v0, -0x1

    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 134
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/Lister;->listStream(Ljava/nio/file/Path;[Ljava/lang/String;)V

    goto :goto_3

    .line 131
    :pswitch_0
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/Lister;->listZipUsingTarFile(Ljava/nio/file/Path;)V

    .line 132
    goto :goto_3

    .line 128
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/Lister;->listZipUsingZipFile(Ljava/nio/file/Path;)V

    .line 129
    goto :goto_3

    .line 125
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/Lister;->list7z(Ljava/nio/file/Path;)V

    .line 126
    nop

    .line 136
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x723 -> :sswitch_2
        0x1bfa5 -> :sswitch_1
        0x1d721 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private list7z(Ljava/nio/file/Path;)V
    .locals 4
    .param p1, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-static {}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->builder()Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->setPath(Ljava/nio/file/Path;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->get()Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    move-result-object v0

    .line 140
    .local v0, "sevenZFile":Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/Lister;->println(Ljava/lang/String;)V

    .line 142
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getNextEntry()Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    move-result-object v1

    move-object v2, v1

    .local v2, "entry":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    if-eqz v1, :cond_1

    .line 143
    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getDefaultName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (entry name was null)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/Lister;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 145
    .end local v2    # "entry":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->close()V

    .line 146
    .end local v0    # "sevenZFile":Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    :cond_2
    return-void

    .line 139
    .restart local v0    # "sevenZFile":Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v1
.end method

.method private listStream(Ljava/nio/file/Path;[Ljava/lang/String;)V
    .locals 4
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/io/BufferedInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 150
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p2, v0}, Lorg/apache/commons/compress/archivers/Lister;->createArchiveInputStream([Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/archivers/ArchiveInputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 151
    .local v1, "archiveInputStream":Lorg/apache/commons/compress/archivers/ArchiveInputStream;, "Lorg/apache/commons/compress/archivers/ArchiveInputStream<*>;"
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/Lister;->println(Ljava/lang/String;)V

    .line 152
    new-instance v2, Lorg/apache/commons/compress/archivers/Lister$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/apache/commons/compress/archivers/Lister$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/compress/archivers/Lister;)V

    invoke-virtual {v1, v2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->forEach(Lorg/apache/commons/io/function/IOConsumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v1    # "archiveInputStream":Lorg/apache/commons/compress/archivers/ArchiveInputStream;, "Lorg/apache/commons/compress/archivers/ArchiveInputStream<*>;"
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 154
    .end local v0    # "inputStream":Ljava/io/InputStream;
    return-void

    .line 149
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "archiveInputStream":Lorg/apache/commons/compress/archivers/ArchiveInputStream;, "Lorg/apache/commons/compress/archivers/ArchiveInputStream<*>;"
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local p1    # "file":Ljava/nio/file/Path;
    .end local p2    # "args":[Ljava/lang/String;
    :cond_1
    :goto_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v1    # "archiveInputStream":Lorg/apache/commons/compress/archivers/ArchiveInputStream;, "Lorg/apache/commons/compress/archivers/ArchiveInputStream<*>;"
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local p1    # "file":Ljava/nio/file/Path;
    .restart local p2    # "args":[Ljava/lang/String;
    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method private listZipUsingTarFile(Ljava/nio/file/Path;)V
    .locals 3
    .param p1, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/archivers/tar/TarFile;-><init>(Ljava/nio/file/Path;)V

    .line 158
    .local v0, "tarFile":Lorg/apache/commons/compress/archivers/tar/TarFile;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/Lister;->println(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->getEntries()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/compress/archivers/Lister$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/apache/commons/compress/archivers/Lister$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/compress/archivers/Lister;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->close()V

    .line 161
    .end local v0    # "tarFile":Lorg/apache/commons/compress/archivers/tar/TarFile;
    return-void

    .line 157
    .restart local v0    # "tarFile":Lorg/apache/commons/compress/archivers/tar/TarFile;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/tar/TarFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private listZipUsingZipFile(Ljava/nio/file/Path;)V
    .locals 3
    .param p1, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-static {}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->builder()Lorg/apache/commons/compress/archivers/zip/ZipFile$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Builder;->setPath(Ljava/nio/file/Path;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Builder;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Builder;->get()Lorg/apache/commons/compress/archivers/zip/ZipFile;

    move-result-object v0

    .line 165
    .local v0, "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/Lister;->println(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/archivers/ArchiveEntry;

    invoke-direct {p0, v2}, Lorg/apache/commons/compress/archivers/Lister;->println(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 169
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;>;"
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V

    .line 170
    .end local v0    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :cond_1
    return-void

    .line 164
    .restart local v0    # "zipFile":Lorg/apache/commons/compress/archivers/zip/ZipFile;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/Lister;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/compress/archivers/Lister;-><init>(Z[Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/Lister;->go()V

    .line 84
    return-void

    .line 80
    :cond_1
    :goto_0
    invoke-static {}, Lorg/apache/commons/compress/archivers/Lister;->usage()V

    .line 81
    return-void
.end method

.method private println(Ljava/lang/String;)V
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .line 177
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/Lister;->quiet:Z

    if-nez v0, :cond_0

    .line 178
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method

.method private println(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 1
    .param p1, "entry"    # Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 173
    invoke-interface {p1}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/Lister;->println(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method private static usage()V
    .locals 2

    .line 87
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Parameters: archive-name [archive-type]\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The magic archive-type \'zipfile\' prefers ZipFile over ZipArchiveInputStream"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The magic archive-type \'tarfile\' prefers TarFile over TarArchiveInputStream"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    return-void
.end method


# virtual methods
.method go()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/archivers/ArchiveException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/Lister;->args:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/Lister;->args:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/archivers/Lister;->list(Ljava/nio/file/Path;[Ljava/lang/String;)V

    .line 114
    return-void
.end method
