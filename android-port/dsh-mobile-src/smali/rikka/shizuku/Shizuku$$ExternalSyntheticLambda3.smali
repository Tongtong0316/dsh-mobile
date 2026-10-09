.class public final synthetic Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lrikka/shizuku/Shizuku$OnBinderDeadListener;


# direct methods
.method public synthetic constructor <init>(Lrikka/shizuku/Shizuku$OnBinderDeadListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda3;->f$0:Lrikka/shizuku/Shizuku$OnBinderDeadListener;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lrikka/shizuku/Shizuku$$ExternalSyntheticLambda3;->f$0:Lrikka/shizuku/Shizuku$OnBinderDeadListener;

    check-cast p1, Lrikka/shizuku/Shizuku$ListenerHolder;

    invoke-static {v0, p1}, Lrikka/shizuku/Shizuku;->lambda$removeBinderDeadListener$2(Lrikka/shizuku/Shizuku$OnBinderDeadListener;Lrikka/shizuku/Shizuku$ListenerHolder;)Z

    move-result p1

    return p1
.end method
