.class public Lorg/apache/commons/codec/digest/Md5Crypt;
.super Ljava/lang/Object;
.source "Md5Crypt.java"


# static fields
.field static final APR1_PREFIX:Ljava/lang/String; = "$apr1$"

.field private static final BLOCKSIZE:I = 0x10

.field static final MD5_PREFIX:Ljava/lang/String; = "$1$"

.field private static final ROUNDS:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    return-void
.end method

.method public static apr1Crypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "keyBytes"    # Ljava/lang/String;

    .line 140
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->apr1Crypt([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apr1Crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "keyBytes"    # Ljava/lang/String;
    .param p1, "salt"    # Ljava/lang/String;

    .line 162
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/codec/digest/Md5Crypt;->apr1Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apr1Crypt([B)Ljava/lang/String;
    .locals 2
    .param p0, "keyBytes"    # [B

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$apr1$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->apr1Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apr1Crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "keyBytes"    # [B
    .param p1, "salt"    # Ljava/lang/String;

    .line 120
    const-string v0, "$apr1$"

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 123
    :cond_0
    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apr1Crypt([BLjava/util/Random;)Ljava/lang/String;
    .locals 2
    .param p0, "keyBytes"    # [B
    .param p1, "random"    # Ljava/util/Random;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$apr1$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1, p1}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(ILjava/util/Random;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->apr1Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Crypt([B)Ljava/lang/String;
    .locals 2
    .param p0, "keyBytes"    # [B

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$1$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "keyBytes"    # [B
    .param p1, "salt"    # Ljava/lang/String;

    .line 226
    const-string v0, "$1$"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Crypt([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "keyBytes"    # [B
    .param p1, "salt"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 250
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;Ljava/lang/String;Ljava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Crypt([BLjava/lang/String;Ljava/lang/String;Ljava/util/Random;)Ljava/lang/String;
    .locals 18
    .param p0, "keyBytes"    # [B
    .param p1, "salt"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "random"    # Ljava/util/Random;

    .line 277
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    array-length v3, v0

    .line 281
    .local v3, "keyLen":I
    const-string v4, "$"

    const/16 v5, 0x8

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v1, :cond_0

    .line 282
    move-object/from16 v9, p3

    invoke-static {v5, v9}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(ILjava/util/Random;)Ljava/lang/String;

    move-result-object v10

    .local v10, "saltString":Ljava/lang/String;
    goto :goto_1

    .line 284
    .end local v10    # "saltString":Ljava/lang/String;
    :cond_0
    move-object/from16 v9, p3

    const-string v10, "prefix"

    invoke-static {v2, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 285
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, "Invalid prefix value: "

    if-lt v10, v6, :cond_c

    .line 288
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v12, 0x24

    if-eq v10, v12, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v12, :cond_1

    goto :goto_0

    .line 289
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 291
    :cond_2
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "^"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\\$"

    invoke-virtual {v2, v4, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "([\\.\\/a-zA-Z0-9]{1,8}).*"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 292
    .local v10, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v10, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 293
    .local v11, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 296
    invoke-virtual {v11, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 298
    .end local v11    # "m":Ljava/util/regex/Matcher;
    .local v10, "saltString":Ljava/lang/String;
    :goto_1
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    .line 300
    .local v11, "saltBytes":[B
    invoke-static {}, Lorg/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v12

    .line 305
    .local v12, "ctx":Ljava/security/MessageDigest;
    invoke-virtual {v12, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 310
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/security/MessageDigest;->update([B)V

    .line 315
    invoke-virtual {v12, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 320
    invoke-static {}, Lorg/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v13

    .line 321
    .local v13, "ctx1":Ljava/security/MessageDigest;
    invoke-virtual {v13, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 322
    invoke-virtual {v13, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 323
    invoke-virtual {v13, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 324
    invoke-virtual {v13}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    .line 325
    .local v14, "finalb":[B
    move v15, v3

    .line 326
    .local v15, "ii":I
    :goto_2
    const/16 v6, 0x10

    if-lez v15, :cond_3

    .line 327
    invoke-static {v15, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v12, v14, v8, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 328
    add-int/lit8 v15, v15, -0x10

    const/4 v6, 0x3

    goto :goto_2

    .line 334
    :cond_3
    invoke-static {v14, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 339
    move v15, v3

    .line 340
    const/16 v16, 0x0

    .line 341
    .local v16, "j":I
    :goto_3
    if-lez v15, :cond_5

    .line 342
    and-int/lit8 v5, v15, 0x1

    if-ne v5, v7, :cond_4

    .line 343
    aget-byte v5, v14, v8

    invoke-virtual {v12, v5}, Ljava/security/MessageDigest;->update(B)V

    goto :goto_4

    .line 345
    :cond_4
    aget-byte v5, v0, v8

    invoke-virtual {v12, v5}, Ljava/security/MessageDigest;->update(B)V

    .line 347
    :goto_4
    shr-int/lit8 v15, v15, 0x1

    const/16 v5, 0x8

    goto :goto_3

    .line 353
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 354
    .local v4, "passwd":Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 360
    .end local v14    # "finalb":[B
    .local v5, "finalb":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    const/16 v14, 0x3e8

    if-ge v7, v14, :cond_a

    .line 361
    invoke-static {}, Lorg/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v13

    .line 362
    and-int/lit8 v14, v7, 0x1

    if-eqz v14, :cond_6

    .line 363
    invoke-virtual {v13, v0}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_6

    .line 365
    :cond_6
    invoke-virtual {v13, v5, v8, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 368
    :goto_6
    rem-int/lit8 v14, v7, 0x3

    if-eqz v14, :cond_7

    .line 369
    invoke-virtual {v13, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 372
    :cond_7
    rem-int/lit8 v14, v7, 0x7

    if-eqz v14, :cond_8

    .line 373
    invoke-virtual {v13, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 376
    :cond_8
    and-int/lit8 v14, v7, 0x1

    if-eqz v14, :cond_9

    .line 377
    invoke-virtual {v13, v5, v8, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_7

    .line 379
    :cond_9
    invoke-virtual {v13, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 381
    :goto_7
    invoke-virtual {v13}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 360
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 387
    .end local v7    # "i":I
    :cond_a
    aget-byte v6, v5, v8

    const/4 v7, 0x6

    aget-byte v7, v5, v7

    const/16 v14, 0xc

    aget-byte v14, v5, v14

    const/4 v8, 0x4

    invoke-static {v6, v7, v14, v8, v4}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 388
    const/4 v6, 0x1

    aget-byte v6, v5, v6

    const/4 v7, 0x7

    aget-byte v7, v5, v7

    const/16 v14, 0xd

    aget-byte v14, v5, v14

    invoke-static {v6, v7, v14, v8, v4}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 389
    const/4 v6, 0x2

    aget-byte v7, v5, v6

    const/16 v14, 0x8

    aget-byte v14, v5, v14

    const/16 v17, 0xe

    aget-byte v6, v5, v17

    invoke-static {v7, v14, v6, v8, v4}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 390
    const/4 v6, 0x3

    aget-byte v6, v5, v6

    const/16 v7, 0x9

    aget-byte v7, v5, v7

    const/16 v14, 0xf

    aget-byte v14, v5, v14

    invoke-static {v6, v7, v14, v8, v4}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 391
    aget-byte v6, v5, v8

    const/16 v7, 0xa

    aget-byte v7, v5, v7

    const/4 v14, 0x5

    aget-byte v14, v5, v14

    invoke-static {v6, v7, v14, v8, v4}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 392
    const/16 v6, 0xb

    aget-byte v6, v5, v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v8, v8, v6, v7, v4}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 398
    invoke-virtual {v12}, Ljava/security/MessageDigest;->reset()V

    .line 399
    invoke-virtual {v13}, Ljava/security/MessageDigest;->reset()V

    .line 400
    invoke-static {v0, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 401
    invoke-static {v11, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 402
    invoke-static {v5, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 404
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 294
    .end local v4    # "passwd":Ljava/lang/StringBuilder;
    .end local v5    # "finalb":[B
    .end local v12    # "ctx":Ljava/security/MessageDigest;
    .end local v13    # "ctx1":Ljava/security/MessageDigest;
    .end local v15    # "ii":I
    .end local v16    # "j":I
    .local v10, "p":Ljava/util/regex/Pattern;
    .local v11, "m":Ljava/util/regex/Matcher;
    :cond_b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid salt value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 286
    .end local v10    # "p":Ljava/util/regex/Pattern;
    .end local v11    # "m":Ljava/util/regex/Matcher;
    :cond_c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static md5Crypt([BLjava/util/Random;)Ljava/lang/String;
    .locals 2
    .param p0, "keyBytes"    # [B
    .param p1, "random"    # Ljava/util/Random;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$1$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1, p1}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(ILjava/util/Random;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
