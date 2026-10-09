.class public final Lorg/apache/commons/codec/digest/HmacUtils;
.super Ljava/lang/Object;
.source "HmacUtils.java"


# static fields
.field private static final STREAM_BUFFER_LENGTH:I = 0x400


# instance fields
.field private final mac:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 882
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Ljavax/crypto/Mac;)V

    .line 883
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 938
    invoke-static {p2}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Ljava/lang/String;[B)V

    .line 939
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # [B

    .line 925
    invoke-static {p1, p2}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Ljava/lang/String;[B)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Ljavax/crypto/Mac;)V

    .line 926
    return-void
.end method

.method private constructor <init>(Ljavax/crypto/Mac;)V
    .locals 0
    .param p1, "mac"    # Ljavax/crypto/Mac;

    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    iput-object p1, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    .line 913
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Lorg/apache/commons/codec/digest/HmacAlgorithms;
    .param p2, "key"    # Ljava/lang/String;

    .line 908
    invoke-virtual {p1}, Lorg/apache/commons/codec/digest/HmacAlgorithms;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Ljava/lang/String;[B)V

    .line 909
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V
    .locals 1
    .param p1, "algorithm"    # Lorg/apache/commons/codec/digest/HmacAlgorithms;
    .param p2, "key"    # [B

    .line 895
    invoke-virtual {p1}, Lorg/apache/commons/codec/digest/HmacAlgorithms;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Ljava/lang/String;[B)V

    .line 896
    return-void
.end method

.method public static getHmacMd5([B)Ljavax/crypto/Mac;
    .locals 1
    .param p0, "key"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static getHmacSha1([B)Ljavax/crypto/Mac;
    .locals 1
    .param p0, "key"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static getHmacSha256([B)Ljavax/crypto/Mac;
    .locals 1
    .param p0, "key"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static getHmacSha384([B)Ljavax/crypto/Mac;
    .locals 1
    .param p0, "key"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static getHmacSha512([B)Ljavax/crypto/Mac;
    .locals 1
    .param p0, "key"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    sget-object v0, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static getInitializedMac(Ljava/lang/String;[B)Ljavax/crypto/Mac;
    .locals 2
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "key"    # [B

    .line 199
    if-eqz p1, :cond_0

    .line 203
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 204
    .local v0, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 205
    .local v1, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    return-object v1

    .line 207
    .end local v0    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v1    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 208
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 200
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInitializedMac(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)Ljavax/crypto/Mac;
    .locals 1
    .param p0, "algorithm"    # Lorg/apache/commons/codec/digest/HmacAlgorithms;
    .param p1, "key"    # [B

    .line 179
    invoke-virtual {p0}, Lorg/apache/commons/codec/digest/HmacAlgorithms;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->getInitializedMac(Ljava/lang/String;[B)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public static hmacMd5(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueToDigest"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacMd5([BLjava/io/InputStream;)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacMd5([B[B)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacMd5Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueToDigest"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacMd5Hex([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacMd5Hex([B[B)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 282
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueToDigest"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 377
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1([BLjava/io/InputStream;)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 360
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1([B[B)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueToDigest"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 435
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1Hex([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 418
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1Hex([B[B)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 396
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueToDigest"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 491
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256([BLjava/io/InputStream;)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 474
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256([B[B)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 452
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueToDigest"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 547
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256Hex([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 530
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256Hex([B[B)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 508
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha384(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueToDigest"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 603
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha384([BLjava/io/InputStream;)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 586
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha384([B[B)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 564
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha384Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueToDigest"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 661
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha384Hex([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 644
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha384Hex([B[B)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 622
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueToDigest"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 717
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512([BLjava/io/InputStream;)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 700
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512([B[B)[B
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 678
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512Hex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "valueToDigest"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 775
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512Hex([BLjava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 758
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512Hex([B[B)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 736
    new-instance v0, Lorg/apache/commons/codec/digest/HmacUtils;

    sget-object v1, Lorg/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lorg/apache/commons/codec/digest/HmacAlgorithms;

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/codec/digest/HmacUtils;-><init>(Lorg/apache/commons/codec/digest/HmacAlgorithms;[B)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmacHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 803
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    const/4 v0, 0x1

    return v0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    return v1
.end method

.method public static isAvailable(Lorg/apache/commons/codec/digest/HmacAlgorithms;)Z
    .locals 2
    .param p0, "name"    # Lorg/apache/commons/codec/digest/HmacAlgorithms;

    .line 787
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/codec/digest/HmacAlgorithms;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    const/4 v0, 0x1

    return v0

    .line 789
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    return v1
.end method

.method public static updateHmac(Ljavax/crypto/Mac;Ljava/io/InputStream;)Ljavax/crypto/Mac;
    .locals 5
    .param p0, "mac"    # Ljavax/crypto/Mac;
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 844
    invoke-virtual {p0}, Ljavax/crypto/Mac;->reset()V

    .line 845
    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 846
    .local v1, "buffer":[B
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 848
    .local v3, "read":I
    :goto_0
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 849
    invoke-virtual {p0, v1, v2, v3}, Ljavax/crypto/Mac;->update([BII)V

    .line 850
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    goto :goto_0

    .line 853
    :cond_0
    return-object p0
.end method

.method public static updateHmac(Ljavax/crypto/Mac;Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 1
    .param p0, "mac"    # Ljavax/crypto/Mac;
    .param p1, "valueToDigest"    # Ljava/lang/String;

    .line 868
    invoke-virtual {p0}, Ljavax/crypto/Mac;->reset()V

    .line 869
    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 870
    return-object p0
.end method

.method public static updateHmac(Ljavax/crypto/Mac;[B)Ljavax/crypto/Mac;
    .locals 0
    .param p0, "mac"    # Ljavax/crypto/Mac;
    .param p1, "valueToDigest"    # [B

    .line 822
    invoke-virtual {p0}, Ljavax/crypto/Mac;->reset()V

    .line 823
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 824
    return-object p0
.end method


# virtual methods
.method public hmac(Ljava/io/File;)[B
    .locals 3
    .param p1, "valueToDigest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 974
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 975
    .local v0, "stream":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 975
    return-object v1

    .line 974
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public hmac(Ljava/io/InputStream;)[B
    .locals 6
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 993
    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 996
    .local v1, "buffer":[B
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v4, v3

    .local v4, "read":I
    const/4 v5, -0x1

    if-le v3, v5, :cond_0

    .line 997
    iget-object v3, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v3, v1, v2, v4}, Ljavax/crypto/Mac;->update([BII)V

    goto :goto_0

    .line 999
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public hmac(Ljava/lang/String;)[B
    .locals 2
    .param p1, "valueToDigest"    # Ljava/lang/String;

    .line 1010
    iget-object v0, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hmac(Ljava/nio/ByteBuffer;)[B
    .locals 1
    .param p1, "valueToDigest"    # Ljava/nio/ByteBuffer;

    .line 960
    iget-object v0, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    .line 961
    iget-object v0, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public hmac([B)[B
    .locals 1
    .param p1, "valueToDigest"    # [B

    .line 949
    iget-object v0, p0, Lorg/apache/commons/codec/digest/HmacUtils;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hmacHex(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p1, "valueToDigest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1045
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hmacHex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p1, "valueToDigest"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1062
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hmacHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "valueToDigest"    # Ljava/lang/String;

    .line 1073
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hmacHex(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1
    .param p1, "valueToDigest"    # Ljava/nio/ByteBuffer;

    .line 1032
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hmacHex([B)Ljava/lang/String;
    .locals 1
    .param p1, "valueToDigest"    # [B

    .line 1021
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/digest/HmacUtils;->hmac([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
