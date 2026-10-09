.class public Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;
.super Ljava/lang/Object;
.source "ScatterZipOutputStream.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZipEntryWriter"
.end annotation


# instance fields
.field private final itemsIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final itemsIteratorData:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;)V
    .locals 1
    .param p1, "scatter"    # Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->access$000(Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;)Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;->closeForWriting()V

    .line 87
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->access$100(Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;->itemsIterator:Ljava/util/Iterator;

    .line 88
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;->access$000(Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream;)Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/compress/parallel/ScatterGatherBackingStore;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;->itemsIteratorData:Ljava/io/InputStream;

    .line 89
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;->itemsIteratorData:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;->itemsIteratorData:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 96
    :cond_0
    return-void
.end method

.method public writeNextZipEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;)V
    .locals 4
    .param p1, "target"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;->itemsIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;

    .line 101
    .local v0, "compressedEntry":Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;
    invoke-static {}, Lorg/apache/commons/io/input/BoundedInputStream;->builder()Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$ZipEntryWriter;->itemsIteratorData:Ljava/io/InputStream;

    .line 102
    invoke-virtual {v1, v2}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setInputStream(Ljava/io/InputStream;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    iget-wide v2, v0, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->compressedSize:J

    .line 103
    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setMaxCount(J)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    .line 104
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->setPropagateClose(Z)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/input/BoundedInputStream$Builder;

    .line 105
    invoke-virtual {v1}, Lorg/apache/commons/io/input/BoundedInputStream$Builder;->get()Lorg/apache/commons/io/input/BoundedInputStream;

    move-result-object v1

    .line 106
    .local v1, "rawStream":Lorg/apache/commons/io/input/BoundedInputStream;
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ScatterZipOutputStream$CompressedEntry;->transferToArchiveEntry()Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->addRawArchiveEntry(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/io/input/BoundedInputStream;->close()V

    .line 109
    .end local v1    # "rawStream":Lorg/apache/commons/io/input/BoundedInputStream;
    :cond_0
    return-void

    .line 101
    .restart local v1    # "rawStream":Lorg/apache/commons/io/input/BoundedInputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Lorg/apache/commons/io/input/BoundedInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method
