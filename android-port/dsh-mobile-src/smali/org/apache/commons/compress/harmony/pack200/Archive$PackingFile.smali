.class Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;
.super Ljava/lang/Object;
.source "Archive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/pack200/Archive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackingFile"
.end annotation


# instance fields
.field private contents:[B

.field private final deflateHint:Z

.field private final isDirectory:Z

.field private final modtime:J

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[BJ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contents"    # [B
    .param p3, "modtime"    # J

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->name:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->contents:[B

    .line 55
    iput-wide p3, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->modtime:J

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->deflateHint:Z

    .line 57
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->isDirectory:Z

    .line 58
    return-void
.end method

.method constructor <init>([BLjava/util/jar/JarEntry;)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "jarEntry"    # Ljava/util/jar/JarEntry;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->name:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->contents:[B

    .line 47
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->modtime:J

    .line 48
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->deflateHint:Z

    .line 49
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->isDirectory:Z

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;)[B
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;

    .line 36
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->contents:[B

    return-object v0
.end method

.method static synthetic access$002(Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;[B)[B
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;
    .param p1, "x1"    # [B

    .line 36
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->contents:[B

    return-object p1
.end method


# virtual methods
.method public getContents()[B
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->contents:[B

    return-object v0
.end method

.method public getModtime()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->modtime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isDefalteHint()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->deflateHint:Z

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->isDirectory:Z

    return v0
.end method

.method public setContents([B)V
    .locals 0
    .param p1, "contents"    # [B

    .line 81
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->contents:[B

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Archive$PackingFile;->name:Ljava/lang/String;

    return-object v0
.end method
