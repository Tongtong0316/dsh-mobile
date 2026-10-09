.class public abstract Lorg/apache/commons/compress/java/util/jar/Pack200;
.super Ljava/lang/Object;
.source "Pack200.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/java/util/jar/Pack200$Packer;,
        Lorg/apache/commons/compress/java/util/jar/Pack200$Unpacker;
    }
.end annotation


# static fields
.field private static final SYSTEM_PROPERTY_PACKER:Ljava/lang/String; = "java.util.jar.Pack200.Packer"

.field private static final SYSTEM_PROPERTY_UNPACKER:Ljava/lang/String; = "java.util.jar.Pack200.Unpacker"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    return-void
.end method

.method static synthetic lambda$newInstance$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "systemProperty"    # Ljava/lang/String;
    .param p1, "defaultClassName"    # Ljava/lang/String;

    .line 263
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    const-class v1, Lorg/apache/commons/compress/java/util/jar/Pack200;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 267
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    if-nez v1, :cond_0

    .line 268
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "ClassLoader.getSystemClassLoader()"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    move-object v1, v2

    .line 270
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 271
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    const-string v3, "archive.3E"

    invoke-static {v3, v0}, Lorg/apache/commons/compress/harmony/archive/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "systemProperty"    # Ljava/lang/String;
    .param p1, "defaultClassName"    # Ljava/lang/String;

    .line 262
    new-instance v0, Lorg/apache/commons/compress/java/util/jar/Pack200$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/compress/java/util/jar/Pack200$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static newPacker()Lorg/apache/commons/compress/java/util/jar/Pack200$Packer;
    .locals 2

    .line 287
    const-string v0, "java.util.jar.Pack200.Packer"

    const-string v1, "org.apache.commons.compress.harmony.pack200.Pack200PackerAdapter"

    invoke-static {v0, v1}, Lorg/apache/commons/compress/java/util/jar/Pack200;->newInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/java/util/jar/Pack200$Packer;

    return-object v0
.end method

.method public static newUnpacker()Lorg/apache/commons/compress/java/util/jar/Pack200$Unpacker;
    .locals 2

    .line 300
    const-string v0, "java.util.jar.Pack200.Unpacker"

    const-string v1, "org.apache.commons.compress.harmony.unpack200.Pack200UnpackerAdapter"

    invoke-static {v0, v1}, Lorg/apache/commons/compress/java/util/jar/Pack200;->newInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/java/util/jar/Pack200$Unpacker;

    return-object v0
.end method
