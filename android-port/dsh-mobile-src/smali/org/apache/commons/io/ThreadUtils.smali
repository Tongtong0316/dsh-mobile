.class public final Lorg/apache/commons/io/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private static getNanosOfMilli(Ljava/time/Duration;)I
    .locals 2
    .param p0, "duration"    # Ljava/time/Duration;

    .line 30
    invoke-virtual {p0}, Ljava/time/Duration;->getNano()I

    move-result v0

    const v1, 0xf4240

    rem-int/2addr v0, v1

    return v0
.end method

.method public static sleep(Ljava/time/Duration;)V
    .locals 5
    .param p0, "duration"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 46
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    .line 47
    .local v0, "finishInstant":Ljava/time/Instant;
    move-object v1, p0

    .line 49
    .local v1, "remainingDuration":Ljava/time/Duration;
    :cond_0
    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    invoke-static {v1}, Lorg/apache/commons/io/ThreadUtils;->getNanosOfMilli(Ljava/time/Duration;)I

    move-result v4

    invoke-static {v2, v3, v4}, Ljava/lang/Thread;->sleep(JI)V

    .line 50
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/time/Duration;->isNegative()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    return-void
.end method
