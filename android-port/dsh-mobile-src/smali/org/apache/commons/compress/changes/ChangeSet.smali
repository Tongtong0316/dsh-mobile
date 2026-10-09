.class public final Lorg/apache/commons/compress/changes/ChangeSet;
.super Ljava/lang/Object;
.source "ChangeSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
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
.method public constructor <init>()V
    .locals 1

    .line 36
    .local p0, "this":Lorg/apache/commons/compress/changes/ChangeSet;, "Lorg/apache/commons/compress/changes/ChangeSet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    return-void
.end method

.method private addAddition(Lorg/apache/commons/compress/changes/Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/changes/Change<",
            "TE;>;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/apache/commons/compress/changes/ChangeSet;, "Lorg/apache/commons/compress/changes/ChangeSet<TE;>;"
    .local p1, "addChange":Lorg/apache/commons/compress/changes/Change;, "Lorg/apache/commons/compress/changes/Change<TE;>;"
    sget-object v0, Lorg/apache/commons/compress/changes/Change$ChangeType;->ADD:Lorg/apache/commons/compress/changes/Change$ChangeType;

    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->getType()Lorg/apache/commons/compress/changes/Change$ChangeType;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 74
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/changes/Change<TE;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/changes/Change;

    .line 76
    .local v1, "change":Lorg/apache/commons/compress/changes/Change;, "Lorg/apache/commons/compress/changes/Change<TE;>;"
    invoke-virtual {v1}, Lorg/apache/commons/compress/changes/Change;->getType()Lorg/apache/commons/compress/changes/Change$ChangeType;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/compress/changes/Change$ChangeType;->ADD:Lorg/apache/commons/compress/changes/Change$ChangeType;

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 77
    invoke-virtual {v1}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v2

    .line 79
    .local v2, "entry":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->isReplaceMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 82
    iget-object v3, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_1
    return-void

    .line 88
    .end local v1    # "change":Lorg/apache/commons/compress/changes/Change;, "Lorg/apache/commons/compress/changes/Change<TE;>;"
    .end local v2    # "entry":Lorg/apache/commons/compress/archivers/ArchiveEntry;
    :cond_2
    goto :goto_0

    .line 90
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/changes/Change<TE;>;>;"
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    return-void

    .line 70
    :cond_4
    :goto_1
    return-void
.end method

.method private addDeletion(Lorg/apache/commons/compress/changes/Change;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/changes/Change<",
            "TE;>;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/apache/commons/compress/changes/ChangeSet;, "Lorg/apache/commons/compress/changes/ChangeSet<TE;>;"
    .local p1, "deleteChange":Lorg/apache/commons/compress/changes/Change;, "Lorg/apache/commons/compress/changes/Change<TE;>;"
    sget-object v0, Lorg/apache/commons/compress/changes/Change$ChangeType;->DELETE:Lorg/apache/commons/compress/changes/Change$ChangeType;

    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->getType()Lorg/apache/commons/compress/changes/Change$ChangeType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/apache/commons/compress/changes/Change$ChangeType;->DELETE_DIR:Lorg/apache/commons/compress/changes/Change$ChangeType;

    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->getType()Lorg/apache/commons/compress/changes/Change$ChangeType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->getTargetFileName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 100
    :cond_1
    return-void

    .line 102
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->getTargetFileName()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "source":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 104
    .local v1, "pattern":Ljava/util/regex/Pattern;
    if-eqz v0, :cond_7

    iget-object v2, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 105
    iget-object v2, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/changes/Change<TE;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 106
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/compress/changes/Change;

    .line 107
    .local v3, "change":Lorg/apache/commons/compress/changes/Change;, "Lorg/apache/commons/compress/changes/Change<TE;>;"
    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->getType()Lorg/apache/commons/compress/changes/Change$ChangeType;

    move-result-object v4

    sget-object v5, Lorg/apache/commons/compress/changes/Change$ChangeType;->ADD:Lorg/apache/commons/compress/changes/Change$ChangeType;

    if-ne v4, v5, :cond_6

    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 108
    invoke-virtual {v3}, Lorg/apache/commons/compress/changes/Change;->getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/compress/archivers/ArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "target":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 110
    goto :goto_0

    .line 112
    :cond_3
    sget-object v5, Lorg/apache/commons/compress/changes/Change$ChangeType;->DELETE:Lorg/apache/commons/compress/changes/Change$ChangeType;

    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->getType()Lorg/apache/commons/compress/changes/Change$ChangeType;

    move-result-object v6

    if-ne v5, v6, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    sget-object v5, Lorg/apache/commons/compress/changes/Change$ChangeType;->DELETE_DIR:Lorg/apache/commons/compress/changes/Change$ChangeType;

    .line 113
    invoke-virtual {p1}, Lorg/apache/commons/compress/changes/Change;->getType()Lorg/apache/commons/compress/changes/Change$ChangeType;

    move-result-object v6

    if-ne v5, v6, :cond_6

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 114
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 117
    .end local v3    # "change":Lorg/apache/commons/compress/changes/Change;, "Lorg/apache/commons/compress/changes/Change<TE;>;"
    .end local v4    # "target":Ljava/lang/String;
    :cond_6
    goto :goto_0

    .line 119
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/commons/compress/changes/Change<TE;>;>;"
    :cond_7
    iget-object v2, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;)V
    .locals 1
    .param p2, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lorg/apache/commons/compress/changes/ChangeSet;, "Lorg/apache/commons/compress/changes/ChangeSet<TE;>;"
    .local p1, "entry":Lorg/apache/commons/compress/archivers/ArchiveEntry;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/changes/ChangeSet;->add(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;Z)V

    .line 48
    return-void
.end method

.method public add(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;Z)V
    .locals 1
    .param p2, "input"    # Ljava/io/InputStream;
    .param p3, "replace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/io/InputStream;",
            "Z)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lorg/apache/commons/compress/changes/ChangeSet;, "Lorg/apache/commons/compress/changes/ChangeSet<TE;>;"
    .local p1, "entry":Lorg/apache/commons/compress/archivers/ArchiveEntry;, "TE;"
    new-instance v0, Lorg/apache/commons/compress/changes/Change;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/compress/changes/Change;-><init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;Z)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/changes/ChangeSet;->addAddition(Lorg/apache/commons/compress/changes/Change;)V

    .line 60
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 128
    .local p0, "this":Lorg/apache/commons/compress/changes/ChangeSet;, "Lorg/apache/commons/compress/changes/ChangeSet<TE;>;"
    new-instance v0, Lorg/apache/commons/compress/changes/Change;

    sget-object v1, Lorg/apache/commons/compress/changes/Change$ChangeType;->DELETE:Lorg/apache/commons/compress/changes/Change$ChangeType;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/changes/Change;-><init>(Ljava/lang/String;Lorg/apache/commons/compress/changes/Change$ChangeType;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/changes/ChangeSet;->addDeletion(Lorg/apache/commons/compress/changes/Change;)V

    .line 129
    return-void
.end method

.method public deleteDir(Ljava/lang/String;)V
    .locals 2
    .param p1, "dirName"    # Ljava/lang/String;

    .line 137
    .local p0, "this":Lorg/apache/commons/compress/changes/ChangeSet;, "Lorg/apache/commons/compress/changes/ChangeSet<TE;>;"
    new-instance v0, Lorg/apache/commons/compress/changes/Change;

    sget-object v1, Lorg/apache/commons/compress/changes/Change$ChangeType;->DELETE_DIR:Lorg/apache/commons/compress/changes/Change$ChangeType;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/changes/Change;-><init>(Ljava/lang/String;Lorg/apache/commons/compress/changes/Change$ChangeType;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/changes/ChangeSet;->addDeletion(Lorg/apache/commons/compress/changes/Change;)V

    .line 138
    return-void
.end method

.method getChanges()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/changes/Change<",
            "TE;>;>;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lorg/apache/commons/compress/changes/ChangeSet;, "Lorg/apache/commons/compress/changes/ChangeSet<TE;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lorg/apache/commons/compress/changes/ChangeSet;->changes:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
