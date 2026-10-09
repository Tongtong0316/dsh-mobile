.class public Lorg/apache/commons/lang3/CharSetUtils;
.super Ljava/lang/Object;
.source "CharSetUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    return-void
.end method

.method public static varargs containsAny(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .line 54
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v0

    .line 58
    .local v0, "chars":Lorg/apache/commons/lang3/CharSet;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-char v5, v2, v4

    .line 59
    .local v5, "c":C
    invoke-virtual {v0, v5}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 60
    const/4 v1, 0x1

    return v1

    .line 58
    .end local v5    # "c":C
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 63
    :cond_2
    return v1

    .line 55
    .end local v0    # "chars":Lorg/apache/commons/lang3/CharSet;
    :cond_3
    :goto_1
    return v1
.end method

.method public static varargs count(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .line 85
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v0

    .line 89
    .local v0, "chars":Lorg/apache/commons/lang3/CharSet;
    const/4 v2, 0x0

    .line 90
    .local v2, "count":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_2

    aget-char v5, v3, v1

    .line 91
    .local v5, "c":C
    invoke-virtual {v0, v5}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 90
    .end local v5    # "c":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_2
    return v2

    .line 86
    .end local v0    # "chars":Lorg/apache/commons/lang3/CharSet;
    .end local v2    # "count":I
    :cond_3
    :goto_1
    return v1
.end method

.method private static deepEmpty([Ljava/lang/String;)Z
    .locals 2
    .param p0, "strings"    # [Ljava/lang/String;

    .line 106
    invoke-static {p0}, Lorg/apache/commons/lang3/stream/Streams;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/lang3/CharSetUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/commons/lang3/CharSetUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static varargs delete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .line 128
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSetUtils;->modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 129
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static varargs keep(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .line 154
    if-nez p0, :cond_0

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/CharSetUtils;->modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 158
    :cond_2
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private static modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;
    .param p2, "expect"    # Z

    .line 172
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v0

    .line 173
    .local v0, "chars":Lorg/apache/commons/lang3/CharSet;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 174
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 175
    .local v2, "chrs":[C
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-char v5, v2, v4

    .line 176
    .local v5, "chr":C
    invoke-virtual {v0, v5}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v6

    if-ne v6, p2, :cond_0

    .line 177
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    .end local v5    # "chr":C
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static varargs squeeze(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "set"    # [Ljava/lang/String;

    .line 202
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 205
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;

    move-result-object v0

    .line 206
    .local v0, "chars":Lorg/apache/commons/lang3/CharSet;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 207
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 208
    .local v2, "chrs":[C
    array-length v3, v2

    .line 209
    .local v3, "sz":I
    const/4 v4, 0x0

    aget-char v4, v2, v4

    .line 211
    .local v4, "lastChar":C
    const/4 v5, 0x0

    .line 212
    .local v5, "inChars":Ljava/lang/Character;
    const/4 v6, 0x0

    .line 213
    .local v6, "notInChars":Ljava/lang/Character;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_5

    .line 215
    aget-char v8, v2, v7

    .line 216
    .local v8, "ch":C
    if-ne v8, v4, :cond_4

    .line 217
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v9

    if-ne v8, v9, :cond_1

    .line 218
    goto :goto_1

    .line 220
    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v9

    if-eq v8, v9, :cond_4

    .line 221
    :cond_2
    invoke-virtual {v0, v8}, Lorg/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 222
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 223
    goto :goto_1

    .line 225
    :cond_3
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    .line 228
    :cond_4
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    move v4, v8

    .line 214
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 231
    .end local v7    # "i":I
    .end local v8    # "ch":C
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 203
    .end local v0    # "chars":Lorg/apache/commons/lang3/CharSet;
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v2    # "chrs":[C
    .end local v3    # "sz":I
    .end local v4    # "lastChar":C
    .end local v5    # "inChars":Ljava/lang/Character;
    .end local v6    # "notInChars":Ljava/lang/Character;
    :cond_6
    :goto_2
    return-object p0
.end method
