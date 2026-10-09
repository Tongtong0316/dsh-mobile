.class final Lorg/apache/commons/io/input/ByteBufferCleaner$Java8Cleaner;
.super Ljava/lang/Object;
.source "ByteBufferCleaner.java"

# interfaces
.implements Lorg/apache/commons/io/input/ByteBufferCleaner$Cleaner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ByteBufferCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Java8Cleaner"
.end annotation


# instance fields
.field private final cleanMethod:Ljava/lang/reflect/Method;

.field private final cleanerMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "sun.misc.Cleaner"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "clean"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ByteBufferCleaner$Java8Cleaner;->cleanMethod:Ljava/lang/reflect/Method;

    .line 48
    const-string v0, "sun.nio.ch.DirectBuffer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "cleaner"

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ByteBufferCleaner$Java8Cleaner;->cleanerMethod:Ljava/lang/reflect/Method;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/input/ByteBufferCleaner$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/io/input/ByteBufferCleaner$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lorg/apache/commons/io/input/ByteBufferCleaner$Java8Cleaner;-><init>()V

    return-void
.end method


# virtual methods
.method public clean(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/apache/commons/io/input/ByteBufferCleaner$Java8Cleaner;->cleanerMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, "cleaner":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 55
    iget-object v2, p0, Lorg/apache/commons/io/input/ByteBufferCleaner$Java8Cleaner;->cleanMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    return-void
.end method
