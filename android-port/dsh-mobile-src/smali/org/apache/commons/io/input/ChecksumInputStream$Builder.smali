.class public Lorg/apache/commons/io/input/ChecksumInputStream$Builder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "ChecksumInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ChecksumInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/ChecksumInputStream;",
        "Lorg/apache/commons/io/input/ChecksumInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private checksum:Ljava/util/zip/Checksum;

.field private countThreshold:J

.field private expectedChecksumValue:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 99
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->countThreshold:J

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

    .line 99
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->get()Lorg/apache/commons/io/input/ChecksumInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/ChecksumInputStream;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    new-instance v8, Lorg/apache/commons/io/input/ChecksumInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->checksum:Ljava/util/zip/Checksum;

    iget-wide v3, p0, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->expectedChecksumValue:J

    iget-wide v5, p0, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->countThreshold:J

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/io/input/ChecksumInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;JJLorg/apache/commons/io/input/ChecksumInputStream$1;)V

    return-object v8
.end method

.method public setChecksum(Ljava/util/zip/Checksum;)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;
    .locals 0
    .param p1, "checksum"    # Ljava/util/zip/Checksum;

    .line 155
    iput-object p1, p0, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->checksum:Ljava/util/zip/Checksum;

    .line 156
    return-object p0
.end method

.method public setCountThreshold(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;
    .locals 0
    .param p1, "countThreshold"    # J

    .line 170
    iput-wide p1, p0, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->countThreshold:J

    .line 171
    return-object p0
.end method

.method public setExpectedChecksumValue(J)Lorg/apache/commons/io/input/ChecksumInputStream$Builder;
    .locals 0
    .param p1, "expectedChecksumValue"    # J

    .line 181
    iput-wide p1, p0, Lorg/apache/commons/io/input/ChecksumInputStream$Builder;->expectedChecksumValue:J

    .line 182
    return-object p0
.end method
