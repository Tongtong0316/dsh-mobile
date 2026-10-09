.class public Lorg/apache/commons/io/output/DeferredFileOutputStream;
.super Lorg/apache/commons/io/output/ThresholdingOutputStream;
.source "DeferredFileOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    }
.end annotation


# instance fields
.field private closed:Z

.field private currentOutputStream:Ljava/io/OutputStream;

.field private final directory:Ljava/nio/file/Path;

.field private memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

.field private outputPath:Ljava/nio/file/Path;

.field private final prefix:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/io/File;)V
    .locals 7
    .param p1, "threshold"    # I
    .param p2, "initialBufferSize"    # I
    .param p3, "outputFile"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    .line 303
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 8
    .param p1, "threshold"    # I
    .param p2, "initialBufferSize"    # I
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "suffix"    # Ljava/lang/String;
    .param p5, "directory"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    const-string v0, "prefix"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move-object v5, p4

    move-object v6, p5

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    .line 319
    return-void
.end method

.method public constructor <init>(ILjava/io/File;)V
    .locals 7
    .param p1, "threshold"    # I
    .param p2, "outputFile"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 266
    const/4 v5, 0x0

    const/16 v6, 0x400

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    .line 267
    return-void
.end method

.method private constructor <init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V
    .locals 2
    .param p1, "threshold"    # I
    .param p2, "outputFile"    # Ljava/io/File;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "suffix"    # Ljava/lang/String;
    .param p5, "directory"    # Ljava/io/File;
    .param p6, "initialBufferSize"    # I

    .line 282
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ThresholdingOutputStream;-><init>(I)V

    .line 283
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->toPath(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputPath:Ljava/nio/file/Path;

    .line 284
    iput-object p3, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;

    .line 285
    iput-object p4, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->suffix:Ljava/lang/String;

    .line 286
    new-instance v0, Lorg/apache/commons/io/output/DeferredFileOutputStream$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p5, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->toPath(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->directory:Ljava/nio/file/Path;

    .line 287
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-static {p6}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->checkBufferSize(I)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    .line 288
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    .line 289
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 8
    .param p1, "threshold"    # I
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "directory"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    const-string v0, "prefix"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x400

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)V

    .line 357
    return-void
.end method

.method private constructor <init>(ILjava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Ljava/nio/file/Path;I)V
    .locals 2
    .param p1, "threshold"    # I
    .param p2, "outputFile"    # Ljava/nio/file/Path;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "suffix"    # Ljava/lang/String;
    .param p5, "directory"    # Ljava/nio/file/Path;
    .param p6, "initialBufferSize"    # I

    .line 334
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ThresholdingOutputStream;-><init>(I)V

    .line 335
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->toPath(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputPath:Ljava/nio/file/Path;

    .line 336
    iput-object p3, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;

    .line 337
    iput-object p4, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->suffix:Ljava/lang/String;

    .line 338
    new-instance v0, Lorg/apache/commons/io/output/DeferredFileOutputStream$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p5, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->toPath(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->directory:Ljava/nio/file/Path;

    .line 339
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-static {p6}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->checkBufferSize(I)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    .line 340
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    .line 341
    return-void
.end method

.method synthetic constructor <init>(ILjava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Ljava/nio/file/Path;ILorg/apache/commons/io/output/DeferredFileOutputStream$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/nio/file/Path;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/nio/file/Path;
    .param p6, "x5"    # I
    .param p7, "x6"    # Lorg/apache/commons/io/output/DeferredFileOutputStream$1;

    .line 52
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Ljava/nio/file/Path;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "x0"    # Ljava/io/File;
    .param p1, "x1"    # Ljava/util/function/Supplier;

    .line 52
    invoke-static {p0, p1}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->toPath(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "x0"    # Ljava/nio/file/Path;
    .param p1, "x1"    # Ljava/util/function/Supplier;

    .line 52
    invoke-static {p0, p1}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->toPath(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 1

    .line 203
    new-instance v0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;-><init>()V

    return-object v0
.end method

.method private static checkBufferSize(I)I
    .locals 2
    .param p0, "initialBufferSize"    # I

    .line 207
    if-ltz p0, :cond_0

    .line 210
    return p0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initial buffer size must be at least 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toPath(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/function/Supplier<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .line 214
    .local p1, "defaultPathSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/nio/file/Path;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    :goto_0
    return-object v0
.end method

.method private static toPath(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/function/Supplier<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    .line 218
    .local p1, "defaultPathSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/nio/file/Path;>;"
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-super {p0}, Lorg/apache/commons/io/output/ThresholdingOutputStream;->close()V

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->closed:Z

    .line 368
    return-void
.end method

.method public getData()[B
    .locals 1

    .line 377
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 393
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputPath:Ljava/nio/file/Path;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputPath:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputPath:Ljava/nio/file/Path;

    return-object v0
.end method

.method protected getStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public isInMemory()Z
    .locals 1

    .line 430
    invoke-virtual {p0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->isThresholdExceeded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected thresholdReached()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->directory:Ljava/nio/file/Path;

    iget-object v2, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->prefix:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->suffix:Ljava/lang/String;

    new-array v4, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v2, v3, v4}, Ljava/nio/file/Files;->createTempFile(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputPath:Ljava/nio/file/Path;

    .line 444
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputPath:Ljava/nio/file/Path;

    sget-object v2, Lorg/apache/commons/io/file/PathUtils;->EMPTY_FILE_ATTRIBUTE_ARRAY:[Ljava/nio/file/attribute/FileAttribute;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lorg/apache/commons/io/file/PathUtils;->createParentDirectories(Ljava/nio/file/Path;Ljava/nio/file/LinkOption;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 445
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputPath:Ljava/nio/file/Path;

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    .line 447
    .local v0, "fos":Ljava/io/OutputStream;
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    nop

    .line 452
    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->currentOutputStream:Ljava/io/OutputStream;

    .line 453
    iput-object v3, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    .line 454
    return-void

    .line 448
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 450
    throw v1
.end method

.method public toInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    iget-boolean v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->closed:Z

    if-eqz v0, :cond_1

    .line 474
    invoke-virtual {p0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->isInMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 477
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputPath:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 472
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream not closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    iget-boolean v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->closed:Z

    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {p0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->isInMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->memoryOutputStream:Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 497
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream;->outputPath:Ljava/nio/file/Path;

    invoke-static {v0, p1}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/io/OutputStream;)J

    .line 499
    :goto_0
    return-void

    .line 492
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream not closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
