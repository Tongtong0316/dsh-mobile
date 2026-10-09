.class abstract Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;
.super Lorg/apache/commons/io/build/AbstractStreamBuilder;
.source "BoundedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/BoundedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder<",
        "TT;>;>",
        "Lorg/apache/commons/io/build/AbstractStreamBuilder<",
        "Lorg/apache/commons/io/input/BoundedInputStream;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private count:J

.field private maxCount:J

.field private propagateClose:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 87
    .local p0, "this":Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;, "Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder<TT;>;"
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractStreamBuilder;-><init>()V

    .line 93
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->maxCount:J

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->propagateClose:Z

    return-void
.end method


# virtual methods
.method getCount()J
    .locals 2

    .line 99
    .local p0, "this":Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;, "Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->count:J

    return-wide v0
.end method

.method getMaxCount()J
    .locals 2

    .line 103
    .local p0, "this":Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;, "Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->maxCount:J

    return-wide v0
.end method

.method isPropagateClose()Z
    .locals 1

    .line 107
    .local p0, "this":Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;, "Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->propagateClose:Z

    return v0
.end method

.method public setCount(J)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;
    .locals 2
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;, "Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder<TT;>;"
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->count:J

    .line 124
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    return-object v0
.end method

.method public setMaxCount(J)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;
    .locals 2
    .param p1, "maxCount"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;, "Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder<TT;>;"
    const-wide/16 v0, -0x1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->maxCount:J

    .line 138
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    return-object v0
.end method

.method public setPropagateClose(Z)Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;
    .locals 1
    .param p1, "propagateClose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 152
    .local p0, "this":Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;, "Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder<TT;>;"
    iput-boolean p1, p0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->propagateClose:Z

    .line 153
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/input/BoundedInputStream$AbstractBuilder;

    return-object v0
.end method
