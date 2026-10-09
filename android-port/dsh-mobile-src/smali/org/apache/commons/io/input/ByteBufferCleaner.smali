.class final Lorg/apache/commons/io/input/ByteBufferCleaner;
.super Ljava/lang/Object;
.source "ByteBufferCleaner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/ByteBufferCleaner$Cleaner;,
        Lorg/apache/commons/io/input/ByteBufferCleaner$Java8Cleaner;,
        Lorg/apache/commons/io/input/ByteBufferCleaner$Java9Cleaner;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/commons/io/input/ByteBufferCleaner$Cleaner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    invoke-static {}, Lorg/apache/commons/io/input/ByteBufferCleaner;->getCleaner()Lorg/apache/commons/io/input/ByteBufferCleaner$Cleaner;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/ByteBufferCleaner;->INSTANCE:Lorg/apache/commons/io/input/ByteBufferCleaner$Cleaner;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clean(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 89
    :try_start_0
    sget-object v0, Lorg/apache/commons/io/input/ByteBufferCleaner;->INSTANCE:Lorg/apache/commons/io/input/ByteBufferCleaner$Cleaner;

    invoke-interface {v0, p0}, Lorg/apache/commons/io/input/ByteBufferCleaner$Cleaner;->clean(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    nop

    .line 93
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to clean direct buffer."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getCleaner()Lorg/apache/commons/io/input/ByteBufferCleaner$Cleaner;
    .locals 4

    .line 97
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/commons/io/input/ByteBufferCleaner$Java8Cleaner;

    invoke-direct {v1, v0}, Lorg/apache/commons/io/input/ByteBufferCleaner$Java8Cleaner;-><init>(Lorg/apache/commons/io/input/ByteBufferCleaner$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 98
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lorg/apache/commons/io/input/ByteBufferCleaner$Java9Cleaner;

    invoke-direct {v2, v0}, Lorg/apache/commons/io/input/ByteBufferCleaner$Java9Cleaner;-><init>(Lorg/apache/commons/io/input/ByteBufferCleaner$1;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 101
    :catch_1
    move-exception v0

    .line 102
    .local v0, "e1":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to initialize a Cleaner."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static isSupported()Z
    .locals 1

    .line 114
    sget-object v0, Lorg/apache/commons/io/input/ByteBufferCleaner;->INSTANCE:Lorg/apache/commons/io/input/ByteBufferCleaner$Cleaner;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
