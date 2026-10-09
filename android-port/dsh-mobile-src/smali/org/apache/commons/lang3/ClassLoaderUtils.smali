.class public Lorg/apache/commons/lang3/ClassLoaderUtils;
.super Ljava/lang/Object;
.source "ClassLoaderUtils.java"


# static fields
.field private static final EMPTY_URL_ARRAY:[Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/URL;

    sput-object v0, Lorg/apache/commons/lang3/ClassLoaderUtils;->EMPTY_URL_ARRAY:[Ljava/net/URL;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public static getSystemURLs()[Ljava/net/URL;
    .locals 1

    .line 41
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ClassLoaderUtils;->getURLs(Ljava/lang/ClassLoader;)[Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public static getThreadURLs()[Ljava/net/URL;
    .locals 1

    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/ClassLoaderUtils;->getURLs(Ljava/lang/ClassLoader;)[Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method private static getURLs(Ljava/lang/ClassLoader;)[Ljava/net/URL;
    .locals 1
    .param p0, "cl"    # Ljava/lang/ClassLoader;

    .line 55
    instance-of v0, p0, Ljava/net/URLClassLoader;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/net/URLClassLoader;

    invoke-virtual {v0}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/ClassLoaderUtils;->EMPTY_URL_ARRAY:[Ljava/net/URL;

    :goto_0
    return-object v0
.end method

.method public static toString(Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 65
    instance-of v0, p0, Ljava/net/URLClassLoader;

    if-eqz v0, :cond_0

    .line 66
    move-object v0, p0

    check-cast v0, Ljava/net/URLClassLoader;

    invoke-static {v0}, Lorg/apache/commons/lang3/ClassLoaderUtils;->toString(Ljava/net/URLClassLoader;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/net/URLClassLoader;)Ljava/lang/String;
    .locals 2
    .param p0, "classLoader"    # Ljava/net/URLClassLoader;

    .line 78
    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    return-object v0
.end method
