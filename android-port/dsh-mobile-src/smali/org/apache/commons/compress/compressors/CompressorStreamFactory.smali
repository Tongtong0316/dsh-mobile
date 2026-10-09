.class public Lorg/apache/commons/compress/compressors/CompressorStreamFactory;
.super Ljava/lang/Object;
.source "CompressorStreamFactory.java"

# interfaces
.implements Lorg/apache/commons/compress/compressors/CompressorStreamProvider;


# static fields
.field private static final ALL_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BROTLI:Ljava/lang/String; = "br"

.field public static final BZIP2:Ljava/lang/String; = "bzip2"

.field public static final DEFLATE:Ljava/lang/String; = "deflate"

.field public static final DEFLATE64:Ljava/lang/String; = "deflate64"

.field public static final GZIP:Ljava/lang/String; = "gz"

.field public static final LZ4_BLOCK:Ljava/lang/String; = "lz4-block"

.field public static final LZ4_FRAMED:Ljava/lang/String; = "lz4-framed"

.field public static final LZMA:Ljava/lang/String; = "lzma"

.field public static final PACK200:Ljava/lang/String; = "pack200"

.field private static final SINGLETON:Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

.field public static final SNAPPY_FRAMED:Ljava/lang/String; = "snappy-framed"

.field public static final SNAPPY_RAW:Ljava/lang/String; = "snappy-raw"

.field public static final XZ:Ljava/lang/String; = "xz"

.field private static final YOU_NEED_BROTLI_DEC:Ljava/lang/String;

.field private static final YOU_NEED_XZ_JAVA:Ljava/lang/String;

.field private static final YOU_NEED_ZSTD_JNI:Ljava/lang/String;

.field public static final Z:Ljava/lang/String; = "z"

.field public static final ZSTANDARD:Ljava/lang/String; = "zstd"


# instance fields
.field private compressorInputStreamProviders:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/compressors/CompressorStreamProvider;",
            ">;"
        }
    .end annotation
.end field

.field private compressorOutputStreamProviders:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/compressors/CompressorStreamProvider;",
            ">;"
        }
    .end annotation
.end field

.field private volatile decompressConcatenated:Z

.field private final decompressUntilEOF:Ljava/lang/Boolean;

.field private final memoryLimitInKb:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 93
    new-instance v0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->SINGLETON:Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

    .line 193
    const-string v0, "Google Brotli Dec"

    const-string v1, "https://github.com/google/brotli/"

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->youNeed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->YOU_NEED_BROTLI_DEC:Ljava/lang/String;

    .line 194
    const-string v0, "XZ for Java"

    const-string v1, "https://tukaani.org/xz/java.html"

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->youNeed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->YOU_NEED_XZ_JAVA:Ljava/lang/String;

    .line 195
    const-string v0, "Zstd JNI"

    const-string v1, "https://github.com/luben/zstd-jni"

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->youNeed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->YOU_NEED_ZSTD_JNI:Ljava/lang/String;

    .line 197
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bzip2"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pack200"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "snappy-framed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "z"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "deflate"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "xz"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lzma"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lz4-framed"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "zstd"

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/commons/compress/utils/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->ALL_NAMES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressUntilEOF:Ljava/lang/Boolean;

    .line 453
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->memoryLimitInKb:I

    .line 454
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "decompressUntilEOF"    # Z

    .line 464
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;-><init>(ZI)V

    .line 465
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "decompressUntilEOF"    # Z
    .param p2, "memoryLimitInKb"    # I

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressUntilEOF:Ljava/lang/Boolean;

    .line 481
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    .line 482
    iput p2, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->memoryLimitInKb:I

    .line 483
    return-void
.end method

.method private static archiveStreamProviderIterable()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/compress/compressors/CompressorStreamProvider;",
            ">;"
        }
    .end annotation

    .line 200
    const-class v0, Lorg/apache/commons/compress/compressors/CompressorStreamProvider;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    return-object v0
.end method

