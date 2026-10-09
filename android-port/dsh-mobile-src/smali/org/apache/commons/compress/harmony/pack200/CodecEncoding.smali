.class public Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;
.super Ljava/lang/Object;
.source "CodecEncoding.java"


# static fields
.field private static final EMPTY_INT_ARRAY:[I

.field private static final canonicalCodec:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

.field private static canonicalCodecsToSpecifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 31
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->EMPTY_INT_ARRAY:[I

    .line 37
    const/16 v1, 0x74

    new-array v1, v1, [Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v3, 0x1

    const/16 v4, 0x100

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v3, v4, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v3, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v3, v4, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/4 v8, 0x5

    aput-object v2, v1, v8

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v4, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/4 v9, 0x6

    aput-object v2, v1, v9

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/4 v9, 0x7

    aput-object v2, v1, v9

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v4, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v9, 0x8

    aput-object v2, v1, v9

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v10, 0x9

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v4, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v10, 0xa

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v10, 0xb

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v4, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v10, 0xc

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v7, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v10, 0xd

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v7, v4, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v10, 0xe

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v7, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v10, 0xf

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v7, v4, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x10

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v7}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v10, 0x11

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v7, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v10, 0x12

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v7, v5}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v10, 0x13

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v4}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v10, 0x14

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v4, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v10, 0x15

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v4, v5}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v10, 0x16

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v10, 0x20

    invoke-direct {v2, v8, v10}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v11, 0x17

    aput-object v2, v1, v11

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v10, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v11, 0x18

    aput-object v2, v1, v11

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v10, v5}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v11, 0x19

    aput-object v2, v1, v11

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v11, 0x40

    invoke-direct {v2, v8, v11}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v12, 0x1a

    aput-object v2, v1, v12

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v11, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v12, 0x1b

    aput-object v2, v1, v12

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v11, v5}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v12, 0x1c

    aput-object v2, v1, v12

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v12, 0x80

    invoke-direct {v2, v8, v12}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v13, 0x1d

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v12, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v13, 0x1e

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v12, v5}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(III)V

    const/16 v13, 0x1f

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v7, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    aput-object v2, v1, v10

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v7, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x21

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v7, v5, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x22

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x23

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v4, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x24

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v4, v5, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x25

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v10, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x26

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v10, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x27

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v10, v5, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x28

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v11, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x29

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v11, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x2a

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v11, v5, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x2b

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v12, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x2c

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v12, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v13, 0x2d

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v8, v12, v5, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v8, 0x2e

    aput-object v2, v1, v8

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v8, 0xc0

    invoke-direct {v2, v5, v8}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v13, 0x2f

    aput-object v2, v1, v13

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v13, 0xe0

    invoke-direct {v2, v5, v13}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v14, 0x30

    aput-object v2, v1, v14

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v14, 0xf0

    invoke-direct {v2, v5, v14}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v15, 0x31

    aput-object v2, v1, v15

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v15, 0xf8

    invoke-direct {v2, v5, v15}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v16, 0x32

    aput-object v2, v1, v16

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/16 v7, 0xfc

    invoke-direct {v2, v5, v7}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v17, 0x33

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v9, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x34

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v9, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x35

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x36

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v4, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x37

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v10, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x38

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v10, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x39

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v11, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x3a

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v11, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x3b

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v12, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x3c

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v12, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x3d

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v8, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x3e

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v8, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x3f

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v13, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    aput-object v2, v1, v11

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v13, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x41

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v14, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x42

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v14, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x43

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v15, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v17, 0x44

    aput-object v2, v1, v17

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v15, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x45

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v8}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v5, 0x46

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v13}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v5, 0x47

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v14}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v5, 0x48

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v15}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v5, 0x49

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v7}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v5, 0x4a

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v9, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x4b

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v9, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x4c

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x4d

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v4, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x4e

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v10, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x4f

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v10, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x50

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v11, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x51

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v11, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x52

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v12, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x53

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v12, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x54

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v8, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x55

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v8, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x56

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v13, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x57

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v13, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x58

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v14, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x59

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v14, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x5a

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v15, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x5b

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v6, v15, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v5, 0x5c

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v5, 0x4

    invoke-direct {v2, v5, v8}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v6, 0x5d

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v13}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v6, 0x5e

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v14}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v6, 0x5f

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v15}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v6, 0x60

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v7}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(II)V

    const/16 v6, 0x61

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v9, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v6, 0x62

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v9, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v6, 0x63

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v4, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v6, 0x64

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v4, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x65

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v10, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x66

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v10, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x67

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v11, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x68

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v11, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x69

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v12, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x6a

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v12, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x6b

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v8, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x6c

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v8, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x6d

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v13, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x6e

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v13, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x6f

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v14, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x70

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v14, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v4, 0x71

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v2, v5, v15, v0, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v0, 0x72

    aput-object v2, v1, v0

    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v0, v5, v15, v3, v3}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    const/16 v2, 0x73

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodec:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodec:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 65
    .local v0, "reverseMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodec:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 66
    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodec:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    aget-object v2, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "i":I
    :cond_0
    sput-object v0, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodecsToSpecifiers:Ljava/util/Map;

    .line 69
    .end local v0    # "reverseMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;Ljava/lang/Integer;>;"
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCanonicalCodec(I)Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .locals 1
    .param p0, "i"    # I

    .line 72
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodec:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;
    .locals 11
    .param p0, "value"    # I
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "defaultCodec"    # Lorg/apache/commons/compress/harmony/pack200/Codec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 92
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodec:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    array-length v0, v0

    const/16 v1, 0x74

    if-ne v0, v1, :cond_18

    .line 95
    if-ltz p0, :cond_17

    .line 98
    if-nez p0, :cond_0

    .line 99
    return-object p2

    .line 101
    :cond_0
    const/16 v0, 0x73

    if-gt p0, v0, :cond_1

    .line 102
    sget-object v0, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodec:[Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    aget-object v0, v0, p0

    return-object v0

    .line 104
    :cond_1
    const/4 v0, 0x3

    const/4 v2, 0x1

    if-ne p0, v1, :cond_4

    .line 105
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 106
    .local v1, "code":I
    const-string v3, "End of buffer read whilst trying to decode codec"

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    .line 109
    and-int/lit8 v5, v1, 0x1

    .line 110
    .local v5, "d":I
    shr-int/lit8 v6, v1, 0x1

    and-int/2addr v0, v6

    .line 111
    .local v0, "s":I
    shr-int/lit8 v6, v1, 0x3

    and-int/lit8 v6, v6, 0x7

    add-int/2addr v6, v2

    .line 114
    .local v6, "b":I
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 115
    if-eq v1, v4, :cond_2

    .line 118
    add-int/lit8 v2, v1, 0x1

    .line 120
    .local v2, "h":I
    new-instance v3, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    invoke-direct {v3, v6, v2, v0, v5}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;-><init>(IIII)V

    return-object v3

    .line 116
    .end local v2    # "h":I
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    .end local v0    # "s":I
    .end local v5    # "d":I
    .end local v6    # "b":I
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    .end local v1    # "code":I
    :cond_4
    const/16 v1, 0x75

    const/4 v3, 0x0

    if-lt p0, v1, :cond_d

    const/16 v1, 0x8c

    if-gt p0, v1, :cond_d

    .line 123
    add-int/lit8 v1, p0, -0x75

    .line 124
    .local v1, "offset":I
    and-int/lit8 v4, v1, 0x3

    .line 125
    .local v4, "kx":I
    shr-int/lit8 v5, v1, 0x2

    and-int/2addr v5, v2

    if-ne v5, v2, :cond_5

    move v5, v2

    goto :goto_0

    :cond_5
    move v5, v3

    .line 126
    .local v5, "kbflag":Z
    :goto_0
    shr-int/lit8 v6, v1, 0x3

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_6

    move v6, v2

    goto :goto_1

    :cond_6
    move v6, v3

    .line 127
    .local v6, "adef":Z
    :goto_1
    shr-int/lit8 v7, v1, 0x4

    and-int/2addr v7, v2

    if-ne v7, v2, :cond_7

    goto :goto_2

    :cond_7
    move v2, v3

    .line 130
    .local v2, "bdef":Z
    :goto_2
    if-eqz v6, :cond_9

    if-nez v2, :cond_8

    goto :goto_3

    .line 131
    :cond_8
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    const-string v3, "ADef and BDef should never both be true"

    invoke-direct {v0, v3}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_9
    :goto_3
    if-eqz v5, :cond_a

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 134
    .local v0, "kb":I
    :cond_a
    add-int/lit8 v3, v0, 0x1

    const-wide/high16 v7, 0x4030000000000000L    # 16.0

    int-to-double v9, v4

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v7, v7

    mul-int/2addr v3, v7

    .line 136
    .local v3, "k":I
    if-eqz v6, :cond_b

    .line 137
    move-object v7, p2

    .local v7, "aCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    goto :goto_4

    .line 139
    .end local v7    # "aCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :cond_b
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v7

    invoke-static {v7, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v7

    .line 141
    .restart local v7    # "aCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :goto_4
    if-eqz v2, :cond_c

    .line 142
    move-object v8, p2

    .local v8, "bCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    goto :goto_5

    .line 144
    .end local v8    # "bCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :cond_c
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    invoke-static {v8, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v8

    .line 146
    .restart local v8    # "bCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :goto_5
    new-instance v9, Lorg/apache/commons/compress/harmony/pack200/RunCodec;

    invoke-direct {v9, v3, v7, v8}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;-><init>(ILorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)V

    return-object v9

    .line 148
    .end local v0    # "kb":I
    .end local v1    # "offset":I
    .end local v2    # "bdef":Z
    .end local v3    # "k":I
    .end local v4    # "kx":I
    .end local v5    # "kbflag":Z
    .end local v6    # "adef":Z
    .end local v7    # "aCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .end local v8    # "bCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :cond_d
    const/16 v0, 0x8d

    if-lt p0, v0, :cond_16

    const/16 v0, 0xbc

    if-gt p0, v0, :cond_16

    .line 151
    add-int/lit16 v0, p0, -0x8d

    .line 152
    .local v0, "offset":I
    and-int/lit8 v1, v0, 0x1

    if-ne v1, v2, :cond_e

    move v1, v2

    goto :goto_6

    :cond_e
    move v1, v3

    .line 153
    .local v1, "fdef":Z
    :goto_6
    shr-int/lit8 v4, v0, 0x1

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_f

    move v4, v2

    goto :goto_7

    :cond_f
    move v4, v3

    .line 154
    .local v4, "udef":Z
    :goto_7
    shr-int/lit8 v5, v0, 0x2

    .line 155
    .local v5, "tdefl":I
    if-eqz v5, :cond_10

    goto :goto_8

    :cond_10
    move v2, v3

    .line 157
    .local v2, "tdef":Z
    :goto_8
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    .line 158
    .local v3, "tdefToL":[I
    aget v6, v3, v5

    .line 162
    .local v6, "l":I
    if-eqz v2, :cond_13

    .line 163
    if-eqz v1, :cond_11

    move-object v7, p2

    goto :goto_9

    :cond_11
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v7

    invoke-static {v7, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v7

    .line 164
    .local v7, "fCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :goto_9
    if-eqz v4, :cond_12

    move-object v8, p2

    goto :goto_a

    :cond_12
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    invoke-static {v8, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v8

    .line 170
    .local v8, "uCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :goto_a
    new-instance v9, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    invoke-direct {v9, v7, v6, v8}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;-><init>(Lorg/apache/commons/compress/harmony/pack200/Codec;ILorg/apache/commons/compress/harmony/pack200/Codec;)V

    return-object v9

    .line 172
    .end local v7    # "fCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .end local v8    # "uCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :cond_13
    if-eqz v1, :cond_14

    move-object v7, p2

    goto :goto_b

    :cond_14
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v7

    invoke-static {v7, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v7

    .line 173
    .restart local v7    # "fCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :goto_b
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    invoke-static {v8, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v8

    .line 174
    .local v8, "tCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    if-eqz v4, :cond_15

    move-object v9, p2

    goto :goto_c

    :cond_15
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v9

    invoke-static {v9, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getCodec(ILjava/io/InputStream;Lorg/apache/commons/compress/harmony/pack200/Codec;)Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v9

    .line 175
    .local v9, "uCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :goto_c
    new-instance v10, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    invoke-direct {v10, v7, v8, v9}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;-><init>(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)V

    return-object v10

    .line 149
    .end local v0    # "offset":I
    .end local v1    # "fdef":Z
    .end local v2    # "tdef":Z
    .end local v3    # "tdefToL":[I
    .end local v4    # "udef":Z
    .end local v5    # "tdefl":I
    .end local v6    # "l":I
    .end local v7    # "fCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .end local v8    # "tCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .end local v9    # "uCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    :cond_16
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid codec encoding byte ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Encoding cannot be less than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_18
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Canonical encodings have been incorrectly modified"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0xc0
        0xe0
        0xf0
        0xf8
        0xfc
    .end array-data
.end method

.method public static getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I
    .locals 19
    .param p0, "codec"    # Lorg/apache/commons/compress/harmony/pack200/Codec;
    .param p1, "defaultForBand"    # Lorg/apache/commons/compress/harmony/pack200/Codec;

    .line 179
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodecsToSpecifiers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    sget-object v2, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->canonicalCodecsToSpecifiers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v2

    return-object v2

    .line 182
    :cond_0
    instance-of v2, v0, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    .line 184
    move-object v2, v0

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 185
    .local v2, "bhsdCodec":Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    new-array v4, v4, [I

    .line 186
    .local v4, "specifiers":[I
    const/16 v7, 0x74

    aput v7, v4, v5

    .line 187
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->isDelta()Z

    move-result v5

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getS()I

    move-result v7

    mul-int/2addr v7, v3

    add-int/2addr v5, v7

    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getB()I

    move-result v7

    sub-int/2addr v7, v6

    mul-int/lit8 v7, v7, 0x8

    add-int/2addr v5, v7

    aput v5, v4, v6

    .line 188
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getH()I

    move-result v5

    sub-int/2addr v5, v6

    aput v5, v4, v3

    .line 189
    return-object v4

    .line 191
    .end local v2    # "bhsdCodec":Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .end local v4    # "specifiers":[I
    :cond_1
    instance-of v2, v0, Lorg/apache/commons/compress/harmony/pack200/RunCodec;

    const/16 v7, 0x100

    if-eqz v2, :cond_e

    .line 192
    move-object v2, v0

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/RunCodec;

    .line 193
    .local v2, "runCodec":Lorg/apache/commons/compress/harmony/pack200/RunCodec;
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->getK()I

    move-result v8

    .line 196
    .local v8, "k":I
    if-gt v8, v7, :cond_2

    .line 197
    const/4 v7, 0x0

    .line 198
    .local v7, "kb":I
    add-int/lit8 v9, v8, -0x1

    .local v9, "kx":I
    goto :goto_0

    .line 199
    .end local v7    # "kb":I
    .end local v9    # "kx":I
    :cond_2
    const/16 v7, 0x1000

    if-gt v8, v7, :cond_3

    .line 200
    const/4 v7, 0x1

    .line 201
    .restart local v7    # "kb":I
    div-int/lit8 v9, v8, 0x10

    sub-int/2addr v9, v6

    .restart local v9    # "kx":I
    goto :goto_0

    .line 202
    .end local v7    # "kb":I
    .end local v9    # "kx":I
    :cond_3
    const/high16 v7, 0x10000

    if-gt v8, v7, :cond_4

    .line 203
    const/4 v7, 0x2

    .line 204
    .restart local v7    # "kb":I
    div-int/lit16 v9, v8, 0x100

    sub-int/2addr v9, v6

    .restart local v9    # "kx":I
    goto :goto_0

    .line 206
    .end local v7    # "kb":I
    .end local v9    # "kx":I
    :cond_4
    const/4 v7, 0x3

    .line 207
    .restart local v7    # "kb":I
    div-int/lit16 v9, v8, 0x1000

    sub-int/2addr v9, v6

    .line 209
    .restart local v9    # "kx":I
    :goto_0
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->getACodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v10

    .line 210
    .local v10, "aCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/RunCodec;->getBCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v11

    .line 211
    .local v11, "bCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    const/4 v12, 0x0

    .line 212
    .local v12, "abDef":I
    invoke-virtual {v10, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 213
    const/4 v12, 0x1

    goto :goto_1

    .line 214
    :cond_5
    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 215
    const/4 v12, 0x2

    .line 217
    :cond_6
    :goto_1
    add-int/lit8 v13, v7, 0x75

    if-ne v9, v4, :cond_7

    move v14, v5

    goto :goto_2

    :cond_7
    const/4 v14, 0x4

    :goto_2
    add-int/2addr v13, v14

    mul-int/lit8 v14, v12, 0x8

    add-int/2addr v13, v14

    .line 218
    .local v13, "first":I
    if-ne v12, v6, :cond_8

    sget-object v14, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->EMPTY_INT_ARRAY:[I

    goto :goto_3

    :cond_8
    invoke-static {v10, v1}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object v14

    .line 219
    .local v14, "aSpecifier":[I
    :goto_3
    if-ne v12, v3, :cond_9

    sget-object v3, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->EMPTY_INT_ARRAY:[I

    goto :goto_4

    :cond_9
    invoke-static {v11, v1}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object v3

    .line 220
    .local v3, "bSpecifier":[I
    :goto_4
    if-ne v9, v4, :cond_a

    move v15, v5

    goto :goto_5

    :cond_a
    move v15, v6

    :goto_5
    add-int/2addr v15, v6

    array-length v6, v14

    add-int/2addr v15, v6

    array-length v6, v3

    add-int/2addr v15, v6

    new-array v6, v15, [I

    .line 221
    .local v6, "specifier":[I
    aput v13, v6, v5

    .line 222
    const/4 v15, 0x1

    .line 223
    .local v15, "index":I
    if-eq v9, v4, :cond_b

    .line 224
    const/4 v4, 0x1

    aput v9, v6, v4

    .line 225
    add-int/lit8 v15, v15, 0x1

    .line 227
    :cond_b
    array-length v4, v14

    :goto_6
    if-ge v5, v4, :cond_c

    aget v16, v14, v5

    .line 228
    .local v16, "element":I
    aput v16, v6, v15

    .line 229
    nop

    .end local v16    # "element":I
    add-int/lit8 v15, v15, 0x1

    .line 227
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 231
    :cond_c
    array-length v4, v3

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_d

    aget v16, v3, v5

    .line 232
    .restart local v16    # "element":I
    aput v16, v6, v15

    .line 233
    nop

    .end local v16    # "element":I
    add-int/lit8 v15, v15, 0x1

    .line 231
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 235
    :cond_d
    return-object v6

    .line 237
    .end local v2    # "runCodec":Lorg/apache/commons/compress/harmony/pack200/RunCodec;
    .end local v3    # "bSpecifier":[I
    .end local v6    # "specifier":[I
    .end local v7    # "kb":I
    .end local v8    # "k":I
    .end local v9    # "kx":I
    .end local v10    # "aCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .end local v11    # "bCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .end local v12    # "abDef":I
    .end local v13    # "first":I
    .end local v14    # "aSpecifier":[I
    .end local v15    # "index":I
    :cond_e
    instance-of v2, v0, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    if-eqz v2, :cond_17

    .line 238
    move-object v2, v0

    check-cast v2, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;

    .line 239
    .local v2, "populationCodec":Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getTokenCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v3

    .line 240
    .local v3, "tokenCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getFavouredCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v4

    .line 241
    .local v4, "favouredCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getUnfavouredCodec()Lorg/apache/commons/compress/harmony/pack200/Codec;

    move-result-object v5

    .line 242
    .local v5, "unfavouredCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 243
    .local v6, "fDef":I
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 244
    .local v8, "uDef":I
    const/4 v9, 0x0

    .line 245
    .local v9, "tDefL":I
    invoke-virtual {v2}, Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;->getFavoured()[I

    move-result-object v10

    .line 246
    .local v10, "favoured":[I
    if-eqz v10, :cond_10

    .line 247
    sget-object v11, Lorg/apache/commons/compress/harmony/pack200/Codec;->BYTE1:Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    if-ne v3, v11, :cond_f

    .line 248
    const/4 v9, 0x1

    goto :goto_8

    .line 249
    :cond_f
    instance-of v11, v3, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    if-eqz v11, :cond_10

    .line 250
    move-object v11, v3

    check-cast v11, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 251
    .local v11, "tokenBHSD":Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getS()I

    move-result v12

    if-nez v12, :cond_10

    .line 252
    const/16 v12, 0xb

    new-array v12, v12, [I

    fill-array-data v12, :array_0

    .line 253
    .local v12, "possibleLValues":[I
    invoke-virtual {v11}, Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;->getH()I

    move-result v13

    sub-int/2addr v7, v13

    .line 254
    .local v7, "l":I
    invoke-static {v12, v7}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v13

    .line 255
    .local v13, "index":I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_10

    .line 257
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .local v14, "index":I
    move v9, v13

    .line 262
    .end local v7    # "l":I
    .end local v11    # "tokenBHSD":Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;
    .end local v12    # "possibleLValues":[I
    .end local v14    # "index":I
    :cond_10
    :goto_8
    add-int/lit16 v7, v6, 0x8d

    mul-int/lit8 v11, v8, 0x2

    add-int/2addr v7, v11

    mul-int/lit8 v11, v9, 0x4

    add-int/2addr v7, v11

    .line 263
    .local v7, "first":I
    const/4 v11, 0x1

    if-ne v6, v11, :cond_11

    sget-object v11, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->EMPTY_INT_ARRAY:[I

    goto :goto_9

    :cond_11
    invoke-static {v4, v1}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object v11

    .line 264
    .local v11, "favouredSpecifier":[I
    :goto_9
    if-eqz v9, :cond_12

    sget-object v12, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->EMPTY_INT_ARRAY:[I

    goto :goto_a

    :cond_12
    invoke-static {v3, v1}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object v12

    .line 265
    .local v12, "tokenSpecifier":[I
    :goto_a
    const/4 v13, 0x1

    if-ne v8, v13, :cond_13

    sget-object v14, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->EMPTY_INT_ARRAY:[I

    goto :goto_b

    :cond_13
    invoke-static {v5, v1}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object v14

    .line 266
    .local v14, "unfavouredSpecifier":[I
    :goto_b
    array-length v15, v11

    add-int/2addr v15, v13

    array-length v13, v14

    add-int/2addr v15, v13

    array-length v13, v12

    add-int/2addr v15, v13

    new-array v13, v15, [I

    .line 267
    .local v13, "specifier":[I
    const/4 v15, 0x0

    aput v7, v13, v15

    .line 268
    const/16 v16, 0x1

    .line 269
    .local v16, "index":I
    array-length v15, v11

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v15, :cond_14

    aget v18, v11, v0

    .line 270
    .local v18, "element":I
    aput v18, v13, v16

    .line 271
    nop

    .end local v18    # "element":I
    add-int/lit8 v16, v16, 0x1

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 273
    :cond_14
    array-length v0, v12

    const/4 v15, 0x0

    :goto_d
    if-ge v15, v0, :cond_15

    aget v18, v12, v15

    .line 274
    .restart local v18    # "element":I
    aput v18, v13, v16

    .line 275
    nop

    .end local v18    # "element":I
    add-int/lit8 v16, v16, 0x1

    .line 273
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 277
    :cond_15
    array-length v0, v14

    const/4 v15, 0x0

    :goto_e
    if-ge v15, v0, :cond_16

    aget v17, v14, v15

    .line 278
    .local v17, "element":I
    aput v17, v13, v16

    .line 279
    nop

    .end local v17    # "element":I
    add-int/lit8 v16, v16, 0x1

    .line 277
    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    .line 281
    :cond_16
    return-object v13

    .line 284
    .end local v2    # "populationCodec":Lorg/apache/commons/compress/harmony/pack200/PopulationCodec;
    .end local v3    # "tokenCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .end local v4    # "favouredCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .end local v5    # "unfavouredCodec":Lorg/apache/commons/compress/harmony/pack200/Codec;
    .end local v6    # "fDef":I
    .end local v7    # "first":I
    .end local v8    # "uDef":I
    .end local v9    # "tDefL":I
    .end local v10    # "favoured":[I
    .end local v11    # "favouredSpecifier":[I
    .end local v12    # "tokenSpecifier":[I
    .end local v13    # "specifier":[I
    .end local v14    # "unfavouredSpecifier":[I
    .end local v16    # "index":I
    :cond_17
    const/4 v0, 0x0

    return-object v0

    :array_0
    .array-data 4
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0xc0
        0xe0
        0xf0
        0xf8
        0xfc
    .end array-data
.end method

.method public static getSpecifierForDefaultCodec(Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;)I
    .locals 2
    .param p0, "defaultCodec"    # Lorg/apache/commons/compress/harmony/pack200/BHSDCodec;

    .line 288
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/CodecEncoding;->getSpecifier(Lorg/apache/commons/compress/harmony/pack200/Codec;Lorg/apache/commons/compress/harmony/pack200/Codec;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
