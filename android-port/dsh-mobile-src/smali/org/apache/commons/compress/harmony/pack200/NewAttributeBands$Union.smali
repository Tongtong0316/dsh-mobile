.class public Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Union;
.super Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;
.source "NewAttributeBands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Union"
.end annotation


# instance fields
.field private final defaultCaseBody:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

.field private final unionCases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;",
            ">;"
        }
    .end annotation
.end field

.field private final unionTag:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;",
            ">;)V"
        }
    .end annotation

    .line 410
    .local p3, "unionCases":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;>;"
    .local p4, "body":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;>;"
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Union;->this$0:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;)V

    .line 411
    new-instance v0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;-><init>(Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Union;->unionTag:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    .line 412
    iput-object p3, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Union;->unionCases:Ljava/util/List;

    .line 413
    iput-object p4, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Union;->defaultCaseBody:Ljava/util/List;

    .line 414
    return-void
.end method


# virtual methods
.method public addAttributeToBand(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;Ljava/io/InputStream;)V
    .locals 6
    .param p1, "attribute"    # Lorg/apache/commons/compress/harmony/pack200/NewAttribute;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .line 418
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Union;->unionTag:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->addAttributeToBand(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;Ljava/io/InputStream;)V

    .line 419
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Union;->unionTag:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    invoke-virtual {v0}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->latestValue()I

    move-result v0

    int-to-long v0, v0

    .line 420
    .local v0, "tag":J
    const/4 v2, 0x1

    .line 421
    .local v2, "defaultCase":Z
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Union;->unionCases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;

    .line 422
    .local v4, "unionCase":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;
    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;->hasTag(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 423
    const/4 v2, 0x0

    .line 424
    invoke-virtual {v4, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;->addAttributeToBand(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;Ljava/io/InputStream;)V

    .line 426
    .end local v4    # "unionCase":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;
    :cond_0
    goto :goto_0

    .line 427
    :cond_1
    if-eqz v2, :cond_2

    .line 428
    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Union;->defaultCaseBody:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;

    .line 429
    .local v4, "layoutElement":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;
    invoke-virtual {v4, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;->addAttributeToBand(Lorg/apache/commons/compress/harmony/pack200/NewAttribute;Ljava/io/InputStream;)V

    .line 430
    .end local v4    # "layoutElement":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;
    goto :goto_1

    .line 432
    :cond_2
    return-void
.end method

.method public getDefaultCaseBody()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;",
            ">;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Union;->defaultCaseBody:Ljava/util/List;

    return-object v0
.end method

.method public getUnionCases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;",
            ">;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Union;->unionCases:Ljava/util/List;

    return-object v0
.end method

.method public getUnionTag()Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;
    .locals 1

    .line 443
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Union;->unionTag:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    return-object v0
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/compress/harmony/pack200/Pack200Exception;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Union;->unionTag:Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Integral;->pack(Ljava/io/OutputStream;)V

    .line 449
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Union;->unionCases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;

    .line 450
    .local v1, "unionCase":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;
    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;->pack(Ljava/io/OutputStream;)V

    .line 451
    .end local v1    # "unionCase":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;
    goto :goto_0

    .line 452
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Union;->defaultCaseBody:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;

    .line 453
    .local v1, "element":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;
    invoke-virtual {v1, p1}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;->pack(Ljava/io/OutputStream;)V

    .line 454
    .end local v1    # "element":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;
    goto :goto_1

    .line 455
    :cond_1
    return-void
.end method

.method public renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V
    .locals 2
    .param p1, "bciRenumbering"    # Lorg/apache/commons/compress/harmony/pack200/IntList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/compress/harmony/pack200/IntList;",
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/Label;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 459
    .local p2, "labelsToOffsets":Ljava/util/Map;, "Ljava/util/Map<Lorg/objectweb/asm/Label;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Union;->unionCases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;

    .line 460
    .local v1, "unionCase":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;->renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 461
    .end local v1    # "unionCase":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$UnionCase;
    goto :goto_0

    .line 462
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$Union;->defaultCaseBody:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;

    .line 463
    .local v1, "element":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;->renumberBci(Lorg/apache/commons/compress/harmony/pack200/IntList;Ljava/util/Map;)V

    .line 464
    .end local v1    # "element":Lorg/apache/commons/compress/harmony/pack200/NewAttributeBands$LayoutElement;
    goto :goto_1

    .line 465
    :cond_1
    return-void
.end method
