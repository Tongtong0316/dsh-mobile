.class public final Lcom/dshmobile/shell/EngineManager;
.super Ljava/lang/Object;
.source "EngineManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dshmobile/shell/EngineManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEngineManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngineManager.kt\ncom/dshmobile/shell/EngineManager\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,278:1\n13409#2,2:279\n1#3:281\n*S KotlinDebug\n*F\n+ 1 EngineManager.kt\ncom/dshmobile/shell/EngineManager\n*L\n150#1:279,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0004\u0018\u0000 12\u00020\u0001:\u00011B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J \u0010\u001a\u001a\u00020\u00152\u0018\u0010\u001b\u001a\u0014\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e0\u001cJ\u0006\u0010\u001f\u001a\u00020\tJ\u0018\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\tH\u0002J\u0018\u0010#\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\tH\u0002J&\u0010$\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\t2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u00050&H\u0002J\u0010\u0010\'\u001a\u00020\u00152\u0008\u0008\u0002\u0010(\u001a\u00020)J/\u0010*\u001a\u00020\u00132\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00050,2\u0012\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050.H\u0002\u00a2\u0006\u0002\u0010/J\u0006\u00100\u001a\u00020\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u000e\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u000bR\u000e\u0010\u0010\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0014\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00158BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0017\u00a8\u00062"
    }
    d2 = {
        "Lcom/dshmobile/shell/EngineManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "pickToken",
        "",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "usrDir",
        "Ljava/io/File;",
        "getUsrDir",
        "()Ljava/io/File;",
        "homeDir",
        "getHomeDir",
        "dshDataDir",
        "getDshDataDir",
        "nodeBin",
        "dshBin",
        "engineProcess",
        "Ljava/lang/Process;",
        "engineReady",
        "",
        "getEngineReady",
        "()Z",
        "starting",
        "getStarting",
        "extractSnapshot",
        "onProgress",
        "Lkotlin/Function2;",
        "",
        "",
        "ensureDshDataHome",
        "copyFileIfExists",
        "src",
        "dst",
        "relocateDir",
        "copyTree",
        "skip",
        "",
        "startEngine",
        "port",
        "",
        "startWithArgs",
        "args",
        "",
        "env",
        "",
        "([Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Process;",
        "stopEngine",
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
.field public static final Companion:Lcom/dshmobile/shell/EngineManager$Companion;

.field private static final STARTING:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final START_COOLDOWN_MS:J = 0x15f90L

.field private static final TAG:Ljava/lang/String; = "dsh-engine"

.field private static volatile lastStartAttemptAt:J


# instance fields
.field private final context:Landroid/content/Context;

.field private final dshBin:Ljava/io/File;

.field private engineProcess:Ljava/lang/Process;

.field private final homeDir:Ljava/io/File;

.field private final nodeBin:Ljava/io/File;

.field private final pickToken:Ljava/lang/String;

.field private final usrDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dshmobile/shell/EngineManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dshmobile/shell/EngineManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/dshmobile/shell/EngineManager;->Companion:Lcom/dshmobile/shell/EngineManager$Companion;

    .line 272
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/dshmobile/shell/EngineManager;->STARTING:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pickToken"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dshmobile/shell/EngineManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/dshmobile/shell/EngineManager;->pickToken:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/dshmobile/shell/EngineManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "usr"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dshmobile/shell/EngineManager;->usrDir:Ljava/io/File;

    .line 19
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/dshmobile/shell/EngineManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "home"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dshmobile/shell/EngineManager;->homeDir:Ljava/io/File;

    .line 32
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/dshmobile/shell/EngineManager;->usrDir:Ljava/io/File;

    const-string v2, "bin/node"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dshmobile/shell/EngineManager;->nodeBin:Ljava/io/File;

    .line 33
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/dshmobile/shell/EngineManager;->usrDir:Ljava/io/File;

    const-string v2, "lib/node_modules/@deepseek-ai/dsh/lib/bin.js"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dshmobile/shell/EngineManager;->dshBin:Ljava/io/File;

    .line 16
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 16
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/dshmobile/shell/EngineManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getLastStartAttemptAt$cp()J
    .locals 2

    .line 16
    sget-wide v0, Lcom/dshmobile/shell/EngineManager;->lastStartAttemptAt:J

    return-wide v0
.end method

.method public static final synthetic access$getSTARTING$cp()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 16
    sget-object v0, Lcom/dshmobile/shell/EngineManager;->STARTING:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final synthetic access$setLastStartAttemptAt$cp(J)V
    .locals 0
    .param p0, "<set-?>"    # J

    .line 16
    sput-wide p0, Lcom/dshmobile/shell/EngineManager;->lastStartAttemptAt:J

    return-void
.end method

.method private final copyFileIfExists(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;

    .line 127
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 129
    :cond_0
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 131
    :cond_1
    return-void
.end method

.method private final copyTree(Ljava/io/File;Ljava/io/File;Ljava/util/Set;)V
    .locals 17
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;
    .param p3, "skip"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 150
    move-object/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .local v1, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 279
    .local v2, "$i$f$forEach":I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v12, v5

    .local v12, "f":Ljava/io/File;
    const/4 v13, 0x0

    .line 151
    .local v13, "$i$a$-forEach-EngineManager$copyTree$1":I
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 152
    new-instance v6, Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v14, p2

    invoke-direct {v6, v14, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v15, v6

    .line 153
    .local v15, "target":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 154
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 155
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v11, p0

    invoke-direct {v11, v12, v15, v0}, Lcom/dshmobile/shell/EngineManager;->copyTree(Ljava/io/File;Ljava/io/File;Ljava/util/Set;)V

    goto :goto_1

    .line 157
    :cond_0
    move-object/from16 v11, p0

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v10, 0x4

    const/16 v16, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v6, v12

    move-object v7, v15

    move-object/from16 v11, v16

    invoke-static/range {v6 .. v11}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 159
    :goto_1
    goto :goto_2

    .line 151
    .end local v15    # "target":Ljava/io/File;
    :cond_1
    move-object/from16 v14, p2

    .line 279
    .end local v12    # "f":Ljava/io/File;
    .end local v13    # "$i$a$-forEach-EngineManager$copyTree$1":I
    :goto_2
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 280
    :cond_2
    move-object/from16 v14, p2

    .end local v1    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$forEach":I
    goto :goto_3

    .line 150
    :cond_3
    move-object/from16 v14, p2

    .line 160
    :goto_3
    return-void
.end method

.method private final getStarting()Z
    .locals 1

    .line 41
    sget-object v0, Lcom/dshmobile/shell/EngineManager;->STARTING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private final relocateDir(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;

    .line 135
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 136
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 137
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/dshmobile/shell/EngineManager;->copyTree(Ljava/io/File;Ljava/io/File;Ljava/util/Set;)V

    .line 139
    invoke-static {p1}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 141
    :cond_2
    nop

    .line 142
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    .line 144
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "symlink failed for dir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dsh-engine"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 135
    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic startEngine$default(Lcom/dshmobile/shell/EngineManager;IILjava/lang/Object;)Z
    .locals 0

    .line 163
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0xc08

    :cond_0
    invoke-virtual {p0, p1}, Lcom/dshmobile/shell/EngineManager;->startEngine(I)Z

    move-result p0

    return p0
.end method

.method private final startWithArgs([Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Process;
    .locals 8
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "env"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Process;"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/dshmobile/shell/EngineManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "engine.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    .local v0, "log":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/storage/emulated/0"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, "workspace":Ljava/io/File;
    nop

    .line 245
    :try_start_0
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {p2, v1, v0, v2}, Lcom/dshmobile/shell/EngineManager;->startWithArgs$build(Ljava/util/Map;Ljava/io/File;Ljava/io/File;Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v3, Ljava/lang/CharSequence;

    const-string v5, "Permission denied"

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v3, v5, v4, v6, v7}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v4, v5

    :cond_0
    if-eqz v4, :cond_1

    .line 248
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "direct exec denied, falling back to linker64: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dsh-engine"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v3, "/system/bin/linker64"

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-static {p2, v1, v0, v3}, Lcom/dshmobile/shell/EngineManager;->startWithArgs$build(Ljava/util/Map;Ljava/io/File;Ljava/io/File;Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    move-object v2, v3

    .line 244
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-object v2

    .line 247
    .restart local v2    # "e":Ljava/io/IOException;
    :cond_1
    throw v2
.end method

.method private static final startWithArgs$build(Ljava/util/Map;Ljava/io/File;Ljava/io/File;Ljava/util/List;)Ljava/lang/ProcessBuilder;
    .locals 4
    .param p0, "$env"    # Ljava/util/Map;
    .param p1, "workspace"    # Ljava/io/File;
    .param p2, "log"    # Ljava/io/File;
    .param p3, "argv"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/ProcessBuilder;"
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/lang/ProcessBuilder;

    invoke-direct {v0, p3}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    move-object v1, v0

    .local v1, "b":Ljava/lang/ProcessBuilder;
    const/4 v2, 0x0

    .line 239
    .local v2, "$i$a$-also-EngineManager$startWithArgs$build$1":I
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 240
    invoke-virtual {v1, p1}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 241
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 242
    invoke-virtual {v1, p2}, Ljava/lang/ProcessBuilder;->redirectOutput(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 243
    nop

    .line 238
    .end local v1    # "b":Ljava/lang/ProcessBuilder;
    .end local v2    # "$i$a$-also-EngineManager$startWithArgs$build$1":I
    nop

    .line 243
    return-object v0
.end method


# virtual methods
.method public final ensureDshDataHome()Ljava/io/File;
    .locals 21

    .line 84
    move-object/from16 v1, p0

    const-string v2, "/"

    const-string v3, "profiles/"

    const-string v0, "attachments"

    const-string v4, "storages"

    const-string v5, "sessions"

    const-string v6, "settings.yaml"

    const-string v7, "dsh-engine"

    invoke-virtual/range {p0 .. p0}, Lcom/dshmobile/shell/EngineManager;->getDshDataDir()Ljava/io/File;

    move-result-object v8

    .line 85
    .local v8, "dshData":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Lcom/dshmobile/shell/EngineManager;->homeDir:Ljava/io/File;

    const-string v11, ".dsh"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    .local v9, "privateDsh":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    const-string v11, ".migrated-from"

    invoke-direct {v10, v8, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .local v10, "marker":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    .line 88
    nop

    .line 89
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 91
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v11, v12}, Lcom/dshmobile/shell/EngineManager;->copyFileIfExists(Ljava/io/File;Ljava/io/File;)V

    .line 93
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v9, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v6, v11}, Lcom/dshmobile/shell/EngineManager;->relocateDir(Ljava/io/File;Ljava/io/File;)V

    .line 94
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v5, v6}, Lcom/dshmobile/shell/EngineManager;->relocateDir(Ljava/io/File;Ljava/io/File;)V

    .line 95
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v4, v5}, Lcom/dshmobile/shell/EngineManager;->relocateDir(Ljava/io/File;Ljava/io/File;)V

    .line 97
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const-string v5, "web"

    const/4 v6, 0x0

    aput-object v5, v0, v6

    const-string v5, "headless"

    const/4 v11, 0x1

    aput-object v5, v0, v11

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 98
    .local v12, "profile":Ljava/lang/String;
    new-array v0, v4, [Ljava/lang/String;

    const-string v13, "cordis.yml"

    aput-object v13, v0, v6

    const-string v13, "cordis.patch.yml"

    aput-object v13, v0, v11

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 99
    .local v14, "name":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .local v15, "sf":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v15}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v8, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v16, v0

    .line 102
    .local v16, "pf":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 103
    :cond_0
    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 104
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    nop

    .line 106
    :try_start_1
    invoke-virtual {v15}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v11

    new-array v4, v6, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v11, v4}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x2

    const/4 v11, 0x1

    goto/16 :goto_1

    .line 107
    :catchall_0
    move-exception v0

    .line 109
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 110
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "symlink failed for "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "; keeping private copy"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v11, 0x1

    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "sf":Ljava/io/File;
    .end local v16    # "pf":Ljava/io/File;
    goto/16 :goto_1

    .line 100
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v15    # "sf":Ljava/io/File;
    :cond_1
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v11, 0x1

    goto/16 :goto_1

    .line 98
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "sf":Ljava/io/File;
    :cond_2
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v11, 0x1

    goto/16 :goto_0

    .line 115
    .end local v12    # "profile":Ljava/lang/String;
    :cond_3
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getAbsolutePath(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v10, v0, v2, v3, v2}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 116
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dshdata migration done -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 117
    :catchall_1
    move-exception v0

    .line 119
    .restart local v0    # "t":Ljava/lang/Throwable;
    const-string v2, "dshdata migration failed"

    invoke-static {v7, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_4
    :goto_2
    return-object v9
.end method

.method public final extractSnapshot(Lkotlin/jvm/functions/Function2;)Z
    .locals 8
    .param p1, "onProgress"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "snapshot.tar.xz"

    const-string v1, "onProgress"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    nop

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/dshmobile/shell/EngineManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    const-string v2, "openFd(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    sget-object v2, Lcom/dshmobile/shell/SnapshotExtractor;->INSTANCE:Lcom/dshmobile/shell/SnapshotExtractor;

    iget-object v3, p0, Lcom/dshmobile/shell/EngineManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const-string v0, "open(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    iget-object v0, p0, Lcom/dshmobile/shell/EngineManager;->usrDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    const-string v0, "getParentFile(...)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/dshmobile/shell/SnapshotExtractor;->extract(Ljava/io/InputStream;JLjava/io/File;Lkotlin/jvm/functions/Function2;)V

    .line 53
    iget-object v0, p0, Lcom/dshmobile/shell/EngineManager;->homeDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    nop

    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "dsh-engine"

    const-string v2, "snapshot extract failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    const/4 v1, 0x0

    move v0, v1

    .line 50
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method

.method public final getDshDataDir()Ljava/io/File;
    .locals 3

    .line 28
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/dshmobile/shell/EngineManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "dshdata-fallback"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    :cond_0
    nop

    .line 30
    .local v0, "publicDocs":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "dshdata"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getEngineReady()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/dshmobile/shell/EngineManager;->nodeBin:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final getHomeDir()Ljava/io/File;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/dshmobile/shell/EngineManager;->homeDir:Ljava/io/File;

    return-object v0
.end method

.method public final getUsrDir()Ljava/io/File;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/dshmobile/shell/EngineManager;->usrDir:Ljava/io/File;

    return-object v0
.end method

.method public final startEngine(I)Z
    .locals 16
    .param p1, "port"    # I

    .line 166
    move-object/from16 v1, p0

    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/dshmobile/shell/EngineManager;->usrDir:Ljava/io/File;

    const-string v3, "lib/libtermux-exec-ld-preload.so"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v0

    .line 167
    .local v2, "preload":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v3, "dsh-engine"

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "engine start failed: termux-exec preload missing at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v4

    .line 171
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 173
    .local v5, "now":J
    sget-object v0, Lcom/dshmobile/shell/EngineManager;->STARTING:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v0, v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    return v7

    .line 175
    :cond_1
    sget-wide v8, Lcom/dshmobile/shell/EngineManager;->lastStartAttemptAt:J

    sub-long v8, v5, v8

    const-wide/32 v10, 0x15f90

    cmp-long v0, v8, v10

    if-gez v0, :cond_2

    .line 176
    sget-object v0, Lcom/dshmobile/shell/EngineManager;->STARTING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 177
    return v7

    .line 179
    :cond_2
    nop

    .line 181
    const/4 v0, 0x6

    :try_start_0
    new-array v8, v0, [Ljava/lang/String;

    iget-object v9, v1, Lcom/dshmobile/shell/EngineManager;->nodeBin:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v9, "--expose-internals"

    aput-object v9, v8, v7

    iget-object v9, v1, Lcom/dshmobile/shell/EngineManager;->dshBin:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const-string v9, "web"

    const/4 v11, 0x3

    aput-object v9, v8, v11

    const-string v9, "--port"

    const/4 v12, 0x4

    aput-object v9, v8, v12

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x5

    aput-object v9, v8, v13

    .line 180
    nop

    .line 184
    .local v8, "args":[Ljava/lang/String;
    const/16 v9, 0xf

    new-array v9, v9, [Lkotlin/Pair;

    const-string v14, "PATH"

    iget-object v15, v1, Lcom/dshmobile/shell/EngineManager;->usrDir:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "/bin:/system/bin"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v9, v4

    .line 185
    const-string v0, "LD_LIBRARY_PATH"

    iget-object v14, v1, Lcom/dshmobile/shell/EngineManager;->usrDir:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/lib"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v9, v7

    .line 184
    nop

    .line 188
    const-string v0, "OPENSSL_CONF"

    iget-object v14, v1, Lcom/dshmobile/shell/EngineManager;->usrDir:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/etc/tls/openssl.cnf"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v9, v10

    .line 184
    nop

    .line 189
    const-string v0, "HOME"

    iget-object v10, v1, Lcom/dshmobile/shell/EngineManager;->homeDir:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v9, v11

    .line 184
    nop

    .line 193
    const-string v0, "DSH_HOME"

    invoke-virtual/range {p0 .. p0}, Lcom/dshmobile/shell/EngineManager;->ensureDshDataHome()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v9, v12

    .line 184
    nop

    .line 196
    const-string v0, "TMPDIR"

    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/dshmobile/shell/EngineManager;->homeDir:Ljava/io/File;

    const-string v12, "tmp"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 281
    move-object v11, v10

    .local v11, "$this$startEngine_u24lambda_u241":Ljava/io/File;
    const/4 v12, 0x0

    .line 196
    .local v12, "$i$a$-apply-EngineManager$startEngine$env$1":I
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .end local v11    # "$this$startEngine_u24lambda_u241":Ljava/io/File;
    .end local v12    # "$i$a$-apply-EngineManager$startEngine$env$1":I
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v9, v13

    .line 184
    nop

    .line 203
    const-string v0, "LD_PRELOAD"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v10, 0x6

    aput-object v0, v9, v10

    .line 184
    nop

    .line 204
    const-string v0, "TERMUX_EXEC__SYSTEM_LINKER_EXEC__MODE"

    const-string v10, "force"

    invoke-static {v0, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v10, 0x7

    aput-object v0, v9, v10

    .line 184
    nop

    .line 205
    const-string v0, "TERMUX_EXEC__EXECVE_CALL__INTERCEPT"

    const-string v10, "1"

    invoke-static {v0, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v10, 0x8

    aput-object v0, v9, v10

    .line 184
    nop

    .line 206
    const-string v0, "TERMUX__ROOTFS"

    iget-object v10, v1, Lcom/dshmobile/shell/EngineManager;->usrDir:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v10, 0x9

    aput-object v0, v9, v10

    .line 184
    nop

    .line 207
    const-string v0, "TERMUX__PREFIX"

    iget-object v10, v1, Lcom/dshmobile/shell/EngineManager;->usrDir:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v10, 0xa

    aput-object v0, v9, v10

    .line 184
    nop

    .line 208
    const-string v0, "TERMUX_APP__DATA_DIR"

    iget-object v10, v1, Lcom/dshmobile/shell/EngineManager;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v10, 0xb

    aput-object v0, v9, v10

    .line 184
    nop

    .line 209
    const-string v0, "TERMUX_APP__LEGACY_DATA_DIR"

    const-string v10, "/data/data/com.dshmobile.shell"

    invoke-static {v0, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v10, 0xc

    aput-object v0, v9, v10

    .line 184
    nop

    .line 210
    const-string v0, "TERMUX_VERSION"

    const-string v10, "0.118.3"

    invoke-static {v0, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v10, 0xd

    aput-object v0, v9, v10

    .line 184
    nop

    .line 212
    const-string v0, "DSH_PICK_TOKEN"

    iget-object v10, v1, Lcom/dshmobile/shell/EngineManager;->pickToken:Ljava/lang/String;

    if-nez v10, :cond_3

    const-string v10, ""

    :cond_3
    invoke-static {v0, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v10, 0xe

    aput-object v0, v9, v10

    .line 184
    nop

    .line 183
    invoke-static {v9}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v10, "NODE_OPTIONS"

    const-string v11, "--max-old-space-size=512 --expose-gc --require=/data/data/com.dshmobile.shell/files/usr/lib/memopt.js"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .local v0, "env":Ljava/util/Map;
    invoke-direct {v1, v8, v0}, Lcom/dshmobile/shell/EngineManager;->startWithArgs([Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Process;

    move-result-object v9

    iput-object v9, v1, Lcom/dshmobile/shell/EngineManager;->engineProcess:Ljava/lang/Process;

    .line 216
    sput-wide v5, Lcom/dshmobile/shell/EngineManager;->lastStartAttemptAt:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    nop

    .line 222
    .end local v0    # "env":Ljava/util/Map;
    .end local v8    # "args":[Ljava/lang/String;
    sget-object v0, Lcom/dshmobile/shell/EngineManager;->STARTING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 223
    move v4, v7

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    .line 219
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v7, "engine start failed"

    invoke-static {v3, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    nop

    .line 222
    .end local v0    # "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/dshmobile/shell/EngineManager;->STARTING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 223
    nop

    .line 179
    :goto_0
    return v4

    .line 222
    :catchall_1
    move-exception v0

    sget-object v3, Lcom/dshmobile/shell/EngineManager;->STARTING:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

.method public final stopEngine()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/dshmobile/shell/EngineManager;->engineProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 256
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dshmobile/shell/EngineManager;->engineProcess:Ljava/lang/Process;

    .line 258
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/dshmobile/shell/EngineManager;->lastStartAttemptAt:J

    .line 259
    return-void
.end method
