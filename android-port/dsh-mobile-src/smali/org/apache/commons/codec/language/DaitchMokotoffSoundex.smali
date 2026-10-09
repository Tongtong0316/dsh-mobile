.class public Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;
.super Ljava/lang/Object;
.source "DaitchMokotoffSoundex.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;,
        Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    }
.end annotation


# static fields
.field private static final COMMENT:Ljava/lang/String; = "//"

.field private static final DOUBLE_QUOTE:Ljava/lang/String; = "\""

.field private static final FOLDINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_LENGTH:I = 0x6

.field private static final MULTILINE_COMMENT_END:Ljava/lang/String; = "*/"

.field private static final MULTILINE_COMMENT_START:Ljava/lang/String; = "/*"

.field private static final RESOURCE_FILE:Ljava/lang/String; = "org/apache/commons/codec/language/dmrules.txt"

.field private static final RULES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/util/List<",
            "Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final folding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->RULES:Ljava/util/Map;

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->FOLDINGS:Ljava/util/Map;

    .line 228
    new-instance v0, Ljava/util/Scanner;

    const-string v1, "org/apache/commons/codec/language/dmrules.txt"

    invoke-static {v1}, Lorg/apache/commons/codec/Resources;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Lorg/apache/commons/codec/CharEncoding;->UTF_8:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 229
    .local v0, "scanner":Ljava/util/Scanner;
    :try_start_0
    sget-object v2, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->RULES:Ljava/util/Map;

    sget-object v3, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->FOLDINGS:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->parseRules(Ljava/util/Scanner;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 233
    .end local v0    # "scanner":Ljava/util/Scanner;
    sget-object v0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->RULES:Ljava/util/Map;

    new-instance v1, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 234
    return-void

    .line 228
    .restart local v0    # "scanner":Ljava/util/Scanner;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public constructor <init>()V
    .locals 1

    .line 330
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;-><init>(Z)V

    .line 331
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "folding"    # Z

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-boolean p1, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->folding:Z

    .line 345
    return-void
.end method

.method private cleanup(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "input"    # Ljava/lang/String;

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, v1, v3

    .line 360
    .local v4, "ch":C
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 361
    goto :goto_1

    .line 364
    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 365
    sget-object v5, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->FOLDINGS:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    .line 366
    .local v5, "character":Ljava/lang/Character;
    iget-boolean v6, p0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->folding:Z

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    .line 367
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v4

    .line 369
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    .end local v4    # "ch":C
    .end local v5    # "character":Ljava/lang/Character;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 371
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$parseRules$2(Ljava/lang/Character;)Ljava/util/List;
    .locals 1
    .param p0, "k"    # Ljava/lang/Character;

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$static$0(Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;)I
    .locals 2
    .param p0, "rule1"    # Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;
    .param p1, "rule2"    # Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;

    .line 233
    invoke-virtual {p1}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->getPatternLength()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->getPatternLength()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic lambda$static$1(Ljava/lang/Character;Ljava/util/List;)V
    .locals 1
    .param p0, "k"    # Ljava/lang/Character;
    .param p1, "v"    # Ljava/util/List;

    .line 233
    new-instance v0, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method private static parseRules(Ljava/util/Scanner;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 17
    .param p0, "scanner"    # Ljava/util/Scanner;
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Scanner;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/util/List<",
            "Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    .line 238
    .local p2, "ruleMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;>;"
    .local p3, "asciiFoldings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/Character;>;"
    move-object/from16 v1, p1

    const/4 v0, 0x0

    .line 239
    .local v0, "currentLine":I
    const/4 v2, 0x0

    .line 241
    .local v2, "inMultilineComment":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 242
    add-int/lit8 v3, v0, 0x1

    .line 243
    .end local v0    # "currentLine":I
    .local v3, "currentLine":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "rawLine":Ljava/lang/String;
    move-object v0, v4

    .line 246
    .local v0, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 247
    const-string v5, "*/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 248
    const/4 v2, 0x0

    move v0, v3

    goto :goto_0

    .line 253
    :cond_0
    const-string v5, "/*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 254
    const/4 v2, 0x1

    move-object/from16 v13, p3

    move/from16 v16, v2

    move-object/from16 v2, p2

    goto/16 :goto_1

    .line 257
    :cond_1
    const-string v5, "//"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 258
    .local v5, "cmtI":I
    const/4 v6, 0x0

    if-ltz v5, :cond_2

    .line 259
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 265
    .end local v0    # "line":Ljava/lang/String;
    .local v7, "line":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 266
    nop

    .line 241
    .end local v4    # "rawLine":Ljava/lang/String;
    .end local v5    # "cmtI":I
    .end local v7    # "line":Ljava/lang/String;
    :cond_3
    move v0, v3

    goto :goto_0

    .line 269
    .restart local v4    # "rawLine":Ljava/lang/String;
    .restart local v5    # "cmtI":I
    .restart local v7    # "line":Ljava/lang/String;
    :cond_4
    const-string v0, "="

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, " parts: "

    const/4 v10, 0x2

    const-string v11, " in "

    const/4 v12, 0x1

    if-eqz v8, :cond_7

    .line 271
    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "parts":[Ljava/lang/String;
    array-length v8, v0

    if-ne v8, v10, :cond_6

    .line 276
    aget-object v8, v0, v6

    .line 277
    .local v8, "leftCharacter":Ljava/lang/String;
    aget-object v9, v0, v12

    .line 279
    .local v9, "rightCharacter":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v12, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v12, :cond_5

    .line 284
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    move-object/from16 v13, p3

    invoke-interface {v13, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v8    # "leftCharacter":Ljava/lang/String;
    .end local v9    # "rightCharacter":Ljava/lang/String;
    move/from16 v16, v2

    move-object/from16 v2, p2

    goto/16 :goto_1

    .line 279
    .restart local v0    # "parts":[Ljava/lang/String;
    .restart local v8    # "leftCharacter":Ljava/lang/String;
    .restart local v9    # "rightCharacter":Ljava/lang/String;
    :cond_5
    move-object/from16 v13, p3

    .line 280
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Malformed folding statement - patterns are not single characters: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 273
    .end local v8    # "leftCharacter":Ljava/lang/String;
    .end local v9    # "rightCharacter":Ljava/lang/String;
    :cond_6
    move-object/from16 v13, p3

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Malformed folding statement split into "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v10, v0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 287
    .end local v0    # "parts":[Ljava/lang/String;
    :cond_7
    move-object/from16 v13, p3

    const-string v0, "\\s+"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 288
    .local v8, "parts":[Ljava/lang/String;
    array-length v0, v8

    const/4 v14, 0x4

    if-ne v0, v14, :cond_8

    .line 293
    :try_start_0
    aget-object v0, v8, v6

    invoke-static {v0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "pattern":Ljava/lang/String;
    aget-object v9, v8, v12

    invoke-static {v9}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 295
    .local v9, "replacement1":Ljava/lang/String;
    aget-object v10, v8, v10

    invoke-static {v10}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 296
    .local v10, "replacement2":Ljava/lang/String;
    const/4 v11, 0x3

    aget-object v11, v8, v11

    invoke-static {v11}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 298
    .local v11, "replacement3":Ljava/lang/String;
    new-instance v12, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;

    invoke-direct {v12, v0, v9, v10, v11}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .local v12, "r":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;
    invoke-static {v12}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->access$000(Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 300
    .local v6, "patternKey":C
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    new-instance v15, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$$ExternalSyntheticLambda0;

    invoke-direct {v15}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$$ExternalSyntheticLambda0;-><init>()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v16, v2

    move-object/from16 v2, p2

    .end local v2    # "inMultilineComment":Z
    .local v16, "inMultilineComment":Z
    :try_start_1
    invoke-interface {v2, v14, v15}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 301
    .local v14, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 305
    nop

    .line 308
    .end local v0    # "pattern":Ljava/lang/String;
    .end local v4    # "rawLine":Ljava/lang/String;
    .end local v5    # "cmtI":I
    .end local v6    # "patternKey":C
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "parts":[Ljava/lang/String;
    .end local v9    # "replacement1":Ljava/lang/String;
    .end local v10    # "replacement2":Ljava/lang/String;
    .end local v11    # "replacement3":Ljava/lang/String;
    .end local v12    # "r":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;
    .end local v14    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    :goto_1
    move v0, v3

    move/from16 v2, v16

    goto/16 :goto_0

    .line 302
    .restart local v4    # "rawLine":Ljava/lang/String;
    .restart local v5    # "cmtI":I
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "parts":[Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v16    # "inMultilineComment":Z
    .restart local v2    # "inMultilineComment":Z
    :catch_1
    move-exception v0

    move/from16 v16, v2

    move-object/from16 v2, p2

    .line 303
    .end local v2    # "inMultilineComment":Z
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v16    # "inMultilineComment":Z
    :goto_2
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Problem parsing line \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 289
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v16    # "inMultilineComment":Z
    .restart local v2    # "inMultilineComment":Z
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Malformed rule statement split into "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v10, v8

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    .end local v3    # "currentLine":I
    .end local v4    # "rawLine":Ljava/lang/String;
    .end local v5    # "cmtI":I
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "parts":[Ljava/lang/String;
    .local v0, "currentLine":I
    :cond_9
    return-void
.end method

.method private soundex(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 19
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "branching"    # Z

    .line 467
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 468
    return-object v0

    .line 471
    :cond_0
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->cleanup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "input":Ljava/lang/String;
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 474
    .local v2, "currentBranches":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;>;"
    new-instance v3, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;

    invoke-direct {v3, v0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;-><init>(Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$1;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, "lastChar":C
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_11

    .line 478
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 481
    .local v4, "ch":C
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 482
    goto :goto_1

    .line 485
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 486
    .local v5, "inputContext":Ljava/lang/String;
    sget-object v7, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->RULES:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 487
    .local v7, "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    if-nez v7, :cond_2

    .line 488
    nop

    .line 477
    .end local v4    # "ch":C
    .end local v5    # "inputContext":Ljava/lang/String;
    .end local v7    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    :goto_1
    move-object/from16 v16, v1

    goto/16 :goto_d

    .line 492
    .restart local v4    # "ch":C
    .restart local v5    # "inputContext":Ljava/lang/String;
    .restart local v7    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    :cond_2
    if-eqz p2, :cond_3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 494
    .local v8, "nextBranches":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;>;"
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;

    .line 495
    .local v10, "rule":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;
    invoke-virtual {v10, v5}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 496
    if-eqz p2, :cond_4

    .line 497
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 499
    :cond_4
    if-nez v0, :cond_5

    move v11, v6

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v10, v5, v11}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->getReplacements(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v11

    .line 500
    .local v11, "replacements":[Ljava/lang/String;
    array-length v12, v11

    if-le v12, v6, :cond_6

    if-eqz p2, :cond_6

    move v12, v6

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    .line 502
    .local v12, "branchingRequired":Z
    :goto_5
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;

    .line 503
    .local v14, "branch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    array-length v15, v11

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v15, :cond_c

    aget-object v6, v11, v9

    .line 505
    .local v6, "nextReplacement":Ljava/lang/String;
    if-eqz v12, :cond_7

    invoke-virtual {v14}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->createBranch()Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;

    move-result-object v16

    goto :goto_8

    :cond_7
    move-object/from16 v16, v14

    :goto_8
    move-object/from16 v17, v16

    .line 508
    .local v17, "nextBranch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    move-object/from16 v16, v1

    .end local v1    # "input":Ljava/lang/String;
    .local v16, "input":Ljava/lang/String;
    const/16 v1, 0x6d

    if-ne v0, v1, :cond_8

    const/16 v1, 0x6e

    if-eq v4, v1, :cond_9

    goto :goto_9

    :cond_8
    const/16 v1, 0x6e

    :goto_9
    if-ne v0, v1, :cond_a

    const/16 v1, 0x6d

    if-ne v4, v1, :cond_a

    :cond_9
    const/4 v1, 0x1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    .line 510
    .local v1, "force":Z
    :goto_a
    move/from16 v18, v0

    move-object/from16 v0, v17

    .end local v17    # "nextBranch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    .local v0, "nextBranch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    .local v18, "lastChar":C
    invoke-virtual {v0, v6, v1}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->processNextReplacement(Ljava/lang/String;Z)V

    .line 512
    if-nez p2, :cond_b

    .line 513
    goto :goto_b

    .line 515
    :cond_b
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    .end local v0    # "nextBranch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    .end local v1    # "force":Z
    .end local v6    # "nextReplacement":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v16

    move/from16 v0, v18

    const/4 v6, 0x1

    goto :goto_7

    .end local v16    # "input":Ljava/lang/String;
    .end local v18    # "lastChar":C
    .local v0, "lastChar":C
    .local v1, "input":Ljava/lang/String;
    :cond_c
    move/from16 v18, v0

    move-object/from16 v16, v1

    .line 517
    .end local v0    # "lastChar":C
    .end local v1    # "input":Ljava/lang/String;
    .end local v14    # "branch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    .restart local v16    # "input":Ljava/lang/String;
    .restart local v18    # "lastChar":C
    :goto_b
    move-object/from16 v1, v16

    move/from16 v0, v18

    const/4 v6, 0x1

    goto :goto_6

    .line 519
    .end local v16    # "input":Ljava/lang/String;
    .end local v18    # "lastChar":C
    .restart local v0    # "lastChar":C
    .restart local v1    # "input":Ljava/lang/String;
    :cond_d
    move/from16 v18, v0

    move-object/from16 v16, v1

    .end local v0    # "lastChar":C
    .end local v1    # "input":Ljava/lang/String;
    .restart local v16    # "input":Ljava/lang/String;
    .restart local v18    # "lastChar":C
    if-eqz p2, :cond_e

    .line 520
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 521
    invoke-interface {v2, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 523
    :cond_e
    invoke-virtual {v10}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;->getPatternLength()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 524
    goto :goto_c

    .line 495
    .end local v11    # "replacements":[Ljava/lang/String;
    .end local v12    # "branchingRequired":Z
    .end local v16    # "input":Ljava/lang/String;
    .end local v18    # "lastChar":C
    .restart local v0    # "lastChar":C
    .restart local v1    # "input":Ljava/lang/String;
    :cond_f
    move/from16 v18, v0

    move-object/from16 v16, v1

    .line 526
    .end local v0    # "lastChar":C
    .end local v1    # "input":Ljava/lang/String;
    .end local v10    # "rule":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;
    .restart local v16    # "input":Ljava/lang/String;
    .restart local v18    # "lastChar":C
    const/4 v6, 0x1

    goto/16 :goto_3

    .line 494
    .end local v16    # "input":Ljava/lang/String;
    .end local v18    # "lastChar":C
    .restart local v0    # "lastChar":C
    .restart local v1    # "input":Ljava/lang/String;
    :cond_10
    move/from16 v18, v0

    move-object/from16 v16, v1

    .line 528
    .end local v0    # "lastChar":C
    .end local v1    # "input":Ljava/lang/String;
    .restart local v16    # "input":Ljava/lang/String;
    .restart local v18    # "lastChar":C
    :goto_c
    move v0, v4

    .line 477
    .end local v4    # "ch":C
    .end local v5    # "inputContext":Ljava/lang/String;
    .end local v7    # "rules":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Rule;>;"
    .end local v8    # "nextBranches":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;>;"
    .end local v18    # "lastChar":C
    .restart local v0    # "lastChar":C
    :goto_d
    const/4 v1, 0x1

    add-int/2addr v3, v1

    move-object/from16 v1, v16

    goto/16 :goto_0

    .end local v16    # "input":Ljava/lang/String;
    .restart local v1    # "input":Ljava/lang/String;
    :cond_11
    move/from16 v18, v0

    move-object/from16 v16, v1

    .line 531
    .end local v0    # "lastChar":C
    .end local v1    # "input":Ljava/lang/String;
    .end local v3    # "index":I
    .restart local v16    # "input":Ljava/lang/String;
    .restart local v18    # "lastChar":C
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 532
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 533
    .local v1, "index":I
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;

    .line 534
    .local v4, "branch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    invoke-virtual {v4}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->finish()V

    .line 535
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "index":I
    .local v5, "index":I
    invoke-virtual {v4}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    .line 536
    .end local v4    # "branch":Lorg/apache/commons/codec/language/DaitchMokotoffSoundex$Branch;
    move v1, v5

    goto :goto_e

    .line 538
    .end local v5    # "index":I
    .restart local v1    # "index":I
    :cond_12
    return-object v0
.end method

.method private static stripQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 312
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 316
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 320
    :cond_1
    return-object p0
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

    .line 394
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 398
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 395
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to DaitchMokotoffSoundex encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .line 414
    if-nez p1, :cond_0

    .line 415
    const/4 v0, 0x0

    return-object v0

    .line 417
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->soundex(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public soundex(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "source"    # Ljava/lang/String;

    .line 444
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/language/DaitchMokotoffSoundex;->soundex(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "branches":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 447
    .local v2, "index":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 448
    .local v5, "branch":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    add-int/lit8 v2, v2, 0x1

    array-length v6, v0

    if-ge v2, v6, :cond_0

    .line 450
    const/16 v6, 0x7c

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 447
    .end local v5    # "branch":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 453
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
