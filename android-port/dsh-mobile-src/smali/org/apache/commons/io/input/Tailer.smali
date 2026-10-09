.class public Lorg/apache/commons/io/input/Tailer;
.super Ljava/lang/Object;
.source "Tailer.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/Tailer$Tailable;,
        Lorg/apache/commons/io/input/Tailer$Builder;,
        Lorg/apache/commons/io/input/Tailer$TailablePath;,
        Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;,
        Lorg/apache/commons/io/input/Tailer$RandomAccessFileBridge;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field private static final DEFAULT_DELAY_MILLIS:I = 0x3e8

.field private static final RAF_READ_ONLY_MODE:Ljava/lang/String; = "r"


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final delayDuration:Ljava/time/Duration;

.field private final inbuf:[B

.field private final listener:Lorg/apache/commons/io/input/TailerListener;

.field private final reOpen:Z

.field private volatile run:Z

.field private final tailAtEnd:Z

.field private final tailable:Lorg/apache/commons/io/input/Tailer$Tailable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 472
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/Tailer;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p4, "delayMillis"    # J
    .param p6, "end"    # Z
    .param p7, "reOpen"    # Z
    .param p8, "bufSize"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 703
    new-instance v1, Lorg/apache/commons/io/input/Tailer$TailablePath;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/io/input/Tailer$TailablePath;-><init>(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;Lorg/apache/commons/io/input/Tailer$1;)V

    invoke-static {p4, p5}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v4

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Lorg/apache/commons/io/input/Tailer$Tailable;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;Ljava/time/Duration;ZZI)V

    .line 704
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 715
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V

    .line 716
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 728
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V

    .line 729
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J
    .param p5, "end"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 742
    const/16 v6, 0x2000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V

    .line 743
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J
    .param p5, "end"    # Z
    .param p6, "bufferSize"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 788
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 789
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J
    .param p5, "end"    # Z
    .param p6, "reOpen"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 757
    const/16 v7, 0x2000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 758
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J
    .param p5, "end"    # Z
    .param p6, "reOpen"    # Z
    .param p7, "bufferSize"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 773
    sget-object v2, Lorg/apache/commons/io/input/Tailer;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 774
    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/io/input/Tailer$Tailable;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;Ljava/time/Duration;ZZI)V
    .locals 1
    .param p1, "tailable"    # Lorg/apache/commons/io/input/Tailer$Tailable;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p4, "delayDuration"    # Ljava/time/Duration;
    .param p5, "end"    # Z
    .param p6, "reOpen"    # Z
    .param p7, "bufferSize"    # I

    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 804
    const-string v0, "tailable"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/Tailer$Tailable;

    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    .line 805
    const-string v0, "listener"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/TailerListener;

    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 806
    iput-object p4, p0, Lorg/apache/commons/io/input/Tailer;->delayDuration:Ljava/time/Duration;

    .line 807
    iput-boolean p5, p0, Lorg/apache/commons/io/input/Tailer;->tailAtEnd:Z

    .line 808
    invoke-static {p7}, Lorg/apache/commons/io/IOUtils;->byteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    .line 811
    invoke-interface {p3, p0}, Lorg/apache/commons/io/input/TailerListener;->init(Lorg/apache/commons/io/input/Tailer;)V

    .line 812
    iput-boolean p6, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    .line 813
    iput-object p2, p0, Lorg/apache/commons/io/input/Tailer;->charset:Ljava/nio/charset/Charset;

    .line 814
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/input/Tailer$Tailable;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;Ljava/time/Duration;ZZILorg/apache/commons/io/input/Tailer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/io/input/Tailer$Tailable;
    .param p2, "x1"    # Ljava/nio/charset/Charset;
    .param p3, "x2"    # Lorg/apache/commons/io/input/TailerListener;
    .param p4, "x3"    # Ljava/time/Duration;
    .param p5, "x4"    # Z
    .param p6, "x5"    # Z
    .param p7, "x6"    # I
    .param p8, "x7"    # Lorg/apache/commons/io/input/Tailer$1;

    .line 140
    invoke-direct/range {p0 .. p7}, Lorg/apache/commons/io/input/Tailer;-><init>(Lorg/apache/commons/io/input/Tailer$Tailable;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;Ljava/time/Duration;ZZI)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/Tailer$Builder;
    .locals 1

    .line 481
    new-instance v0, Lorg/apache/commons/io/input/Tailer$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/Tailer$Builder;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p3, "delayMillis"    # J
    .param p5, "end"    # Z
    .param p6, "reOpen"    # Z
    .param p7, "bufferSize"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 501
    invoke-static {}, Lorg/apache/commons/io/input/Tailer;->builder()Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 502
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/input/Tailer$Builder;->setFile(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 503
    invoke-virtual {v0, p2}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 504
    invoke-virtual {v0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 505
    invoke-static {p3, p4}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/input/Tailer$Builder;->setDelayDuration(Ljava/time/Duration;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 506
    invoke-virtual {v0, p5}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailFromEnd(Z)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 507
    invoke-virtual {v0, p6}, Lorg/apache/commons/io/input/Tailer$Builder;->setReOpen(Z)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 508
    invoke-virtual {v0, p7}, Lorg/apache/commons/io/input/Tailer$Builder;->setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 509
    invoke-virtual {v0}, Lorg/apache/commons/io/input/Tailer$Builder;->get()Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    .line 501
    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 524
    invoke-static {}, Lorg/apache/commons/io/input/Tailer;->builder()Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 525
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/input/Tailer$Builder;->setFile(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 526
    invoke-virtual {v0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Lorg/apache/commons/io/input/Tailer$Builder;->get()Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    .line 524
    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)Lorg/apache/commons/io/input/Tailer;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delayMillis"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 543
    invoke-static {}, Lorg/apache/commons/io/input/Tailer;->builder()Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 544
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/input/Tailer$Builder;->setFile(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 545
    invoke-virtual {v0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 546
    invoke-static {p2, p3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/input/Tailer$Builder;->setDelayDuration(Ljava/time/Duration;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Lorg/apache/commons/io/input/Tailer$Builder;->get()Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    .line 543
    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delayMillis"    # J
    .param p4, "end"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 564
    invoke-static {}, Lorg/apache/commons/io/input/Tailer;->builder()Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 565
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/input/Tailer$Builder;->setFile(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 566
    invoke-virtual {v0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 567
    invoke-static {p2, p3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/input/Tailer$Builder;->setDelayDuration(Ljava/time/Duration;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 568
    invoke-virtual {v0, p4}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailFromEnd(Z)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 569
    invoke-virtual {v0}, Lorg/apache/commons/io/input/Tailer$Builder;->get()Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    .line 564
    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)Lorg/apache/commons/io/input/Tailer;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delayMillis"    # J
    .param p4, "end"    # Z
    .param p5, "bufferSize"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 638
    invoke-static {}, Lorg/apache/commons/io/input/Tailer;->builder()Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 639
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/input/Tailer$Builder;->setFile(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 640
    invoke-virtual {v0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 641
    invoke-static {p2, p3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/input/Tailer$Builder;->setDelayDuration(Ljava/time/Duration;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 642
    invoke-virtual {v0, p4}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailFromEnd(Z)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 643
    invoke-virtual {v0, p5}, Lorg/apache/commons/io/input/Tailer$Builder;->setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 644
    invoke-virtual {v0}, Lorg/apache/commons/io/input/Tailer$Builder;->get()Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    .line 638
    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)Lorg/apache/commons/io/input/Tailer;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delayMillis"    # J
    .param p4, "end"    # Z
    .param p5, "reOpen"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 587
    invoke-static {}, Lorg/apache/commons/io/input/Tailer;->builder()Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 588
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/input/Tailer$Builder;->setFile(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 589
    invoke-virtual {v0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 590
    invoke-static {p2, p3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/input/Tailer$Builder;->setDelayDuration(Ljava/time/Duration;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 591
    invoke-virtual {v0, p4}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailFromEnd(Z)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 592
    invoke-virtual {v0, p5}, Lorg/apache/commons/io/input/Tailer$Builder;->setReOpen(Z)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 593
    invoke-virtual {v0}, Lorg/apache/commons/io/input/Tailer$Builder;->get()Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    .line 587
    return-object v0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "listener"    # Lorg/apache/commons/io/input/TailerListener;
    .param p2, "delayMillis"    # J
    .param p4, "end"    # Z
    .param p5, "reOpen"    # Z
    .param p6, "bufferSize"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 613
    invoke-static {}, Lorg/apache/commons/io/input/Tailer;->builder()Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 614
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/input/Tailer$Builder;->setFile(Ljava/io/File;)Lorg/apache/commons/io/build/AbstractOriginSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 615
    invoke-virtual {v0, p1}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailerListener(Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 616
    invoke-static {p2, p3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/io/input/Tailer$Builder;->setDelayDuration(Ljava/time/Duration;)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 617
    invoke-virtual {v0, p4}, Lorg/apache/commons/io/input/Tailer$Builder;->setTailFromEnd(Z)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 618
    invoke-virtual {v0, p5}, Lorg/apache/commons/io/input/Tailer$Builder;->setReOpen(Z)Lorg/apache/commons/io/input/Tailer$Builder;

    move-result-object v0

    .line 619
    invoke-virtual {v0, p6}, Lorg/apache/commons/io/input/Tailer$Builder;->setBufferSize(I)Lorg/apache/commons/io/build/AbstractStreamBuilder;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/Tailer$Builder;

    .line 620
    invoke-virtual {v0}, Lorg/apache/commons/io/input/Tailer$Builder;->get()Lorg/apache/commons/io/input/Tailer;

    move-result-object v0

    .line 613
    return-object v0
.end method

.method private readLines(Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;)J
    .locals 16
    .param p1, "reader"    # Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 886
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x40

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v3, v0

    .line 887
    .local v3, "lineBuf":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->getPointer()J

    move-result-wide v4

    .line 888
    .local v4, "pos":J
    move-wide v6, v4

    .line 890
    .local v6, "rePos":J
    const/4 v0, 0x0

    .line 891
    .local v0, "seenCR":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v1, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    invoke-interface {v2, v8}, Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->read([B)I

    move-result v8

    move v9, v8

    .local v9, "num":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    .line 892
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v9, :cond_2

    .line 893
    iget-object v10, v1, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    aget-byte v10, v10, v8

    .line 894
    .local v10, "ch":B
    sparse-switch v10, :sswitch_data_0

    .line 908
    if-eqz v0, :cond_1

    .line 909
    const/4 v0, 0x0

    .line 910
    iget-object v11, v1, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    goto :goto_2

    .line 902
    :sswitch_0
    if-eqz v0, :cond_0

    .line 903
    const/16 v11, 0xd

    invoke-virtual {v3, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 905
    :cond_0
    const/4 v0, 0x1

    .line 906
    goto :goto_3

    .line 896
    :sswitch_1
    const/4 v0, 0x0

    .line 897
    iget-object v13, v1, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    new-instance v14, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    iget-object v11, v1, Lorg/apache/commons/io/input/Tailer;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v14, v15, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v13, v14}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 898
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 899
    int-to-long v11, v8

    add-long/2addr v11, v4

    const-wide/16 v13, 0x1

    add-long v6, v11, v13

    .line 900
    goto :goto_3

    .line 910
    :goto_2
    new-instance v12, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    iget-object v14, v1, Lorg/apache/commons/io/input/Tailer;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v12, v13, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v11, v12}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 912
    int-to-long v11, v8

    add-long/2addr v11, v4

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    move-wide v6, v11

    .line 914
    :cond_1
    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 892
    .end local v10    # "ch":B
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 917
    .end local v8    # "i":I
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->getPointer()J

    move-result-wide v10

    move-wide v4, v10

    goto :goto_0

    .line 920
    .end local v9    # "num":I
    :cond_3
    invoke-interface {v2, v6, v7}, Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->seek(J)V

    .line 922
    iget-object v8, v1, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    instance-of v8, v8, Lorg/apache/commons/io/input/TailerListenerAdapter;

    if-eqz v8, :cond_4

    .line 923
    iget-object v8, v1, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    check-cast v8, Lorg/apache/commons/io/input/TailerListenerAdapter;

    invoke-virtual {v8}, Lorg/apache/commons/io/input/TailerListenerAdapter;->endOfFileReached()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    :cond_4
    nop

    .line 927
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 926
    return-wide v6

    .line 886
    .end local v0    # "seenCR":Z
    .end local v4    # "pos":J
    .end local v6    # "rePos":J
    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v4

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 821
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 822
    return-void
.end method

.method public getDelay()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 832
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->delayDuration:Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDelayDuration()Ljava/time/Duration;
    .locals 1

    .line 842
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->delayDuration:Ljava/time/Duration;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 3

    .line 852
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    instance-of v0, v0, Lorg/apache/commons/io/input/Tailer$TailablePath;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    check-cast v0, Lorg/apache/commons/io/input/Tailer$TailablePath;

    invoke-virtual {v0}, Lorg/apache/commons/io/input/Tailer$TailablePath;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 855
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot extract java.io.File from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getRun()Z
    .locals 1

    .line 865
    iget-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    return v0
.end method

.method public getTailable()Lorg/apache/commons/io/input/Tailer$Tailable;
    .locals 1

    .line 875
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    return-object v0
.end method

.method public run()V
    .locals 11

    .line 935
    const/4 v0, 0x0

    .line 937
    .local v0, "reader":Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;
    :try_start_0
    sget-object v1, Lorg/apache/commons/io/file/attribute/FileTimes;->EPOCH:Ljava/nio/file/attribute/FileTime;

    .line 938
    .local v1, "last":Ljava/nio/file/attribute/FileTime;
    const-wide/16 v2, 0x0

    .line 940
    .local v2, "position":J
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v5, "r"

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    .line 942
    :try_start_1
    iget-object v4, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    invoke-interface {v4, v5}, Lorg/apache/commons/io/input/Tailer$Tailable;->getRandomAccess(Ljava/lang/String;)Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v0, v4

    .line 945
    goto :goto_1

    .line 943
    :catch_0
    move-exception v4

    .line 944
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    iget-object v5, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v5}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V

    .line 946
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    if-nez v0, :cond_0

    .line 947
    iget-object v4, p0, Lorg/apache/commons/io/input/Tailer;->delayDuration:Ljava/time/Duration;

    invoke-static {v4}, Lorg/apache/commons/io/ThreadUtils;->sleep(Ljava/time/Duration;)V

    goto :goto_0

    .line 950
    :cond_0
    iget-boolean v4, p0, Lorg/apache/commons/io/input/Tailer;->tailAtEnd:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    invoke-interface {v4}, Lorg/apache/commons/io/input/Tailer$Tailable;->size()J

    move-result-wide v4

    goto :goto_2

    :cond_1
    const-wide/16 v4, 0x0

    :goto_2
    move-wide v2, v4

    .line 951
    iget-object v4, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    invoke-interface {v4}, Lorg/apache/commons/io/input/Tailer$Tailable;->lastModifiedFileTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v4

    move-object v1, v4

    .line 952
    invoke-interface {v0, v2, v3}, Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->seek(J)V

    goto :goto_0

    .line 955
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 956
    iget-object v4, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    invoke-interface {v4, v1}, Lorg/apache/commons/io/input/Tailer$Tailable;->isNewer(Ljava/nio/file/attribute/FileTime;)Z

    move-result v4

    .line 958
    .local v4, "newer":Z
    iget-object v6, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    invoke-interface {v6}, Lorg/apache/commons/io/input/Tailer$Tailable;->size()J

    move-result-wide v6

    .line 959
    .local v6, "length":J
    cmp-long v8, v6, v2

    if-gez v8, :cond_5

    .line 961
    iget-object v8, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v8}, Lorg/apache/commons/io/input/TailerListener;->fileRotated()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 964
    move-object v8, v0

    .line 965
    .local v8, "save":Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;
    :try_start_3
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    invoke-interface {v9, v5}, Lorg/apache/commons/io/input/Tailer$Tailable;->getRandomAccess(Ljava/lang/String;)Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v9

    .line 969
    :try_start_4
    invoke-direct {p0, v8}, Lorg/apache/commons/io/input/Tailer;->readLines(Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;)J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 972
    goto :goto_4

    .line 970
    :catch_1
    move-exception v9

    .line 971
    .local v9, "ioe":Ljava/io/IOException;
    :try_start_5
    iget-object v10, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v10, v9}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 973
    .end local v9    # "ioe":Ljava/io/IOException;
    :goto_4
    const-wide/16 v2, 0x0

    .line 974
    if-eqz v8, :cond_3

    :try_start_6
    invoke-interface {v8}, Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 978
    .end local v8    # "save":Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;
    :cond_3
    goto :goto_3

    .line 964
    .restart local v8    # "save":Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;
    :catchall_0
    move-exception v9

    if-eqz v8, :cond_4

    :try_start_7
    invoke-interface {v8}, Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v10

    :try_start_8
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "reader":Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;
    .end local v1    # "last":Ljava/nio/file/attribute/FileTime;
    .end local v2    # "position":J
    .end local v4    # "newer":Z
    .end local v6    # "length":J
    :cond_4
    :goto_5
    throw v9
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 974
    .end local v8    # "save":Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;
    .restart local v0    # "reader":Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;
    .restart local v1    # "last":Ljava/nio/file/attribute/FileTime;
    .restart local v2    # "position":J
    .restart local v4    # "newer":Z
    .restart local v6    # "length":J
    :catch_2
    move-exception v8

    .line 976
    .local v8, "e":Ljava/io/FileNotFoundException;
    :try_start_9
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v9}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V

    .line 977
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->delayDuration:Ljava/time/Duration;

    invoke-static {v9}, Lorg/apache/commons/io/ThreadUtils;->sleep(Ljava/time/Duration;)V

    .line 979
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    .line 983
    :cond_5
    cmp-long v8, v6, v2

    if-lez v8, :cond_6

    .line 985
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/Tailer;->readLines(Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;)J

    move-result-wide v8

    move-wide v2, v8

    .line 986
    iget-object v8, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    invoke-interface {v8}, Lorg/apache/commons/io/input/Tailer$Tailable;->lastModifiedFileTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v8

    move-object v1, v8

    goto :goto_6

    .line 987
    :cond_6
    if-eqz v4, :cond_7

    .line 992
    const-wide/16 v2, 0x0

    .line 993
    invoke-interface {v0, v2, v3}, Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->seek(J)V

    .line 996
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/Tailer;->readLines(Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;)J

    move-result-wide v8

    move-wide v2, v8

    .line 997
    iget-object v8, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    invoke-interface {v8}, Lorg/apache/commons/io/input/Tailer$Tailable;->lastModifiedFileTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v8

    move-object v1, v8

    .line 999
    :cond_7
    :goto_6
    iget-boolean v8, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v8, :cond_8

    if-eqz v0, :cond_8

    .line 1000
    invoke-interface {v0}, Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->close()V

    .line 1002
    :cond_8
    iget-object v8, p0, Lorg/apache/commons/io/input/Tailer;->delayDuration:Ljava/time/Duration;

    invoke-static {v8}, Lorg/apache/commons/io/ThreadUtils;->sleep(Ljava/time/Duration;)V

    .line 1003
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-boolean v8, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v8, :cond_9

    .line 1004
    iget-object v8, p0, Lorg/apache/commons/io/input/Tailer;->tailable:Lorg/apache/commons/io/input/Tailer$Tailable;

    invoke-interface {v8, v5}, Lorg/apache/commons/io/input/Tailer$Tailable;->getRandomAccess(Ljava/lang/String;)Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;

    move-result-object v8

    move-object v0, v8

    .line 1005
    invoke-interface {v0, v2, v3}, Lorg/apache/commons/io/input/Tailer$RandomAccessResourceBridge;->seek(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1007
    .end local v4    # "newer":Z
    .end local v6    # "length":J
    :cond_9
    goto/16 :goto_3

    .line 1015
    .end local v1    # "last":Ljava/nio/file/attribute/FileTime;
    .end local v2    # "position":J
    :cond_a
    :try_start_a
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_7

    .line 1016
    :catch_3
    move-exception v1

    goto :goto_8

    .line 1014
    :catchall_2
    move-exception v1

    goto :goto_b

    .line 1011
    :catch_4
    move-exception v1

    .line 1012
    .local v1, "e":Ljava/lang/Exception;
    :try_start_b
    iget-object v2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v2, v1}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1015
    .end local v1    # "e":Ljava/lang/Exception;
    :try_start_c
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 1018
    :goto_7
    goto :goto_9

    .line 1016
    :catch_5
    move-exception v1

    .line 1017
    .local v1, "e":Ljava/io/IOException;
    :goto_8
    iget-object v2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v2, v1}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V

    .line 1019
    .end local v1    # "e":Ljava/io/IOException;
    :goto_9
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->close()V

    .line 1020
    goto :goto_a

    .line 1008
    :catch_6
    move-exception v1

    .line 1009
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1010
    iget-object v2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v2, v1}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1015
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :try_start_e
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_7

    .line 1016
    :catch_7
    move-exception v1

    goto :goto_8

    .line 1021
    :goto_a
    return-void

    .line 1015
    :goto_b
    :try_start_f
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 1018
    goto :goto_c

    .line 1016
    :catch_8
    move-exception v2

    .line 1017
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v3, v2}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V

    .line 1019
    .end local v2    # "e":Ljava/io/IOException;
    :goto_c
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->close()V

    .line 1020
    throw v1
.end method

.method public stop()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1030
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->close()V

    .line 1031
    return-void
.end method
