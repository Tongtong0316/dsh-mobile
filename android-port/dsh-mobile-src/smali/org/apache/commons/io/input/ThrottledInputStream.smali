.class public final Lorg/apache/commons/io/input/ThrottledInputStream;
.super Lorg/apache/commons/io/input/CountingInputStream;
.source "ThrottledInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/ThrottledInputStream$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final maxBytesPerSecond:J

.field private final startTime:J

.field private totalSleepDuration:Ljava/time/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 44
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;J)V
    .locals 3
    .param p1, "proxy"    # Ljava/io/InputStream;
    .param p2, "maxBytesPerSecond"    # J

    .line 149
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->startTime:J

    .line 146
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object v0, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->totalSleepDuration:Ljava/time/Duration;

    .line 150
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 151
    iput-wide p2, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->maxBytesPerSecond:J

    .line 152
    return-void

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bandwidth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;JLorg/apache/commons/io/input/ThrottledInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lorg/apache/commons/io/input/ThrottledInputStream$1;

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ThrottledInputStream;-><init>(Ljava/io/InputStream;J)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/ThrottledInputStream$Builder;
    .locals 1

    .line 126
    new-instance v0, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ThrottledInputStream$Builder;-><init>()V

    return-object v0
.end method

.method private getBytesPerSecond()J
    .locals 4

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->startTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 166
    .local v0, "elapsedSeconds":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 167
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ThrottledInputStream;->getByteCount()J

    move-result-wide v2

    return-wide v2

    .line 169
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ThrottledInputStream;->getByteCount()J

    move-result-wide v2

    div-long/2addr v2, v0

    return-wide v2
.end method

.method private getSleepMillis()J
    .locals 8

    .line 173
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ThrottledInputStream;->getByteCount()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->maxBytesPerSecond:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->startTime:J

    sub-long/2addr v4, v6

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/io/input/ThrottledInputStream;->toSleepMillis(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private throttle()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Lorg/apache/commons/io/input/ThrottledInputStream;->getSleepMillis()J

    move-result-wide v0

    .line 187
    .local v0, "sleepMillis":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 188
    iget-object v2, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->totalSleepDuration:Ljava/time/Duration;

    sget-object v3, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/time/Duration;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->totalSleepDuration:Ljava/time/Duration;

    .line 190
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    goto :goto_0

    .line 191
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/io/InterruptedIOException;

    const-string v4, "Thread aborted"

    invoke-direct {v3, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 195
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    return-void
.end method

.method static toSleepMillis(JJJ)J
    .locals 6
    .param p0, "bytesRead"    # J
    .param p2, "maxBytesPerSec"    # J
    .param p4, "elapsedMillis"    # J

    .line 130
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-ltz v2, :cond_3

    .line 131
    cmp-long v2, p0, v0

    if-lez v2, :cond_2

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    long-to-double v2, p0

    long-to-double v4, p2

    div-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    long-to-double v4, p4

    sub-double/2addr v2, v4

    double-to-long v2, v2

    .line 138
    .local v2, "millis":J
    cmp-long v4, v2, v0

    if-gtz v4, :cond_1

    .line 139
    return-wide v0

    .line 141
    :cond_1
    return-wide v2

    .line 132
    .end local v2    # "millis":J
    :cond_2
    :goto_0
    return-wide v0

    .line 130
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The elapsed time should be greater or equal to zero"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method protected beforeRead(I)V
    .locals 0
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lorg/apache/commons/io/input/ThrottledInputStream;->throttle()V

    .line 157
    return-void
.end method

.method getTotalSleepDuration()Ljava/time/Duration;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->totalSleepDuration:Ljava/time/Duration;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThrottledInputStream[bytesRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/io/input/ThrottledInputStream;->getByteCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxBytesPerSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->maxBytesPerSecond:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytesPerSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/commons/io/input/ThrottledInputStream;->getBytesPerSecond()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalSleepDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/io/input/ThrottledInputStream;->totalSleepDuration:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
