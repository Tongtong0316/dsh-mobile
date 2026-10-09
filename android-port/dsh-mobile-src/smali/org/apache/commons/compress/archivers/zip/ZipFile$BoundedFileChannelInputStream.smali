.class Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedFileChannelInputStream;
.super Lorg/apache/commons/compress/utils/BoundedArchiveInputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BoundedFileChannelInputStream"
.end annotation


# instance fields
.field private final archive:Ljava/nio/channels/FileChannel;


# direct methods
.method constructor <init>(JJLjava/nio/channels/FileChannel;)V
    .locals 0
    .param p1, "start"    # J
    .param p3, "remaining"    # J
    .param p5, "archive"    # Ljava/nio/channels/FileChannel;

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/utils/BoundedArchiveInputStream;-><init>(JJ)V

    .line 100
    iput-object p5, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedFileChannelInputStream;->archive:Ljava/nio/channels/FileChannel;

    .line 101
    return-void
.end method


# virtual methods
.method protected read(JLjava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "pos"    # J
    .param p3, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedFileChannelInputStream;->archive:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p3, p1, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    .line 106
    .local v0, "read":I
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 107
    return v0
.end method
