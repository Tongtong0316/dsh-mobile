.class public final synthetic Lrikka/shizuku/ShizukuServiceConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lrikka/shizuku/ShizukuServiceConnection;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lrikka/shizuku/ShizukuServiceConnection;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/shizuku/ShizukuServiceConnection$$ExternalSyntheticLambda0;->f$0:Lrikka/shizuku/ShizukuServiceConnection;

    iput-object p2, p0, Lrikka/shizuku/ShizukuServiceConnection$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lrikka/shizuku/ShizukuServiceConnection$$ExternalSyntheticLambda0;->f$0:Lrikka/shizuku/ShizukuServiceConnection;

    iget-object v1, p0, Lrikka/shizuku/ShizukuServiceConnection$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lrikka/shizuku/ShizukuServiceConnection;->lambda$connected$0$rikka-shizuku-ShizukuServiceConnection(Landroid/os/IBinder;)V

    return-void
.end method
