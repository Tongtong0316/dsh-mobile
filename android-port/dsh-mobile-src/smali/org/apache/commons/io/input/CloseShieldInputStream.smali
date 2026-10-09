.class public Lorg/apache/commons/io/input/CloseShieldInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "CloseShieldInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    return-void
.end method

.method public static wrap(Ljava/io/InputStream;)Lorg/apache/commons/io/input/CloseShieldInputStream;
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 41
    new-instance v0, Lorg/apache/commons/io/input/CloseShieldInputStream;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/input/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 64
    sget-object v0, Lorg/apache/commons/io/input/ClosedInputStream;->INSTANCE:Lorg/apache/commons/io/input/ClosedInputStream;

    iput-object v0, p0, Lorg/apache/commons/io/input/CloseShieldInputStream;->in:Ljava/io/InputStream;

    .line 65
    return-void
.end method
