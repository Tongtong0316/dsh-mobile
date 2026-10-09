.class Lorg/tukaani/xz/BasicArrayCache$CacheMap;
.super Ljava/util/LinkedHashMap;
.source "BasicArrayCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/BasicArrayCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Integer;",
        "Lorg/tukaani/xz/BasicArrayCache$CyclicStack<",
        "Ljava/lang/ref/Reference<",
        "TT;>;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 124
    .local p0, "this":Lorg/tukaani/xz/BasicArrayCache$CacheMap;, "Lorg/tukaani/xz/BasicArrayCache$CacheMap<TT;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    const/16 v2, 0x40

    invoke-direct {p0, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 125
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lorg/tukaani/xz/BasicArrayCache$CyclicStack<",
            "Ljava/lang/ref/Reference<",
            "TT;>;>;>;)Z"
        }
    .end annotation

    .line 134
    .local p0, "this":Lorg/tukaani/xz/BasicArrayCache$CacheMap;, "Lorg/tukaani/xz/BasicArrayCache$CacheMap<TT;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/tukaani/xz/BasicArrayCache$CyclicStack<Ljava/lang/ref/Reference<TT;>;>;>;"
    invoke-virtual {p0}, Lorg/tukaani/xz/BasicArrayCache$CacheMap;->size()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
