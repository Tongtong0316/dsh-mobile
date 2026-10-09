.class public final enum Lorg/apache/commons/lang3/JavaVersion;
.super Ljava/lang/Enum;
.source "JavaVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/lang3/JavaVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_0_9:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_10:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_11:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_12:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_13:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_14:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_15:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_16:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_17:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_18:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_19:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_1:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_2:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_3:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_4:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_5:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_6:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_7:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_8:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_9:Lorg/apache/commons/lang3/JavaVersion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum JAVA_20:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_21:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_22:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_9:Lorg/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_RECENT:Lorg/apache/commons/lang3/JavaVersion;

.field private static final VERSION_SPLIT_REGEX:Ljava/lang/String; = "\\."


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:F


# direct methods
.method private static synthetic $values()[Lorg/apache/commons/lang3/JavaVersion;
    .locals 25

    .line 28
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v1, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v2, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v3, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v4, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v5, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v6, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v7, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v8, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v9, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_9:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v10, Lorg/apache/commons/lang3/JavaVersion;->JAVA_9:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v11, Lorg/apache/commons/lang3/JavaVersion;->JAVA_10:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v12, Lorg/apache/commons/lang3/JavaVersion;->JAVA_11:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v13, Lorg/apache/commons/lang3/JavaVersion;->JAVA_12:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v14, Lorg/apache/commons/lang3/JavaVersion;->JAVA_13:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v15, Lorg/apache/commons/lang3/JavaVersion;->JAVA_14:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v16, Lorg/apache/commons/lang3/JavaVersion;->JAVA_15:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v17, Lorg/apache/commons/lang3/JavaVersion;->JAVA_16:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v18, Lorg/apache/commons/lang3/JavaVersion;->JAVA_17:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v19, Lorg/apache/commons/lang3/JavaVersion;->JAVA_18:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v20, Lorg/apache/commons/lang3/JavaVersion;->JAVA_19:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v21, Lorg/apache/commons/lang3/JavaVersion;->JAVA_20:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v22, Lorg/apache/commons/lang3/JavaVersion;->JAVA_21:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v23, Lorg/apache/commons/lang3/JavaVersion;->JAVA_22:Lorg/apache/commons/lang3/JavaVersion;

    sget-object v24, Lorg/apache/commons/lang3/JavaVersion;->JAVA_RECENT:Lorg/apache/commons/lang3/JavaVersion;

    filled-new-array/range {v0 .. v24}, [Lorg/apache/commons/lang3/JavaVersion;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 33
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const-string v1, "0.9"

    const-string v2, "JAVA_0_9"

    const/4 v3, 0x0

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/commons/lang3/JavaVersion;

    .line 38
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const v1, 0x3f8ccccd    # 1.1f

    const-string v2, "1.1"

    const-string v3, "JAVA_1_1"

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/commons/lang3/JavaVersion;

    .line 43
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const v1, 0x3f99999a    # 1.2f

    const-string v2, "1.2"

    const-string v3, "JAVA_1_2"

    const/4 v5, 0x2

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/commons/lang3/JavaVersion;

    .line 48
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const v1, 0x3fa66666    # 1.3f

    const-string v2, "1.3"

    const-string v3, "JAVA_1_3"

    const/4 v5, 0x3

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/commons/lang3/JavaVersion;

    .line 53
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const v1, 0x3fb33333    # 1.4f

    const-string v2, "1.4"

    const-string v3, "JAVA_1_4"

    const/4 v5, 0x4

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/commons/lang3/JavaVersion;

    .line 58
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const/4 v1, 0x5

    const-string v2, "1.5"

    const-string v3, "JAVA_1_5"

    invoke-direct {v0, v3, v1, v4, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/commons/lang3/JavaVersion;

    .line 63
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const v1, 0x3fcccccd    # 1.6f

    const-string v2, "1.6"

    const-string v3, "JAVA_1_6"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/commons/lang3/JavaVersion;

    .line 68
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const v1, 0x3fd9999a    # 1.7f

    const-string v2, "1.7"

    const-string v3, "JAVA_1_7"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/commons/lang3/JavaVersion;

    .line 73
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const v1, 0x3fe66666    # 1.8f

    const-string v2, "1.8"

    const-string v3, "JAVA_1_8"

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/commons/lang3/JavaVersion;

    .line 80
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_9"

    const/16 v2, 0x9

    const/high16 v3, 0x41100000    # 9.0f

    const-string v4, "9"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_9:Lorg/apache/commons/lang3/JavaVersion;

    .line 88
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const-string v1, "JAVA_9"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_9:Lorg/apache/commons/lang3/JavaVersion;

    .line 95
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const/high16 v1, 0x41200000    # 10.0f

    const-string v2, "10"

    const-string v3, "JAVA_10"

    const/16 v4, 0xb

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_10:Lorg/apache/commons/lang3/JavaVersion;

    .line 102
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const/high16 v1, 0x41300000    # 11.0f

    const-string v2, "11"

    const-string v3, "JAVA_11"

    const/16 v4, 0xc

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_11:Lorg/apache/commons/lang3/JavaVersion;

    .line 109
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const/high16 v1, 0x41400000    # 12.0f

    const-string v2, "12"

    const-string v3, "JAVA_12"

    const/16 v4, 0xd

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_12:Lorg/apache/commons/lang3/JavaVersion;

    .line 116
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const/high16 v1, 0x41500000    # 13.0f

    const-string v2, "13"

    const-string v3, "JAVA_13"

    const/16 v4, 0xe

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_13:Lorg/apache/commons/lang3/JavaVersion;

    .line 123
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const/high16 v1, 0x41600000    # 14.0f

    const-string v2, "14"

    const-string v3, "JAVA_14"

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_14:Lorg/apache/commons/lang3/JavaVersion;

    .line 130
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const/high16 v1, 0x41700000    # 15.0f

    const-string v2, "15"

    const-string v3, "JAVA_15"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_15:Lorg/apache/commons/lang3/JavaVersion;

    .line 137
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const/high16 v1, 0x41800000    # 16.0f

    const-string v2, "16"

    const-string v3, "JAVA_16"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_16:Lorg/apache/commons/lang3/JavaVersion;

    .line 144
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const/high16 v1, 0x41880000    # 17.0f

    const-string v2, "17"

    const-string v3, "JAVA_17"

    const/16 v4, 0x12

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_17:Lorg/apache/commons/lang3/JavaVersion;

    .line 151
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const/high16 v1, 0x41900000    # 18.0f

    const-string v2, "18"

    const-string v3, "JAVA_18"

    const/16 v4, 0x13

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_18:Lorg/apache/commons/lang3/JavaVersion;

    .line 158
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const/high16 v1, 0x41980000    # 19.0f

    const-string v2, "19"

    const-string v3, "JAVA_19"

    const/16 v4, 0x14

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_19:Lorg/apache/commons/lang3/JavaVersion;

    .line 165
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const/high16 v1, 0x41a00000    # 20.0f

    const-string v2, "20"

    const-string v3, "JAVA_20"

    const/16 v4, 0x15

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_20:Lorg/apache/commons/lang3/JavaVersion;

    .line 172
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const/high16 v1, 0x41a80000    # 21.0f

    const-string v2, "21"

    const-string v3, "JAVA_21"

    const/16 v4, 0x16

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_21:Lorg/apache/commons/lang3/JavaVersion;

    .line 179
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    const/high16 v1, 0x41b00000    # 22.0f

    const-string v2, "22"

    const-string v3, "JAVA_22"

    const/16 v4, 0x17

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_22:Lorg/apache/commons/lang3/JavaVersion;

    .line 184
    new-instance v0, Lorg/apache/commons/lang3/JavaVersion;

    invoke-static {}, Lorg/apache/commons/lang3/JavaVersion;->maxVersion()F

    move-result v1

    invoke-static {}, Lorg/apache/commons/lang3/JavaVersion;->maxVersion()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "JAVA_RECENT"

    const/16 v4, 0x18

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_RECENT:Lorg/apache/commons/lang3/JavaVersion;

    .line 28
    invoke-static {}, Lorg/apache/commons/lang3/JavaVersion;->$values()[Lorg/apache/commons/lang3/JavaVersion;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/JavaVersion;->$VALUES:[Lorg/apache/commons/lang3/JavaVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFLjava/lang/String;)V
    .locals 0
    .param p3, "value"    # F
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 327
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 328
    iput p3, p0, Lorg/apache/commons/lang3/JavaVersion;->value:F

    .line 329
    iput-object p4, p0, Lorg/apache/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    .line 330
    return-void
.end method

.method static get(Ljava/lang/String;)Lorg/apache/commons/lang3/JavaVersion;
    .locals 6
    .param p0, "versionStr"    # Ljava/lang/String;

    .line 201
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 202
    return-object v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "1.8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "1.7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "1.6"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "1.5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "1.4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "1.3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "1.2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "1.1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "0.9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "22"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "21"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "20"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "19"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "18"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "17"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x11

    goto :goto_1

    :sswitch_f
    const-string v1, "16"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    goto :goto_1

    :sswitch_10
    const-string v1, "15"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xf

    goto :goto_1

    :sswitch_11
    const-string v1, "14"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xe

    goto :goto_1

    :sswitch_12
    const-string v1, "13"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xd

    goto :goto_1

    :sswitch_13
    const-string v1, "12"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_14
    const-string v1, "11"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_15
    const-string v1, "10"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_16
    const-string v1, "9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 252
    invoke-static {p0}, Lorg/apache/commons/lang3/JavaVersion;->toFloatVersion(Ljava/lang/String;)F

    move-result v1

    .line 253
    .local v1, "v":F
    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    .line 254
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 255
    .local v2, "firstComma":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 256
    .local v3, "end":I
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const v5, 0x3f666666    # 0.9f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 257
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_RECENT:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 250
    .end local v1    # "v":F
    .end local v2    # "firstComma":I
    .end local v3    # "end":I
    :pswitch_0
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_22:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 248
    :pswitch_1
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_21:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 246
    :pswitch_2
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_20:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 244
    :pswitch_3
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_19:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 242
    :pswitch_4
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_18:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 240
    :pswitch_5
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_17:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 238
    :pswitch_6
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_16:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 236
    :pswitch_7
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_15:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 234
    :pswitch_8
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_14:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 232
    :pswitch_9
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_13:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 230
    :pswitch_a
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_12:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 228
    :pswitch_b
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_11:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 226
    :pswitch_c
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_10:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 224
    :pswitch_d
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_9:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 222
    :pswitch_e
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 220
    :pswitch_f
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 218
    :pswitch_10
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 216
    :pswitch_11
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 214
    :pswitch_12
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 212
    :pswitch_13
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 210
    :pswitch_14
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 208
    :pswitch_15
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 206
    :pswitch_16
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 256
    .restart local v1    # "v":F
    :cond_2
    goto :goto_2

    .line 259
    :cond_3
    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    .line 260
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->JAVA_RECENT:Lorg/apache/commons/lang3/JavaVersion;

    return-object v0

    .line 259
    :cond_4
    :goto_2
    nop

    .line 262
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x39 -> :sswitch_16
        0x61f -> :sswitch_15
        0x620 -> :sswitch_14
        0x621 -> :sswitch_13
        0x622 -> :sswitch_12
        0x623 -> :sswitch_11
        0x624 -> :sswitch_10
        0x625 -> :sswitch_f
        0x626 -> :sswitch_e
        0x627 -> :sswitch_d
        0x628 -> :sswitch_c
        0x63e -> :sswitch_b
        0x63f -> :sswitch_a
        0x640 -> :sswitch_9
        0xb9fb -> :sswitch_8
        0xbdb4 -> :sswitch_7
        0xbdb5 -> :sswitch_6
        0xbdb6 -> :sswitch_5
        0xbdb7 -> :sswitch_4
        0xbdb8 -> :sswitch_3
        0xbdb9 -> :sswitch_2
        0xbdba -> :sswitch_1
        0xbdbb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getJavaVersion(Ljava/lang/String;)Lorg/apache/commons/lang3/JavaVersion;
    .locals 1
    .param p0, "versionStr"    # Ljava/lang/String;

    .line 276
    invoke-static {p0}, Lorg/apache/commons/lang3/JavaVersion;->get(Ljava/lang/String;)Lorg/apache/commons/lang3/JavaVersion;

    move-result-object v0

    return-object v0
.end method

.method private static maxVersion()F
    .locals 2

    .line 285
    const-string v0, "99.0"

    invoke-static {v0}, Lorg/apache/commons/lang3/SystemProperties;->getJavaSpecificationVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/JavaVersion;->toFloatVersion(Ljava/lang/String;)F

    move-result v0

    .line 286
    .local v0, "v":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42c60000    # 99.0f

    :goto_0
    return v1
.end method

.method static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 290
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toFloatVersion(Ljava/lang/String;)F
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 300
    const/4 v0, -0x1

    .line 301
    .local v0, "defaultReturnValue":I
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    if-nez v1, :cond_0

    .line 302
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v1

    return v1

    .line 304
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/JavaVersion;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "toParse":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v2

    return v2

    .line 308
    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/JavaVersion;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 28
    const-class v0, Lorg/apache/commons/lang3/JavaVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/JavaVersion;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/lang3/JavaVersion;
    .locals 1

    .line 28
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->$VALUES:[Lorg/apache/commons/lang3/JavaVersion;

    invoke-virtual {v0}, [Lorg/apache/commons/lang3/JavaVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/JavaVersion;

    return-object v0
.end method


# virtual methods
.method public atLeast(Lorg/apache/commons/lang3/JavaVersion;)Z
    .locals 2
    .param p1, "requiredVersion"    # Lorg/apache/commons/lang3/JavaVersion;

    .line 342
    iget v0, p0, Lorg/apache/commons/lang3/JavaVersion;->value:F

    iget v1, p1, Lorg/apache/commons/lang3/JavaVersion;->value:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public atMost(Lorg/apache/commons/lang3/JavaVersion;)Z
    .locals 2
    .param p1, "requiredVersion"    # Lorg/apache/commons/lang3/JavaVersion;

    .line 356
    iget v0, p0, Lorg/apache/commons/lang3/JavaVersion;->value:F

    iget v1, p1, Lorg/apache/commons/lang3/JavaVersion;->value:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/apache/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    return-object v0
.end method
