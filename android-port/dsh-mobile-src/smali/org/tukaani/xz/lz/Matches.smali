.class public final Lorg/tukaani/xz/lz/Matches;
.super Ljava/lang/Object;
.source "Matches.java"


# instance fields
.field public count:I

.field public final dist:[I

.field public final len:[I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "countMax"    # I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/lz/Matches;->count:I

    .line 14
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/tukaani/xz/lz/Matches;->len:[I

    .line 15
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/tukaani/xz/lz/Matches;->dist:[I

    .line 16
    return-void
.end method
