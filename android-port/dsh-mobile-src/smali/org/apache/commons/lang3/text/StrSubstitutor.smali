.class public Lorg/apache/commons/lang3/text/StrSubstitutor;
.super Ljava/lang/Object;
.source "StrSubstitutor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_ESCAPE:C = '$'

.field public static final DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

.field public static final DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

.field public static final DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/lang3/text/StrMatcher;


# instance fields
.field private enableSubstitutionInVariables:Z

.field private escapeChar:C

.field private prefixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private preserveEscapes:Z

.field private suffixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private valueDelimiterMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

.field private variableResolver:Lorg/apache/commons/lang3/text/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/text/StrLookup<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 158
    const-string v0, "${"

    invoke-static {v0}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 162
    const-string v0, "}"

    invoke-static {v0}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 167
    const-string v0, ":-"

    invoke-static {v0}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/lang3/text/StrMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 266
    sget-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    sget-object v1, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    const/16 v2, 0x24

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;C)V

    .line 267
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 277
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    sget-object v2, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;C)V

    .line 278
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 290
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v0

    const/16 v1, 0x24

    invoke-direct {p0, v0, p2, p3, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    .line 291
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .line 305
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    .line 306
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .locals 6
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C
    .param p5, "valueDelimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 322
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V

    .line 323
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup<",
            "*>;)V"
        }
    .end annotation

    .line 331
    .local p1, "variableResolver":Lorg/apache/commons/lang3/text/StrLookup;, "Lorg/apache/commons/lang3/text/StrLookup<*>;"
    sget-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    sget-object v1, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang3/text/StrMatcher;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;C)V

    .line 332
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    .line 344
    .local p1, "variableResolver":Lorg/apache/commons/lang3/text/StrLookup;, "Lorg/apache/commons/lang3/text/StrLookup<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/lang3/text/StrLookup;)V

    .line 346
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 347
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 348
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setEscapeChar(C)V

    .line 349
    sget-object v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/lang3/text/StrMatcher;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 350
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;CLjava/lang/String;)V
    .locals 0
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C
    .param p5, "valueDelimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 364
    .local p1, "variableResolver":Lorg/apache/commons/lang3/text/StrLookup;, "Lorg/apache/commons/lang3/text/StrLookup<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/lang3/text/StrLookup;)V

    .line 366
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 367
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 368
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setEscapeChar(C)V

    .line 369
    invoke-virtual {p0, p5}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiter(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 370
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;C)V
    .locals 6
    .param p2, "prefixMatcher"    # Lorg/apache/commons/lang3/text/StrMatcher;
    .param p3, "suffixMatcher"    # Lorg/apache/commons/lang3/text/StrMatcher;
    .param p4, "escape"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup<",
            "*>;",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            "C)V"
        }
    .end annotation

    .line 384
    .local p1, "variableResolver":Lorg/apache/commons/lang3/text/StrLookup;, "Lorg/apache/commons/lang3/text/StrLookup<*>;"
    sget-object v5, Lorg/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_VALUE_DELIMITER:Lorg/apache/commons/lang3/text/StrMatcher;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;CLorg/apache/commons/lang3/text/StrMatcher;)V

    .line 385
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/text/StrLookup;Lorg/apache/commons/lang3/text/StrMatcher;Lorg/apache/commons/lang3/text/StrMatcher;CLorg/apache/commons/lang3/text/StrMatcher;)V
    .locals 0
    .param p2, "prefixMatcher"    # Lorg/apache/commons/lang3/text/StrMatcher;
    .param p3, "suffixMatcher"    # Lorg/apache/commons/lang3/text/StrMatcher;
    .param p4, "escape"    # C
    .param p5, "valueDelimiterMatcher"    # Lorg/apache/commons/lang3/text/StrMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup<",
            "*>;",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            "C",
            "Lorg/apache/commons/lang3/text/StrMatcher;",
            ")V"
        }
    .end annotation

    .line 400
    .local p1, "variableResolver":Lorg/apache/commons/lang3/text/StrLookup;, "Lorg/apache/commons/lang3/text/StrLookup<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/lang3/text/StrLookup;)V

    .line 402
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 403
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 404
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setEscapeChar(C)V

    .line 405
    invoke-virtual {p0, p5}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 406
    return-void
.end method

