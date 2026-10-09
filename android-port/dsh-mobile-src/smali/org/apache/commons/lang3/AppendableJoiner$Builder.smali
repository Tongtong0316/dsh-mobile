.class public final Lorg/apache/commons/lang3/AppendableJoiner$Builder;
.super Ljava/lang/Object;
.source "AppendableJoiner.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/AppendableJoiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Lorg/apache/commons/lang3/AppendableJoiner<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private appender:Lorg/apache/commons/lang3/function/FailableBiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/function/FailableBiConsumer<",
            "Ljava/lang/Appendable;",
            "TT;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation
.end field

.field private delimiter:Ljava/lang/CharSequence;

.field private prefix:Ljava/lang/CharSequence;

.field private suffix:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 108
    .local p0, "this":Lorg/apache/commons/lang3/AppendableJoiner$Builder;, "Lorg/apache/commons/lang3/AppendableJoiner$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 91
    .local p0, "this":Lorg/apache/commons/lang3/AppendableJoiner$Builder;, "Lorg/apache/commons/lang3/AppendableJoiner$Builder<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->get()Lorg/apache/commons/lang3/AppendableJoiner;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/lang3/AppendableJoiner;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/AppendableJoiner<",
            "TT;>;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/apache/commons/lang3/AppendableJoiner$Builder;, "Lorg/apache/commons/lang3/AppendableJoiner$Builder<TT;>;"
    new-instance v6, Lorg/apache/commons/lang3/AppendableJoiner;

    iget-object v1, p0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->prefix:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->suffix:Ljava/lang/CharSequence;

    iget-object v3, p0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->delimiter:Ljava/lang/CharSequence;

    iget-object v4, p0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->appender:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/AppendableJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/apache/commons/lang3/function/FailableBiConsumer;Lorg/apache/commons/lang3/AppendableJoiner$1;)V

    return-object v6
.end method

.method public setDelimiter(Ljava/lang/CharSequence;)Lorg/apache/commons/lang3/AppendableJoiner$Builder;
    .locals 0
    .param p1, "delimiter"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lorg/apache/commons/lang3/AppendableJoiner$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/apache/commons/lang3/AppendableJoiner$Builder;, "Lorg/apache/commons/lang3/AppendableJoiner$Builder<TT;>;"
    iput-object p1, p0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->delimiter:Ljava/lang/CharSequence;

    .line 128
    return-object p0
.end method

.method public setElementAppender(Lorg/apache/commons/lang3/function/FailableBiConsumer;)Lorg/apache/commons/lang3/AppendableJoiner$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableBiConsumer<",
            "Ljava/lang/Appendable;",
            "TT;",
            "Ljava/io/IOException;",
            ">;)",
            "Lorg/apache/commons/lang3/AppendableJoiner$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/apache/commons/lang3/AppendableJoiner$Builder;, "Lorg/apache/commons/lang3/AppendableJoiner$Builder<TT;>;"
    .local p1, "appender":Lorg/apache/commons/lang3/function/FailableBiConsumer;, "Lorg/apache/commons/lang3/function/FailableBiConsumer<Ljava/lang/Appendable;TT;Ljava/io/IOException;>;"
    iput-object p1, p0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->appender:Lorg/apache/commons/lang3/function/FailableBiConsumer;

    .line 139
    return-object p0
.end method

.method public setPrefix(Ljava/lang/CharSequence;)Lorg/apache/commons/lang3/AppendableJoiner$Builder;
    .locals 0
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lorg/apache/commons/lang3/AppendableJoiner$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lorg/apache/commons/lang3/AppendableJoiner$Builder;, "Lorg/apache/commons/lang3/AppendableJoiner$Builder<TT;>;"
    iput-object p1, p0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->prefix:Ljava/lang/CharSequence;

    .line 150
    return-object p0
.end method

.method public setSuffix(Ljava/lang/CharSequence;)Lorg/apache/commons/lang3/AppendableJoiner$Builder;
    .locals 0
    .param p1, "suffix"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lorg/apache/commons/lang3/AppendableJoiner$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/apache/commons/lang3/AppendableJoiner$Builder;, "Lorg/apache/commons/lang3/AppendableJoiner$Builder<TT;>;"
    iput-object p1, p0, Lorg/apache/commons/lang3/AppendableJoiner$Builder;->suffix:Ljava/lang/CharSequence;

    .line 161
    return-object p0
.end method
