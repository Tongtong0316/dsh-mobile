.class public final synthetic Lcom/dshmobile/shell/MainActivity$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/dshmobile/shell/MainActivity;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/dshmobile/shell/MainActivity;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dshmobile/shell/MainActivity$$ExternalSyntheticLambda13;->f$0:Lcom/dshmobile/shell/MainActivity;

    iput-object p2, p0, Lcom/dshmobile/shell/MainActivity$$ExternalSyntheticLambda13;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/dshmobile/shell/MainActivity$$ExternalSyntheticLambda13;->f$0:Lcom/dshmobile/shell/MainActivity;

    iget-object v1, p0, Lcom/dshmobile/shell/MainActivity$$ExternalSyntheticLambda13;->f$1:Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/dshmobile/shell/MainActivity;->$r8$lambda$FbJ3FabJNIiNNEodkXElR_BgEJo(Lcom/dshmobile/shell/MainActivity;Ljava/io/File;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
