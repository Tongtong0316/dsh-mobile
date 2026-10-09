.class public Lorg/apache/commons/codec/cli/Digest;
.super Ljava/lang/Object;
.source "Digest.java"


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final args:[Ljava/lang/String;

.field private final inputs:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # [Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    array-length v0, p1

    .line 64
    .local v0, "argsLength":I
    if-eqz v0, :cond_1

    .line 68
    iput-object p1, p0, Lorg/apache/commons/codec/cli/Digest;->args:[Ljava/lang/String;

    .line 69
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lorg/apache/commons/codec/cli/Digest;->algorithm:Ljava/lang/String;

    .line 70
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/codec/cli/Digest;->inputs:[Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/commons/codec/cli/Digest;->inputs:[Ljava/lang/String;

    .line 75
    :goto_0
    return-void

    .line 65
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 66
    const-class v2, Lorg/apache/commons/codec/cli/Digest;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Usage: java %s [algorithm] [FILE|DIRECTORY|string] ..."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/apache/commons/codec/cli/Digest;

    invoke-direct {v0, p0}, Lorg/apache/commons/codec/cli/Digest;-><init>([Ljava/lang/String;)V

    invoke-direct {v0}, Lorg/apache/commons/codec/cli/Digest;->run()V

    .line 55
    return-void
.end method

.method private println(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "digest"    # [B

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/codec/cli/Digest;->println(Ljava/lang/String;[BLjava/lang/String;)V

    .line 79
    return-void
.end method

.method private println(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "digest"    # [B
    .param p3, "fileName"    # Ljava/lang/String;

    .line 87
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/apache/commons/codec/cli/Digest;->algorithm:Ljava/lang/String;

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/codec/cli/Digest;->algorithm:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/codec/cli/Digest;->algorithm:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;Ljava/security/MessageDigest;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 96
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    const-string v1, ""

    if-eqz v0, :cond_1

    .line 97
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/codec/cli/Digest;->run(Ljava/lang/String;Ljava/security/MessageDigest;)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/codec/cli/Digest;->algorithm:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/codec/cli/Digest;->run(Ljava/lang/String;Ljava/security/MessageDigest;)V

    .line 101
    :goto_0
    return-void

    .line 92
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    :cond_2
    :goto_1
    invoke-static {}, Lorg/apache/commons/codec/digest/MessageDigestAlgorithms;->values()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/cli/Digest;->run([Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private run(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "messageDigestAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-static {p2}, Lorg/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/cli/Digest;->run(Ljava/lang/String;Ljava/security/MessageDigest;)V

    .line 135
    return-void
.end method

.method private run(Ljava/lang/String;Ljava/security/MessageDigest;)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "messageDigest"    # Ljava/security/MessageDigest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/apache/commons/codec/cli/Digest;->inputs:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 105
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-static {p2, v0}, Lorg/apache/commons/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/cli/Digest;->println(Ljava/lang/String;[B)V

    .line 106
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/codec/cli/Digest;->inputs:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 109
    .local v3, "source":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 111
    invoke-static {p2, v4}, Lorg/apache/commons/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/File;)[B

    move-result-object v5

    invoke-direct {p0, p1, v5, v3}, Lorg/apache/commons/codec/cli/Digest;->println(Ljava/lang/String;[BLjava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 113
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 114
    .local v5, "listFiles":[Ljava/io/File;
    if-eqz v5, :cond_2

    .line 115
    invoke-direct {p0, p1, p2, v5}, Lorg/apache/commons/codec/cli/Digest;->run(Ljava/lang/String;Ljava/security/MessageDigest;[Ljava/io/File;)V

    .line 117
    .end local v5    # "listFiles":[Ljava/io/File;
    :cond_2
    goto :goto_1

    .line 119
    :cond_3
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 120
    .local v5, "bytes":[B
    invoke-static {p2, v5}, Lorg/apache/commons/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;[B)[B

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lorg/apache/commons/codec/cli/Digest;->println(Ljava/lang/String;[B)V

    .line 108
    .end local v3    # "source":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "bytes":[B
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_4
    return-void
.end method

.method private run(Ljava/lang/String;Ljava/security/MessageDigest;[Ljava/io/File;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "messageDigest"    # Ljava/security/MessageDigest;
    .param p3, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    .line 127
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-static {p2, v2}, Lorg/apache/commons/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/File;)[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lorg/apache/commons/codec/cli/Digest;->println(Ljava/lang/String;[BLjava/lang/String;)V

    .line 126
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    return-void
.end method

.method private run([Ljava/lang/String;)V
    .locals 5
    .param p1, "digestAlgorithms"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 139
    .local v2, "messageDigestAlgorithm":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/commons/codec/digest/DigestUtils;->isAvailable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lorg/apache/commons/codec/cli/Digest;->run(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .end local v2    # "messageDigestAlgorithm":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 147
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/codec/cli/Digest;->args:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
