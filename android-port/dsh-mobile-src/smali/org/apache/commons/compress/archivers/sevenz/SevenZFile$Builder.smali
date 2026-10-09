.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "SevenZFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;",
        "Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;",
        ">;"
    }
.end annotation


# static fields
.field static final MEMORY_LIMIT_IN_KB:I = 0x7fffffff

.field static final TRY_TO_RECOVER_BROKEN_ARCHIVES:Z = false

.field static final USE_DEFAULTNAME_FOR_UNNAMED_ENTRIES:Z = false


# instance fields
.field private defaultName:Ljava/lang/String;

.field private maxMemoryLimitKb:I

.field private password:[B

.field private seekableByteChannel:Ljava/nio/channels/SeekableByteChannel;

.field private tryToRecoverBrokenArchives:Z

.field private useDefaultNameForUnnamedEntries:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 159
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 166
    const-string v0, "unknown archive"

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->defaultName:Ljava/lang/String;

    .line 168
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->maxMemoryLimitKb:I

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->useDefaultNameForUnnamedEntries:Z

    .line 170
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->tryToRecoverBrokenArchives:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->get()Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->seekableByteChannel:Ljava/nio/channels/SeekableByteChannel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->seekableByteChannel:Ljava/nio/channels/SeekableByteChannel;

    .line 179
    .local v0, "actualChannel":Ljava/nio/channels/SeekableByteChannel;
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->defaultName:Ljava/lang/String;

    .local v3, "actualDescription":Ljava/lang/String;
    goto :goto_0

    .line 180
    .end local v0    # "actualChannel":Ljava/nio/channels/SeekableByteChannel;
    .end local v3    # "actualDescription":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/commons/io/build/AbstractOrigin$ByteArrayOrigin;

    if-eqz v0, :cond_1

    .line 181
    new-instance v0, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/io/build/AbstractOrigin;->getByteArray()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/commons/compress/utils/SeekableInMemoryByteChannel;-><init>([B)V

    .line 182
    .restart local v0    # "actualChannel":Ljava/nio/channels/SeekableByteChannel;
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->defaultName:Ljava/lang/String;

    .restart local v3    # "actualDescription":Ljava/lang/String;
    goto :goto_0

    .line 184
    .end local v0    # "actualChannel":Ljava/nio/channels/SeekableByteChannel;
    .end local v3    # "actualDescription":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->getOpenOptions()[Ljava/nio/file/OpenOption;

    move-result-object v0

    .line 185
    .local v0, "openOptions":[Ljava/nio/file/OpenOption;
    array-length v3, v0

    if-nez v3, :cond_2

    .line 186
    new-array v3, v2, [Ljava/nio/file/OpenOption;

    sget-object v4, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v4, v3, v1

    move-object v0, v3

    .line 188
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->getPath()Ljava/nio/file/Path;

    move-result-object v3

    .line 189
    .local v3, "path":Ljava/nio/file/Path;
    invoke-static {v3, v0}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v4

    .line 190
    .local v4, "actualChannel":Ljava/nio/channels/SeekableByteChannel;
    invoke-interface {v3}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object v3, v5

    .line 192
    .end local v4    # "actualChannel":Ljava/nio/channels/SeekableByteChannel;
    .local v0, "actualChannel":Ljava/nio/channels/SeekableByteChannel;
    .local v3, "actualDescription":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->seekableByteChannel:Ljava/nio/channels/SeekableByteChannel;

    if-eqz v4, :cond_3

    move v10, v2

    goto :goto_1

    :cond_3
    move v10, v1

    .line 193
    .local v10, "closeOnError":Z
    :goto_1
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    iget-object v9, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->password:[B

    iget v11, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->maxMemoryLimitKb:I

    iget-boolean v12, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->useDefaultNameForUnnamedEntries:Z

    iget-boolean v13, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->tryToRecoverBrokenArchives:Z

    const/4 v14, 0x0

    move-object v6, v1

    move-object v7, v0

    move-object v8, v3

    invoke-direct/range {v6 .. v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/nio/channels/SeekableByteChannel;Ljava/lang/String;[BZIZZLorg/apache/commons/compress/archivers/sevenz/SevenZFile$1;)V

    return-object v1
.end method

.method public setDefaultName(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
    .locals 0
    .param p1, "defaultName"    # Ljava/lang/String;

    .line 204
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->defaultName:Ljava/lang/String;

    .line 205
    return-object p0
.end method

.method public setMaxMemoryLimitKb(I)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
    .locals 0
    .param p1, "maxMemoryLimitKb"    # I

    .line 218
    iput p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->maxMemoryLimitKb:I

    .line 219
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .line 251
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;->utf16Decode([C)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->password:[B

    .line 252
    return-object p0
.end method

.method public setPassword([B)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
    .locals 1
    .param p1, "password"    # [B

    .line 229
    if-eqz p1, :cond_0

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->password:[B

    .line 230
    return-object p0
.end method

.method public setPassword([C)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
    .locals 1
    .param p1, "password"    # [C

    .line 240
    if-eqz p1, :cond_0

    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;->utf16Decode([C)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->password:[B

    .line 241
    return-object p0
.end method

.method public setSeekableByteChannel(Ljava/nio/channels/SeekableByteChannel;)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
    .locals 0
    .param p1, "seekableByteChannel"    # Ljava/nio/channels/SeekableByteChannel;

    .line 262
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->seekableByteChannel:Ljava/nio/channels/SeekableByteChannel;

    .line 263
    return-object p0
.end method

.method public setTryToRecoverBrokenArchives(Z)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
    .locals 0
    .param p1, "tryToRecoverBrokenArchives"    # Z

    .line 278
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->tryToRecoverBrokenArchives:Z

    .line 279
    return-object p0
.end method

.method public setUseDefaultNameForUnnamedEntries(Z)Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;
    .locals 0
    .param p1, "useDefaultNameForUnnamedEntries"    # Z

    .line 289
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$Builder;->useDefaultNameForUnnamedEntries:Z

    .line 290
    return-object p0
.end method
