.class abstract Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;
.super Ljava/io/FilterOutputStream;
.source "AbstractStreamBridge.java"


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private final inputStreamLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;-><init>(Ljava/io/OutputStream;)V

    .line 40
    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 43
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;->inputStreamLock:Ljava/lang/Object;

    .line 44
    return-void
.end method


# virtual methods
.method abstract createInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;->inputStreamLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;->inputStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;->createInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;->inputStream:Ljava/io/InputStream;

    .line 59
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;->inputStream:Ljava/io/InputStream;

    return-object v0

    .line 59
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;->close()V

    .line 68
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;->inputStreamLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;->inputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/pack200/AbstractStreamBridge;->inputStream:Ljava/io/InputStream;

    .line 73
    :cond_0
    monitor-exit v0

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
