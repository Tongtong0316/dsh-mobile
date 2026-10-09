.class public Lorg/apache/commons/compress/changes/ChangeSetPerformer;
.super Ljava/lang/Object;
.source "ChangeSetPerformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;,
        Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveInputStreamIterator;,
        Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/apache/commons/compress/archivers/ArchiveInputStream<",
        "TE;>;O:",
        "Lorg/apache/commons/compress/archivers/ArchiveOutputStream<",
        "TE;>;E::",
        "Lorg/apache/commons/compress/archivers/ArchiveEntry;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final changes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/changes/Change<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/changes/ChangeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/changes/ChangeSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/apache/commons/compress/changes/ChangeSetPerformer;, "Lorg/apache/commons/compress/changes/ChangeSetPerformer<TI;TO;TE;>;"
    .local p1, "changeSet":Lorg/apache/commons/compress/changes/ChangeSet;, "Lorg/apache/commons/compress/changes/ChangeSet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/ChangeSet;->getChanges()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->changes:Ljava/util/Set;

    .line 125
    return-void
.end method

.method private copyStream(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "TO;TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    .local p0, "this":Lorg/apache/commons/compress/changes/ChangeSetPerformer;, "Lorg/apache/commons/compress/changes/ChangeSetPerformer<TI;TO;TE;>;"
    .local p2, "outputStream":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "TO;"
    .local p3, "archiveEntry":Lorg/apache/commons/compress/archivers/ArchiveEntry;, "TE;"
    invoke-virtual {p2, p3}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 137
    invoke-static {p1, p2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 138
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->closeArchiveEntry()V

    .line 139
    return-void
.end method

.method private isDeletedLater(Ljava/util/Set;Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/changes/Change<",
            "TE;>;>;TE;)Z"
        }
    .end annotation

    .line 149
    .local p0, "this":Lorg/apache/commons/compress/changes/ChangeSetPerformer;, "Lorg/apache/commons/compress/changes/ChangeSetPerformer<TI;TO;TE;>;"
    .local p1, "workingSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/compress/changes/Change<TE;>;>;"
    .local p2, "entry":Lorg/apache/commons/compress/archivers/ArchiveEntry;, "TE;"
    invoke-interface {p2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "source":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 152
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/compress/changes/Change;

    .line 153
    .local v2, "change":Lorg/apache/commons/compress/changes/Change;, "Lorg/apache/commons/compress/changes/Change<TE;>;"
    invoke-virtual {v2}, Lorg/apache/commons/compress/changes/Change;->getType()Lorg/apache/commons/compress/changes/Change$ChangeType;

    move-result-object v3

    .line 154
    .local v3, "type":Lorg/apache/commons/compress/changes/Change$ChangeType;
    invoke-virtual {v2}, Lorg/apache/commons/compress/changes/Change;->getTargetFileName()Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "target":Ljava/lang/String;
    sget-object v5, Lorg/apache/commons/compress/changes/Change$ChangeType;->DELETE:Lorg/apache/commons/compress/changes/Change$ChangeType;

    const/4 v6, 0x1

    if-ne v3, v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    return v6

    .line 159
    :cond_0
    sget-object v5, Lorg/apache/commons/compress/changes/Change$ChangeType;->DELETE_DIR:Lorg/apache/commons/compress/changes/Change$ChangeType;

    if-ne v3, v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 160
    return v6

    .line 162
    .end local v2    # "change":Lorg/apache/commons/compress/changes/Change;, "Lorg/apache/commons/compress/changes/Change<TE;>;"
    .end local v3    # "type":Lorg/apache/commons/compress/changes/Change$ChangeType;
    .end local v4    # "target":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 164
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private perform(Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)Lorg/apache/commons/compress/changes/ChangeSetResults;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator<",
            "TE;>;TO;)",
            "Lorg/apache/commons/compress/changes/ChangeSetResults;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    .local p0, "this":Lorg/apache/commons/compress/changes/ChangeSetPerformer;, "Lorg/apache/commons/compress/changes/ChangeSetPerformer<TI;TO;TE;>;"
    .local p1, "entryIterator":Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;, "Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator<TE;>;"
    .local p2, "outputStream":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "TO;"
    new-instance v0, Lorg/apache/commons/compress/changes/ChangeSetResults;

    invoke-direct {v0}, Lorg/apache/commons/compress/changes/ChangeSetResults;-><init>()V

    .line 180
    .local v0, "results":Lorg/apache/commons/compress/changes/ChangeSetResults;
    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->changes:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 182
    .local v1, "workingSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/compress/changes/Change<TE;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/changes/Change<TE;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/changes/Change;

    .line 185
    .local v3, "change":Lorg/apache/commons/compress/changes/Change;, "Lorg/apache/commons/compress/changes/Change<TE;>;"
    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->getType()Lorg/apache/commons/compress/changes/Change$ChangeType;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/compress/changes/Change$ChangeType;->ADD:Lorg/apache/commons/compress/changes/Change$ChangeType;

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->isReplaceMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 188
    .local v4, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->copyStream(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 189
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 190
    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromChangeSet(Ljava/lang/String;)V

    .line 192
    .end local v3    # "change":Lorg/apache/commons/compress/changes/Change;, "Lorg/apache/commons/compress/changes/Change<TE;>;"
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :cond_0
    goto :goto_0

    .line 194
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/changes/Change<TE;>;>;"
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 195
    invoke-interface {p1}, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;->next()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v2

    .line 196
    .local v2, "entry":Lorg/apache/commons/compress/archivers/ArchiveEntry;, "TE;"
    const/4 v3, 0x1

    .line 198
    .local v3, "copy":Z
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/changes/Change<TE;>;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 199
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/compress/changes/Change;

    .line 201
    .local v5, "change":Lorg/apache/commons/compress/changes/Change;, "Lorg/apache/commons/compress/changes/Change<TE;>;"
    invoke-virtual {v5}, Lorg/apache/commons/compress/changes/Change;->getType()Lorg/apache/commons/compress/changes/Change$ChangeType;

    move-result-object v6

    .line 202
    .local v6, "type":Lorg/apache/commons/compress/changes/Change$ChangeType;
    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, "name":Ljava/lang/String;
    sget-object v8, Lorg/apache/commons/compress/changes/Change$ChangeType;->DELETE:Lorg/apache/commons/compress/changes/Change$ChangeType;

    if-ne v6, v8, :cond_2

    if-eqz v7, :cond_2

    .line 204
    invoke-virtual {v5}, Lorg/apache/commons/compress/changes/Change;->getTargetFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 205
    const/4 v3, 0x0

    .line 206
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 207
    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/changes/ChangeSetResults;->deleted(Ljava/lang/String;)V

    .line 208
    goto :goto_3

    .line 210
    :cond_2
    sget-object v8, Lorg/apache/commons/compress/changes/Change$ChangeType;->DELETE_DIR:Lorg/apache/commons/compress/changes/Change$ChangeType;

    if-ne v6, v8, :cond_3

    if-eqz v7, :cond_3

    .line 212
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lorg/apache/commons/compress/changes/Change;->getTargetFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 213
    const/4 v3, 0x0

    .line 214
    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/changes/ChangeSetResults;->deleted(Ljava/lang/String;)V

    .line 215
    goto :goto_3

    .line 218
    .end local v5    # "change":Lorg/apache/commons/compress/changes/Change;, "Lorg/apache/commons/compress/changes/Change<TE;>;"
    .end local v6    # "type":Lorg/apache/commons/compress/changes/Change$ChangeType;
    .end local v7    # "name":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 220
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/changes/Change<TE;>;>;"
    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->isDeletedLater(Ljava/util/Set;Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/changes/ChangeSetResults;->hasBeenAdded(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 222
    invoke-interface {p1}, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 223
    .local v4, "inputStream":Ljava/io/InputStream;
    invoke-direct {p0, v4, p2, v2}, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->copyStream(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 224
    invoke-interface {v2}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromStream(Ljava/lang/String;)V

    .line 226
    .end local v2    # "entry":Lorg/apache/commons/compress/archivers/ArchiveEntry;, "TE;"
    .end local v3    # "copy":Z
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :cond_5
    goto/16 :goto_1

    .line 229
    :cond_6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/changes/Change<TE;>;>;"
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 230
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/changes/Change;

    .line 232
    .local v3, "change":Lorg/apache/commons/compress/changes/Change;, "Lorg/apache/commons/compress/changes/Change<TE;>;"
    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->getType()Lorg/apache/commons/compress/changes/Change$ChangeType;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/compress/changes/Change$ChangeType;->ADD:Lorg/apache/commons/compress/changes/Change$ChangeType;

    if-ne v4, v5, :cond_7

    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->isReplaceMode()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/changes/ChangeSetResults;->hasBeenAdded(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 234
    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 235
    .local v4, "input":Ljava/io/InputStream;
    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->copyStream(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;Lorg/apache/commons/compress/archivers/ArchiveEntry;)V

    .line 236
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 237
    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/compress/changes/ChangeSetResults;->addedFromChangeSet(Ljava/lang/String;)V

    .line 239
    .end local v3    # "change":Lorg/apache/commons/compress/changes/Change;, "Lorg/apache/commons/compress/changes/Change<TE;>;"
    .end local v4    # "input":Ljava/io/InputStream;
    :cond_7
    goto :goto_4

    .line 240
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/changes/Change<TE;>;>;"
    :cond_8
    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;->finish()V

    .line 241
    return-object v0
.end method


# virtual methods
.method public perform(Lorg/apache/commons/compress/archivers/ArchiveInputStream;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)Lorg/apache/commons/compress/changes/ChangeSetResults;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;)",
            "Lorg/apache/commons/compress/changes/ChangeSetResults;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    .local p0, "this":Lorg/apache/commons/compress/changes/ChangeSetPerformer;, "Lorg/apache/commons/compress/changes/ChangeSetPerformer<TI;TO;TE;>;"
    .local p1, "inputStream":Lorg/apache/commons/compress/archivers/ArchiveInputStream;, "TI;"
    .local p2, "outputStream":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "TO;"
    new-instance v0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveInputStreamIterator;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveInputStreamIterator;-><init>(Lorg/apache/commons/compress/archivers/ArchiveInputStream;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->perform(Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)Lorg/apache/commons/compress/changes/ChangeSetResults;

    move-result-object v0

    return-object v0
.end method

.method public perform(Lorg/apache/commons/compress/archivers/zip/ZipFile;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)Lorg/apache/commons/compress/changes/ChangeSetResults;
    .locals 2
    .param p1, "zipFile"    # Lorg/apache/commons/compress/archivers/zip/ZipFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/archivers/zip/ZipFile;",
            "TO;)",
            "Lorg/apache/commons/compress/changes/ChangeSetResults;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    .local p0, "this":Lorg/apache/commons/compress/changes/ChangeSetPerformer;, "Lorg/apache/commons/compress/changes/ChangeSetPerformer<TI;TO;TE;>;"
    .local p2, "outputStream":Lorg/apache/commons/compress/archivers/ArchiveOutputStream;, "TO;"
    new-instance v0, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/changes/ChangeSetPerformer$ZipFileIterator;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V

    .line 272
    .local v0, "entryIterator":Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;, "Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator<TE;>;"
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/compress/changes/ChangeSetPerformer;->perform(Lorg/apache/commons/compress/changes/ChangeSetPerformer$ArchiveEntryIterator;Lorg/apache/commons/compress/archivers/ArchiveOutputStream;)Lorg/apache/commons/compress/changes/ChangeSetResults;

    move-result-object v1

    return-object v1
.end method
