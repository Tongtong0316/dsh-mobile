.class public final Lcom/dshmobile/shell/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dshmobile/shell/UpdateManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateManager.kt\ncom/dshmobile/shell/UpdateManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,122:1\n1#2:123\n1317#3,2:124\n*S KotlinDebug\n*F\n+ 1 UpdateManager.kt\ncom/dshmobile/shell/UpdateManager\n*L\n115#1:124,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\u000c\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\r0\u000fJ\u0010\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007H\u0002J\u0018\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J\u0010\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0014H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dshmobile/shell/UpdateManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "manifestUrl",
        "",
        "getManifestUrl",
        "()Ljava/lang/String;",
        "setManifestUrl",
        "(Ljava/lang/String;)V",
        "checkAndApply",
        "",
        "onStatus",
        "Lkotlin/Function1;",
        "fetch",
        "url",
        "download",
        "dest",
        "Ljava/io/File;",
        "sha256",
        "file",
        "deleteRecursively",
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
.field public static final Companion:Lcom/dshmobile/shell/UpdateManager$Companion;

.field public static final DEFAULT_MANIFEST_URL:Ljava/lang/String; = "http://10.0.2.2:8899/manifest.json"


# instance fields
.field private final context:Landroid/content/Context;

.field private manifestUrl:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$9J01foLBUnClXNk-gN6OxSHiDxQ(Lkotlin/jvm/functions/Function1;Lcom/dshmobile/shell/UpdateManager;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dshmobile/shell/UpdateManager;->checkAndApply$lambda$1(Lkotlin/jvm/functions/Function1;Lcom/dshmobile/shell/UpdateManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BnK75N7qGxK0YbmMy9ewtLhrNUw(JJ)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/dshmobile/shell/UpdateManager;->checkAndApply$lambda$1$lambda$0(JJ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KqaR15O_ND_Ydv8sE_HSEicMczU(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/dshmobile/shell/UpdateManager;->sha256$lambda$6(B)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dshmobile/shell/UpdateManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dshmobile/shell/UpdateManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dshmobile/shell/UpdateManager;->Companion:Lcom/dshmobile/shell/UpdateManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dshmobile/shell/UpdateManager;->context:Landroid/content/Context;

    .line 22
    const-string v0, "http://10.0.2.2:8899/manifest.json"

    iput-object v0, p0, Lcom/dshmobile/shell/UpdateManager;->manifestUrl:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private static final checkAndApply$lambda$1(Lkotlin/jvm/functions/Function1;Lcom/dshmobile/shell/UpdateManager;)V
    .locals 21
    .param p0, "$onStatus"    # Lkotlin/jvm/functions/Function1;
    .param p1, "this$0"    # Lcom/dshmobile/shell/UpdateManager;

    .line 30
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "usr"

    const-string v3, "size"

    .line 31
    :try_start_0
    const-string v4, "\u68c0\u67e5\u66f4\u65b0\u2026"

    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, v2, Lcom/dshmobile/shell/UpdateManager;->manifestUrl:Ljava/lang/String;

    invoke-direct {v2, v5}, Lcom/dshmobile/shell/UpdateManager;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    .local v4, "manifest":Lorg/json/JSONObject;
    const-string v5, "url"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 34
    .local v5, "url":Ljava/lang/String;
    const-string v6, "sha256"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 36
    .local v6, "expectedSha":Ljava/lang/String;
    const-wide/16 v7, 0x0

    invoke-virtual {v4, v3, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    const/16 v11, 0x400

    int-to-long v11, v11

    div-long/2addr v9, v11

    div-long/2addr v9, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u4e0b\u8f7d\u5feb\u7167\uff08"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MB\uff09\u2026"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v9, Ljava/io/File;

    iget-object v10, v2, Lcom/dshmobile/shell/UpdateManager;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    const-string v11, "update.tar.xz"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .local v9, "tmp":Ljava/io/File;
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v5, v9}, Lcom/dshmobile/shell/UpdateManager;->download(Ljava/lang/String;Ljava/io/File;)V

    .line 40
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v10, v6

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-lez v10, :cond_0

    move v10, v12

    goto :goto_0

    :cond_0
    move v10, v11

    :goto_0
    if-eqz v10, :cond_2

    .line 41
    const-string v10, "\u6821\u9a8c\u2026"

    invoke-interface {v1, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-direct {v2, v9}, Lcom/dshmobile/shell/UpdateManager;->sha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    .line 43
    .local v10, "actual":Ljava/lang/String;
    invoke-static {v10, v6, v12}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v3, 0xc

    invoke-static {v10, v3}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SHA256 \u4e0d\u5339\u914d: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\u2026"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "$onStatus":Lkotlin/jvm/functions/Function1;
    .end local p1    # "this$0":Lcom/dshmobile/shell/UpdateManager;
    throw v0

    .line 49
    .end local v10    # "actual":Ljava/lang/String;
    .restart local p0    # "$onStatus":Lkotlin/jvm/functions/Function1;
    .restart local p1    # "this$0":Lcom/dshmobile/shell/UpdateManager;
    :cond_2
    :goto_1
    const-string v10, "\u89e3\u538b\u65b0\u5feb\u7167\u2026"

    invoke-interface {v1, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v10, Ljava/io/File;

    iget-object v13, v2, Lcom/dshmobile/shell/UpdateManager;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    const-string v14, "update-stage"

    invoke-direct {v10, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .local v10, "stage":Ljava/io/File;
    invoke-direct {v2, v10}, Lcom/dshmobile/shell/UpdateManager;->deleteRecursively(Ljava/io/File;)V

    .line 53
    sget-object v15, Lcom/dshmobile/shell/SnapshotExtractor;->INSTANCE:Lcom/dshmobile/shell/SnapshotExtractor;

    new-instance v13, Ljava/io/FileInputStream;

    .line 54
    invoke-direct {v13, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v16, v13

    check-cast v16, Ljava/io/InputStream;

    invoke-virtual {v4, v3, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v17

    new-instance v20, Lcom/dshmobile/shell/UpdateManager$$ExternalSyntheticLambda1;

    invoke-direct/range {v20 .. v20}, Lcom/dshmobile/shell/UpdateManager$$ExternalSyntheticLambda1;-><init>()V

    .line 53
    move-object/from16 v19, v10

    invoke-virtual/range {v15 .. v20}, Lcom/dshmobile/shell/SnapshotExtractor;->extract(Ljava/io/InputStream;JLjava/io/File;Lkotlin/jvm/functions/Function2;)V

    .line 56
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 57
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .local v3, "newUsr":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v8, "bin/node"

    invoke-direct {v7, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 60
    const-string v7, "\u5207\u6362\u8fd0\u884c\u65f6\u2026"

    invoke-interface {v1, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v7, Ljava/io/File;

    iget-object v8, v2, Lcom/dshmobile/shell/UpdateManager;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .local v7, "usr":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v8, v2, Lcom/dshmobile/shell/UpdateManager;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v13, "usr-old"

    invoke-direct {v0, v8, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v8, v0

    .line 63
    .local v8, "old":Ljava/io/File;
    invoke-direct {v2, v8}, Lcom/dshmobile/shell/UpdateManager;->deleteRecursively(Ljava/io/File;)V

    .line 64
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 65
    :cond_3
    invoke-virtual {v3, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    invoke-direct {v2, v10}, Lcom/dshmobile/shell/UpdateManager;->deleteRecursively(Ljava/io/File;)V

    .line 67
    invoke-direct {v2, v8}, Lcom/dshmobile/shell/UpdateManager;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    nop

    .line 72
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const-string v14, "/system/bin/pkill"

    aput-object v14, v13, v11

    const-string v11, "-f"

    aput-object v11, v13, v12

    const-string v11, "bin.js"

    const/4 v12, 0x2

    aput-object v11, v13, v12

    invoke-virtual {v0, v13}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 73
    :catchall_0
    move-exception v0

    .line 75
    :goto_2
    :try_start_2
    const-string v0, "\u66f4\u65b0\u5b8c\u6210\uff0c\u5f15\u64ce\u5df2\u81ea\u52a8\u91cd\u542f"

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 65
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v11, "\u5207\u6362\u5931\u8d25"

    invoke-direct {v0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "$onStatus":Lkotlin/jvm/functions/Function1;
    .end local p1    # "this$0":Lcom/dshmobile/shell/UpdateManager;
    throw v0

    .line 58
    .end local v7    # "usr":Ljava/io/File;
    .end local v8    # "old":Ljava/io/File;
    .restart local p0    # "$onStatus":Lkotlin/jvm/functions/Function1;
    .restart local p1    # "this$0":Lcom/dshmobile/shell/UpdateManager;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v7, "\u65b0\u5feb\u7167\u7f3a\u5c11 node"

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "$onStatus":Lkotlin/jvm/functions/Function1;
    .end local p1    # "this$0":Lcom/dshmobile/shell/UpdateManager;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    .end local v3    # "newUsr":Ljava/io/File;
    .end local v4    # "manifest":Lorg/json/JSONObject;
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "expectedSha":Ljava/lang/String;
    .end local v9    # "tmp":Ljava/io/File;
    .end local v10    # "stage":Ljava/io/File;
    .restart local p0    # "$onStatus":Lkotlin/jvm/functions/Function1;
    .restart local p1    # "this$0":Lcom/dshmobile/shell/UpdateManager;
    :catchall_1
    move-exception v0

    .line 77
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u66f4\u65b0\u5931\u8d25\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_3
    return-void
.end method

.method private static final checkAndApply$lambda$1$lambda$0(JJ)Lkotlin/Unit;
    .locals 0

    .line 54
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final deleteRecursively(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .line 114
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-static {p1}, Lkotlin/io/FilesKt;->walkBottomUp(Ljava/io/File;)Lkotlin/io/FileTreeWalk;

    move-result-object v0

    check-cast v0, Lkotlin/sequences/Sequence;

    .local v0, "$this$forEach$iv":Lkotlin/sequences/Sequence;
    const/4 v1, 0x0

    .line 124
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/io/File;

    .local v4, "it":Ljava/io/File;
    const/4 v5, 0x0

    .line 115
    .local v5, "$i$a$-forEach-UpdateManager$deleteRecursively$1":I
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 124
    .end local v4    # "it":Ljava/io/File;
    .end local v5    # "$i$a$-forEach-UpdateManager$deleteRecursively$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 125
    :cond_1
    nop

    .line 116
    .end local v0    # "$this$forEach$iv":Lkotlin/sequences/Sequence;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method private final download(Ljava/lang/String;Ljava/io/File;)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/io/File;

    .line 92
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 93
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 94
    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 95
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 96
    .local v1, "code":I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    :try_start_0
    move-object v3, v2

    check-cast v3, Ljava/io/InputStream;

    .line 123
    .local v3, "input":Ljava/io/InputStream;
    const/4 v4, 0x0

    .local v4, "$i$a$-use-UpdateManager$download$1":I
    new-instance v5, Ljava/io/FileOutputStream;

    .line 97
    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v5, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v6, v5

    check-cast v6, Ljava/io/FileOutputStream;

    .line 123
    .local v6, "out":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 97
    .local v7, "$i$a$-use-UpdateManager$download$1$1":I
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v6

    check-cast v8, Ljava/io/OutputStream;

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v3, v8, v9, v10, v11}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "$i$a$-use-UpdateManager$download$1$1":I
    :try_start_2
    invoke-static {v5, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "$i$a$-use-UpdateManager$download$1":I
    invoke-static {v2, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 98
    return-void

    .line 97
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "$i$a$-use-UpdateManager$download$1":I
    :catchall_0
    move-exception v6

    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v1    # "code":I
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "$i$a$-use-UpdateManager$download$1":I
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "dest":Ljava/io/File;
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v1    # "code":I
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "$i$a$-use-UpdateManager$download$1":I
    .restart local p1    # "url":Ljava/lang/String;
    .restart local p2    # "dest":Ljava/io/File;
    :catchall_1
    move-exception v7

    :try_start_4
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v1    # "code":I
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "dest":Ljava/io/File;
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "$i$a$-use-UpdateManager$download$1":I
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v1    # "code":I
    .restart local p1    # "url":Ljava/lang/String;
    .restart local p2    # "dest":Ljava/io/File;
    :catchall_2
    move-exception v3

    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v1    # "code":I
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "dest":Ljava/io/File;
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v1    # "code":I
    .restart local p1    # "url":Ljava/lang/String;
    .restart local p2    # "dest":Ljava/io/File;
    :catchall_3
    move-exception v4

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    .line 96
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0b\u8f7d HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final fetch(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 84
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 85
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 86
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 87
    .local v1, "code":I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 88
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "getInputStream(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v4, Ljava/io/Reader;

    instance-of v2, v4, Ljava/io/BufferedReader;

    if-eqz v2, :cond_0

    check-cast v4, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v2, v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v4, v2

    :goto_0
    check-cast v4, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v4

    check-cast v2, Ljava/io/BufferedReader;

    .line 123
    .local v2, "it":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 88
    .local v3, "$i$a$-use-UpdateManager$fetch$1":I
    move-object v5, v2

    check-cast v5, Ljava/io/Reader;

    invoke-static {v5}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "it":Ljava/io/BufferedReader;
    .end local v3    # "$i$a$-use-UpdateManager$fetch$1":I
    const/4 v2, 0x0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v5

    :catchall_0
    move-exception v2

    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v1    # "code":I
    .end local p1    # "url":Ljava/lang/String;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v1    # "code":I
    .restart local p1    # "url":Ljava/lang/String;
    :catchall_1
    move-exception v3

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 87
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "manifest HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final sha256(Ljava/io/File;)Ljava/lang/String;
    .locals 12
    .param p1, "file"    # Ljava/io/File;

    .line 101
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .local v0, "digest":Ljava/security/MessageDigest;
    new-instance v1, Ljava/io/FileInputStream;

    .line 102
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Ljava/io/FileInputStream;

    .local v2, "input":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 103
    .local v3, "$i$a$-use-UpdateManager$sha256$1":I
    const/high16 v4, 0x10000

    new-array v4, v4, [B

    .line 104
    .local v4, "buf":[B
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 105
    .local v5, "n":I
    :goto_0
    if-ltz v5, :cond_0

    .line 106
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 107
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    move v5, v6

    goto :goto_0

    .line 109
    :cond_0
    nop

    .end local v2    # "input":Ljava/io/FileInputStream;
    .end local v3    # "$i$a$-use-UpdateManager$sha256$1":I
    .end local v4    # "buf":[B
    .end local v5    # "n":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 110
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const-string v1, "digest(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ""

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v9, Lcom/dshmobile/shell/UpdateManager$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Lcom/dshmobile/shell/UpdateManager$$ExternalSyntheticLambda2;-><init>()V

    const/16 v10, 0x1e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 102
    :catchall_0
    move-exception v2

    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local p1    # "file":Ljava/io/File;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v0    # "digest":Ljava/security/MessageDigest;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static final sha256$lambda$6(B)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "it"    # B

    .line 110
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public final checkAndApply(Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p1, "onStatus"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/lang/Thread;

    .line 79
    new-instance v1, Lcom/dshmobile/shell/UpdateManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lcom/dshmobile/shell/UpdateManager$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/dshmobile/shell/UpdateManager;)V

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    return-void
.end method

.method public final getManifestUrl()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/dshmobile/shell/UpdateManager;->manifestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final setManifestUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/dshmobile/shell/UpdateManager;->manifestUrl:Ljava/lang/String;

    return-void
.end method
