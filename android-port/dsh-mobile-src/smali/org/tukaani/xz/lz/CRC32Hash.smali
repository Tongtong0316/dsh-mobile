.class Lorg/tukaani/xz/lz/CRC32Hash;
.super Ljava/lang/Object;
.source "CRC32Hash.java"


# static fields
.field private static final CRC32_POLY:I = -0x12477ce0

.field static final crcTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lorg/tukaani/xz/lz/CRC32Hash;->crcTable:[I

    .line 17
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 18
    move v2, v1

    .line 20
    .local v2, "r":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    .line 21
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    .line 22
    ushr-int/lit8 v4, v2, 0x1

    const v5, -0x12477ce0

    xor-int v2, v4, v5

    goto :goto_2

    .line 24
    :cond_0
    ushr-int/lit8 v2, v2, 0x1

    .line 20
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 27
    .end local v3    # "j":I
    :cond_1
    sget-object v3, Lorg/tukaani/xz/lz/CRC32Hash;->crcTable:[I

    aput v2, v3, v1

    .line 17
    .end local v2    # "r":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
