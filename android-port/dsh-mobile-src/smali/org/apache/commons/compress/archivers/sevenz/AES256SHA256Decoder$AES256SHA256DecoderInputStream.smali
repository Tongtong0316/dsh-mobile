.class final Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;
.super Ljava/io/InputStream;
.source "AES256SHA256Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AES256SHA256DecoderInputStream"
.end annotation


# instance fields
.field private final archiveName:Ljava/lang/String;

.field private cipherInputStream:Ljavax/crypto/CipherInputStream;

.field private final coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

.field private final in:Ljava/io/InputStream;

.field private isInitialized:Z

.field private final passwordBytes:[B


# direct methods
.method private constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "coder"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .param p3, "archiveName"    # Ljava/lang/String;
    .param p4, "passwordBytes"    # [B

    .line 49
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->in:Ljava/io/InputStream;

    .line 51
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 52
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->archiveName:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->passwordBytes:[B

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/lang/String;[BLorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Lorg/apache/commons/compress/archivers/sevenz/Coder;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [B
    .param p5, "x4"    # Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$1;

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/lang/String;[B)V

    return-void
.end method

.method private init()Ljavax/crypto/CipherInputStream;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    if-eqz v0, :cond_5

    .line 70
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    .line 73
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 74
    .local v0, "byte0":I
    and-int/lit8 v3, v0, 0x3f

    .line 75
    .local v3, "numCyclesPower":I
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    iget-object v4, v4, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    .line 76
    .local v4, "byte1":I
    shr-int/lit8 v6, v0, 0x6

    and-int/2addr v6, v5

    and-int/lit8 v7, v4, 0xf

    add-int/2addr v6, v7

    .line 77
    .local v6, "ivSize":I
    shr-int/lit8 v7, v0, 0x7

    and-int/2addr v7, v5

    shr-int/lit8 v8, v4, 0x4

    add-int/2addr v7, v8

    .line 78
    .local v7, "saltSize":I
    add-int/lit8 v8, v7, 0x2

    add-int/2addr v8, v6

    iget-object v9, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    iget-object v9, v9, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    array-length v9, v9

    if-gt v8, v9, :cond_3

    .line 81
    new-array v8, v7, [B

    .line 82
    .local v8, "salt":[B
    iget-object v9, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    iget-object v9, v9, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    invoke-static {v9, v1, v8, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    const/16 v9, 0x10

    new-array v9, v9, [B

    .line 84
    .local v9, "iv":[B
    iget-object v10, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->coder:Lorg/apache/commons/compress/archivers/sevenz/Coder;

    iget-object v10, v10, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    add-int/lit8 v11, v7, 0x2

    invoke-static {v10, v11, v9, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iget-object v10, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->passwordBytes:[B

    if-eqz v10, :cond_2

    .line 90
    const/16 v10, 0x3f

    if-ne v3, v10, :cond_1

    .line 91
    const/16 v10, 0x20

    new-array v10, v10, [B

    .line 92
    .local v10, "aesKeyBytes":[B
    invoke-static {v8, v2, v10, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iget-object v11, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->passwordBytes:[B

    iget-object v12, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->passwordBytes:[B

    array-length v12, v12

    array-length v13, v10

    sub-int/2addr v13, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v2, v10, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 95
    .end local v10    # "aesKeyBytes":[B
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->passwordBytes:[B

    invoke-static {v2, v3, v8}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;->sha256Password([BI[B)[B

    move-result-object v10

    .line 98
    .restart local v10    # "aesKeyBytes":[B
    :goto_0
    invoke-static {v10}, Lorg/apache/commons/compress/archivers/sevenz/AES256Options;->newSecretKeySpec([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    .line 100
    .local v2, "aesKey":Ljavax/crypto/SecretKey;
    :try_start_0
    const-string v11, "AES/CBC/NoPadding"

    invoke-static {v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v11

    .line 101
    .local v11, "cipher":Ljavax/crypto/Cipher;
    new-instance v12, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v12, v9}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v11, v1, v2, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 102
    new-instance v1, Ljavax/crypto/CipherInputStream;

    iget-object v12, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v1, v12, v11}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    .line 103
    iput-boolean v5, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->isInitialized:Z

    .line 104
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->cipherInputStream:Ljavax/crypto/CipherInputStream;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 105
    .end local v11    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 106
    .local v1, "generalSecurityException":Ljava/security/GeneralSecurityException;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v11, "Decryption error (do you have the JCE Unlimited Strength Jurisdiction Policy Files installed?)"

    invoke-direct {v5, v11, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 87
    .end local v1    # "generalSecurityException":Ljava/security/GeneralSecurityException;
    .end local v2    # "aesKey":Ljavax/crypto/SecretKey;
    .end local v10    # "aesKeyBytes":[B
    :cond_2
    new-instance v1, Lorg/apache/commons/compress/PasswordRequiredException;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->archiveName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/PasswordRequiredException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    .end local v8    # "salt":[B
    .end local v9    # "iv":[B
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Salt size + IV size too long in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->archiveName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    .end local v0    # "byte0":I
    .end local v3    # "numCyclesPower":I
    .end local v4    # "byte1":I
    .end local v6    # "ivSize":I
    .end local v7    # "saltSize":I
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AES256 properties too short in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->archiveName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing AES256 properties in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->archiveName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->cipherInputStream:Ljavax/crypto/CipherInputStream;

    invoke-virtual {v0}, Ljavax/crypto/CipherInputStream;->close()V

    .line 61
    :cond_0
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->init()Ljavax/crypto/CipherInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder$AES256SHA256DecoderInputStream;->init()Ljavax/crypto/CipherInputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result v0

    return v0
.end method
