.class public Lorg/tukaani/xz/ArrayCache;
.super Ljava/lang/Object;
.source "ArrayCache.java"


# static fields
.field private static volatile defaultCache:Lorg/tukaani/xz/ArrayCache;

.field private static final dummyCache:Lorg/tukaani/xz/ArrayCache;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 69
    new-instance v0, Lorg/tukaani/xz/ArrayCache;

    invoke-direct {v0}, Lorg/tukaani/xz/ArrayCache;-><init>()V

    sput-object v0, Lorg/tukaani/xz/ArrayCache;->dummyCache:Lorg/tukaani/xz/ArrayCache;

    .line 78
    const-string v0, "org.tukaani.xz.ArrayCache"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "cacheType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 80
    const-string v0, "Dummy"

    .line 82
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "Dummy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "Basic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 92
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' in the system property org.tukaani.xz.ArrayCache. Supported values: Dummy, Basic"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :pswitch_0
    invoke-static {}, Lorg/tukaani/xz/BasicArrayCache;->getInstance()Lorg/tukaani/xz/BasicArrayCache;

    move-result-object v1

    sput-object v1, Lorg/tukaani/xz/ArrayCache;->defaultCache:Lorg/tukaani/xz/ArrayCache;

    .line 89
    goto :goto_2

    .line 84
    :pswitch_1
    sget-object v1, Lorg/tukaani/xz/ArrayCache;->dummyCache:Lorg/tukaani/xz/ArrayCache;

    sput-object v1, Lorg/tukaani/xz/ArrayCache;->defaultCache:Lorg/tukaani/xz/ArrayCache;

    .line 85
    nop

    .line 97
    .end local v0    # "cacheType":Ljava/lang/String;
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3cfe40e -> :sswitch_1
        0x3f51488 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultCache()Lorg/tukaani/xz/ArrayCache;
    .locals 1

    .line 115
    sget-object v0, Lorg/tukaani/xz/ArrayCache;->defaultCache:Lorg/tukaani/xz/ArrayCache;

    return-object v0
.end method

.method public static getDummyCache()Lorg/tukaani/xz/ArrayCache;
    .locals 1

    .line 104
    sget-object v0, Lorg/tukaani/xz/ArrayCache;->dummyCache:Lorg/tukaani/xz/ArrayCache;

    return-object v0
.end method

.method public static setDefaultCache(Lorg/tukaani/xz/ArrayCache;)V
    .locals 1
    .param p0, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 125
    if-eqz p0, :cond_0

    .line 129
    sput-object p0, Lorg/tukaani/xz/ArrayCache;->defaultCache:Lorg/tukaani/xz/ArrayCache;

    .line 130
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getByteArray(IZ)[B
    .locals 1
    .param p1, "size"    # I
    .param p2, "fillWithZeros"    # Z

    .line 155
    new-array v0, p1, [B

    return-object v0
.end method

.method public getIntArray(IZ)[I
    .locals 1
    .param p1, "size"    # I
    .param p2, "fillWithZeros"    # Z

    .line 182
    new-array v0, p1, [I

    return-object v0
.end method

.method public putArray([B)V
    .locals 0
    .param p1, "array"    # [B

    .line 164
    return-void
.end method

.method public putArray([I)V
    .locals 0
    .param p1, "array"    # [I

    .line 191
    return-void
.end method
