.class Lorg/tukaani/xz/BCJDecoder;
.super Lorg/tukaani/xz/BCJCoder;
.source "BCJDecoder.java"

# interfaces
.implements Lorg/tukaani/xz/FilterDecoder;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final filterID:J

.field private final startOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 10
    return-void
.end method

.method constructor <init>(J[B)V
    .locals 5
    .param p1, "filterID"    # J
    .param p3, "props"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lorg/tukaani/xz/BCJCoder;-><init>()V

    .line 16
    invoke-static {p1, p2}, Lorg/tukaani/xz/BCJDecoder;->isBCJFilterID(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    iput-wide p1, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    .line 19
    array-length v0, p3

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    goto :goto_1

    .line 21
    :cond_0
    array-length v0, p3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 24
    aget-byte v3, p3, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 23
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    .end local v2    # "i":I
    :cond_1
    iput v0, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    .line 27
    .end local v0    # "n":I
    nop

    .line 31
    :goto_1
    return-void

    .line 28
    :cond_2
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "Unsupported BCJ filter properties"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, "simpleFilter":Lorg/tukaani/xz/simple/SimpleFilter;
    iget-wide v1, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lorg/tukaani/xz/simple/X86;

    iget v3, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v1, v2, v3}, Lorg/tukaani/xz/simple/X86;-><init>(ZI)V

    move-object v0, v1

    goto/16 :goto_0

    .line 44
    :cond_0
    iget-wide v3, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v5, 0x5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 45
    new-instance v1, Lorg/tukaani/xz/simple/PowerPC;

    iget v3, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v1, v2, v3}, Lorg/tukaani/xz/simple/PowerPC;-><init>(ZI)V

    move-object v0, v1

    goto/16 :goto_0

    .line 46
    :cond_1
    iget-wide v3, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v5, 0x6

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    .line 47
    new-instance v1, Lorg/tukaani/xz/simple/IA64;

    iget v3, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v1, v2, v3}, Lorg/tukaani/xz/simple/IA64;-><init>(ZI)V

    move-object v0, v1

    goto :goto_0

    .line 48
    :cond_2
    iget-wide v3, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v5, 0x7

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 49
    new-instance v1, Lorg/tukaani/xz/simple/ARM;

    iget v3, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v1, v2, v3}, Lorg/tukaani/xz/simple/ARM;-><init>(ZI)V

    move-object v0, v1

    goto :goto_0

    .line 50
    :cond_3
    iget-wide v3, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v5, 0x8

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    .line 51
    new-instance v1, Lorg/tukaani/xz/simple/ARMThumb;

    iget v3, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v1, v2, v3}, Lorg/tukaani/xz/simple/ARMThumb;-><init>(ZI)V

    move-object v0, v1

    goto :goto_0

    .line 52
    :cond_4
    iget-wide v3, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v5, 0x9

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    .line 53
    new-instance v1, Lorg/tukaani/xz/simple/SPARC;

    iget v3, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v1, v2, v3}, Lorg/tukaani/xz/simple/SPARC;-><init>(ZI)V

    move-object v0, v1

    goto :goto_0

    .line 54
    :cond_5
    iget-wide v3, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v5, 0xa

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    .line 55
    new-instance v1, Lorg/tukaani/xz/simple/ARM64;

    iget v3, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v1, v2, v3}, Lorg/tukaani/xz/simple/ARM64;-><init>(ZI)V

    move-object v0, v1

    goto :goto_0

    .line 56
    :cond_6
    iget-wide v1, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v3, 0xb

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    .line 57
    new-instance v1, Lorg/tukaani/xz/simple/RISCVDecoder;

    iget v2, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v1, v2}, Lorg/tukaani/xz/simple/RISCVDecoder;-><init>(I)V

    move-object v0, v1

    .line 61
    :goto_0
    new-instance v1, Lorg/tukaani/xz/SimpleInputStream;

    invoke-direct {v1, p1, v0}, Lorg/tukaani/xz/SimpleInputStream;-><init>(Ljava/io/InputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V

    return-object v1

    .line 59
    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public getMemoryUsage()I
    .locals 1

    .line 35
    invoke-static {}, Lorg/tukaani/xz/SimpleInputStream;->getMemoryUsage()I

    move-result v0

    return v0
.end method
