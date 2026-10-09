.class public final synthetic Lcom/dshmobile/shell/MainActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/dshmobile/shell/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/dshmobile/shell/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dshmobile/shell/MainActivity$$ExternalSyntheticLambda6;->f$0:Lcom/dshmobile/shell/MainActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/dshmobile/shell/MainActivity$$ExternalSyntheticLambda6;->f$0:Lcom/dshmobile/shell/MainActivity;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {v0, v1, v2, p1, p2}, Lcom/dshmobile/shell/MainActivity;->$r8$lambda$nD0mynTGE-H_kgEOOE9v51JvqZc(Lcom/dshmobile/shell/MainActivity;JJ)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
