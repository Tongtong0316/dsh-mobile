.class public Lorg/apache/commons/codec/language/DoubleMetaphone;
.super Ljava/lang/Object;
.source "DoubleMetaphone.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    }
.end annotation


# static fields
.field private static final ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

.field private static final L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

.field private static final L_T_K_S_N_M_B_Z:[Ljava/lang/String;

.field private static final SILENT_START:[Ljava/lang/String;

.field private static final VOWELS:Ljava/lang/String; = "AEIOUY"


# instance fields
.field private maxCodeLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 123
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "GN"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "KN"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "PN"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "WR"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "PS"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lorg/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    .line 125
    const/16 v1, 0xa

    new-array v2, v1, [Ljava/lang/String;

    const-string v8, "L"

    aput-object v8, v2, v3

    const-string v9, "R"

    aput-object v9, v2, v4

    const-string v9, "N"

    aput-object v9, v2, v5

    const-string v10, "M"

    aput-object v10, v2, v6

    const-string v11, "B"

    aput-object v11, v2, v7

    const-string v12, "H"

    aput-object v12, v2, v0

    const-string v12, "F"

    const/4 v13, 0x6

    aput-object v12, v2, v13

    const-string v12, "V"

    const/4 v14, 0x7

    aput-object v12, v2, v14

    const-string v12, "W"

    const/16 v15, 0x8

    aput-object v12, v2, v15

    const-string v12, " "

    const/16 v16, 0x9

    aput-object v12, v2, v16

    sput-object v2, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    .line 127
    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v12, "ES"

    aput-object v12, v2, v3

    const-string v12, "EP"

    aput-object v12, v2, v4

    const-string v12, "EB"

    aput-object v12, v2, v5

    const-string v12, "EL"

    aput-object v12, v2, v6

    const-string v12, "EY"

    aput-object v12, v2, v7

    const-string v12, "IB"

    aput-object v12, v2, v0

    const-string v12, "IL"

    aput-object v12, v2, v13

    const-string v12, "IN"

    aput-object v12, v2, v14

    const-string v12, "IE"

    aput-object v12, v2, v15

    const-string v12, "EI"

    aput-object v12, v2, v16

    const-string v12, "ER"

    aput-object v12, v2, v1

    sput-object v2, Lorg/apache/commons/codec/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    .line 130
    new-array v1, v15, [Ljava/lang/String;

    aput-object v8, v1, v3

    const-string v2, "T"

    aput-object v2, v1, v4

    const-string v2, "K"

    aput-object v2, v1, v5

    const-string v2, "S"

    aput-object v2, v1, v6

    aput-object v9, v1, v7

    aput-object v10, v1, v0

    aput-object v11, v1, v13

    const-string v0, "Z"

    aput-object v0, v1, v14

    sput-object v1, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    return-void
.end method

.method private cleanInput(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 174
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 175
    return-object v0

    .line 177
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    return-object v0

    .line 181
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private conditionC0(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 188
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "CHIA"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    return v0

    .line 191
    :cond_0
    if-gt p2, v0, :cond_1

    .line 192
    return v3

    .line 194
    :cond_1
    add-int/lit8 v1, p2, -0x2

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    return v3

    .line 197
    :cond_2
    add-int/lit8 v1, p2, -0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v4, "ACH"

    aput-object v4, v2, v3

    const/4 v4, 0x3

    invoke-static {p1, v1, v4, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 198
    return v3

    .line 200
    :cond_3
    add-int/lit8 v1, p2, 0x2

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    .line 201
    .local v1, "c":C
    const/16 v2, 0x49

    if-eq v1, v2, :cond_4

    const/16 v2, 0x45

    if-ne v1, v2, :cond_5

    :cond_4
    add-int/lit8 v2, p2, -0x2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "BACHER"

    aput-object v5, v4, v3

    const-string v5, "MACHER"

    aput-object v5, v4, v0

    .line 202
    const/4 v5, 0x6

    invoke-static {p1, v2, v5, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    goto :goto_0

    :cond_6
    move v0, v3

    .line 201
    :goto_0
    return v0
.end method

.method private conditionCH0(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 209
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 210
    return v0

    .line 212
    :cond_0
    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "HARAC"

    aput-object v4, v3, v0

    const-string v4, "HARIS"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x5

    invoke-static {p1, v1, v4, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v1, p2, 0x1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v6, "HOR"

    aput-object v6, v3, v0

    const-string v6, "HYM"

    aput-object v6, v3, v5

    const-string v6, "HIA"

    aput-object v6, v3, v2

    const-string v2, "HEM"

    const/4 v6, 0x3

    aput-object v2, v3, v6

    .line 213
    invoke-static {p1, v1, v6, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    return v0

    .line 216
    :cond_1
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "CHORE"

    aput-object v2, v1, v0

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v5

    return v0
.end method

.method private conditionCH1(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 223
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "VAN "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "VON "

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x4

    invoke-static {p1, v3, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-array v1, v4, [Ljava/lang/String;

    const-string v5, "SCH"

    aput-object v5, v1, v3

    const/4 v5, 0x3

    invoke-static {p1, v3, v5, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, p2, -0x2

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "ORCHES"

    aput-object v7, v6, v3

    const-string v7, "ARCHIT"

    aput-object v7, v6, v4

    const-string v7, "ORCHID"

    aput-object v7, v6, v0

    .line 224
    const/4 v7, 0x6

    invoke-static {p1, v1, v7, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, p2, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const-string v7, "T"

    aput-object v7, v6, v3

    const-string v7, "S"

    aput-object v7, v6, v4

    .line 225
    invoke-static {p1, v1, v4, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, p2, -0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v6, "A"

    aput-object v6, v2, v3

    const-string v6, "O"

    aput-object v6, v2, v4

    const-string v6, "U"

    aput-object v6, v2, v0

    const-string v0, "E"

    aput-object v0, v2, v5

    .line 226
    invoke-static {p1, v1, v4, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    add-int/lit8 v0, p2, 0x2

    sget-object v1, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_R_N_M_B_H_F_V_W_SPACE:[Ljava/lang/String;

    .line 227
    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v3, v4

    .line 223
    :goto_1
    return v3
.end method

.method private conditionL0(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    const-string v2, "ALLE"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne p2, v0, :cond_0

    add-int/lit8 v0, p2, -0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v7, "ILLO"

    aput-object v7, v1, v4

    const-string v7, "ILLA"

    aput-object v7, v1, v6

    aput-object v2, v1, v5

    .line 235
    invoke-static {p1, v0, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    return v6

    .line 238
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string v7, "AS"

    aput-object v7, v1, v4

    const-string v7, "OS"

    aput-object v7, v1, v6

    invoke-static {p1, v0, v5, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "A"

    aput-object v5, v1, v4

    const-string v5, "O"

    aput-object v5, v1, v6

    invoke-static {p1, v0, v6, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    add-int/lit8 v0, p2, -0x1

    new-array v1, v6, [Ljava/lang/String;

    aput-object v2, v1, v4

    .line 240
    invoke-static {p1, v0, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    nop

    .line 238
    :goto_0
    return v4
.end method

.method private conditionM0(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 249
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4d

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 250
    return v2

    .line 252
    :cond_0
    add-int/lit8 v0, p2, -0x1

    new-array v1, v2, [Ljava/lang/String;

    const-string v3, "UMB"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x3

    invoke-static {p1, v0, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_2

    add-int/lit8 v0, p2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v3, "ER"

    aput-object v3, v1, v4

    const/4 v3, 0x2

    invoke-static {p1, v0, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 252
    :cond_2
    :goto_0
    return v2
.end method

.method protected static varargs contains(Ljava/lang/String;II[Ljava/lang/String;)Z
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "criteria"    # [Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "result":Z
    if-ltz p1, :cond_1

    add-int v1, p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 141
    add-int v1, p1, p2

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "target":Ljava/lang/String;
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p3, v3

    .line 144
    .local v4, "element":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 146
    goto :goto_1

    .line 143
    .end local v4    # "element":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "target":Ljava/lang/String;
    :cond_1
    :goto_1
    return v0
.end method

.method private handleAEIOUY(Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 1
    .param p1, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p2, "index"    # I

    .line 419
    if-nez p2, :cond_0

    .line 420
    const/16 v0, 0x41

    invoke-virtual {p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 422
    :cond_0
    add-int/lit8 v0, p2, 0x1

    return v0
.end method

.method private handleC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 12
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 429
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionC0(Ljava/lang/String;I)Z

    move-result v0

    const/16 v1, 0x4b

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 431
    add-int/2addr p3, v2

    goto/16 :goto_1

    .line 432
    :cond_0
    const/16 v0, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p3, :cond_1

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "CAESAR"

    aput-object v6, v5, v3

    const/4 v6, 0x6

    invoke-static {p1, p3, v6, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 433
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 434
    add-int/2addr p3, v2

    goto/16 :goto_1

    .line 435
    :cond_1
    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "CH"

    aput-object v6, v5, v3

    invoke-static {p1, p3, v2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 436
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleCH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result p3

    goto/16 :goto_1

    .line 437
    :cond_2
    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "CZ"

    aput-object v6, v5, v3

    invoke-static {p1, p3, v2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x58

    if-eqz v5, :cond_3

    add-int/lit8 v5, p3, -0x2

    new-array v7, v4, [Ljava/lang/String;

    const-string v8, "WICZ"

    aput-object v8, v7, v3

    .line 438
    const/4 v8, 0x4

    invoke-static {p1, v5, v8, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 440
    invoke-virtual {p2, v0, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 441
    add-int/2addr p3, v2

    goto/16 :goto_1

    .line 442
    :cond_3
    add-int/lit8 v5, p3, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const-string v8, "CIA"

    aput-object v8, v7, v3

    const/4 v9, 0x3

    invoke-static {p1, v5, v9, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 444
    invoke-virtual {p2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 445
    add-int/2addr p3, v9

    goto/16 :goto_1

    .line 446
    :cond_4
    new-array v5, v4, [Ljava/lang/String;

    const-string v7, "CC"

    aput-object v7, v5, v3

    invoke-static {p1, p3, v2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-ne p3, v4, :cond_5

    .line 447
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v5

    const/16 v7, 0x4d

    if-eq v5, v7, :cond_6

    .line 449
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleCC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v0

    return v0

    .line 450
    :cond_6
    new-array v5, v9, [Ljava/lang/String;

    const-string v7, "CK"

    aput-object v7, v5, v3

    const-string v7, "CG"

    aput-object v7, v5, v4

    const-string v7, "CQ"

    aput-object v7, v5, v2

    invoke-static {p1, p3, v2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 451
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 452
    add-int/2addr p3, v2

    goto/16 :goto_1

    .line 453
    :cond_7
    new-array v5, v9, [Ljava/lang/String;

    const-string v7, "CI"

    aput-object v7, v5, v3

    const-string v10, "CE"

    aput-object v10, v5, v4

    const-string v11, "CY"

    aput-object v11, v5, v2

    invoke-static {p1, p3, v2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 455
    new-array v1, v9, [Ljava/lang/String;

    const-string v5, "CIO"

    aput-object v5, v1, v3

    const-string v3, "CIE"

    aput-object v3, v1, v4

    aput-object v8, v1, v2

    invoke-static {p1, p3, v9, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 456
    invoke-virtual {p2, v0, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 458
    :cond_8
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 460
    :goto_0
    add-int/2addr p3, v2

    goto :goto_1

    .line 462
    :cond_9
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 463
    add-int/lit8 v0, p3, 0x1

    new-array v1, v9, [Ljava/lang/String;

    const-string v5, " C"

    aput-object v5, v1, v3

    const-string v5, " Q"

    aput-object v5, v1, v4

    const-string v5, " G"

    aput-object v5, v1, v2

    invoke-static {p1, v0, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 465
    add-int/2addr p3, v9

    goto :goto_1

    .line 466
    :cond_a
    add-int/lit8 v0, p3, 0x1

    new-array v1, v9, [Ljava/lang/String;

    const-string v5, "C"

    aput-object v5, v1, v3

    const-string v5, "K"

    aput-object v5, v1, v4

    const-string v5, "Q"

    aput-object v5, v1, v2

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, p3, 0x1

    new-array v1, v2, [Ljava/lang/String;

    aput-object v10, v1, v3

    aput-object v7, v1, v4

    .line 467
    invoke-static {p1, v0, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 468
    add-int/2addr p3, v2

    goto :goto_1

    .line 470
    :cond_b
    add-int/2addr p3, v4

    .line 474
    :goto_1
    return p3
.end method

.method private handleCC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 481
    add-int/lit8 v0, p3, 0x2

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "I"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "E"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "H"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {p1, v0, v5, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, 0x2

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "HU"

    aput-object v3, v2, v4

    .line 482
    invoke-static {p1, v0, v6, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 484
    if-ne p3, v5, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v2, 0x41

    if-eq v0, v2, :cond_1

    :cond_0
    add-int/lit8 v0, p3, -0x1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "UCCEE"

    aput-object v3, v2, v4

    const-string v3, "UCCES"

    aput-object v3, v2, v5

    .line 485
    const/4 v3, 0x5

    invoke-static {p1, v0, v3, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    :cond_1
    const-string v0, "KS"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_2
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 492
    :goto_0
    add-int/2addr p3, v1

    goto :goto_1

    .line 494
    :cond_3
    const/16 v0, 0x4b

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 495
    add-int/2addr p3, v6

    .line 498
    :goto_1
    return p3
.end method

.method private handleCH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 505
    const/4 v0, 0x1

    const/16 v1, 0x58

    const/4 v2, 0x0

    const/16 v3, 0x4b

    if-lez p3, :cond_0

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "CHAE"

    aput-object v5, v4, v2

    const/4 v5, 0x4

    invoke-static {p1, p3, v5, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 506
    invoke-virtual {p2, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 507
    add-int/lit8 v0, p3, 0x2

    return v0

    .line 509
    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionCH0(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 511
    invoke-virtual {p2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 512
    add-int/lit8 v0, p3, 0x2

    return v0

    .line 514
    :cond_1
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionCH1(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 516
    invoke-virtual {p2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 517
    add-int/lit8 v0, p3, 0x2

    return v0

    .line 519
    :cond_2
    if-lez p3, :cond_4

    .line 520
    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "MC"

    aput-object v4, v0, v2

    const/4 v4, 0x2

    invoke-static {p1, v2, v4, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 521
    invoke-virtual {p2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 523
    :cond_3
    invoke-virtual {p2, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 526
    :cond_4
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 528
    :goto_0
    add-int/lit8 v0, p3, 0x2

    return v0
.end method

.method private handleD(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 535
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "DG"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p1, p3, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    add-int/lit8 v1, p3, 0x2

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "I"

    aput-object v6, v5, v3

    const-string v3, "E"

    aput-object v3, v5, v0

    const-string v3, "Y"

    aput-object v3, v5, v2

    invoke-static {p1, v1, v0, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 539
    add-int/2addr p3, v4

    goto :goto_0

    .line 542
    :cond_0
    const-string v0, "TK"

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 543
    add-int/2addr p3, v2

    goto :goto_0

    .line 545
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    const-string v4, "DT"

    aput-object v4, v1, v3

    const-string v3, "DD"

    aput-object v3, v1, v0

    invoke-static {p1, p3, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0x54

    if-eqz v1, :cond_2

    .line 546
    invoke-virtual {p2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 547
    add-int/2addr p3, v2

    goto :goto_0

    .line 549
    :cond_2
    invoke-virtual {p2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 550
    add-int/2addr p3, v0

    .line 552
    :goto_0
    return p3
.end method

.method private handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 11
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .line 560
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    .line 561
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleGH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result p3

    goto/16 :goto_5

    .line 562
    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4e

    const/16 v2, 0x59

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v0, v1, :cond_3

    .line 563
    const-string v0, "N"

    const-string v1, "KN"

    if-ne p3, v5, :cond_1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v6

    invoke-direct {p0, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez p4, :cond_1

    .line 564
    invoke-virtual {p2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :cond_1
    add-int/lit8 v6, p3, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v7, "EY"

    aput-object v7, v5, v3

    invoke-static {p1, v6, v4, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v3, p3, 0x1

    .line 566
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-eq v3, v2, :cond_2

    if-nez p4, :cond_2

    .line 567
    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 569
    :cond_2
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 571
    :goto_0
    add-int/2addr p3, v4

    goto/16 :goto_5

    .line 572
    :cond_3
    add-int/lit8 v0, p3, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const-string v6, "LI"

    aput-object v6, v1, v3

    invoke-static {p1, v0, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    .line 573
    const-string v0, "KL"

    const-string v1, "L"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    add-int/2addr p3, v4

    goto/16 :goto_5

    .line 575
    :cond_4
    const/16 v0, 0x4a

    const/16 v1, 0x4b

    if-nez p3, :cond_6

    add-int/lit8 v6, p3, 0x1

    .line 576
    invoke-virtual {p0, p1, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v6

    if-eq v6, v2, :cond_5

    add-int/lit8 v6, p3, 0x1

    sget-object v7, Lorg/apache/commons/codec/language/DoubleMetaphone;->ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER:[Ljava/lang/String;

    .line 577
    invoke-static {p1, v6, v4, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 579
    :cond_5
    invoke-virtual {p2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 580
    add-int/2addr p3, v4

    goto/16 :goto_5

    .line 581
    :cond_6
    add-int/lit8 v6, p3, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const-string v8, "ER"

    aput-object v8, v7, v3

    invoke-static {p1, v6, v4, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v6

    const-string v7, "I"

    const-string v8, "E"

    const/4 v9, 0x3

    if-nez v6, :cond_7

    add-int/lit8 v6, p3, 0x1

    .line 582
    invoke-virtual {p0, p1, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v6

    if-ne v6, v2, :cond_8

    :cond_7
    new-array v2, v9, [Ljava/lang/String;

    const-string v6, "DANGER"

    aput-object v6, v2, v3

    const-string v6, "RANGER"

    aput-object v6, v2, v5

    const-string v6, "MANGER"

    aput-object v6, v2, v4

    .line 583
    const/4 v6, 0x6

    invoke-static {p1, v3, v6, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    add-int/lit8 v2, p3, -0x1

    new-array v6, v4, [Ljava/lang/String;

    aput-object v8, v6, v3

    aput-object v7, v6, v5

    .line 584
    invoke-static {p1, v2, v5, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    add-int/lit8 v2, p3, -0x1

    new-array v6, v4, [Ljava/lang/String;

    const-string v10, "RGY"

    aput-object v10, v6, v3

    const-string v10, "OGY"

    aput-object v10, v6, v5

    .line 585
    invoke-static {p1, v2, v9, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 587
    invoke-virtual {p2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 588
    add-int/2addr p3, v4

    goto/16 :goto_5

    .line 589
    :cond_8
    add-int/lit8 v2, p3, 0x1

    new-array v6, v9, [Ljava/lang/String;

    aput-object v8, v6, v3

    aput-object v7, v6, v5

    const-string v7, "Y"

    aput-object v7, v6, v4

    invoke-static {p1, v2, v5, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    const/4 v6, 0x4

    if-nez v2, :cond_b

    add-int/lit8 v2, p3, -0x1

    new-array v7, v4, [Ljava/lang/String;

    const-string v8, "AGGI"

    aput-object v8, v7, v3

    const-string v8, "OGGI"

    aput-object v8, v7, v5

    .line 590
    invoke-static {p1, v2, v6, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_2

    .line 604
    :cond_9
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v2, 0x47

    if-ne v0, v2, :cond_a

    .line 605
    add-int/2addr p3, v4

    goto :goto_1

    .line 607
    :cond_a
    add-int/2addr p3, v5

    .line 609
    :goto_1
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_5

    .line 592
    :cond_b
    :goto_2
    new-array v2, v4, [Ljava/lang/String;

    const-string v7, "VAN "

    aput-object v7, v2, v3

    const-string v7, "VON "

    aput-object v7, v2, v5

    invoke-static {p1, v3, v6, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    new-array v2, v5, [Ljava/lang/String;

    const-string v6, "SCH"

    aput-object v6, v2, v3

    .line 593
    invoke-static {p1, v3, v9, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    add-int/lit8 v2, p3, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "ET"

    aput-object v7, v6, v3

    .line 594
    invoke-static {p1, v2, v4, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_3

    .line 597
    :cond_c
    add-int/lit8 v2, p3, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "IER"

    aput-object v6, v5, v3

    invoke-static {p1, v2, v9, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 598
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_4

    .line 600
    :cond_d
    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_4

    .line 596
    :cond_e
    :goto_3
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 602
    :goto_4
    add-int/2addr p3, v4

    .line 611
    :goto_5
    return p3
.end method

.method private handleGH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 11
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 618
    const/16 v0, 0x4b

    const/4 v1, 0x2

    if-lez p3, :cond_0

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 619
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 620
    add-int/2addr p3, v1

    goto/16 :goto_2

    .line 621
    :cond_0
    const/16 v2, 0x49

    if-nez p3, :cond_2

    .line 622
    add-int/lit8 v3, p3, 0x2

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v2, :cond_1

    .line 623
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 625
    :cond_1
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 627
    :goto_0
    add-int/2addr p3, v1

    goto/16 :goto_2

    .line 628
    :cond_2
    const-string v3, "D"

    const-string v4, "H"

    const-string v5, "B"

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-le p3, v8, :cond_3

    add-int/lit8 v9, p3, -0x2

    new-array v10, v7, [Ljava/lang/String;

    aput-object v5, v10, v6

    aput-object v4, v10, v8

    aput-object v3, v10, v1

    invoke-static {p1, v9, v8, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_3
    if-le p3, v1, :cond_4

    add-int/lit8 v9, p3, -0x3

    new-array v10, v7, [Ljava/lang/String;

    aput-object v5, v10, v6

    aput-object v4, v10, v8

    aput-object v3, v10, v1

    .line 629
    invoke-static {p1, v9, v8, v10}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    if-le p3, v7, :cond_6

    add-int/lit8 v3, p3, -0x4

    new-array v9, v1, [Ljava/lang/String;

    aput-object v5, v9, v6

    aput-object v4, v9, v8

    .line 630
    invoke-static {p1, v3, v8, v9}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 632
    :cond_5
    add-int/2addr p3, v1

    goto :goto_2

    .line 634
    :cond_6
    if-le p3, v1, :cond_7

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x55

    if-ne v3, v4, :cond_7

    add-int/lit8 v3, p3, -0x3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "C"

    aput-object v5, v4, v6

    const-string v5, "G"

    aput-object v5, v4, v8

    const-string v5, "L"

    aput-object v5, v4, v1

    const-string v5, "R"

    aput-object v5, v4, v7

    const-string v5, "T"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 635
    invoke-static {p1, v3, v8, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 637
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 638
    :cond_7
    if-lez p3, :cond_8

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-eq v3, v2, :cond_8

    .line 639
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 641
    :cond_8
    :goto_1
    add-int/2addr p3, v1

    .line 643
    :goto_2
    return p3
.end method

.method private handleH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 651
    if-eqz p3, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    add-int/lit8 v0, p3, 0x1

    .line 652
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    const/16 v0, 0x48

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 654
    add-int/lit8 p3, p3, 0x2

    goto :goto_0

    .line 657
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 659
    :goto_0
    return p3
.end method

.method private handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .line 667
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "JOSE"

    aput-object v3, v1, v2

    const/4 v4, 0x4

    invoke-static {p1, p3, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    const/16 v5, 0x20

    const-string v6, "SAN "

    const/16 v7, 0x48

    const/16 v8, 0x4a

    if-nez v1, :cond_7

    new-array v1, v0, [Ljava/lang/String;

    aput-object v6, v1, v2

    invoke-static {p1, v2, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 677
    :cond_0
    const/4 v1, 0x2

    const/16 v6, 0x41

    if-nez p3, :cond_1

    new-array v9, v0, [Ljava/lang/String;

    aput-object v3, v9, v2

    invoke-static {p1, p3, v4, v9}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 678
    invoke-virtual {p2, v8, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 679
    :cond_1
    add-int/lit8 v3, p3, -0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p4, :cond_3

    add-int/lit8 v3, p3, 0x1

    .line 680
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-eq v3, v6, :cond_2

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x4f

    if-ne v3, v4, :cond_3

    .line 681
    :cond_2
    invoke-virtual {p2, v8, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 682
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    if-ne p3, v3, :cond_4

    .line 683
    invoke-virtual {p2, v8, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 684
    :cond_4
    add-int/lit8 v3, p3, 0x1

    sget-object v4, Lorg/apache/commons/codec/language/DoubleMetaphone;->L_T_K_S_N_M_B_Z:[Ljava/lang/String;

    invoke-static {p1, v3, v0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    add-int/lit8 v3, p3, -0x1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "S"

    aput-object v5, v4, v2

    const-string v2, "K"

    aput-object v2, v4, v0

    const-string v2, "L"

    aput-object v2, v4, v1

    .line 685
    invoke-static {p1, v3, v0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 686
    invoke-virtual {p2, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 689
    :cond_5
    :goto_0
    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    if-ne v2, v8, :cond_6

    .line 690
    add-int/2addr p3, v1

    goto :goto_4

    .line 692
    :cond_6
    add-int/2addr p3, v0

    goto :goto_4

    .line 669
    :cond_7
    :goto_1
    if-nez p3, :cond_8

    add-int/lit8 v1, p3, 0x4

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    if-eq v1, v5, :cond_a

    .line 670
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v4, :cond_a

    new-array v1, v0, [Ljava/lang/String;

    aput-object v6, v1, v2

    invoke-static {p1, v2, v4, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2

    .line 673
    :cond_9
    invoke-virtual {p2, v8, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_3

    .line 671
    :cond_a
    :goto_2
    invoke-virtual {p2, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 675
    :goto_3
    add-int/2addr p3, v0

    .line 695
    :goto_4
    return p3
.end method

.method private handleL(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 702
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_1

    .line 703
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionL0(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(C)V

    goto :goto_0

    .line 706
    :cond_0
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 708
    :goto_0
    add-int/lit8 p3, p3, 0x2

    goto :goto_1

    .line 710
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 711
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 713
    :goto_1
    return p3
.end method

.method private handleP(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 720
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    .line 721
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 722
    add-int/2addr p3, v2

    goto :goto_1

    .line 724
    :cond_0
    const/16 v0, 0x50

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 725
    add-int/lit8 v0, p3, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "P"

    aput-object v3, v1, v2

    const-string v2, "B"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p1, v0, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p3, 0x1

    :goto_0
    move p3, v0

    .line 727
    :goto_1
    return p3
.end method

.method private handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .line 735
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/16 v2, 0x52

    if-ne p3, v0, :cond_0

    if-nez p4, :cond_0

    add-int/lit8 v0, p3, -0x2

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "IE"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 736
    const/4 v4, 0x2

    invoke-static {p1, v0, v4, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p3, -0x4

    new-array v3, v4, [Ljava/lang/String;

    const-string v6, "ME"

    aput-object v6, v3, v5

    const-string v5, "MA"

    aput-object v5, v3, v1

    .line 737
    invoke-static {p1, v0, v4, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    goto :goto_0

    .line 740
    :cond_0
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 742
    :goto_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, v2, :cond_1

    add-int/lit8 v0, p3, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, p3, 0x1

    :goto_1
    return v0
.end method

.method private handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .line 752
    add-int/lit8 v0, p3, -0x1

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "ISL"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "YSL"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x3

    invoke-static {p1, v0, v3, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    add-int/2addr p3, v5

    goto/16 :goto_6

    .line 755
    :cond_0
    const/16 v0, 0x58

    const/16 v2, 0x53

    if-nez p3, :cond_1

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "SUGAR"

    aput-object v7, v6, v4

    const/4 v7, 0x5

    invoke-static {p1, p3, v7, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 757
    invoke-virtual {p2, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 758
    add-int/2addr p3, v5

    goto/16 :goto_6

    .line 759
    :cond_1
    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "SH"

    aput-object v7, v6, v4

    invoke-static {p1, p3, v1, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_3

    .line 760
    add-int/lit8 v6, p3, 0x1

    new-array v8, v7, [Ljava/lang/String;

    const-string v9, "HEIM"

    aput-object v9, v8, v4

    const-string v4, "HOEK"

    aput-object v4, v8, v5

    const-string v4, "HOLM"

    aput-object v4, v8, v1

    const-string v4, "HOLZ"

    aput-object v4, v8, v3

    invoke-static {p1, v6, v7, v8}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 762
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 764
    :cond_2
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 766
    :goto_0
    add-int/2addr p3, v1

    goto/16 :goto_6

    .line 767
    :cond_3
    new-array v6, v1, [Ljava/lang/String;

    const-string v8, "SIO"

    aput-object v8, v6, v4

    const-string v8, "SIA"

    aput-object v8, v6, v5

    invoke-static {p1, p3, v3, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    new-array v6, v5, [Ljava/lang/String;

    const-string v8, "SIAN"

    aput-object v8, v6, v4

    invoke-static {p1, p3, v7, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_4

    .line 775
    :cond_4
    const-string v6, "Z"

    if-nez p3, :cond_5

    add-int/lit8 v8, p3, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const-string v9, "M"

    aput-object v9, v7, v4

    const-string v9, "N"

    aput-object v9, v7, v5

    const-string v9, "L"

    aput-object v9, v7, v1

    const-string v9, "W"

    aput-object v9, v7, v3

    invoke-static {p1, v8, v5, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    add-int/lit8 v3, p3, 0x1

    new-array v7, v5, [Ljava/lang/String;

    aput-object v6, v7, v4

    .line 776
    invoke-static {p1, v3, v5, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 781
    :cond_6
    invoke-virtual {p2, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 782
    add-int/lit8 v0, p3, 0x1

    new-array v1, v5, [Ljava/lang/String;

    aput-object v6, v1, v4

    invoke-static {p1, v0, v5, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, p3, 0x2

    goto :goto_1

    :cond_7
    add-int/lit8 v0, p3, 0x1

    :goto_1
    move p3, v0

    goto :goto_6

    .line 783
    :cond_8
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "SC"

    aput-object v3, v0, v4

    invoke-static {p1, p3, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 784
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleSC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result p3

    goto :goto_6

    .line 786
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    if-ne p3, v0, :cond_a

    add-int/lit8 v0, p3, -0x2

    new-array v3, v1, [Ljava/lang/String;

    const-string v7, "AI"

    aput-object v7, v3, v4

    const-string v7, "OI"

    aput-object v7, v3, v5

    invoke-static {p1, v0, v1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 788
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    goto :goto_2

    .line 790
    :cond_a
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 792
    :goto_2
    add-int/lit8 v0, p3, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "S"

    aput-object v2, v1, v4

    aput-object v6, v1, v5

    invoke-static {p1, v0, v5, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, p3, 0x2

    goto :goto_3

    :cond_b
    add-int/lit8 v0, p3, 0x1

    :goto_3
    move p3, v0

    goto :goto_6

    .line 769
    :cond_c
    :goto_4
    if-eqz p4, :cond_d

    .line 770
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_5

    .line 772
    :cond_d
    invoke-virtual {p2, v2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    .line 774
    :goto_5
    add-int/2addr p3, v3

    .line 794
    :goto_6
    return p3
.end method

.method private handleSC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 12
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 801
    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    const/16 v2, 0x53

    const-string v3, "SK"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-ne v0, v1, :cond_3

    .line 803
    add-int/lit8 v0, p3, 0x3

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v8, "OO"

    aput-object v8, v1, v4

    const-string v8, "ER"

    aput-object v8, v1, v5

    const-string v9, "EN"

    aput-object v9, v1, v7

    const-string v10, "UY"

    aput-object v10, v1, v6

    const/4 v10, 0x4

    const-string v11, "ED"

    aput-object v11, v1, v10

    const/4 v10, 0x5

    const-string v11, "EM"

    aput-object v11, v1, v10

    invoke-static {p1, v0, v7, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    add-int/lit8 v0, p3, 0x3

    new-array v1, v7, [Ljava/lang/String;

    aput-object v8, v1, v4

    aput-object v9, v1, v5

    invoke-static {p1, v0, v7, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    const-string v0, "X"

    invoke-virtual {p2, v0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 809
    :cond_0
    invoke-virtual {p2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 811
    :cond_1
    const/16 v0, 0x58

    if-nez p3, :cond_2

    invoke-virtual {p0, p1, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v1

    const/16 v3, 0x57

    if-eq v1, v3, :cond_2

    .line 812
    invoke-virtual {p2, v0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 814
    :cond_2
    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 816
    :cond_3
    add-int/lit8 v0, p3, 0x2

    new-array v1, v6, [Ljava/lang/String;

    const-string v6, "I"

    aput-object v6, v1, v4

    const-string v4, "E"

    aput-object v4, v1, v5

    const-string v4, "Y"

    aput-object v4, v1, v7

    invoke-static {p1, v0, v5, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 817
    invoke-virtual {p2, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_0

    .line 819
    :cond_4
    invoke-virtual {p2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 821
    :goto_0
    add-int/lit8 v0, p3, 0x3

    return v0
.end method

.method private handleT(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 828
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "TION"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x4

    invoke-static {p1, p3, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x3

    if-nez v1, :cond_6

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const-string v6, "TIA"

    aput-object v6, v5, v3

    const-string v6, "TCH"

    aput-object v6, v5, v0

    invoke-static {p1, p3, v4, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_4

    .line 831
    :cond_0
    new-array v5, v0, [Ljava/lang/String;

    const-string v6, "TH"

    aput-object v6, v5, v3

    invoke-static {p1, p3, v1, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x54

    if-nez v5, :cond_3

    new-array v5, v0, [Ljava/lang/String;

    const-string v7, "TTH"

    aput-object v7, v5, v3

    invoke-static {p1, p3, v4, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 842
    :cond_1
    invoke-virtual {p2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 843
    add-int/lit8 v2, p3, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "T"

    aput-object v4, v1, v3

    const-string v3, "D"

    aput-object v3, v1, v0

    invoke-static {p1, v2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p3, 0x1

    :goto_0
    move p3, v0

    goto :goto_5

    .line 832
    :cond_3
    :goto_1
    add-int/lit8 v5, p3, 0x2

    new-array v7, v1, [Ljava/lang/String;

    const-string v8, "OM"

    aput-object v8, v7, v3

    const-string v8, "AM"

    aput-object v8, v7, v0

    invoke-static {p1, v5, v1, v7}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    new-array v5, v1, [Ljava/lang/String;

    const-string v7, "VAN "

    aput-object v7, v5, v3

    const-string v7, "VON "

    aput-object v7, v5, v0

    .line 834
    invoke-static {p1, v3, v2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "SCH"

    aput-object v2, v0, v3

    .line 835
    invoke-static {p1, v3, v4, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 838
    :cond_4
    const/16 v0, 0x30

    invoke-virtual {p2, v0, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_3

    .line 836
    :cond_5
    :goto_2
    invoke-virtual {p2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 840
    :goto_3
    add-int/2addr p3, v1

    goto :goto_5

    .line 829
    :cond_6
    :goto_4
    const/16 v0, 0x58

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 830
    add-int/2addr p3, v4

    .line 845
    :goto_5
    return p3
.end method

.method private handleW(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 9
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 852
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "WR"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {p1, p3, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 854
    const/16 v0, 0x52

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 855
    add-int/2addr p3, v2

    goto/16 :goto_2

    .line 856
    :cond_0
    const/16 v1, 0x46

    if-nez p3, :cond_3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    invoke-direct {p0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v4

    if-nez v4, :cond_1

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "WH"

    aput-object v5, v4, v3

    .line 857
    invoke-static {p1, p3, v2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 858
    :cond_1
    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v2

    const/16 v3, 0x41

    if-eqz v2, :cond_2

    .line 860
    invoke-virtual {p2, v3, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(CC)V

    goto :goto_0

    .line 863
    :cond_2
    invoke-virtual {p2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 865
    :goto_0
    add-int/2addr p3, v0

    goto :goto_2

    .line 866
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    if-ne p3, v4, :cond_4

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v4

    invoke-direct {p0, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isVowel(C)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_4
    add-int/lit8 v4, p3, -0x1

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/String;

    const-string v7, "EWSKI"

    aput-object v7, v6, v3

    const-string v7, "EWSKY"

    aput-object v7, v6, v0

    const-string v7, "OWSKI"

    aput-object v7, v6, v2

    const-string v7, "OWSKY"

    const/4 v8, 0x3

    aput-object v7, v6, v8

    .line 867
    const/4 v7, 0x5

    invoke-static {p1, v4, v7, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    new-array v4, v0, [Ljava/lang/String;

    const-string v6, "SCH"

    aput-object v6, v4, v3

    .line 868
    invoke-static {p1, v3, v8, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 872
    :cond_5
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "WICZ"

    aput-object v2, v1, v3

    const-string v2, "WITZ"

    aput-object v2, v1, v0

    invoke-static {p1, p3, v5, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 874
    const-string v0, "TS"

    const-string v1, "FX"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    add-int/2addr p3, v5

    goto :goto_2

    .line 877
    :cond_6
    add-int/2addr p3, v0

    goto :goto_2

    .line 870
    :cond_7
    :goto_1
    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    .line 871
    add-int/2addr p3, v0

    .line 879
    :goto_2
    return p3
.end method

.method private handleX(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I

    .line 886
    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 887
    const/16 v1, 0x53

    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 888
    add-int/2addr p3, v0

    goto :goto_1

    .line 890
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p3, v1, :cond_1

    add-int/lit8 v1, p3, -0x3

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "IAU"

    aput-object v5, v4, v2

    const-string v5, "EAU"

    aput-object v5, v4, v0

    .line 891
    const/4 v5, 0x3

    invoke-static {p1, v1, v5, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, p3, -0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "AU"

    aput-object v5, v4, v2

    const-string v5, "OU"

    aput-object v5, v4, v0

    .line 892
    invoke-static {p1, v1, v3, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 894
    :cond_1
    const-string v1, "KS"

    invoke-virtual {p2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;)V

    .line 896
    :cond_2
    add-int/lit8 v1, p3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "C"

    aput-object v4, v3, v2

    const-string v2, "X"

    aput-object v2, v3, v0

    invoke-static {p1, v1, v0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, 0x2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p3, 0x1

    :goto_0
    move p3, v0

    .line 898
    :goto_1
    return p3
.end method

.method private handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    .param p3, "index"    # I
    .param p4, "slavoGermanic"    # Z

    .line 908
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x48

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    .line 910
    const/16 v0, 0x4a

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 911
    add-int/2addr p3, v2

    goto :goto_3

    .line 913
    :cond_0
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ZO"

    aput-object v4, v1, v3

    const-string v3, "ZI"

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "ZA"

    aput-object v3, v1, v2

    invoke-static {p1, v0, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->contains(Ljava/lang/String;II[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_1

    if-lez p3, :cond_1

    add-int/lit8 v0, p3, -0x1

    .line 914
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 917
    :cond_1
    const/16 v0, 0x53

    invoke-virtual {p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    goto :goto_1

    .line 915
    :cond_2
    :goto_0
    const-string v0, "S"

    const-string v1, "TS"

    invoke-virtual {p2, v0, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    :goto_1
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, p3, 0x2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, p3, 0x1

    :goto_2
    move p3, v0

    .line 921
    :goto_3
    return p3
.end method

.method private isSilentStart(Ljava/lang/String;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .line 958
    const/4 v0, 0x0

    .line 959
    .local v0, "result":Z
    sget-object v1, Lorg/apache/commons/codec/language/DoubleMetaphone;->SILENT_START:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 960
    .local v4, "element":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 961
    const/4 v0, 0x1

    .line 962
    goto :goto_1

    .line 959
    .end local v4    # "element":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 965
    :cond_1
    :goto_1
    return v0
.end method

.method private isSlavoGermanic(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 973
    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    const/16 v0, 0x4b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 974
    const-string v0, "CZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WITZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 973
    :goto_1
    return v0
.end method

.method private isVowel(C)Z
    .locals 2
    .param p1, "ch"    # C

    .line 981
    const-string v0, "AEIOUY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected charAt(Ljava/lang/String;I)C
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 164
    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 165
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "alternate"    # Z

    .line 274
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->cleanInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 275
    if-nez p1, :cond_0

    .line 276
    const/4 v0, 0x0

    return-object v0

    .line 279
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isSlavoGermanic(Ljava/lang/String;)Z

    move-result v0

    .line 280
    .local v0, "slavoGermanic":Z
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isSilentStart(Ljava/lang/String;)Z

    move-result v1

    .line 282
    .local v1, "index":I
    new-instance v2, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->getMaxCodeLen()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;-><init>(Lorg/apache/commons/codec/language/DoubleMetaphone;I)V

    .line 284
    .local v2, "result":Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->isComplete()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_8

    .line 285
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x4e

    const/16 v5, 0x4b

    const/16 v6, 0x46

    sparse-switch v3, :sswitch_data_0

    .line 372
    add-int/lit8 v1, v1, 0x1

    .line 373
    goto :goto_0

    .line 339
    :sswitch_0
    invoke-virtual {v2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 340
    add-int/lit8 v1, v1, 0x1

    .line 341
    goto :goto_0

    .line 300
    :sswitch_1
    const/16 v3, 0x53

    invoke-virtual {v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 301
    add-int/lit8 v1, v1, 0x1

    .line 302
    goto :goto_0

    .line 369
    :sswitch_2
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleZ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    .line 370
    goto :goto_0

    .line 366
    :sswitch_3
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleX(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 367
    goto :goto_0

    .line 363
    :sswitch_4
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleW(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 364
    goto :goto_0

    .line 359
    :sswitch_5
    invoke-virtual {v2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 360
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x56

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v1, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v1, 0x1

    :goto_1
    move v1, v3

    .line 361
    goto :goto_0

    .line 356
    :sswitch_6
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleT(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 357
    goto :goto_0

    .line 353
    :sswitch_7
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleS(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    .line 354
    goto :goto_0

    .line 350
    :sswitch_8
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleR(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    .line 351
    goto :goto_0

    .line 346
    :sswitch_9
    invoke-virtual {v2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 347
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x51

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v1, 0x2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v1, 0x1

    :goto_2
    move v1, v3

    .line 348
    goto :goto_0

    .line 343
    :sswitch_a
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleP(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 344
    goto :goto_0

    .line 334
    :sswitch_b
    invoke-virtual {v2, v4}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 335
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v1, 0x2

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v1, 0x1

    :goto_3
    move v1, v3

    .line 336
    goto/16 :goto_0

    .line 330
    :sswitch_c
    const/16 v3, 0x4d

    invoke-virtual {v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 331
    invoke-direct {p0, p1, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->conditionM0(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v3, v1, 0x2

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v1, 0x1

    :goto_4
    move v1, v3

    .line 332
    goto/16 :goto_0

    .line 327
    :sswitch_d
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleL(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 328
    goto/16 :goto_0

    .line 323
    :sswitch_e
    invoke-virtual {v2, v5}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 324
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v5, :cond_5

    add-int/lit8 v3, v1, 0x2

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v1, 0x1

    :goto_5
    move v1, v3

    .line 325
    goto/16 :goto_0

    .line 320
    :sswitch_f
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleJ(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    .line 321
    goto/16 :goto_0

    .line 317
    :sswitch_10
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleH(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 318
    goto/16 :goto_0

    .line 314
    :sswitch_11
    invoke-direct {p0, p1, v2, v1, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleG(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;IZ)I

    move-result v1

    .line 315
    goto/16 :goto_0

    .line 310
    :sswitch_12
    invoke-virtual {v2, v6}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 311
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    if-ne v3, v6, :cond_6

    add-int/lit8 v3, v1, 0x2

    goto :goto_6

    :cond_6
    add-int/lit8 v3, v1, 0x1

    :goto_6
    move v1, v3

    .line 312
    goto/16 :goto_0

    .line 307
    :sswitch_13
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleD(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 308
    goto/16 :goto_0

    .line 304
    :sswitch_14
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleC(Ljava/lang/String;Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 305
    goto/16 :goto_0

    .line 295
    :sswitch_15
    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->append(C)V

    .line 296
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->charAt(Ljava/lang/String;I)C

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_7

    add-int/lit8 v3, v1, 0x2

    goto :goto_7

    :cond_7
    add-int/lit8 v3, v1, 0x1

    :goto_7
    move v1, v3

    .line 297
    goto/16 :goto_0

    .line 292
    :sswitch_16
    invoke-direct {p0, v2, v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->handleAEIOUY(Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;I)I

    move-result v1

    .line 293
    goto/16 :goto_0

    .line 377
    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->getAlternate()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_9
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->getPrimary()Ljava/lang/String;

    move-result-object v3

    :goto_8
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_16
        0x42 -> :sswitch_15
        0x43 -> :sswitch_14
        0x44 -> :sswitch_13
        0x45 -> :sswitch_16
        0x46 -> :sswitch_12
        0x47 -> :sswitch_11
        0x48 -> :sswitch_10
        0x49 -> :sswitch_16
        0x4a -> :sswitch_f
        0x4b -> :sswitch_e
        0x4c -> :sswitch_d
        0x4d -> :sswitch_c
        0x4e -> :sswitch_b
        0x4f -> :sswitch_16
        0x50 -> :sswitch_a
        0x51 -> :sswitch_9
        0x52 -> :sswitch_8
        0x53 -> :sswitch_7
        0x54 -> :sswitch_6
        0x55 -> :sswitch_16
        0x56 -> :sswitch_5
        0x57 -> :sswitch_4
        0x58 -> :sswitch_3
        0x59 -> :sswitch_16
        0x5a -> :sswitch_2
        0xc7 -> :sswitch_1
        0xd1 -> :sswitch_0
    .end sparse-switch
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 390
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 393
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 391
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "DoubleMetaphone encode parameter is not of type String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 404
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .locals 1

    .line 412
    iget v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;

    .line 935
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/codec/language/DoubleMetaphone;->isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDoubleMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;
    .param p3, "alternate"    # Z

    .line 949
    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/codec/language/DoubleMetaphone;->doubleMetaphone(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/codec/binary/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setMaxCodeLen(I)V
    .locals 0
    .param p1, "maxCodeLen"    # I

    .line 991
    iput p1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone;->maxCodeLen:I

    .line 992
    return-void
.end method