.method public static detect(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .line 214
    sget-object v0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->ALL_NAMES:Ljava/util/Set;

    invoke-static {p0, v0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->detect(Ljava/io/InputStream;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static detect(Ljava/io/InputStream;Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .line 227
    .local p1, "compressorNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_c

    .line 231
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 235
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 239
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 240
    .local v0, "signature":[B
    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 241
    const/4 v1, -0x1

    .line 243
    .local v1, "signatureLength":I
    :try_start_0
    invoke-static {p0, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v2

    move v1, v2

    .line 244
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    nop

    .line 249
    const-string v2, "bzip2"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;->matches([BI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    return-object v2

    .line 253
    :cond_0
    const-string v2, "gz"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;->matches([BI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    return-object v2

    .line 257
    :cond_1
    const-string v2, "pack200"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;->matches([BI)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 258
    return-object v2

    .line 261
    :cond_2
    const-string v2, "snappy-framed"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;->matches([BI)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 262
    return-object v2

    .line 265
    :cond_3
    const-string v2, "z"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->matches([BI)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 266
    return-object v2

    .line 269
    :cond_4
    const-string v2, "deflate"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->matches([BI)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 270
    return-object v2

    .line 273
    :cond_5
    const-string v2, "xz"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/xz/XZUtils;->matches([BI)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 274
    return-object v2

    .line 277
    :cond_6
    const-string v2, "lzma"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->matches([BI)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 278
    return-object v2

    .line 281
    :cond_7
    const-string v2, "lz4-framed"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->matches([BI)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 282
    return-object v2

    .line 285
    :cond_8
    const-string v2, "zstd"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v0, v1}, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->matches([BI)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 286
    return-object v2

    .line 289
    :cond_9
    new-instance v2, Lorg/apache/commons/compress/compressors/CompressorException;

    const-string v3, "No Compressor found for the stream signature."

    invoke-direct {v2, v3}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/commons/compress/compressors/CompressorException;

    const-string v4, "IOException while reading signature."

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 236
    .end local v0    # "signature":[B
    .end local v1    # "signatureLength":I
    .end local v2    # "e":Ljava/io/IOException;
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mark is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Compressor names cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static findAvailableCompressorInputStreamProviders()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/compressors/CompressorStreamProvider;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance v0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public static findAvailableCompressorOutputStreamProviders()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/compressors/CompressorStreamProvider;",
            ">;"
        }
    .end annotation

    .line 342
    new-instance v0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public static getBrotli()Ljava/lang/String;
    .locals 1

    .line 351
    const-string v0, "br"

    return-object v0
.end method

.method public static getBzip2()Ljava/lang/String;
    .locals 1

    .line 355
    const-string v0, "bzip2"

    return-object v0
.end method

.method public static getDeflate()Ljava/lang/String;
    .locals 1

    .line 359
    const-string v0, "deflate"

    return-object v0
.end method

.method public static getDeflate64()Ljava/lang/String;
    .locals 1

    .line 367
    const-string v0, "deflate64"

    return-object v0
.end method

.method public static getGzip()Ljava/lang/String;
    .locals 1

    .line 371
    const-string v0, "gz"

    return-object v0
.end method

.method public static getLZ4Block()Ljava/lang/String;
    .locals 1

    .line 375
    const-string v0, "lz4-block"

    return-object v0
.end method

.method public static getLZ4Framed()Ljava/lang/String;
    .locals 1

    .line 379
    const-string v0, "lz4-framed"

    return-object v0
.end method

.method public static getLzma()Ljava/lang/String;
    .locals 1

    .line 383
    const-string v0, "lzma"

    return-object v0
.end method

.method public static getPack200()Ljava/lang/String;
    .locals 1

    .line 387
    const-string v0, "pack200"

    return-object v0
.end method

.method public static getSingleton()Lorg/apache/commons/compress/compressors/CompressorStreamFactory;
    .locals 1

    .line 391
    sget-object v0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->SINGLETON:Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

    return-object v0
.end method

.method public static getSnappyFramed()Ljava/lang/String;
    .locals 1

    .line 395
    const-string v0, "snappy-framed"

    return-object v0
.end method

.method public static getSnappyRaw()Ljava/lang/String;
    .locals 1

    .line 399
    const-string v0, "snappy-raw"

    return-object v0
.end method

.method public static getXz()Ljava/lang/String;
    .locals 1

    .line 403
    const-string v0, "xz"

    return-object v0
.end method

.method public static getZ()Ljava/lang/String;
    .locals 1

    .line 407
    const-string v0, "z"

    return-object v0
.end method

.method public static getZstandard()Ljava/lang/String;
    .locals 1

    .line 411
    const-string v0, "zstd"

    return-object v0
.end method

.method static synthetic lambda$findAvailableCompressorInputStreamProviders$0(Ljava/util/TreeMap;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;)V
    .locals 1
    .param p0, "map"    # Ljava/util/TreeMap;
    .param p1, "provider"    # Lorg/apache/commons/compress/compressors/CompressorStreamProvider;

    .line 316
    invoke-interface {p1}, Lorg/apache/commons/compress/compressors/CompressorStreamProvider;->getInputStreamCompressorNames()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->putAll(Ljava/util/Set;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;Ljava/util/TreeMap;)V

    return-void
.end method

.method static synthetic lambda$findAvailableCompressorInputStreamProviders$1()Ljava/util/SortedMap;
    .locals 3

    .line 314
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 315
    .local v0, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;>;"
    sget-object v1, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->SINGLETON:Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->getInputStreamCompressorNames()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->SINGLETON:Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

    invoke-static {v1, v2, v0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->putAll(Ljava/util/Set;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;Ljava/util/TreeMap;)V

    .line 316
    invoke-static {}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->archiveStreamProviderIterable()Ljava/lang/Iterable;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/compress/compressors/CompressorStreamFactory$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory$$ExternalSyntheticLambda0;-><init>(Ljava/util/TreeMap;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 317
    return-object v0
.end method

.method static synthetic lambda$findAvailableCompressorOutputStreamProviders$2(Ljava/util/TreeMap;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;)V
    .locals 1
    .param p0, "map"    # Ljava/util/TreeMap;
    .param p1, "provider"    # Lorg/apache/commons/compress/compressors/CompressorStreamProvider;

    .line 345
    invoke-interface {p1}, Lorg/apache/commons/compress/compressors/CompressorStreamProvider;->getOutputStreamCompressorNames()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->putAll(Ljava/util/Set;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;Ljava/util/TreeMap;)V

    return-void
.end method

.method static synthetic lambda$findAvailableCompressorOutputStreamProviders$3()Ljava/util/SortedMap;
    .locals 3

    .line 343
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 344
    .local v0, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;>;"
    sget-object v1, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->SINGLETON:Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->getOutputStreamCompressorNames()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->SINGLETON:Lorg/apache/commons/compress/compressors/CompressorStreamFactory;

    invoke-static {v1, v2, v0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->putAll(Ljava/util/Set;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;Ljava/util/TreeMap;)V

    .line 345
    invoke-static {}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->archiveStreamProviderIterable()Ljava/lang/Iterable;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/compress/compressors/CompressorStreamFactory$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory$$ExternalSyntheticLambda1;-><init>(Ljava/util/TreeMap;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 346
    return-object v0
.end method

.method static synthetic lambda$putAll$4(Ljava/util/TreeMap;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;Ljava/lang/String;)V
    .locals 1
    .param p0, "map"    # Ljava/util/TreeMap;
    .param p1, "provider"    # Lorg/apache/commons/compress/compressors/CompressorStreamProvider;
    .param p2, "name"    # Ljava/lang/String;

    .line 415
    invoke-static {p2}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static putAll(Ljava/util/Set;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;Ljava/util/TreeMap;)V
    .locals 1
    .param p1, "provider"    # Lorg/apache/commons/compress/compressors/CompressorStreamProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/commons/compress/compressors/CompressorStreamProvider;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/compressors/CompressorStreamProvider;",
            ">;)V"
        }
    .end annotation

    .line 415
    .local p0, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;>;"
    new-instance v0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory$$ExternalSyntheticLambda4;-><init>(Ljava/util/TreeMap;Lorg/apache/commons/compress/compressors/CompressorStreamProvider;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 416
    return-void
.end method

.method private static toKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 419
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static youNeed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " In addition to Apache Commons Compress you need the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " library - see "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createCompressorInputStream(Ljava/io/InputStream;)Lorg/apache/commons/compress/compressors/CompressorInputStream;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .line 496
    invoke-static {p1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->detect(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->createCompressorInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/compressors/CompressorInputStream;

    move-result-object v0

    return-object v0
.end method

.method public createCompressorInputStream(Ljava/io/InputStream;Ljava/util/Set;)Lorg/apache/commons/compress/compressors/CompressorInputStream;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/commons/compress/compressors/CompressorInputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .line 511
    .local p2, "compressorNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->detect(Ljava/io/InputStream;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->createCompressorInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/compressors/CompressorInputStream;

    move-result-object v0

    return-object v0
.end method

.method public createCompressorInputStream(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/commons/compress/compressors/CompressorInputStream;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .line 527
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->createCompressorInputStream(Ljava/lang/String;Ljava/io/InputStream;Z)Lorg/apache/commons/compress/compressors/CompressorInputStream;

    move-result-object v0

    return-object v0
.end method

.method public createCompressorInputStream(Ljava/lang/String;Ljava/io/InputStream;Z)Lorg/apache/commons/compress/compressors/CompressorInputStream;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "actualDecompressConcatenated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .line 533
    if-eqz p1, :cond_13

    if-eqz p2, :cond_13

    .line 539
    :try_start_0
    const-string v0, "gz"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object v0

    .line 543
    :cond_0
    const-string v0, "bzip2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object v0

    .line 547
    :cond_1
    const-string v0, "br"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    invoke-static {}, Lorg/apache/commons/compress/compressors/brotli/BrotliUtils;->isBrotliCompressionAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 551
    new-instance v0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 549
    :cond_2
    new-instance v0, Lorg/apache/commons/compress/compressors/CompressorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Brotli compression is not available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->YOU_NEED_BROTLI_DEC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "in":Ljava/io/InputStream;
    .end local p3    # "actualDecompressConcatenated":Z
    throw v0

    .line 554
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "in":Ljava/io/InputStream;
    .restart local p3    # "actualDecompressConcatenated":Z
    :cond_3
    const-string v0, "xz"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 555
    invoke-static {}, Lorg/apache/commons/compress/compressors/xz/XZUtils;->isXZCompressionAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 558
    new-instance v0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;

    iget v1, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->memoryLimitInKb:I

    invoke-direct {v0, p2, p3, v1}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Ljava/io/InputStream;ZI)V

    return-object v0

    .line 556
    :cond_4
    new-instance v0, Lorg/apache/commons/compress/compressors/CompressorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XZ compression is not available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->YOU_NEED_XZ_JAVA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "in":Ljava/io/InputStream;
    .end local p3    # "actualDecompressConcatenated":Z
    throw v0

    .line 561
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "in":Ljava/io/InputStream;
    .restart local p3    # "actualDecompressConcatenated":Z
    :cond_5
    const-string v0, "zstd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 562
    invoke-static {}, Lorg/apache/commons/compress/compressors/zstandard/ZstdUtils;->isZstdCompressionAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 565
    new-instance v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 563
    :cond_6
    new-instance v0, Lorg/apache/commons/compress/compressors/CompressorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zstandard compression is not available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->YOU_NEED_ZSTD_JNI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "in":Ljava/io/InputStream;
    .end local p3    # "actualDecompressConcatenated":Z
    throw v0

    .line 568
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "in":Ljava/io/InputStream;
    .restart local p3    # "actualDecompressConcatenated":Z
    :cond_7
    const-string v0, "lzma"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 569
    invoke-static {}, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;->isLZMACompressionAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 572
    new-instance v0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;

    iget v1, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->memoryLimitInKb:I

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0

    .line 570
    :cond_8
    new-instance v0, Lorg/apache/commons/compress/compressors/CompressorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LZMA compression is not available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->YOU_NEED_XZ_JAVA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "in":Ljava/io/InputStream;
    .end local p3    # "actualDecompressConcatenated":Z
    throw v0

    .line 575
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "in":Ljava/io/InputStream;
    .restart local p3    # "actualDecompressConcatenated":Z
    :cond_9
    const-string v0, "pack200"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 576
    new-instance v0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 579
    :cond_a
    const-string v0, "snappy-raw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 580
    new-instance v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 583
    :cond_b
    const-string v0, "snappy-framed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 584
    new-instance v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 587
    :cond_c
    const-string v0, "z"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 588
    new-instance v0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;

    iget v1, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->memoryLimitInKb:I

    invoke-direct {v0, p2, v1}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0

    .line 591
    :cond_d
    const-string v0, "deflate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 592
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 595
    :cond_e
    const-string v0, "deflate64"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 596
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/deflate64/Deflate64CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 599
    :cond_f
    const-string v0, "lz4-block"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 600
    new-instance v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 603
    :cond_10
    const-string v0, "lz4-framed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 604
    new-instance v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;

    invoke-direct {v0, p2, p3}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;-><init>(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 609
    :cond_11
    nop

    .line 610
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->getCompressorInputStreamProviders()Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/compressors/CompressorStreamProvider;

    .line 611
    .local v0, "compressorStreamProvider":Lorg/apache/commons/compress/compressors/CompressorStreamProvider;
    if-eqz v0, :cond_12

    .line 612
    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/CompressorStreamProvider;->createCompressorInputStream(Ljava/lang/String;Ljava/io/InputStream;Z)Lorg/apache/commons/compress/compressors/CompressorInputStream;

    move-result-object v1

    return-object v1

    .line 615
    :cond_12
    new-instance v1, Lorg/apache/commons/compress/compressors/CompressorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compressor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 607
    .end local v0    # "compressorStreamProvider":Lorg/apache/commons/compress/compressors/CompressorStreamProvider;
    :catch_0
    move-exception v0

    .line 608
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/commons/compress/compressors/CompressorException;

    const-string v2, "Could not create CompressorInputStream."

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 534
    .end local v0    # "e":Ljava/io/IOException;
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Compressor name and stream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCompressorOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/compressors/CompressorOutputStream;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            ")",
            "Lorg/apache/commons/compress/compressors/CompressorOutputStream<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/compressors/CompressorException;
        }
    .end annotation

    .line 630
    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    .line 636
    :try_start_0
    const-string v0, "gz"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 640
    :cond_0
    const-string v0, "bzip2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    new-instance v0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 644
    :cond_1
    const-string v0, "xz"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 645
    new-instance v0, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/xz/XZCompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 648
    :cond_2
    const-string v0, "pack200"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 649
    new-instance v0, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/pack200/Pack200CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 652
    :cond_3
    const-string v0, "lzma"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 653
    new-instance v0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 656
    :cond_4
    const-string v0, "deflate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 657
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 660
    :cond_5
    const-string v0, "snappy-framed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 661
    new-instance v0, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/snappy/FramedSnappyCompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 664
    :cond_6
    const-string v0, "lz4-block"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 665
    new-instance v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 668
    :cond_7
    const-string v0, "lz4-framed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 669
    new-instance v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 672
    :cond_8
    const-string v0, "zstd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 673
    new-instance v0, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;

    invoke-direct {v0, p2}, Lorg/apache/commons/compress/compressors/zstandard/ZstdCompressorOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 677
    :cond_9
    nop

    .line 678
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->getCompressorOutputStreamProviders()Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/compressors/CompressorStreamProvider;

    .line 679
    .local v0, "compressorStreamProvider":Lorg/apache/commons/compress/compressors/CompressorStreamProvider;
    if-eqz v0, :cond_a

    .line 680
    invoke-interface {v0, p1, p2}, Lorg/apache/commons/compress/compressors/CompressorStreamProvider;->createCompressorOutputStream(Ljava/lang/String;Ljava/io/OutputStream;)Lorg/apache/commons/compress/compressors/CompressorOutputStream;

    move-result-object v1

    return-object v1

    .line 682
    :cond_a
    new-instance v1, Lorg/apache/commons/compress/compressors/CompressorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compressor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 675
    .end local v0    # "compressorStreamProvider":Lorg/apache/commons/compress/compressors/CompressorStreamProvider;
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/commons/compress/compressors/CompressorException;

    const-string v2, "Could not create CompressorOutputStream"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/compress/compressors/CompressorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 631
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Compressor name and stream must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompressorInputStreamProviders()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/compressors/CompressorStreamProvider;",
            ">;"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->compressorInputStreamProviders:Ljava/util/SortedMap;

    if-nez v0, :cond_0

    .line 687
    invoke-static {}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->findAvailableCompressorInputStreamProviders()Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->compressorInputStreamProviders:Ljava/util/SortedMap;

    .line 689
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->compressorInputStreamProviders:Ljava/util/SortedMap;

    return-object v0
.end method

.method public getCompressorOutputStreamProviders()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/compress/compressors/CompressorStreamProvider;",
            ">;"
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->compressorOutputStreamProviders:Ljava/util/SortedMap;

    if-nez v0, :cond_0

    .line 694
    invoke-static {}, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->findAvailableCompressorOutputStreamProviders()Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->compressorOutputStreamProviders:Ljava/util/SortedMap;

    .line 696
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->compressorOutputStreamProviders:Ljava/util/SortedMap;

    return-object v0
.end method

.method getDecompressConcatenated()Z
    .locals 1

    .line 701
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    return v0
.end method

.method public getDecompressUntilEOF()Ljava/lang/Boolean;
    .locals 1

    .line 705
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressUntilEOF:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getInputStreamCompressorNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 710
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "br"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bzip2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "xz"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lzma"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pack200"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "deflate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "snappy-raw"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "snappy-framed"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lz4-block"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lz4-framed"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "zstd"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "deflate64"

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/commons/compress/utils/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStreamCompressorNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 715
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bzip2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "xz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lzma"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pack200"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "deflate"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "snappy-framed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lz4-block"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lz4-framed"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "zstd"

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/commons/compress/utils/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public setDecompressConcatenated(Z)V
    .locals 2
    .param p1, "decompressConcatenated"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 733
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressUntilEOF:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 736
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/CompressorStreamFactory;->decompressConcatenated:Z

    .line 737
    return-void

    .line 734
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot override the setting defined by the constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
