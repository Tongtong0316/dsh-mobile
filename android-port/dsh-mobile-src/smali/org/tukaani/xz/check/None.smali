.class public Lorg/tukaani/xz/check/None;
.super Lorg/tukaani/xz/check/Check;
.source "None.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lorg/tukaani/xz/check/Check;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/check/None;->size:I

    .line 10
    const-string v0, "None"

    iput-object v0, p0, Lorg/tukaani/xz/check/None;->name:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public finish()[B
    .locals 1

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 19
    .local v0, "empty":[B
    return-object v0
.end method

.method public update([BII)V
    .locals 0
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 14
    return-void
.end method
