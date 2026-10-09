.class public final Lorg/apache/commons/io/file/attribute/FileTimes;
.super Ljava/lang/Object;
.source "FileTimes.java"


# static fields
.field public static final EPOCH:Ljava/nio/file/attribute/FileTime;

.field static final HUNDRED_NANOS_PER_MILLISECOND:J

.field private static final HUNDRED_NANOS_PER_SECOND:J

.field static final WINDOWS_EPOCH_OFFSET:J = -0x19db1ded53e8000L


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 40
    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    invoke-static {v0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/file/attribute/FileTimes;->EPOCH:Ljava/nio/file/attribute/FileTime;

    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    sput-wide v3, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_SECOND:J

    .line 62
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    div-long/2addr v0, v5

    sput-wide v0, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_MILLISECOND:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    return-void
.end method

.method public static fromUnixTime(J)Ljava/nio/file/attribute/FileTime;
    .locals 1
    .param p0, "time"    # J

    .line 72
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public static isUnixTime(J)Z
    .locals 2
    .param p0, "seconds"    # J

    .line 97
    const-wide/32 v0, -0x80000000

    cmp-long v0, v0, p0

    if-gtz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUnixTime(Ljava/nio/file/attribute/FileTime;)Z
    .locals 2
    .param p0, "time"    # Ljava/nio/file/attribute/FileTime;

    .line 86
    invoke-static {p0}, Lorg/apache/commons/io/file/attribute/FileTimes;->toUnixTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/io/file/attribute/FileTimes;->isUnixTime(J)Z

    move-result v0

    return v0
.end method

.method public static minusMillis(Ljava/nio/file/attribute/FileTime;J)Ljava/nio/file/attribute/FileTime;
    .locals 1
    .param p0, "fileTime"    # Ljava/nio/file/attribute/FileTime;
    .param p1, "millisToSubtract"    # J

    .line 109
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/time/Instant;->minusMillis(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public static minusNanos(Ljava/nio/file/attribute/FileTime;J)Ljava/nio/file/attribute/FileTime;
    .locals 1
    .param p0, "fileTime"    # Ljava/nio/file/attribute/FileTime;
    .param p1, "nanosToSubtract"    # J

    .line 120
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/time/Instant;->minusNanos(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public static minusSeconds(Ljava/nio/file/attribute/FileTime;J)Ljava/nio/file/attribute/FileTime;
    .locals 1
    .param p0, "fileTime"    # Ljava/nio/file/attribute/FileTime;
    .param p1, "secondsToSubtract"    # J

    .line 131
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/time/Instant;->minusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public static now()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 140
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public static ntfsTimeToDate(J)Ljava/util/Date;
    .locals 5
    .param p0, "ntfsTime"    # J

    .line 150
    const-wide v0, -0x19db1ded53e8000L

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 151
    .local v0, "javaHundredNanos":J
    sget-wide v2, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_MILLISECOND:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v2

    .line 152
    .local v2, "javaMillis":J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v4
.end method

.method public static ntfsTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;
    .locals 8
    .param p0, "ntfsTime"    # J

    .line 164
    const-wide v0, -0x19db1ded53e8000L

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    .line 165
    .local v0, "javaHundredsNanos":J
    sget-wide v2, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_SECOND:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v2

    .line 166
    .local v2, "javaSeconds":J
    sget-wide v4, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_SECOND:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    mul-long/2addr v4, v6

    .line 167
    .local v4, "javaNanos":J
    invoke-static {v2, v3, v4, v5}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v6

    invoke-static {v6}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v6

    return-object v6
.end method

.method public static plusMillis(Ljava/nio/file/attribute/FileTime;J)Ljava/nio/file/attribute/FileTime;
    .locals 1
    .param p0, "fileTime"    # Ljava/nio/file/attribute/FileTime;
    .param p1, "millisToAdd"    # J

    .line 178
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public static plusNanos(Ljava/nio/file/attribute/FileTime;J)Ljava/nio/file/attribute/FileTime;
    .locals 1
    .param p0, "fileTime"    # Ljava/nio/file/attribute/FileTime;
    .param p1, "nanosToSubtract"    # J

    .line 189
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public static plusSeconds(Ljava/nio/file/attribute/FileTime;J)Ljava/nio/file/attribute/FileTime;
    .locals 1
    .param p0, "fileTime"    # Ljava/nio/file/attribute/FileTime;
    .param p1, "secondsToAdd"    # J

    .line 200
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public static setLastModifiedTime(Ljava/nio/file/Path;)V
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-static {}, Lorg/apache/commons/io/file/attribute/FileTimes;->now()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/nio/file/Files;->setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;)Ljava/nio/file/Path;

    .line 211
    return-void
.end method

.method public static toDate(Ljava/nio/file/attribute/FileTime;)Ljava/util/Date;
    .locals 3
    .param p0, "fileTime"    # Ljava/nio/file/attribute/FileTime;

    .line 222
    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static toFileTime(Ljava/util/Date;)Ljava/nio/file/attribute/FileTime;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .line 234
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static toNtfsTime(J)J
    .locals 4
    .param p0, "javaTime"    # J

    .line 268
    sget-wide v0, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_MILLISECOND:J

    mul-long/2addr v0, p0

    .line 269
    .local v0, "javaHundredNanos":J
    const-wide v2, -0x19db1ded53e8000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public static toNtfsTime(Ljava/nio/file/attribute/FileTime;)J
    .locals 5
    .param p0, "fileTime"    # Ljava/nio/file/attribute/FileTime;

    .line 255
    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    .line 256
    .local v0, "instant":Ljava/time/Instant;
    invoke-virtual {v0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v1

    sget-wide v3, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_SECOND:J

    mul-long/2addr v1, v3

    invoke-virtual {v0}, Ljava/time/Instant;->getNano()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 257
    .local v1, "javaHundredNanos":J
    const-wide v3, -0x19db1ded53e8000L

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v3

    return-wide v3
.end method

.method public static toNtfsTime(Ljava/util/Date;)J
    .locals 4
    .param p0, "date"    # Ljava/util/Date;

    .line 244
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-wide v2, Lorg/apache/commons/io/file/attribute/FileTimes;->HUNDRED_NANOS_PER_MILLISECOND:J

    mul-long/2addr v0, v2

    .line 245
    .local v0, "javaHundredNanos":J
    const-wide v2, -0x19db1ded53e8000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public static toUnixTime(Ljava/nio/file/attribute/FileTime;)J
    .locals 2
    .param p0, "fileTime"    # Ljava/nio/file/attribute/FileTime;

    .line 284
    if-eqz p0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method
