.class Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneDisplayKey"
.end annotation


# instance fields
.field private final locale:Ljava/util/Locale;

.field private final style:I

.field private final timeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V
    .locals 1
    .param p1, "timeZone"    # Ljava/util/TimeZone;
    .param p2, "daylight"    # Z
    .param p3, "style"    # I
    .param p4, "locale"    # Ljava/util/Locale;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->timeZone:Ljava/util/TimeZone;

    .line 417
    if-eqz p2, :cond_0

    .line 418
    const/high16 v0, -0x80000000

    or-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->style:I

    goto :goto_0

    .line 420
    :cond_0
    iput p3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->style:I

    .line 422
    :goto_0
    invoke-static {p4}, Lorg/apache/commons/lang3/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->locale:Ljava/util/Locale;

    .line 423
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 430
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 431
    return v0

    .line 433
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 434
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;

    .line 435
    .local v1, "other":Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;
    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->timeZone:Ljava/util/TimeZone;

    iget-object v4, v1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->timeZone:Ljava/util/TimeZone;

    .line 436
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->style:I

    iget v4, v1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->style:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->locale:Ljava/util/Locale;

    iget-object v4, v1, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->locale:Ljava/util/Locale;

    .line 438
    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 435
    :goto_0
    return v0

    .line 440
    .end local v1    # "other":Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 448
    iget v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->style:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$TimeZoneDisplayKey;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
