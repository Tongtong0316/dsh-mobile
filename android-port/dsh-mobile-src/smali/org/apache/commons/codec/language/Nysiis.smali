.class public Lorg/apache/commons/codec/language/Nysiis;
.super Ljava/lang/Object;
.source "Nysiis.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# static fields
.field private static final CHARS_A:[C

.field private static final CHARS_AF:[C

.field private static final CHARS_C:[C

.field private static final CHARS_FF:[C

.field private static final CHARS_G:[C

.field private static final CHARS_N:[C

.field private static final CHARS_NN:[C

.field private static final CHARS_S:[C

.field private static final CHARS_SSS:[C

.field private static final PAT_DT_ETC:Ljava/util/regex/Pattern;

.field private static final PAT_EE_IE:Ljava/util/regex/Pattern;

.field private static final PAT_K:Ljava/util/regex/Pattern;

.field private static final PAT_KN:Ljava/util/regex/Pattern;

.field private static final PAT_MAC:Ljava/util/regex/Pattern;

.field private static final PAT_PH_PF:Ljava/util/regex/Pattern;

.field private static final PAT_SCH:Ljava/util/regex/Pattern;

.field private static final SPACE:C = ' '

.field private static final TRUE_LENGTH:I = 0x6


# instance fields
.field private final strict:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 74
    const/4 v0, 0x1

    new-array v1, v0, [C

    const/4 v2, 0x0

    const/16 v3, 0x41

    aput-char v3, v1, v2

    sput-object v1, Lorg/apache/commons/codec/language/Nysiis;->CHARS_A:[C

    .line 75
    const/4 v1, 0x2

    new-array v3, v1, [C

    fill-array-data v3, :array_0

    sput-object v3, Lorg/apache/commons/codec/language/Nysiis;->CHARS_AF:[C

    .line 76
    new-array v3, v0, [C

    const/16 v4, 0x43

    aput-char v4, v3, v2

    sput-object v3, Lorg/apache/commons/codec/language/Nysiis;->CHARS_C:[C

    .line 77
    new-array v3, v1, [C

    fill-array-data v3, :array_1

    sput-object v3, Lorg/apache/commons/codec/language/Nysiis;->CHARS_FF:[C

    .line 78
    new-array v3, v0, [C

    const/16 v4, 0x47

    aput-char v4, v3, v2

    sput-object v3, Lorg/apache/commons/codec/language/Nysiis;->CHARS_G:[C

    .line 79
    new-array v3, v0, [C

    const/16 v4, 0x4e

    aput-char v4, v3, v2

    sput-object v3, Lorg/apache/commons/codec/language/Nysiis;->CHARS_N:[C

    .line 80
    new-array v1, v1, [C

    fill-array-data v1, :array_2

    sput-object v1, Lorg/apache/commons/codec/language/Nysiis;->CHARS_NN:[C

    .line 81
    new-array v0, v0, [C

    const/16 v1, 0x53

    aput-char v1, v0, v2

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_S:[C

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_SSS:[C

    .line 84
    const-string v0, "^MAC"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_MAC:Ljava/util/regex/Pattern;

    .line 85
    const-string v0, "^KN"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_KN:Ljava/util/regex/Pattern;

    .line 86
    const-string v0, "^K"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_K:Ljava/util/regex/Pattern;

    .line 87
    const-string v0, "^(PH|PF)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_PH_PF:Ljava/util/regex/Pattern;

    .line 88
    const-string v0, "^SCH"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_SCH:Ljava/util/regex/Pattern;

    .line 89
    const-string v0, "(EE|IE)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_EE_IE:Ljava/util/regex/Pattern;

    .line 90
    const-string v0, "(DT|RT|RD|NT|ND)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_DT_ETC:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 2
        0x41s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x46s
        0x46s
    .end array-data

    :array_2
    .array-data 2
        0x4es
        0x4es
    .end array-data

    :array_3
    .array-data 2
        0x53s
        0x53s
        0x53s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/Nysiis;-><init>(Z)V

    .line 182
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "strict"    # Z

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-boolean p1, p0, Lorg/apache/commons/codec/language/Nysiis;->strict:Z

    .line 197
    return-void
.end method

.method private static isVowel(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 103
    const/16 v0, 0x41

    if-eq p0, v0, :cond_1

    const/16 v0, 0x45

    if-eq p0, v0, :cond_1

    const/16 v0, 0x49

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x55

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static transcodeRemaining(CCCC)[C
    .locals 3
    .param p0, "prev"    # C
    .param p1, "curr"    # C
    .param p2, "next"    # C
    .param p3, "aNext"    # C

    .line 122
    const/16 v0, 0x45

    if-ne p1, v0, :cond_0

    const/16 v0, 0x56

    if-ne p2, v0, :cond_0

    .line 123
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_AF:[C

    return-object v0

    .line 127
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/codec/language/Nysiis;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_A:[C

    return-object v0

    .line 134
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 151
    const/16 v0, 0x53

    const/16 v1, 0x48

    if-ne p1, v0, :cond_3

    const/16 v0, 0x43

    if-ne p2, v0, :cond_3

    if-ne p3, v1, :cond_3

    .line 152
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_SSS:[C

    return-object v0

    .line 138
    :sswitch_0
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_S:[C

    return-object v0

    .line 136
    :sswitch_1
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_G:[C

    return-object v0

    .line 140
    :sswitch_2
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_N:[C

    return-object v0

    .line 142
    :sswitch_3
    const/16 v0, 0x4e

    if-ne p2, v0, :cond_2

    .line 143
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_NN:[C

    return-object v0

    .line 145
    :cond_2
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_C:[C

    return-object v0

    .line 156
    :cond_3
    const/16 v0, 0x50

    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_4

    .line 157
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->CHARS_FF:[C

    return-object v0

    .line 161
    :cond_4
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p1, v1, :cond_6

    invoke-static {p0}, Lorg/apache/commons/codec/language/Nysiis;->isVowel(C)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p2}, Lorg/apache/commons/codec/language/Nysiis;->isVowel(C)Z

    move-result v1

    if-nez v1, :cond_6

    .line 162
    :cond_5
    new-array v1, v2, [C

    aput-char p0, v1, v0

    return-object v1

    .line 166
    :cond_6
    const/16 v1, 0x57

    if-ne p1, v1, :cond_7

    invoke-static {p0}, Lorg/apache/commons/codec/language/Nysiis;->isVowel(C)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 167
    new-array v1, v2, [C

    aput-char p0, v1, v0

    return-object v1

    .line 170
    :cond_7
    new-array v1, v2, [C

    aput-char p1, v1, v0

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4b -> :sswitch_3
        0x4d -> :sswitch_2
        0x51 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 214
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 217
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/Nysiis;->nysiis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 215
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Nysiis encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 231
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Nysiis;->nysiis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStrict()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lorg/apache/commons/codec/language/Nysiis;->strict:Z

    return v0
.end method

.method public nysiis(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "str"    # Ljava/lang/String;

    .line 251
    if-nez p1, :cond_0

    .line 252
    const/4 v0, 0x0

    return-object v0

    .line 256
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/codec/language/SoundexUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    return-object p1

    .line 264
    :cond_1
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_MAC:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "MCC"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 265
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_KN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "NN"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 266
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_K:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "C"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 267
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_PH_PF:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "FF"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 268
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_SCH:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "SSS"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 272
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_EE_IE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 273
    sget-object v0, Lorg/apache/commons/codec/language/Nysiis;->PAT_DT_ETC:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 277
    .local v0, "key":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 281
    .local v2, "chars":[C
    array-length v3, v2

    .line 283
    .local v3, "len":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 284
    add-int/lit8 v5, v3, -0x1

    const/16 v6, 0x20

    if-ge v4, v5, :cond_2

    add-int/lit8 v5, v4, 0x1

    aget-char v5, v2, v5

    goto :goto_1

    :cond_2
    move v5, v6

    .line 285
    .local v5, "next":C
    :goto_1
    add-int/lit8 v7, v3, -0x2

    if-ge v4, v7, :cond_3

    add-int/lit8 v6, v4, 0x2

    aget-char v6, v2, v6

    .line 286
    .local v6, "aNext":C
    :cond_3
    add-int/lit8 v7, v4, -0x1

    aget-char v7, v2, v7

    aget-char v8, v2, v4

    invoke-static {v7, v8, v5, v6}, Lorg/apache/commons/codec/language/Nysiis;->transcodeRemaining(CCCC)[C

    move-result-object v7

    .line 287
    .local v7, "transcoded":[C
    array-length v8, v7

    invoke-static {v7, v1, v2, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    aget-char v8, v2, v4

    add-int/lit8 v9, v4, -0x1

    aget-char v9, v2, v9

    if-eq v8, v9, :cond_4

    .line 291
    aget-char v8, v2, v4

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    .end local v5    # "next":C
    .end local v6    # "aNext":C
    .end local v7    # "transcoded":[C
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 295
    .end local v4    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_8

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 299
    .local v4, "lastChar":C
    const/16 v6, 0x53

    if-ne v4, v6, :cond_6

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    .line 304
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/16 v7, 0x41

    const/4 v8, 0x2

    if-le v6, v8, :cond_7

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 307
    .local v6, "last2Char":C
    if-ne v6, v7, :cond_7

    const/16 v9, 0x59

    if-ne v4, v9, :cond_7

    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 313
    .end local v6    # "last2Char":C
    :cond_7
    if-ne v4, v7, :cond_8

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 318
    .end local v4    # "lastChar":C
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, "string":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/codec/language/Nysiis;->isStrict()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_9
    move-object v1, v4

    :goto_2
    return-object v1
.end method
