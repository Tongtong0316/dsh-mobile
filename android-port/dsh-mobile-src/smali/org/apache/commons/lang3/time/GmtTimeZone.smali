.class final Lorg/apache/commons/lang3/time/GmtTimeZone;
.super Ljava/util/TimeZone;
.source "GmtTimeZone.java"


# static fields
.field private static final HOURS_PER_DAY:I = 0x18

.field private static final MILLISECONDS_PER_MINUTE:I = 0xea60

.field private static final MINUTES_PER_HOUR:I = 0x3c

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private final offset:I

.field private final zoneId:Ljava/lang/String;


# direct methods
.method constructor <init>(ZII)V
    .locals 3
    .param p1, "negate"    # Z
    .param p2, "hours"    # I
    .param p3, "minutes"    # I

    .line 44
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 45
    const/16 v0, 0x18

    if-ge p2, v0, :cond_3

    .line 48
    const/16 v0, 0x3c

    if-ge p3, v0, :cond_2

    .line 51
    mul-int/lit8 v0, p2, 0x3c

    add-int/2addr v0, p3

    const v1, 0xea60

    mul-int/2addr v0, v1

    .line 52
    .local v0, "milliseconds":I
    if-eqz p1, :cond_0

    neg-int v1, v0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    const-string v2, "GMT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    if-eqz p1, :cond_1

    const/16 v2, 0x2d

    goto :goto_1

    :cond_1
    const/16 v2, 0x2b

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    invoke-static {v1, p2}, Lorg/apache/commons/lang3/time/GmtTimeZone;->twoDigits(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    invoke-static {v1, p3}, Lorg/apache/commons/lang3/time/GmtTimeZone;->twoDigits(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    .line 60
    return-void

    .line 49
    .end local v0    # "milliseconds":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minutes out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hours out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static twoDigits(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "n"    # I

    .line 38
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 65
    return v0

    .line 67
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/lang3/time/GmtTimeZone;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 68
    return v2

    .line 70
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang3/time/GmtTimeZone;

    .line 71
    .local v1, "other":Lorg/apache/commons/lang3/time/GmtTimeZone;
    iget v3, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    iget v4, v1, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    iget-object v4, v1, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset(IIIIII)I
    .locals 1
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "milliseconds"    # I

    .line 81
    iget v0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    return v0
.end method

.method public getRawOffset()I
    .locals 1

    .line 86
    iget v0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 91
    iget v0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public setRawOffset(I)V
    .locals 1
    .param p1, "offsetMillis"    # I

    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GmtTimeZone id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 1

    .line 111
    const/4 v0, 0x0

    return v0
.end method
