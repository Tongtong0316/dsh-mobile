.class public final Lcom/dshmobile/shell/EngineService;
.super Landroid/app/Service;
.source "EngineService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dshmobile/shell/EngineService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\"\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u0012\u001a\u00020\tH\u0016J\u0008\u0010\u0013\u001a\u00020\tH\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dshmobile/shell/EngineService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "engineManager",
        "Lcom/dshmobile/shell/EngineManager;",
        "watchdog",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "onCreate",
        "",
        "onStartCommand",
        "",
        "intent",
        "Landroid/content/Intent;",
        "flags",
        "startId",
        "onBind",
        "Landroid/os/IBinder;",
        "onDestroy",
        "ensureEngine",
        "buildNotification",
        "Landroid/app/Notification;",
        "Companion",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/dshmobile/shell/EngineService$Companion;

.field private static final NOTIFICATION_ID:I = 0x2


# instance fields
.field private engineManager:Lcom/dshmobile/shell/EngineManager;

.field private watchdog:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public static synthetic $r8$lambda$mqVMDbEk_vgpQX1YNDtgV40ADFk(Lcom/dshmobile/shell/EngineService;)V
    .locals 0

    invoke-static {p0}, Lcom/dshmobile/shell/EngineService;->ensureEngine$lambda$1$lambda$0(Lcom/dshmobile/shell/EngineService;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dshmobile/shell/EngineService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dshmobile/shell/EngineService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dshmobile/shell/EngineService;->Companion:Lcom/dshmobile/shell/EngineService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private final buildNotification()Landroid/app/Notification;
    .locals 6

    .line 62
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/dshmobile/shell/EngineService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/NotificationManager;

    .line 63
    .local v0, "manager":Landroid/app/NotificationManager;
    nop

    .line 64
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "dsh \u5f15\u64ce"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const-string v4, "engine"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 67
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    const-class v5, Lcom/dshmobile/shell/MainActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    nop

    .line 66
    const/4 v3, 0x0

    const/high16 v5, 0x4000000

    invoke-static {v1, v3, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 70
    .local v1, "pending":Landroid/app/PendingIntent;
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    const v3, 0x1080077

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 72
    const-string v3, "dsh \u5f15\u64ce\u8fd0\u884c\u4e2d"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 73
    const-string v3, "DeepSeek Harness \u6b63\u5728\u540e\u53f0\u5de5\u4f5c"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 74
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 75
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    const-string v3, "build(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    return-object v2
.end method

.method private final ensureEngine()V
    .locals 9

    .line 46
    sget-object v0, Lcom/dshmobile/shell/EngineProbe;->INSTANCE:Lcom/dshmobile/shell/EngineProbe;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/dshmobile/shell/EngineProbe;->check$default(Lcom/dshmobile/shell/EngineProbe;IILjava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "running"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/dshmobile/shell/EngineService;->engineManager:Lcom/dshmobile/shell/EngineManager;

    const-string v4, "engineManager"

    if-nez v0, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    invoke-virtual {v0}, Lcom/dshmobile/shell/EngineManager;->getEngineReady()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dshmobile/shell/EngineService;->engineManager:Lcom/dshmobile/shell/EngineManager;

    if-nez v0, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    invoke-static {v0, v1, v2, v3}, Lcom/dshmobile/shell/EngineManager;->startEngine$default(Lcom/dshmobile/shell/EngineManager;IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    iget-object v0, p0, Lcom/dshmobile/shell/EngineService;->watchdog:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_3

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    move-object v1, v0

    .local v1, "exec":Ljava/util/concurrent/ScheduledExecutorService;
    const/4 v8, 0x0

    .line 51
    .local v8, "$i$a$-also-EngineService$ensureEngine$1":I
    new-instance v2, Lcom/dshmobile/shell/EngineService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/dshmobile/shell/EngineService$$ExternalSyntheticLambda0;-><init>(Lcom/dshmobile/shell/EngineService;)V

    .line 55
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 51
    const-wide/16 v3, 0x5

    const-wide/16 v5, 0x5

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 56
    nop

    .line 50
    .end local v1    # "exec":Ljava/util/concurrent/ScheduledExecutorService;
    .end local v8    # "$i$a$-also-EngineService$ensureEngine$1":I
    iput-object v0, p0, Lcom/dshmobile/shell/EngineService;->watchdog:Ljava/util/concurrent/ScheduledExecutorService;

    .line 59
    :cond_3
    return-void
.end method

.method private static final ensureEngine$lambda$1$lambda$0(Lcom/dshmobile/shell/EngineService;)V
    .locals 5
    .param p0, "this$0"    # Lcom/dshmobile/shell/EngineService;

    .line 52
    sget-object v0, Lcom/dshmobile/shell/EngineProbe;->INSTANCE:Lcom/dshmobile/shell/EngineProbe;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/dshmobile/shell/EngineProbe;->check$default(Lcom/dshmobile/shell/EngineProbe;IILjava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "running"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dshmobile/shell/EngineService;->engineManager:Lcom/dshmobile/shell/EngineManager;

    const-string v4, "engineManager"

    if-nez v0, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    invoke-virtual {v0}, Lcom/dshmobile/shell/EngineManager;->getEngineReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/dshmobile/shell/EngineService;->engineManager:Lcom/dshmobile/shell/EngineManager;

    if-nez v0, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    invoke-static {v0, v1, v2, v3}, Lcom/dshmobile/shell/EngineManager;->startEngine$default(Lcom/dshmobile/shell/EngineManager;IILjava/lang/Object;)Z

    .line 55
    :cond_2
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 26
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 27
    new-instance v0, Lcom/dshmobile/shell/EngineManager;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/dshmobile/shell/EngineManager;-><init>(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/dshmobile/shell/EngineService;->engineManager:Lcom/dshmobile/shell/EngineManager;

    .line 28
    invoke-direct {p0}, Lcom/dshmobile/shell/EngineService;->buildNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/dshmobile/shell/EngineService;->startForeground(ILandroid/app/Notification;)V

    .line 29
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/dshmobile/shell/EngineService;->watchdog:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 40
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dshmobile/shell/EngineService;->watchdog:Ljava/util/concurrent/ScheduledExecutorService;

    .line 41
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 42
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 32
    invoke-direct {p0}, Lcom/dshmobile/shell/EngineService;->ensureEngine()V

    .line 33
    const/4 v0, 0x1

    return v0
.end method
