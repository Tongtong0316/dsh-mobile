.class Lorg/tukaani/xz/BCJEncoder;
.super Lorg/tukaani/xz/BCJCoder;
.source "BCJEncoder.java"

# interfaces
.implements Lorg/tukaani/xz/FilterEncoder;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final filterID:J

.field private final options:Lorg/tukaani/xz/BCJOptions;

.field private final props:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 7
    return-void
.end method

.method constructor <init>(Lorg/tukaani/xz/BCJOptions;J)V
    .locals 5
    .param p1, "options"    # Lorg/tukaani/xz/BCJOptions;
    .param p2, "filterID"    # J

    .line 12
    invoke-direct {p0}, Lorg/tukaani/xz/BCJCoder;-><init>()V

    .line 13
    invoke-static {p2, p3}, Lorg/tukaani/xz/BCJEncoder;->isBCJFilterID(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lorg/tukaani/xz/BCJOptions;->getStartOffset()I

    move-result v0

    .line 16
    .local v0, "startOffset":I
    if-nez v0, :cond_0

    .line 17
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/tukaani/xz/BCJEncoder;->props:[B

    goto :goto_1

    .line 19
    :cond_0
    const/4 v1, 0x4

    new-array v2, v1, [B

    iput-object v2, p0, Lorg/tukaani/xz/BCJEncoder;->props:[B

    .line 20
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 21
    iget-object v3, p0, Lorg/tukaani/xz/BCJEncoder;->props:[B

    mul-int/lit8 v4, v2, 0x8

    ushr-int v4, v0, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 20
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iput-wide p2, p0, Lorg/tukaani/xz/BCJEncoder;->filterID:J

    .line 25
    invoke-virtual {p1}, Lorg/tukaani/xz/BCJOptions;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/tukaani/xz/BCJOptions;

    iput-object v1, p0, Lorg/tukaani/xz/BCJEncoder;->options:Lorg/tukaani/xz/BCJOptions;

    .line 26
    return-void

    .line 13
    .end local v0    # "startOffset":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public getFilterID()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lorg/tukaani/xz/BCJEncoder;->filterID:J

    return-wide v0
.end method

.method public getFilterProps()[B
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/tukaani/xz/BCJEncoder;->props:[B

    return-object v0
.end method

.method public getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;
    .locals 1
    .param p1, "out"    # Lorg/tukaani/xz/FinishableOutputStream;
    .param p2, "arrayCache"    # Lorg/tukaani/xz/ArrayCache;

    .line 46
    iget-object v0, p0, Lorg/tukaani/xz/BCJEncoder;->options:Lorg/tukaani/xz/BCJOptions;

    invoke-virtual {v0, p1, p2}, Lorg/tukaani/xz/BCJOptions;->getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;Lorg/tukaani/xz/ArrayCache;)Lorg/tukaani/xz/FinishableOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public supportsFlushing()Z
    .locals 1

    .line 40
    const/4 v0, 0x0

    return v0
.end method
