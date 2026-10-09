.class public final synthetic Lrikka/shizuku/ShizukuServiceConnection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lrikka/shizuku/ShizukuServiceConnection;


# direct methods
.method public synthetic constructor <init>(Lrikka/shizuku/ShizukuServiceConnection;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/shizuku/ShizukuServiceConnection$$ExternalSyntheticLambda1;->f$0:Lrikka/shizuku/ShizukuServiceConnection;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 0
    iget-object v0, p0, Lrikka/shizuku/ShizukuServiceConnection$$ExternalSyntheticLambda1;->f$0:Lrikka/shizuku/ShizukuServiceConnection;

    invoke-virtual {v0}, Lrikka/shizuku/ShizukuServiceConnection;->died()V

    return-void
.end method
