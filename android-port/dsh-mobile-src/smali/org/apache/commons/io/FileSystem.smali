.class public final enum Lorg/apache/commons/io/FileSystem;
.super Ljava/lang/Enum;
.source "FileSystem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/io/FileSystem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/io/FileSystem;

.field private static final CURRENT:Lorg/apache/commons/io/FileSystem;

.field public static final enum GENERIC:Lorg/apache/commons/io/FileSystem;

.field private static final IS_OS_LINUX:Z

.field private static final IS_OS_MAC:Z

.field private static final IS_OS_WINDOWS:Z

.field public static final enum LINUX:Lorg/apache/commons/io/FileSystem;

.field public static final enum MAC_OSX:Lorg/apache/commons/io/FileSystem;

.field private static final OS_NAME_WINDOWS_PREFIX:Ljava/lang/String; = "Windows"

.field public static final enum WINDOWS:Lorg/apache/commons/io/FileSystem;


# instance fields
.field private final blockSize:I

.field private final casePreserving:Z

.field private final caseSensitive:Z

.field private final illegalFileNameChars:[I

.field private final maxFileNameLength:I

.field private final maxPathLength:I

.field private final nameSeparator:C

.field private final nameSeparatorOther:C

.field private final reservedFileNames:[Ljava/lang/String;

.field private final reservedFileNamesExtensions:Z

.field private final supportsDriveLetter:Z


# direct methods
.method public static synthetic $r8$lambda$kbJ6R4FYGPrxzqRzzr4AXRsbN0M(Lorg/apache/commons/io/FileSystem;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/io/FileSystem;->isIllegalFileNameChar(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic $values()[Lorg/apache/commons/io/FileSystem;
    .locals 4

    .line 34
    sget-object v0, Lorg/apache/commons/io/FileSystem;->GENERIC:Lorg/apache/commons/io/FileSystem;

    sget-object v1, Lorg/apache/commons/io/FileSystem;->LINUX:Lorg/apache/commons/io/FileSystem;

    sget-object v2, Lorg/apache/commons/io/FileSystem;->MAC_OSX:Lorg/apache/commons/io/FileSystem;

    sget-object v3, Lorg/apache/commons/io/FileSystem;->WINDOWS:Lorg/apache/commons/io/FileSystem;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/commons/io/FileSystem;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 41

    .line 39
    new-instance v13, Lorg/apache/commons/io/FileSystem;

    const/4 v14, 0x0

    filled-new-array {v14}, [I

    move-result-object v8

    new-array v9, v14, [Ljava/lang/String;

    const/4 v11, 0x0

    const/16 v12, 0x2f

    const-string v1, "GENERIC"

    const/4 v2, 0x0

    const/16 v3, 0x1000

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const v7, 0x7fffffff

    const/4 v10, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V

    sput-object v13, Lorg/apache/commons/io/FileSystem;->GENERIC:Lorg/apache/commons/io/FileSystem;

    .line 44
    new-instance v0, Lorg/apache/commons/io/FileSystem;

    const/16 v1, 0x2f

    filled-new-array {v14, v1}, [I

    move-result-object v23

    new-array v2, v14, [Ljava/lang/String;

    const/16 v26, 0x0

    const/16 v27, 0x2f

    const-string v16, "LINUX"

    const/16 v17, 0x1

    const/16 v18, 0x2000

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0xff

    const/16 v22, 0x1000

    const/16 v25, 0x0

    move-object v15, v0

    move-object/from16 v24, v2

    invoke-direct/range {v15 .. v27}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V

    sput-object v0, Lorg/apache/commons/io/FileSystem;->LINUX:Lorg/apache/commons/io/FileSystem;

    .line 56
    new-instance v0, Lorg/apache/commons/io/FileSystem;

    const/16 v2, 0x3a

    filled-new-array {v14, v1, v2}, [I

    move-result-object v36

    new-array v1, v14, [Ljava/lang/String;

    const/16 v39, 0x0

    const/16 v40, 0x2f

    const-string v29, "MAC_OSX"

    const/16 v30, 0x2

    const/16 v31, 0x1000

    const/16 v32, 0x1

    const/16 v33, 0x1

    const/16 v34, 0xff

    const/16 v35, 0x400

    const/16 v38, 0x0

    move-object/from16 v28, v0

    move-object/from16 v37, v1

    invoke-direct/range {v28 .. v40}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V

    sput-object v0, Lorg/apache/commons/io/FileSystem;->MAC_OSX:Lorg/apache/commons/io/FileSystem;

    .line 79
    new-instance v0, Lorg/apache/commons/io/FileSystem;

    const/16 v1, 0x29

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/16 v2, 0x18

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AUX"

    aput-object v3, v2, v14

    const-string v3, "COM1"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "COM2"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "COM3"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string v3, "COM4"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const-string v3, "COM5"

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const-string v3, "COM6"

    const/4 v4, 0x6

    aput-object v3, v2, v4

    const-string v3, "COM7"

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const-string v3, "COM8"

    const/16 v4, 0x8

    aput-object v3, v2, v4

    const-string v3, "COM9"

    const/16 v4, 0x9

    aput-object v3, v2, v4

    const-string v3, "CON"

    const/16 v4, 0xa

    aput-object v3, v2, v4

    const-string v3, "CONIN$"

    const/16 v4, 0xb

    aput-object v3, v2, v4

    const-string v3, "CONOUT$"

    const/16 v4, 0xc

    aput-object v3, v2, v4

    const-string v3, "LPT1"

    const/16 v4, 0xd

    aput-object v3, v2, v4

    const-string v3, "LPT2"

    const/16 v4, 0xe

    aput-object v3, v2, v4

    const-string v3, "LPT3"

    const/16 v4, 0xf

    aput-object v3, v2, v4

    const-string v3, "LPT4"

    const/16 v4, 0x10

    aput-object v3, v2, v4

    const-string v3, "LPT5"

    const/16 v4, 0x11

    aput-object v3, v2, v4

    const-string v3, "LPT6"

    const/16 v4, 0x12

    aput-object v3, v2, v4

    const-string v3, "LPT7"

    const/16 v4, 0x13

    aput-object v3, v2, v4

    const/16 v3, 0x14

    const-string v4, "LPT8"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "LPT9"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "NUL"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "PRN"

    aput-object v4, v2, v3

    const/16 v26, 0x1

    const/16 v27, 0x5c

    const-string v16, "WINDOWS"

    const/16 v17, 0x3

    const/16 v18, 0x1000

    const/16 v19, 0x0

    const/16 v22, 0x7d00

    const/16 v25, 0x1

    move-object v15, v0

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    invoke-direct/range {v15 .. v27}, Lorg/apache/commons/io/FileSystem;-><init>(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V

    sput-object v0, Lorg/apache/commons/io/FileSystem;->WINDOWS:Lorg/apache/commons/io/FileSystem;

    .line 34
    invoke-static {}, Lorg/apache/commons/io/FileSystem;->$values()[Lorg/apache/commons/io/FileSystem;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FileSystem;->$VALUES:[Lorg/apache/commons/io/FileSystem;

    .line 102
    const-string v0, "Linux"

    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->getOsMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_LINUX:Z

    .line 112
    const-string v0, "Mac"

    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->getOsMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_MAC:Z

    .line 127
    const-string v0, "Windows"

    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->getOsMatchesName(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_WINDOWS:Z

    .line 132
    invoke-static {}, Lorg/apache/commons/io/FileSystem;->current()Lorg/apache/commons/io/FileSystem;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FileSystem;->CURRENT:Lorg/apache/commons/io/FileSystem;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x22
        0x2a
        0x2f
        0x3a
        0x3c
        0x3e
        0x3f
        0x5c
        0x7c
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;IIZZII[I[Ljava/lang/String;ZZC)V
    .locals 0
    .param p3, "blockSize"    # I
    .param p4, "caseSensitive"    # Z
    .param p5, "casePreserving"    # Z
    .param p6, "maxFileLength"    # I
    .param p7, "maxPathLength"    # I
    .param p8, "illegalFileNameChars"    # [I
    .param p9, "reservedFileNames"    # [Ljava/lang/String;
    .param p10, "reservedFileNamesExtensions"    # Z
    .param p11, "supportsDriveLetter"    # Z
    .param p12, "nameSeparator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZII[I[",
            "Ljava/lang/String;",
            "ZZC)V"
        }
    .end annotation

    .line 328
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 329
    iput p3, p0, Lorg/apache/commons/io/FileSystem;->blockSize:I

    .line 330
    iput p6, p0, Lorg/apache/commons/io/FileSystem;->maxFileNameLength:I

    .line 331
    iput p7, p0, Lorg/apache/commons/io/FileSystem;->maxPathLength:I

    .line 332
    const-string p1, "illegalFileNameChars"

    invoke-static {p8, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[I

    .line 333
    const-string p1, "reservedFileNames"

    invoke-static {p9, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNames:[Ljava/lang/String;

    .line 334
    iput-boolean p10, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNamesExtensions:Z

    .line 335
    iput-boolean p4, p0, Lorg/apache/commons/io/FileSystem;->caseSensitive:Z

    .line 336
    iput-boolean p5, p0, Lorg/apache/commons/io/FileSystem;->casePreserving:Z

    .line 337
    iput-boolean p11, p0, Lorg/apache/commons/io/FileSystem;->supportsDriveLetter:Z

    .line 338
    iput-char p12, p0, Lorg/apache/commons/io/FileSystem;->nameSeparator:C

    .line 339
    invoke-static {p12}, Lorg/apache/commons/io/FilenameUtils;->flipSeparator(C)C

    move-result p1

    iput-char p1, p0, Lorg/apache/commons/io/FileSystem;->nameSeparatorOther:C

    .line 340
    return-void
.end method

.method private static current()Lorg/apache/commons/io/FileSystem;
    .locals 1

    .line 140
    sget-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_LINUX:Z

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lorg/apache/commons/io/FileSystem;->LINUX:Lorg/apache/commons/io/FileSystem;

    return-object v0

    .line 143
    :cond_0
    sget-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_MAC:Z

    if-eqz v0, :cond_1

    .line 144
    sget-object v0, Lorg/apache/commons/io/FileSystem;->MAC_OSX:Lorg/apache/commons/io/FileSystem;

    return-object v0

    .line 146
    :cond_1
    sget-boolean v0, Lorg/apache/commons/io/FileSystem;->IS_OS_WINDOWS:Z

    if-eqz v0, :cond_2

    .line 147
    sget-object v0, Lorg/apache/commons/io/FileSystem;->WINDOWS:Lorg/apache/commons/io/FileSystem;

    return-object v0

    .line 149
    :cond_2
    sget-object v0, Lorg/apache/commons/io/FileSystem;->GENERIC:Lorg/apache/commons/io/FileSystem;

    return-object v0
.end method

.method public static getCurrent()Lorg/apache/commons/io/FileSystem;
    .locals 1

    .line 158
    sget-object v0, Lorg/apache/commons/io/FileSystem;->CURRENT:Lorg/apache/commons/io/FileSystem;

    return-object v0
.end method

.method private static getOsMatchesName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "osNamePrefix"    # Ljava/lang/String;

    .line 169
    const-string v0, "os.name"

    invoke-static {v0}, Lorg/apache/commons/io/FileSystem;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/commons/io/FileSystem;->isOsNameMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "property"    # Ljava/lang/String;

    .line 187
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 188
    :catch_0
    move-exception v0

    .line 190
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught a SecurityException reading the system property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'; the SystemUtils property value will default to null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    const/4 v1, 0x0

    return-object v1
.end method

.method private static indexOf(Ljava/lang/CharSequence;II)I
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "start"    # I

    .line 240
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 241
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0

    .line 243
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 244
    .local v0, "sz":I
    if-gez p2, :cond_1

    .line 245
    const/4 p2, 0x0

    .line 247
    :cond_1
    const/high16 v1, 0x10000

    const/4 v2, -0x1

    if-ge p1, v1, :cond_4

    .line 248
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 249
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_2

    .line 250
    return v1

    .line 248
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v1    # "i":I
    :cond_3
    return v2

    .line 256
    :cond_4
    const v1, 0x10ffff

    if-gt p1, v1, :cond_6

    .line 257
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    .line 258
    .local v1, "chars":[C
    move v3, p2

    .local v3, "i":I
    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_6

    .line 259
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 260
    .local v4, "high":C
    add-int/lit8 v5, v3, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 261
    .local v5, "low":C
    const/4 v6, 0x0

    aget-char v6, v1, v6

    if-ne v4, v6, :cond_5

    const/4 v6, 0x1

    aget-char v6, v1, v6

    if-ne v5, v6, :cond_5

    .line 262
    return v3

    .line 258
    .end local v4    # "high":C
    .end local v5    # "low":C
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 266
    .end local v1    # "chars":[C
    .end local v3    # "i":I
    :cond_6
    return v2
.end method

.method private isIllegalFileNameChar(I)Z
    .locals 1
    .param p1, "c"    # I

    .line 439
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isOsNameMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "osName"    # Ljava/lang/String;
    .param p1, "osNamePrefix"    # Ljava/lang/String;

    .line 282
    if-nez p0, :cond_0

    .line 283
    const/4 v0, 0x0

    return v0

    .line 285
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static replace(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "oldChar"    # C
    .param p2, "newChar"    # C

    .line 297
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/io/FileSystem;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lorg/apache/commons/io/FileSystem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/FileSystem;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/io/FileSystem;
    .locals 1

    .line 34
    sget-object v0, Lorg/apache/commons/io/FileSystem;->$VALUES:[Lorg/apache/commons/io/FileSystem;

    invoke-virtual {v0}, [Lorg/apache/commons/io/FileSystem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/io/FileSystem;

    return-object v0
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 349
    iget v0, p0, Lorg/apache/commons/io/FileSystem;->blockSize:I

    return v0
.end method

.method public getIllegalFileNameChars()[C
    .locals 3

    .line 358
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[I

    array-length v0, v0

    new-array v0, v0, [C

    .line 359
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 360
    iget-object v2, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[I

    aget v2, v2, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getIllegalFileNameCodePoints()[I
    .locals 1

    .line 372
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getMaxFileNameLength()I
    .locals 1

    .line 381
    iget v0, p0, Lorg/apache/commons/io/FileSystem;->maxFileNameLength:I

    return v0
.end method

.method public getMaxPathLength()I
    .locals 1

    .line 390
    iget v0, p0, Lorg/apache/commons/io/FileSystem;->maxPathLength:I

    return v0
.end method

.method public getNameSeparator()C
    .locals 1

    .line 401
    iget-char v0, p0, Lorg/apache/commons/io/FileSystem;->nameSeparator:C

    return v0
.end method

.method public getReservedFileNames()[Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public isCasePreserving()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Lorg/apache/commons/io/FileSystem;->casePreserving:Z

    return v0
.end method

.method public isCaseSensitive()Z
    .locals 1

    .line 428
    iget-boolean v0, p0, Lorg/apache/commons/io/FileSystem;->caseSensitive:Z

    return v0
.end method

.method public isLegalFileName(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "candidate"    # Ljava/lang/CharSequence;

    .line 452
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/io/FileSystem;->maxFileNameLength:I

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileSystem;->isReservedFileName(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    return v0

    .line 458
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->chars()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/FileSystem$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/commons/io/FileSystem$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/io/FileSystem;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->noneMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    return v0

    .line 453
    :cond_2
    :goto_0
    return v0
.end method

.method public isReservedFileName(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "candidate"    # Ljava/lang/CharSequence;

    .line 469
    iget-boolean v0, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNamesExtensions:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileSystem;->trimExtension(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 470
    .local v0, "test":Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/io/FileSystem;->reservedFileNames:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method synthetic lambda$toLegalFileName$0$org-apache-commons-io-FileSystem(CI)I
    .locals 1
    .param p1, "replacement"    # C
    .param p2, "i"    # I

    .line 519
    invoke-direct {p0, p2}, Lorg/apache/commons/io/FileSystem;->isIllegalFileNameChar(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method public normalizeSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 481
    iget-char v0, p0, Lorg/apache/commons/io/FileSystem;->nameSeparatorOther:C

    iget-char v1, p0, Lorg/apache/commons/io/FileSystem;->nameSeparator:C

    invoke-static {p1, v0, v1}, Lorg/apache/commons/io/FileSystem;->replace(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public supportsDriveLetter()Z
    .locals 1

    .line 497
    iget-boolean v0, p0, Lorg/apache/commons/io/FileSystem;->supportsDriveLetter:Z

    return v0
.end method

.method public toLegalFileName(Ljava/lang/String;C)Ljava/lang/String;
    .locals 5
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "replacement"    # C

    .line 513
    invoke-direct {p0, p2}, Lorg/apache/commons/io/FileSystem;->isIllegalFileNameChar(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 516
    if-nez p2, :cond_0

    const-string v1, "\\0"

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/io/FileSystem;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/io/FileSystem;->illegalFileNameChars:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 515
    const-string v2, "The replacement character \'%s\' cannot be one of the %s illegal characters: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/io/FileSystem;->maxFileNameLength:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    iget v0, p0, Lorg/apache/commons/io/FileSystem;->maxFileNameLength:I

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p1

    .line 519
    .local v0, "truncated":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v3, Lorg/apache/commons/io/FileSystem$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2}, Lorg/apache/commons/io/FileSystem$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/io/FileSystem;C)V

    invoke-interface {v1, v3}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 520
    .local v1, "array":[I
    new-instance v3, Ljava/lang/String;

    array-length v4, v1

    invoke-direct {v3, v1, v2, v4}, Ljava/lang/String;-><init>([III)V

    return-object v3
.end method

.method trimExtension(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 524
    const/16 v0, 0x2e

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/apache/commons/io/FileSystem;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 525
    .local v0, "index":I
    if-gez v0, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    return-object v1
.end method