.method private checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "varName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 415
    .local p2, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    return-void

    .line 418
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    .line 419
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const-string v1, "Infinite loop in property interpolation of "

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 420
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 421
    const-string v1, ": "

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 422
    const-string v1, "->"

    invoke-virtual {v0, p2, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 423
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 179
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    new-instance v0, Lorg/apache/commons/lang3/text/StrSubstitutor;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/Object;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 195
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    new-instance v0, Lorg/apache/commons/lang3/text/StrSubstitutor;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Properties;)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "valueProperties"    # Ljava/util/Properties;

    .line 206
    if-nez p1, :cond_0

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 209
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v0, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 211
    .local v1, "propNames":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "propName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "propValue":Ljava/lang/String;
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .end local v2    # "propName":Ljava/lang/String;
    .end local v3    # "propValue":Ljava/lang/String;
    goto :goto_0

    .line 216
    :cond_1
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static replaceSystemProperties(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/Object;

    .line 226
    new-instance v0, Lorg/apache/commons/lang3/text/StrSubstitutor;

    invoke-static {}, Lorg/apache/commons/lang3/text/StrLookup;->systemPropertiesLookup()Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang3/text/StrLookup;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private substitute(Lorg/apache/commons/lang3/text/StrBuilder;IILjava/util/List;)I
    .locals 31
    .param p1, "buf"    # Lorg/apache/commons/lang3/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrBuilder;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1113
    .local p4, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getVariablePrefixMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v4

    .line 1114
    .local v4, "pfxMatcher":Lorg/apache/commons/lang3/text/StrMatcher;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getVariableSuffixMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v5

    .line 1115
    .local v5, "suffMatcher":Lorg/apache/commons/lang3/text/StrMatcher;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getEscapeChar()C

    move-result v6

    .line 1116
    .local v6, "escape":C
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getValueDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v7

    .line 1117
    .local v7, "valueDelimMatcher":Lorg/apache/commons/lang3/text/StrMatcher;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v8

    .line 1119
    .local v8, "substitutionInVariablesEnabled":Z
    if-nez p4, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 1120
    .local v11, "top":Z
    :goto_0
    const/4 v12, 0x0

    .line 1121
    .local v12, "altered":Z
    const/4 v13, 0x0

    .line 1122
    .local v13, "lengthChange":I
    iget-object v14, v1, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 1123
    .local v14, "chars":[C
    add-int v15, v2, v3

    .line 1124
    .local v15, "bufEnd":I
    move/from16 v16, p2

    move v10, v15

    move/from16 v9, v16

    move-object v15, v14

    move v14, v13

    move v13, v12

    move-object/from16 v12, p4

    .line 1125
    .end local p4    # "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "pos":I
    .local v10, "bufEnd":I
    .local v12, "priorVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "altered":Z
    .local v14, "lengthChange":I
    .local v15, "chars":[C
    :goto_1
    if-ge v9, v10, :cond_11

    .line 1126
    invoke-virtual {v4, v15, v9, v2, v10}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v18

    .line 1128
    .local v18, "startMatchLen":I
    if-nez v18, :cond_1

    .line 1129
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v24, v11

    const/16 v16, 0x1

    goto/16 :goto_8

    .line 1131
    :cond_1
    if-le v9, v2, :cond_3

    add-int/lit8 v19, v9, -0x1

    move/from16 p4, v13

    .end local v13    # "altered":Z
    .local p4, "altered":Z
    aget-char v13, v15, v19

    if-ne v13, v6, :cond_4

    .line 1133
    iget-boolean v13, v0, Lorg/apache/commons/lang3/text/StrSubstitutor;->preserveEscapes:Z

    if-eqz v13, :cond_2

    .line 1134
    add-int/lit8 v9, v9, 0x1

    .line 1135
    move/from16 v13, p4

    goto :goto_1

    .line 1137
    :cond_2
    add-int/lit8 v13, v9, -0x1

    invoke-virtual {v1, v13}, Lorg/apache/commons/lang3/text/StrBuilder;->deleteCharAt(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1138
    iget-object v13, v1, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 1139
    .end local v15    # "chars":[C
    .local v13, "chars":[C
    add-int/lit8 v14, v14, -0x1

    .line 1140
    const/4 v15, 0x1

    .line 1141
    .end local p4    # "altered":Z
    .local v15, "altered":Z
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v24, v11

    const/16 v16, 0x1

    move/from16 v30, v15

    move-object v15, v13

    move/from16 v13, v30

    goto/16 :goto_8

    .line 1131
    .local v13, "altered":Z
    .local v15, "chars":[C
    :cond_3
    move/from16 p4, v13

    .line 1144
    .end local v13    # "altered":Z
    .restart local p4    # "altered":Z
    :cond_4
    move v13, v9

    .line 1145
    .local v13, "startPos":I
    add-int v9, v9, v18

    .line 1147
    const/16 v19, 0x0

    .line 1148
    .local v19, "nestedVarCount":I
    :goto_2
    if-ge v9, v10, :cond_10

    .line 1149
    if-eqz v8, :cond_5

    .line 1150
    invoke-virtual {v4, v15, v9, v2, v10}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v20

    move/from16 v21, v20

    .local v21, "endMatchLen":I
    if-eqz v20, :cond_5

    .line 1153
    add-int/lit8 v19, v19, 0x1

    .line 1154
    add-int v9, v9, v21

    .line 1155
    goto :goto_2

    .line 1158
    .end local v21    # "endMatchLen":I
    :cond_5
    invoke-virtual {v5, v15, v9, v2, v10}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v20

    .line 1160
    .local v20, "endMatchLen":I
    if-nez v20, :cond_6

    .line 1161
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1164
    :cond_6
    if-nez v19, :cond_f

    .line 1165
    move-object/from16 v21, v5

    .end local v5    # "suffMatcher":Lorg/apache/commons/lang3/text/StrMatcher;
    .local v21, "suffMatcher":Lorg/apache/commons/lang3/text/StrMatcher;
    new-instance v5, Ljava/lang/String;

    move/from16 v22, v6

    .end local v6    # "escape":C
    .local v22, "escape":C
    add-int v6, v13, v18

    sub-int v23, v9, v13

    move/from16 v24, v11

    .end local v11    # "top":Z
    .local v24, "top":Z
    sub-int v11, v23, v18

    invoke-direct {v5, v15, v6, v11}, Ljava/lang/String;-><init>([CII)V

    .line 1168
    .local v5, "varNameExpr":Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 1169
    new-instance v6, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v6, v5}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(Ljava/lang/String;)V

    .line 1170
    .local v6, "bufName":Lorg/apache/commons/lang3/text/StrBuilder;
    invoke-virtual {v6}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v11

    move-object/from16 v23, v5

    const/4 v5, 0x0

    .end local v5    # "varNameExpr":Ljava/lang/String;
    .local v23, "varNameExpr":Ljava/lang/String;
    invoke-virtual {v0, v6, v5, v11}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 1171
    invoke-virtual {v6}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v23    # "varNameExpr":Ljava/lang/String;
    .restart local v5    # "varNameExpr":Ljava/lang/String;
    goto :goto_3

    .line 1168
    .end local v6    # "bufName":Lorg/apache/commons/lang3/text/StrBuilder;
    :cond_7
    move-object/from16 v23, v5

    .line 1173
    :goto_3
    add-int v9, v9, v20

    .line 1174
    move v6, v9

    .line 1176
    .local v6, "endPos":I
    move-object v11, v5

    .line 1177
    .local v11, "varName":Ljava/lang/String;
    const/16 v23, 0x0

    .line 1179
    .local v23, "varDefaultValue":Ljava/lang/String;
    if-eqz v7, :cond_a

    .line 1180
    move-object/from16 v25, v11

    .end local v11    # "varName":Ljava/lang/String;
    .local v25, "varName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    .line 1182
    .local v11, "varNameExprChars":[C
    const/16 v26, 0x0

    move/from16 v27, v14

    move/from16 v14, v26

    .local v14, "i":I
    .local v27, "lengthChange":I
    :goto_4
    move/from16 v26, v10

    .end local v10    # "bufEnd":I
    .local v26, "bufEnd":I
    array-length v10, v11

    if-ge v14, v10, :cond_b

    .line 1184
    if-nez v8, :cond_8

    array-length v10, v11

    .line 1185
    invoke-virtual {v4, v11, v14, v14, v10}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v10

    if-eqz v10, :cond_8

    .line 1186
    goto :goto_5

    .line 1188
    :cond_8
    invoke-virtual {v7, v11, v14}, Lorg/apache/commons/lang3/text/StrMatcher;->isMatch([CI)I

    move-result v10

    move/from16 v28, v10

    .local v28, "valueDelimiterMatchLen":I
    if-eqz v10, :cond_9

    .line 1189
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1190
    .end local v25    # "varName":Ljava/lang/String;
    .local v17, "varName":Ljava/lang/String;
    add-int v10, v14, v28

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 1191
    move-object/from16 v11, v17

    goto :goto_6

    .line 1182
    .end local v17    # "varName":Ljava/lang/String;
    .restart local v25    # "varName":Ljava/lang/String;
    :cond_9
    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v26

    goto :goto_4

    .line 1179
    .end local v25    # "varName":Ljava/lang/String;
    .end local v26    # "bufEnd":I
    .end local v27    # "lengthChange":I
    .end local v28    # "valueDelimiterMatchLen":I
    .restart local v10    # "bufEnd":I
    .local v11, "varName":Ljava/lang/String;
    .local v14, "lengthChange":I
    :cond_a
    move/from16 v26, v10

    move-object/from16 v25, v11

    move/from16 v27, v14

    .line 1197
    .end local v10    # "bufEnd":I
    .end local v11    # "varName":Ljava/lang/String;
    .end local v14    # "lengthChange":I
    .restart local v25    # "varName":Ljava/lang/String;
    .restart local v26    # "bufEnd":I
    .restart local v27    # "lengthChange":I
    :cond_b
    :goto_5
    move-object/from16 v11, v25

    .end local v25    # "varName":Ljava/lang/String;
    .restart local v11    # "varName":Ljava/lang/String;
    :goto_6
    if-nez v12, :cond_c

    .line 1198
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v10

    .line 1199
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v15, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    :cond_c
    invoke-direct {v0, v11, v12}, Lorg/apache/commons/lang3/text/StrSubstitutor;->checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V

    .line 1205
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1208
    invoke-virtual {v0, v11, v1, v13, v6}, Lorg/apache/commons/lang3/text/StrSubstitutor;->resolveVariable(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrBuilder;II)Ljava/lang/String;

    move-result-object v10

    .line 1210
    .local v10, "varValue":Ljava/lang/String;
    if-nez v10, :cond_d

    .line 1211
    move-object/from16 v10, v23

    .line 1213
    :cond_d
    if-eqz v10, :cond_e

    .line 1215
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    .line 1216
    .local v14, "varLen":I
    invoke-virtual {v1, v13, v6, v10}, Lorg/apache/commons/lang3/text/StrBuilder;->replace(IILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1217
    const/16 v17, 0x1

    .line 1218
    .end local p4    # "altered":Z
    .local v17, "altered":Z
    invoke-direct {v0, v1, v13, v14, v12}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;IILjava/util/List;)I

    move-result v25

    .line 1220
    .local v25, "change":I
    add-int v28, v25, v14

    sub-int v29, v6, v13

    sub-int v28, v28, v29

    .line 1222
    .end local v25    # "change":I
    .local v28, "change":I
    add-int v9, v9, v28

    .line 1223
    add-int v25, v26, v28

    .line 1224
    .end local v26    # "bufEnd":I
    .local v25, "bufEnd":I
    add-int v26, v27, v28

    .line 1225
    .end local v27    # "lengthChange":I
    .local v26, "lengthChange":I
    iget-object v15, v1, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    move/from16 v14, v26

    goto :goto_7

    .line 1213
    .end local v14    # "varLen":I
    .end local v17    # "altered":Z
    .end local v25    # "bufEnd":I
    .end local v28    # "change":I
    .local v26, "bufEnd":I
    .restart local v27    # "lengthChange":I
    .restart local p4    # "altered":Z
    :cond_e
    move/from16 v17, p4

    move/from16 v25, v26

    move/from16 v14, v27

    .line 1230
    .end local v26    # "bufEnd":I
    .end local v27    # "lengthChange":I
    .end local p4    # "altered":Z
    .local v14, "lengthChange":I
    .restart local v17    # "altered":Z
    .restart local v25    # "bufEnd":I
    :goto_7
    nop

    .line 1231
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v26

    const/16 v16, 0x1

    add-int/lit8 v0, v26, -0x1

    invoke-interface {v12, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1232
    move/from16 v13, v17

    move/from16 v10, v25

    goto :goto_8

    .line 1234
    .end local v17    # "altered":Z
    .end local v21    # "suffMatcher":Lorg/apache/commons/lang3/text/StrMatcher;
    .end local v22    # "escape":C
    .end local v23    # "varDefaultValue":Ljava/lang/String;
    .end local v24    # "top":Z
    .end local v25    # "bufEnd":I
    .local v5, "suffMatcher":Lorg/apache/commons/lang3/text/StrMatcher;
    .local v6, "escape":C
    .local v10, "bufEnd":I
    .local v11, "top":Z
    .restart local p4    # "altered":Z
    :cond_f
    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v26, v10

    move/from16 v24, v11

    move/from16 v27, v14

    const/16 v16, 0x1

    .end local v5    # "suffMatcher":Lorg/apache/commons/lang3/text/StrMatcher;
    .end local v6    # "escape":C
    .end local v10    # "bufEnd":I
    .end local v11    # "top":Z
    .end local v14    # "lengthChange":I
    .restart local v21    # "suffMatcher":Lorg/apache/commons/lang3/text/StrMatcher;
    .restart local v22    # "escape":C
    .restart local v24    # "top":Z
    .restart local v26    # "bufEnd":I
    .restart local v27    # "lengthChange":I
    add-int/lit8 v19, v19, -0x1

    .line 1235
    add-int v9, v9, v20

    move-object/from16 v0, p0

    goto/16 :goto_2

    .line 1148
    .end local v20    # "endMatchLen":I
    .end local v21    # "suffMatcher":Lorg/apache/commons/lang3/text/StrMatcher;
    .end local v22    # "escape":C
    .end local v24    # "top":Z
    .end local v26    # "bufEnd":I
    .end local v27    # "lengthChange":I
    .restart local v5    # "suffMatcher":Lorg/apache/commons/lang3/text/StrMatcher;
    .restart local v6    # "escape":C
    .restart local v10    # "bufEnd":I
    .restart local v11    # "top":Z
    .restart local v14    # "lengthChange":I
    :cond_10
    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v26, v10

    move/from16 v24, v11

    move/from16 v27, v14

    const/16 v16, 0x1

    .end local v5    # "suffMatcher":Lorg/apache/commons/lang3/text/StrMatcher;
    .end local v6    # "escape":C
    .end local v10    # "bufEnd":I
    .end local v11    # "top":Z
    .end local v14    # "lengthChange":I
    .restart local v21    # "suffMatcher":Lorg/apache/commons/lang3/text/StrMatcher;
    .restart local v22    # "escape":C
    .restart local v24    # "top":Z
    .restart local v26    # "bufEnd":I
    .restart local v27    # "lengthChange":I
    move/from16 v13, p4

    .line 1239
    .end local v18    # "startMatchLen":I
    .end local v19    # "nestedVarCount":I
    .end local v26    # "bufEnd":I
    .end local v27    # "lengthChange":I
    .end local p4    # "altered":Z
    .restart local v10    # "bufEnd":I
    .local v13, "altered":Z
    .restart local v14    # "lengthChange":I
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v5, v21

    move/from16 v6, v22

    move/from16 v11, v24

    goto/16 :goto_1

    .line 1240
    .end local v21    # "suffMatcher":Lorg/apache/commons/lang3/text/StrMatcher;
    .end local v22    # "escape":C
    .end local v24    # "top":Z
    .restart local v5    # "suffMatcher":Lorg/apache/commons/lang3/text/StrMatcher;
    .restart local v6    # "escape":C
    .restart local v11    # "top":Z
    :cond_11
    move-object/from16 v21, v5

    move/from16 v22, v6

    move/from16 v26, v10

    move/from16 v24, v11

    move/from16 p4, v13

    move/from16 v27, v14

    .end local v5    # "suffMatcher":Lorg/apache/commons/lang3/text/StrMatcher;
    .end local v6    # "escape":C
    .end local v10    # "bufEnd":I
    .end local v11    # "top":Z
    .end local v13    # "altered":Z
    .end local v14    # "lengthChange":I
    .restart local v21    # "suffMatcher":Lorg/apache/commons/lang3/text/StrMatcher;
    .restart local v22    # "escape":C
    .restart local v24    # "top":Z
    .restart local v26    # "bufEnd":I
    .restart local v27    # "lengthChange":I
    .restart local p4    # "altered":Z
    if-eqz v24, :cond_12

    .line 1241
    return p4

    .line 1243
    :cond_12
    return v27
.end method


# virtual methods
.method public getEscapeChar()C
    .locals 1

    .line 432
    iget-char v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->escapeChar:C

    return v0
.end method

.method public getValueDelimiterMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .line 450
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->valueDelimiterMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getVariablePrefixMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .line 464
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->prefixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getVariableResolver()Lorg/apache/commons/lang3/text/StrLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/text/StrLookup<",
            "*>;"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->variableResolver:Lorg/apache/commons/lang3/text/StrLookup;

    return-object v0
.end method

.method public getVariableSuffixMatcher()Lorg/apache/commons/lang3/text/StrMatcher;
    .locals 1

    .line 487
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->suffixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public isEnableSubstitutionInVariables()Z
    .locals 1

    .line 497
    iget-boolean v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    return v0
.end method

.method public isPreserveEscapes()Z
    .locals 1

    .line 508
    iget-boolean v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->preserveEscapes:Z

    return v0
.end method

.method public replace(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;

    .line 561
    if-nez p1, :cond_0

    .line 562
    const/4 v0, 0x0

    return-object v0

    .line 564
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 583
    if-nez p1, :cond_0

    .line 584
    const/4 v0, 0x0

    return-object v0

    .line 586
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/CharSequence;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 587
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 588
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;

    .line 600
    if-nez p1, :cond_0

    .line 601
    const/4 v0, 0x0

    return-object v0

    .line 603
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 604
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 605
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/String;

    .line 656
    if-nez p1, :cond_0

    .line 657
    const/4 v0, 0x0

    return-object v0

    .line 659
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(Ljava/lang/String;)V

    .line 660
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 661
    return-object p1

    .line 663
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 680
    if-nez p1, :cond_0

    .line 681
    const/4 v0, 0x0

    return-object v0

    .line 683
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 684
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 685
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 687
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/StringBuffer;

    .line 699
    if-nez p1, :cond_0

    .line 700
    const/4 v0, 0x0

    return-object v0

    .line 702
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 703
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 704
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 722
    if-nez p1, :cond_0

    .line 723
    const/4 v0, 0x0

    return-object v0

    .line 725
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 726
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 727
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Lorg/apache/commons/lang3/text/StrBuilder;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Lorg/apache/commons/lang3/text/StrBuilder;

    .line 617
    if-nez p1, :cond_0

    .line 618
    const/4 v0, 0x0

    return-object v0

    .line 620
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Lorg/apache/commons/lang3/text/StrBuilder;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 621
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 622
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Lorg/apache/commons/lang3/text/StrBuilder;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Lorg/apache/commons/lang3/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 640
    if-nez p1, :cond_0

    .line 641
    const/4 v0, 0x0

    return-object v0

    .line 643
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Lorg/apache/commons/lang3/text/StrBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 644
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 645
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace([C)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # [C

    .line 520
    if-nez p1, :cond_0

    .line 521
    const/4 v0, 0x0

    return-object v0

    .line 523
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    array-length v1, p1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append([C)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 524
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 525
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace([CII)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 543
    if-nez p1, :cond_0

    .line 544
    const/4 v0, 0x0

    return-object v0

    .line 546
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append([CII)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    .line 547
    .local v0, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    .line 548
    invoke-virtual {v0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replaceIn(Ljava/lang/StringBuffer;)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/StringBuffer;

    .line 773
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 774
    return v0

    .line 776
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replaceIn(Ljava/lang/StringBuffer;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;II)Z
    .locals 3
    .param p1, "source"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 794
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 795
    return v0

    .line 797
    :cond_0
    new-instance v1, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v1, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v1

    .line 798
    .local v1, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    invoke-virtual {p0, v1, v0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 799
    return v0

    .line 801
    :cond_1
    add-int v0, p2, p3

    invoke-virtual {v1}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 802
    const/4 v0, 0x1

    return v0
.end method

.method public replaceIn(Ljava/lang/StringBuilder;)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/StringBuilder;

    .line 815
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 816
    return v0

    .line 818
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->replaceIn(Ljava/lang/StringBuilder;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Ljava/lang/StringBuilder;II)Z
    .locals 3
    .param p1, "source"    # Ljava/lang/StringBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 837
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 838
    return v0

    .line 840
    :cond_0
    new-instance v1, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v1, p3}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v1

    .line 841
    .local v1, "buf":Lorg/apache/commons/lang3/text/StrBuilder;
    invoke-virtual {p0, v1, v0, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 842
    return v0

    .line 844
    :cond_1
    add-int v0, p2, p3

    invoke-virtual {v1}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    const/4 v0, 0x1

    return v0
.end method

.method public replaceIn(Lorg/apache/commons/lang3/text/StrBuilder;)Z
    .locals 2
    .param p1, "source"    # Lorg/apache/commons/lang3/text/StrBuilder;

    .line 738
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 739
    return v0

    .line 741
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Lorg/apache/commons/lang3/text/StrBuilder;II)Z
    .locals 1
    .param p1, "source"    # Lorg/apache/commons/lang3/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 758
    if-nez p1, :cond_0

    .line 759
    const/4 v0, 0x0

    return v0

    .line 761
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v0

    return v0
.end method

.method protected resolveVariable(Ljava/lang/String;Lorg/apache/commons/lang3/text/StrBuilder;II)Ljava/lang/String;
    .locals 2
    .param p1, "variableName"    # Ljava/lang/String;
    .param p2, "buf"    # Lorg/apache/commons/lang3/text/StrBuilder;
    .param p3, "startPos"    # I
    .param p4, "endPos"    # I

    .line 868
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->getVariableResolver()Lorg/apache/commons/lang3/text/StrLookup;

    move-result-object v0

    .line 869
    .local v0, "resolver":Lorg/apache/commons/lang3/text/StrLookup;, "Lorg/apache/commons/lang3/text/StrLookup<*>;"
    if-nez v0, :cond_0

    .line 870
    const/4 v1, 0x0

    return-object v1

    .line 872
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/text/StrLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setEnableSubstitutionInVariables(Z)V
    .locals 0
    .param p1, "enableSubstitutionInVariables"    # Z

    .line 886
    iput-boolean p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    .line 887
    return-void
.end method

.method public setEscapeChar(C)V
    .locals 0
    .param p1, "escapeCharacter"    # C

    .line 897
    iput-char p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->escapeChar:C

    .line 898
    return-void
.end method

.method public setPreserveEscapes(Z)V
    .locals 0
    .param p1, "preserveEscapes"    # Z

    .line 913
    iput-boolean p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->preserveEscapes:Z

    .line 914
    return-void
.end method

.method public setValueDelimiter(C)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 1
    .param p1, "valueDelimiter"    # C

    .line 929
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setValueDelimiter(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 1
    .param p1, "valueDelimiter"    # Ljava/lang/String;

    .line 949
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    .line 951
    return-object p0

    .line 953
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setValueDelimiterMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 0
    .param p1, "valueDelimiterMatcher"    # Lorg/apache/commons/lang3/text/StrMatcher;

    .line 973
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->valueDelimiterMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 974
    return-object p0
.end method

.method public setVariablePrefix(C)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 1
    .param p1, "prefix"    # C

    .line 989
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .line 1004
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariablePrefixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 1
    .param p1, "prefixMatcher"    # Lorg/apache/commons/lang3/text/StrMatcher;

    .line 1020
    const-string v0, "prefixMatcher"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/text/StrMatcher;

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->prefixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 1021
    return-object p0
.end method

.method public setVariableResolver(Lorg/apache/commons/lang3/text/StrLookup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/text/StrLookup<",
            "*>;)V"
        }
    .end annotation

    .line 1030
    .local p1, "variableResolver":Lorg/apache/commons/lang3/text/StrLookup;, "Lorg/apache/commons/lang3/text/StrLookup<*>;"
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->variableResolver:Lorg/apache/commons/lang3/text/StrLookup;

    .line 1031
    return-void
.end method

.method public setVariableSuffix(C)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 1
    .param p1, "suffix"    # C

    .line 1045
    invoke-static {p1}, Lorg/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 1
    .param p1, "suffix"    # Ljava/lang/String;

    .line 1060
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariableSuffixMatcher(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrSubstitutor;
    .locals 1
    .param p1, "suffixMatcher"    # Lorg/apache/commons/lang3/text/StrMatcher;

    .line 1076
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/text/StrMatcher;

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrSubstitutor;->suffixMatcher:Lorg/apache/commons/lang3/text/StrMatcher;

    .line 1077
    return-object p0
.end method

.method protected substitute(Lorg/apache/commons/lang3/text/StrBuilder;II)Z
    .locals 1
    .param p1, "buf"    # Lorg/apache/commons/lang3/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1097
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang3/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang3/text/StrBuilder;IILjava/util/List;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
