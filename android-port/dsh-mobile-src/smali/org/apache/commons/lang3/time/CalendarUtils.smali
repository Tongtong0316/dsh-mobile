.class public Lorg/apache/commons/lang3/time/CalendarUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# static fields
.field public static final INSTANCE:Lorg/apache/commons/lang3/time/CalendarUtils;


# instance fields
.field private final calendar:Ljava/util/Calendar;

.field private final locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Lorg/apache/commons/lang3/time/CalendarUtils;->getInstance()Lorg/apache/commons/lang3/time/CalendarUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/time/CalendarUtils;->INSTANCE:Lorg/apache/commons/lang3/time/CalendarUtils;

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;

    .line 72
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/time/CalendarUtils;-><init>(Ljava/util/Calendar;Ljava/util/Locale;)V

    .line 73
    return-void
.end method

.method constructor <init>(Ljava/util/Calendar;Ljava/util/Locale;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string v0, "calendar"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    .line 83
    const-string v0, "locale"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->locale:Ljava/util/Locale;

    .line 84
    return-void
.end method

.method public static getInstance()Lorg/apache/commons/lang3/time/CalendarUtils;
    .locals 2

    .line 48
    new-instance v0, Lorg/apache/commons/lang3/time/CalendarUtils;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang3/time/CalendarUtils;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method static getInstance(Ljava/util/Locale;)Lorg/apache/commons/lang3/time/CalendarUtils;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 59
    new-instance v0, Lorg/apache/commons/lang3/time/CalendarUtils;

    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/lang3/time/CalendarUtils;-><init>(Ljava/util/Calendar;Ljava/util/Locale;)V

    return-object v0
.end method

.method static synthetic lambda$getMonthDisplayNames$0([Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p0, "monthNames"    # [Ljava/lang/String;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Integer;

    .line 126
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput-object p1, p0, v0

    return-void
.end method


# virtual methods
.method public getDayOfMonth()I
    .locals 2

    .line 91
    iget-object v0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getDayOfYear()I
    .locals 2

    .line 101
    iget-object v0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method getMonthDisplayNames(I)[Ljava/lang/String;
    .locals 3
    .param p1, "style"    # I

    .line 121
    iget-object v0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1, p1, v2}, Ljava/util/Calendar;->getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    .line 122
    .local v0, "displayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 123
    const/4 v1, 0x0

    return-object v1

    .line 125
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 126
    .local v1, "monthNames":[Ljava/lang/String;
    new-instance v2, Lorg/apache/commons/lang3/time/CalendarUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/apache/commons/lang3/time/CalendarUtils$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 127
    return-object v1
.end method

.method getStandaloneLongMonthNames()[Ljava/lang/String;
    .locals 1

    .line 135
    const v0, 0x8002

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/time/CalendarUtils;->getMonthDisplayNames(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getStandaloneShortMonthNames()[Ljava/lang/String;
    .locals 1

    .line 143
    const v0, 0x8001

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/time/CalendarUtils;->getMonthDisplayNames(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYear()I
    .locals 2

    .line 152
    iget-object v0, p0, Lorg/apache/commons/lang3/time/CalendarUtils;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method
