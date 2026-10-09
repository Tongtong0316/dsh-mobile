.class final Lorg/apache/commons/lang3/stream/Streams$EnumerationSpliterator;
.super Ljava/util/Spliterators$AbstractSpliterator;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EnumerationSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Spliterators$AbstractSpliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final enumeration:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(JILjava/util/Enumeration;)V
    .locals 1
    .param p1, "estimatedSize"    # J
    .param p3, "additionalCharacteristics"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/Enumeration<",
            "TT;>;)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Lorg/apache/commons/lang3/stream/Streams$EnumerationSpliterator;, "Lorg/apache/commons/lang3/stream/Streams$EnumerationSpliterator<TT;>;"
    .local p4, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    .line 145
    const-string v0, "enumeration"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    iput-object v0, p0, Lorg/apache/commons/lang3/stream/Streams$EnumerationSpliterator;->enumeration:Ljava/util/Enumeration;

    .line 146
    return-void
.end method

.method private next(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/apache/commons/lang3/stream/Streams$EnumerationSpliterator;, "Lorg/apache/commons/lang3/stream/Streams$EnumerationSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/stream/Streams$EnumerationSpliterator;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 157
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/apache/commons/lang3/stream/Streams$EnumerationSpliterator;, "Lorg/apache/commons/lang3/stream/Streams$EnumerationSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    nop

    :goto_0
    iget-object v0, p0, Lorg/apache/commons/lang3/stream/Streams$EnumerationSpliterator;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/stream/Streams$EnumerationSpliterator;->next(Ljava/util/function/Consumer;)Z

    goto :goto_0

    .line 153
    :cond_0
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 163
    .local p0, "this":Lorg/apache/commons/lang3/stream/Streams$EnumerationSpliterator;, "Lorg/apache/commons/lang3/stream/Streams$EnumerationSpliterator<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Lorg/apache/commons/lang3/stream/Streams$EnumerationSpliterator;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/stream/Streams$EnumerationSpliterator;->next(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
