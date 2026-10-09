.class Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;
.super Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeZoneStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
    }
.end annotation


# static fields
.field private static final GMT_OPTION:Ljava/lang/String; = "GMT[+-]\\d{1,2}:\\d{2}"

.field private static final ID:I = 0x0

.field private static final RFC_822_TIME_ZONE:Ljava/lang/String; = "[+-]\\d{4}"


# instance fields
.field private final locale:Ljava/util/Locale;

.field private final tzNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Locale;)V
    .locals 17
    .param p1, "locale"    # Ljava/util/Locale;

    .line 514
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/apache/commons/lang3/time/FastDateParser$PatternStrategy;-><init>(Lorg/apache/commons/lang3/time/FastDateParser$1;)V

    .line 507
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    .line 515
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/lang3/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->locale:Ljava/util/Locale;

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "((?iu)[+-]\\d{4}|GMT[+-]\\d{1,2}:\\d{2}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    new-instance v3, Ljava/util/TreeSet;

    invoke-static {}, Lorg/apache/commons/lang3/time/FastDateParser;->access$600()Ljava/util/Comparator;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 524
    .local v3, "sorted":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v4

    invoke-virtual {v4}, Ljava/text/DateFormatSymbols;->getZoneStrings()[[Ljava/lang/String;

    move-result-object v4

    .line 525
    .local v4, "zones":[[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const-string v8, "GMT"

    if-ge v7, v5, :cond_3

    aget-object v9, v4, v7

    .line 527
    .local v9, "zoneNames":[Ljava/lang/String;
    aget-object v10, v9, v6

    .line 528
    .local v10, "tzId":Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 529
    goto :goto_3

    .line 531
    :cond_0
    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 534
    .local v8, "tz":Ljava/util/TimeZone;
    new-instance v11, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;

    invoke-direct {v11, v8, v6}, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;-><init>(Ljava/util/TimeZone;Z)V

    .line 535
    .local v11, "standard":Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
    move-object v12, v11

    .line 536
    .local v12, "tzInfo":Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_1
    array-length v14, v9

    if-ge v13, v14, :cond_2

    .line 537
    packed-switch v13, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 543
    :pswitch_1
    move-object v12, v11

    .line 544
    goto :goto_2

    .line 540
    :pswitch_2
    new-instance v14, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;

    const/4 v15, 0x1

    invoke-direct {v14, v8, v15}, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;-><init>(Ljava/util/TimeZone;Z)V

    move-object v12, v14

    .line 541
    nop

    .line 548
    :goto_2
    aget-object v14, v9, v13

    .line 549
    .local v14, "zoneName":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 550
    invoke-virtual {v14, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    .line 553
    .local v15, "key":Ljava/lang/String;
    invoke-interface {v3, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 554
    iget-object v6, v0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    invoke-interface {v6, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .end local v14    # "zoneName":Ljava/lang/String;
    .end local v15    # "key":Ljava/lang/String;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    goto :goto_1

    .line 525
    .end local v8    # "tz":Ljava/util/TimeZone;
    .end local v9    # "zoneNames":[Ljava/lang/String;
    .end local v10    # "tzId":Ljava/lang/String;
    .end local v11    # "standard":Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
    .end local v12    # "tzInfo":Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
    .end local v13    # "i":I
    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_0

    .line 561
    :cond_3
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_6

    aget-object v9, v5, v7

    .line 562
    .local v9, "tzId":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 563
    goto :goto_5

    .line 565
    :cond_4
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    .line 566
    .local v10, "tz":Ljava/util/TimeZone;
    invoke-virtual {v10, v1}, Ljava/util/TimeZone;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 567
    .local v11, "zoneName":Ljava/lang/String;
    invoke-virtual {v11, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 568
    .local v12, "key":Ljava/lang/String;
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 569
    iget-object v13, v0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    new-instance v14, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;

    invoke-virtual {v10}, Ljava/util/TimeZone;->observesDaylightTime()Z

    move-result v15

    invoke-direct {v14, v10, v15}, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;-><init>(Ljava/util/TimeZone;Z)V

    invoke-interface {v13, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    .end local v9    # "tzId":Ljava/lang/String;
    .end local v10    # "tz":Ljava/util/TimeZone;
    .end local v11    # "zoneName":Ljava/lang/String;
    .end local v12    # "key":Ljava/lang/String;
    :cond_5
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 575
    :cond_6
    new-instance v5, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v3, v5}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 576
    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {v0, v2}, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->createPattern(Ljava/lang/StringBuilder;)V

    .line 578
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic lambda$new$0(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "zoneName"    # Ljava/lang/String;

    .line 575
    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/time/FastDateParser;->access$700(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method setCalendar(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 6
    .param p1, "parser"    # Lorg/apache/commons/lang3/time/FastDateParser;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .param p3, "timeZone"    # Ljava/lang/String;

    .line 585
    invoke-static {p3}, Lorg/apache/commons/lang3/time/FastTimeZone;->getGmtTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 586
    .local v0, "tz":Ljava/util/TimeZone;
    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 589
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->locale:Ljava/util/Locale;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "lowerCase":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;

    .line 591
    .local v2, "tzInfo":Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
    if-nez v2, :cond_1

    .line 593
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;

    .line 595
    :cond_1
    const/16 v3, 0x10

    iget v4, v2, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;->dstOffset:I

    invoke-virtual {p2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 596
    iget-object v3, v2, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;->zone:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    const/16 v4, 0xf

    invoke-virtual {p2, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 598
    .end local v1    # "lowerCase":Ljava/lang/String;
    .end local v2    # "tzInfo":Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy$TzInfo;
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneStrategy [locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tzNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->tzNames:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDateParser$TimeZoneStrategy;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
