.class public Lorg/tukaani/xz/check/CRC64;
.super Lorg/tukaani/xz/check/Check;
.source "CRC64.java"


# static fields
.field private static final TABLE:[[J


# instance fields
.field private crc:J


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x100

    aput v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput v4, v0, v3

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    sput-object v0, Lorg/tukaani/xz/check/CRC64;->TABLE:[[J

    .line 14
    const-wide v5, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    .line 16
    .local v5, "poly64":J
    const/4 v0, 0x0

    .local v0, "s":I
    :goto_0
    if-ge v0, v4, :cond_4

    .line 17
    const/4 v3, 0x0

    .local v3, "b":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 18
    if-nez v0, :cond_0

    int-to-long v7, v3

    goto :goto_2

    :cond_0
    sget-object v7, Lorg/tukaani/xz/check/CRC64;->TABLE:[[J

    add-int/lit8 v8, v0, -0x1

    aget-object v7, v7, v8

    aget-wide v8, v7, v3

    move-wide v7, v8

    .line 19
    .local v7, "r":J
    :goto_2
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    const/16 v10, 0x8

    if-ge v9, v10, :cond_2

    .line 20
    const-wide/16 v10, 0x1

    and-long v12, v7, v10

    cmp-long v10, v12, v10

    if-nez v10, :cond_1

    .line 21
    ushr-long v10, v7, v1

    const-wide v12, -0x3693a86a2878f0beL    # -5.0564049839430436E45

    xor-long v7, v10, v12

    goto :goto_4

    .line 23
    :cond_1
    ushr-long/2addr v7, v1

    .line 19
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 26
    .end local v9    # "i":I
    :cond_2
    sget-object v9, Lorg/tukaani/xz/check/CRC64;->TABLE:[[J

    aget-object v9, v9, v0

    aput-wide v7, v9, v3

    .line 17
    .end local v7    # "r":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 16
    .end local v3    # "b":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    .end local v0    # "s":I
    .end local v5    # "poly64":J
    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lorg/tukaani/xz/check/Check;-><init>()V

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/tukaani/xz/check/CRC64;->crc:J

    .line 34
    const/16 v0, 0x8

    iput v0, p0, Lorg/tukaani/xz/check/CRC64;->size:I

    .line 35
    const-string v0, "CRC64"

    iput-object v0, p0, Lorg/tukaani/xz/check/CRC64;->name:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public finish()[B
    .locals 4

    .line 59
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 60
    .local v0, "buf":[B
    iget-wide v1, p0, Lorg/tukaani/xz/check/CRC64;->crc:J

    not-long v1, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lorg/tukaani/xz/common/ByteArrayView;->setLongLE([BIJ)V

    .line 61
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/tukaani/xz/check/CRC64;->crc:J

    .line 62
    return-object v0
.end method

.method public update([BII)V
    .locals 10
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 40
    add-int v0, p2, p3

    .line 41
    .local v0, "end":I
    move v1, p2

    .line 43
    .local v1, "i":I
    add-int/lit8 v2, v0, -0x3

    .local v2, "end4":I
    :goto_0
    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 44
    iget-wide v4, p0, Lorg/tukaani/xz/check/CRC64;->crc:J

    long-to-int v4, v4

    .line 45
    .local v4, "tmp":I
    sget-object v5, Lorg/tukaani/xz/check/CRC64;->TABLE:[[J

    const/4 v6, 0x3

    aget-object v5, v5, v6

    and-int/lit16 v6, v4, 0xff

    aget-byte v7, p1, v1

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v6, v7

    aget-wide v6, v5, v6

    sget-object v5, Lorg/tukaani/xz/check/CRC64;->TABLE:[[J

    const/4 v8, 0x2

    aget-object v5, v5, v8

    ushr-int/lit8 v8, v4, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v1, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    xor-int/2addr v8, v9

    aget-wide v8, v5, v8

    xor-long v5, v6, v8

    iget-wide v7, p0, Lorg/tukaani/xz/check/CRC64;->crc:J

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    xor-long/2addr v5, v7

    sget-object v7, Lorg/tukaani/xz/check/CRC64;->TABLE:[[J

    const/4 v8, 0x1

    aget-object v7, v7, v8

    ushr-int/lit8 v8, v4, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v1, 0x2

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    xor-int/2addr v8, v9

    aget-wide v8, v7, v8

    xor-long/2addr v5, v8

    sget-object v7, Lorg/tukaani/xz/check/CRC64;->TABLE:[[J

    aget-object v3, v7, v3

    ushr-int/lit8 v7, v4, 0x18

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v1, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    xor-int/2addr v7, v8

    aget-wide v7, v3, v7

    xor-long/2addr v5, v7

    iput-wide v5, p0, Lorg/tukaani/xz/check/CRC64;->crc:J

    .line 43
    .end local v4    # "tmp":I
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 52
    .end local v2    # "end4":I
    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    .line 53
    sget-object v2, Lorg/tukaani/xz/check/CRC64;->TABLE:[[J

    aget-object v2, v2, v3

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iget-wide v5, p0, Lorg/tukaani/xz/check/CRC64;->crc:J

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    xor-int/2addr v1, v5

    aget-wide v1, v2, v1

    iget-wide v5, p0, Lorg/tukaani/xz/check/CRC64;->crc:J

    const/16 v7, 0x8

    ushr-long/2addr v5, v7

    xor-long/2addr v1, v5

    iput-wide v1, p0, Lorg/tukaani/xz/check/CRC64;->crc:J

    move v1, v4

    goto :goto_1

    .line 55
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method
