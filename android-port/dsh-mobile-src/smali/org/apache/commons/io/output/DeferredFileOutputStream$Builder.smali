.class public Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "DeferredFileOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/output/DeferredFileOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/output/DeferredFileOutputStream;",
        "Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private directory:Ljava/nio/file/Path;

.field private outputFile:Ljava/nio/file/Path;

.field private prefix:Ljava/lang/String;

.field private suffix:Ljava/lang/String;

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 90
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->setBufferSizeDefault(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 91
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    .line 92
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

    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->get()Lorg/apache/commons/io/output/DeferredFileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/output/DeferredFileOutputStream;
    .locals 9

    .line 112
    new-instance v8, Lorg/apache/commons/io/output/DeferredFileOutputStream;

    iget v1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->threshold:I

    iget-object v2, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->outputFile:Ljava/nio/file/Path;

    iget-object v3, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->prefix:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->suffix:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->directory:Ljava/nio/file/Path;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->getBufferSize()I

    move-result v6

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/io/output/DeferredFileOutputStream;-><init>(ILjava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;Ljava/nio/file/Path;ILorg/apache/commons/io/output/DeferredFileOutputStream$1;)V

    return-object v8
.end method

.method public setDirectory(Ljava/io/File;)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 1
    .param p1, "directory"    # Ljava/io/File;

    .line 122
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->access$100(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->directory:Ljava/nio/file/Path;

    .line 123
    return-object p0
.end method

.method public setDirectory(Ljava/nio/file/Path;)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 1
    .param p1, "directory"    # Ljava/nio/file/Path;

    .line 134
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->access$200(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->directory:Ljava/nio/file/Path;

    .line 135
    return-object p0
.end method

.method public setOutputFile(Ljava/io/File;)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 1
    .param p1, "outputFile"    # Ljava/io/File;

    .line 145
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->access$100(Ljava/io/File;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->outputFile:Ljava/nio/file/Path;

    .line 146
    return-object p0
.end method

.method public setOutputFile(Ljava/nio/file/Path;)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 1
    .param p1, "outputFile"    # Ljava/nio/file/Path;

    .line 157
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/commons/io/output/DeferredFileOutputStream;->access$200(Ljava/nio/file/Path;Ljava/util/function/Supplier;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->outputFile:Ljava/nio/file/Path;

    .line 158
    return-object p0
.end method

.method public setPrefix(Ljava/lang/String;)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .line 168
    iput-object p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->prefix:Ljava/lang/String;

    .line 169
    return-object p0
.end method

.method public setSuffix(Ljava/lang/String;)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 0
    .param p1, "suffix"    # Ljava/lang/String;

    .line 179
    iput-object p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->suffix:Ljava/lang/String;

    .line 180
    return-object p0
.end method

.method public setThreshold(I)Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;
    .locals 0
    .param p1, "threshold"    # I

    .line 190
    iput p1, p0, Lorg/apache/commons/io/output/DeferredFileOutputStream$Builder;->threshold:I

    .line 191
    return-object p0
.end method
