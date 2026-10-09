.class abstract Lorg/apache/commons/lang3/time/AbstractFormatCache;
.super Ljava/lang/Object;
.source "AbstractFormatCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/text/Format;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final NONE:I = -0x1

.field private static final cDateTimeInstanceCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cInstanceCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;",
            "TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/time/AbstractFormatCache;->cDateTimeInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 39
    .local p0, "this":Lorg/apache/commons/lang3/time/AbstractFormatCache;, "Lorg/apache/commons/lang3/time/AbstractFormatCache<TF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/lang3/time/AbstractFormatCache;->cInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .locals 2
    .param p1, "dateStyle"    # Ljava/lang/Integer;
    .param p2, "timeStyle"    # Ljava/lang/Integer;
    .param p3, "timeZone"    # Ljava/util/TimeZone;
    .param p4, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    .line 190
    .local p0, "this":Lorg/apache/commons/lang3/time/AbstractFormatCache;, "Lorg/apache/commons/lang3/time/AbstractFormatCache<TF;>;"
    invoke-static {p4}, Lorg/apache/commons/lang3/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object p4

    .line 191
    invoke-static {p1, p2, p4}, Lorg/apache/commons/lang3/time/AbstractFormatCache;->getPatternForStyle(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p0, v0, p3, p4}, Lorg/apache/commons/lang3/time/AbstractFormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v1

    return-object v1
.end method

.method static getPatternForStyle(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p0, "dateStyle"    # Ljava/lang/Integer;
    .param p1, "timeStyle"    # Ljava/lang/Integer;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 106
    invoke-static {p2}, Lorg/apache/commons/lang3/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    .line 107
    .local v0, "safeLocale":Ljava/util/Locale;
    new-instance v1, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;-><init>([Ljava/lang/Object;)V

    .line 108
    .local v1, "key":Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;
    sget-object v2, Lorg/apache/commons/lang3/time/AbstractFormatCache;->cDateTimeInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Lorg/apache/commons/lang3/time/AbstractFormatCache$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, v0}, Lorg/apache/commons/lang3/time/AbstractFormatCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Locale;)V

    invoke-interface {v2, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method static synthetic lambda$getPatternForStyle$0(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Locale;Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;)Ljava/lang/String;
    .locals 4
    .param p0, "dateStyle"    # Ljava/lang/Integer;
    .param p1, "timeStyle"    # Ljava/lang/Integer;
    .param p2, "safeLocale"    # Ljava/util/Locale;
    .param p3, "k"    # Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;

    .line 111
    if-nez p0, :cond_0

    .line 112
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p2}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .local v0, "formatter":Ljava/text/DateFormat;
    goto :goto_0

    .line 119
    .end local v0    # "formatter":Ljava/text/DateFormat;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 113
    :cond_0
    if-nez p1, :cond_1

    .line 114
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p2}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0    # "formatter":Ljava/text/DateFormat;
    goto :goto_0

    .line 116
    .end local v0    # "formatter":Ljava/text/DateFormat;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1, p2}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 118
    .restart local v0    # "formatter":Ljava/text/DateFormat;
    :goto_0
    move-object v1, v0

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 120
    .local v0, "ex":Ljava/lang/ClassCastException;
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No date time pattern for locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected abstract createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation
.end method

.method getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .locals 2
    .param p1, "dateStyle"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lorg/apache/commons/lang3/time/AbstractFormatCache;, "Lorg/apache/commons/lang3/time/AbstractFormatCache<TF;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/apache/commons/lang3/time/AbstractFormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method

.method getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .locals 2
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I
    .param p3, "timeZone"    # Ljava/util/TimeZone;
    .param p4, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    .line 172
    .local p0, "this":Lorg/apache/commons/lang3/time/AbstractFormatCache;, "Lorg/apache/commons/lang3/time/AbstractFormatCache<TF;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3, p4}, Lorg/apache/commons/lang3/time/AbstractFormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Ljava/text/Format;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .line 202
    .local p0, "this":Lorg/apache/commons/lang3/time/AbstractFormatCache;, "Lorg/apache/commons/lang3/time/AbstractFormatCache<TF;>;"
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v2, v0, v1}, Lorg/apache/commons/lang3/time/AbstractFormatCache;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    .line 218
    .local p0, "this":Lorg/apache/commons/lang3/time/AbstractFormatCache;, "Lorg/apache/commons/lang3/time/AbstractFormatCache<TF;>;"
    const-string v0, "pattern"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    invoke-static {p2}, Lorg/apache/commons/lang3/time/TimeZones;->toTimeZone(Ljava/util/TimeZone;)Ljava/util/TimeZone;

    move-result-object v0

    .line 220
    .local v0, "actualTimeZone":Ljava/util/TimeZone;
    invoke-static {p3}, Lorg/apache/commons/lang3/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    .line 221
    .local v1, "actualLocale":Ljava/util/Locale;
    new-instance v2, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;-><init>([Ljava/lang/Object;)V

    .line 222
    .local v2, "key":Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;
    iget-object v3, p0, Lorg/apache/commons/lang3/time/AbstractFormatCache;->cInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    new-instance v4, Lorg/apache/commons/lang3/time/AbstractFormatCache$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1, v0, v1}, Lorg/apache/commons/lang3/time/AbstractFormatCache$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/lang3/time/AbstractFormatCache;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    invoke-interface {v3, v2, v4}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/Format;

    return-object v3
.end method

.method getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .locals 2
    .param p1, "timeStyle"    # I
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    .line 239
    .local p0, "this":Lorg/apache/commons/lang3/time/AbstractFormatCache;, "Lorg/apache/commons/lang3/time/AbstractFormatCache<TF;>;"
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/apache/commons/lang3/time/AbstractFormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getInstance$1$org-apache-commons-lang3-time-AbstractFormatCache(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;)Ljava/text/Format;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "actualTimeZone"    # Ljava/util/TimeZone;
    .param p3, "actualLocale"    # Ljava/util/Locale;
    .param p4, "k"    # Lorg/apache/commons/lang3/time/AbstractFormatCache$ArrayKey;

    .line 222
    .local p0, "this":Lorg/apache/commons/lang3/time/AbstractFormatCache;, "Lorg/apache/commons/lang3/time/AbstractFormatCache<TF;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/time/AbstractFormatCache;->createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method
