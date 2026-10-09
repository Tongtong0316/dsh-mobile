.class public final synthetic Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lrikka/shizuku/Shizuku$OnBinderDeadListener;


# direct methods
.method public synthetic constructor <init>(Lrikka/shizuku/Shizuku$OnBinderDeadListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda5;->f$0:Lrikka/shizuku/Shizuku$OnBinderDeadListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda5;->f$0:Lrikka/shizuku/Shizuku$OnBinderDeadListener;

    invoke-interface {v0}, Lrikka/shizuku/Shizuku$OnBinderDeadListener;->onBinderDead()V

    return-void
.end method
