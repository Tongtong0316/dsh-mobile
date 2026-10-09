.class public final Lorg/tukaani/xz/simple/IA64;
.super Ljava/lang/Object;
.source "IA64.java"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# static fields
.field private static final BRANCH_TABLE:[I


# instance fields
.field private final isEncoder:Z

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/tukaani/xz/simple/IA64;->BRANCH_TABLE:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x6
        0x6
        0x0
        0x0
        0x7
        0x7
        0x4
        0x4
        0x0
        0x0
        0x4
        0x4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(ZI)V
    .locals 0
    .param p1, "isEncoder"    # Z
    .param p2, "startPos"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lorg/tukaani/xz/simple/IA64;->isEncoder:Z

    .line 21
    iput p2, p0, Lorg/tukaani/xz/simple/IA64;->pos:I

    .line 22
    return-void
.end method


# virtual methods
.method public code([BII)I
    .locals 22
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 26
    move-object/from16 v0, p0

    add-int v1, p2, p3

    const/16 v2, 0x10

    sub-int/2addr v1, v2

    .line 29
    .local v1, "end":I
    move/from16 v3, p2

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_7

    .line 30
    aget-byte v4, p1, v3

    and-int/lit8 v4, v4, 0x1f

    .line 31
    .local v4, "instrTemplate":I
    sget-object v5, Lorg/tukaani/xz/simple/IA64;->BRANCH_TABLE:[I

    aget v5, v5, v4

    .line 33
    .local v5, "mask":I
    const/4 v6, 0x0

    .local v6, "slot":I
    const/4 v7, 0x5

    .local v7, "bitPos":I
    :goto_1
    const/4 v8, 0x3

    if-ge v6, v8, :cond_6

    .line 34
    ushr-int v8, v5, v6

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-nez v8, :cond_0

    .line 35
    move/from16 v17, v2

    move/from16 v18, v3

    goto/16 :goto_5

    .line 37
    :cond_0
    ushr-int/lit8 v8, v7, 0x3

    .line 38
    .local v8, "bytePos":I
    and-int/lit8 v10, v7, 0x7

    .line 40
    .local v10, "bitRes":I
    const-wide/16 v11, 0x0

    .line 41
    .local v11, "instr":J
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    const/4 v14, 0x6

    if-ge v13, v14, :cond_1

    .line 42
    add-int v14, v3, v8

    add-int/2addr v14, v13

    aget-byte v14, p1, v14

    int-to-long v14, v14

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    mul-int/lit8 v16, v13, 0x8

    shl-long v14, v14, v16

    or-long/2addr v11, v14

    .line 41
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 44
    .end local v13    # "j":I
    :cond_1
    ushr-long v15, v11, v10

    .line 46
    .local v15, "instrNorm":J
    const/16 v13, 0x25

    ushr-long v17, v15, v13

    const-wide/16 v19, 0xf

    and-long v17, v17, v19

    const-wide/16 v19, 0x5

    cmp-long v13, v17, v19

    if-nez v13, :cond_4

    const/16 v13, 0x9

    ushr-long v17, v15, v13

    const-wide/16 v19, 0x7

    and-long v17, v17, v19

    const-wide/16 v19, 0x0

    cmp-long v13, v17, v19

    if-eqz v13, :cond_2

    .line 48
    move/from16 v17, v2

    move/from16 v18, v3

    goto :goto_5

    .line 50
    :cond_2
    const/16 v13, 0xd

    ushr-long v17, v15, v13

    const-wide/32 v19, 0xfffff

    and-long v13, v17, v19

    long-to-int v13, v13

    .line 51
    .local v13, "src":I
    const/16 v14, 0x24

    move/from16 v18, v3

    .end local v3    # "i":I
    .local v18, "i":I
    ushr-long v2, v15, v14

    long-to-int v2, v2

    and-int/2addr v2, v9

    shl-int/lit8 v2, v2, 0x14

    or-int/2addr v2, v13

    .line 52
    .end local v13    # "src":I
    .local v2, "src":I
    shl-int/lit8 v2, v2, 0x4

    .line 55
    iget-boolean v3, v0, Lorg/tukaani/xz/simple/IA64;->isEncoder:Z

    if-eqz v3, :cond_3

    .line 56
    iget v3, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    add-int v3, v3, v18

    sub-int v3, v3, p2

    add-int/2addr v3, v2

    .local v3, "dest":I
    goto :goto_3

    .line 58
    .end local v3    # "dest":I
    :cond_3
    iget v3, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    add-int v3, v3, v18

    sub-int v3, v3, p2

    sub-int v3, v2, v3

    .line 60
    .restart local v3    # "dest":I
    :goto_3
    ushr-int/lit8 v3, v3, 0x4

    .line 62
    const-wide v13, -0x11ffffe001L

    and-long/2addr v13, v15

    .line 63
    .end local v15    # "instrNorm":J
    .local v13, "instrNorm":J
    move/from16 v21, v10

    .end local v10    # "bitRes":I
    .local v21, "bitRes":I
    int-to-long v9, v3

    and-long v9, v9, v19

    const/16 v15, 0xd

    shl-long/2addr v9, v15

    or-long/2addr v9, v13

    .line 64
    .end local v13    # "instrNorm":J
    .local v9, "instrNorm":J
    int-to-long v13, v3

    const-wide/32 v15, 0x100000

    and-long/2addr v13, v15

    const/16 v17, 0x10

    shl-long v13, v13, v17

    or-long/2addr v9, v13

    .line 66
    const/4 v13, 0x1

    shl-int v14, v13, v21

    sub-int/2addr v14, v13

    int-to-long v13, v14

    and-long/2addr v11, v13

    .line 67
    shl-long v13, v9, v21

    or-long/2addr v11, v13

    .line 69
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_4
    const/4 v14, 0x6

    if-ge v13, v14, :cond_5

    .line 70
    add-int v15, v18, v8

    add-int/2addr v15, v13

    mul-int/lit8 v16, v13, 0x8

    move/from16 v19, v15

    ushr-long v14, v11, v16

    long-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, p1, v19

    .line 69
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 46
    .end local v2    # "src":I
    .end local v9    # "instrNorm":J
    .end local v13    # "j":I
    .end local v18    # "i":I
    .end local v21    # "bitRes":I
    .local v3, "i":I
    .restart local v10    # "bitRes":I
    .restart local v15    # "instrNorm":J
    :cond_4
    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v21, v10

    .line 33
    .end local v3    # "i":I
    .end local v8    # "bytePos":I
    .end local v10    # "bitRes":I
    .end local v11    # "instr":J
    .end local v15    # "instrNorm":J
    .restart local v18    # "i":I
    :cond_5
    :goto_5
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x29

    move/from16 v2, v17

    move/from16 v3, v18

    goto/16 :goto_1

    .end local v18    # "i":I
    .restart local v3    # "i":I
    :cond_6
    move/from16 v17, v2

    move/from16 v18, v3

    .line 29
    .end local v3    # "i":I
    .end local v4    # "instrTemplate":I
    .end local v5    # "mask":I
    .end local v6    # "slot":I
    .end local v7    # "bitPos":I
    .restart local v18    # "i":I
    add-int/lit8 v3, v18, 0x10

    .end local v18    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0

    .line 74
    :cond_7
    move/from16 v18, v3

    .end local v3    # "i":I
    .restart local v18    # "i":I
    sub-int v3, v18, p2

    .line 75
    .end local v18    # "i":I
    .restart local v3    # "i":I
    iget v2, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    add-int/2addr v2, v3

    iput v2, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    .line 76
    return v3
.end method
