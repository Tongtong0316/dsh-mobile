.class public Lorg/apache/commons/io/input/ObservableInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "ObservableInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/ObservableInputStream$Observer;
    }
.end annotation


# instance fields
.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/io/input/ObservableInputStream$Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/ObservableInputStream;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    .line 119
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/util/List;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Lorg/apache/commons/io/input/ObservableInputStream$Observer;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p2, "observers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/commons/io/input/ObservableInputStream$Observer;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 129
    iput-object p2, p0, Lorg/apache/commons/io/input/ObservableInputStream;->observers:Ljava/util/List;

    .line 130
    return-void
.end method

.method public varargs constructor <init>(Ljava/io/InputStream;[Lorg/apache/commons/io/input/ObservableInputStream$Observer;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "observers"    # [Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    .line 140
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/ObservableInputStream;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    .line 141
    return-void
.end method

.method private forEachObserver(Lorg/apache/commons/io/function/IOConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/io/function/IOConsumer<",
            "Lorg/apache/commons/io/input/ObservableInputStream$Observer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    .local p1, "action":Lorg/apache/commons/io/function/IOConsumer;, "Lorg/apache/commons/io/function/IOConsumer<Lorg/apache/commons/io/input/ObservableInputStream$Observer;>;"
    iget-object v0, p0, Lorg/apache/commons/io/input/ObservableInputStream;->observers:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/apache/commons/io/function/IOConsumer;->forAll(Lorg/apache/commons/io/function/IOConsumer;Ljava/lang/Iterable;)V

    .line 178
    return-void
.end method

.method static synthetic lambda$noteDataByte$0(ILorg/apache/commons/io/input/ObservableInputStream$Observer;)V
    .locals 0
    .param p0, "value"    # I
    .param p1, "observer"    # Lorg/apache/commons/io/input/ObservableInputStream$Observer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-virtual {p1, p0}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;->data(I)V

    return-void
.end method

.method static synthetic lambda$noteDataBytes$1([BIILorg/apache/commons/io/input/ObservableInputStream$Observer;)V
    .locals 0
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "observer"    # Lorg/apache/commons/io/input/ObservableInputStream$Observer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-virtual {p3, p0, p1, p2}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;->data([BII)V

    return-void
.end method

.method static synthetic lambda$noteError$2(Ljava/io/IOException;Lorg/apache/commons/io/input/ObservableInputStream$Observer;)V
    .locals 0
    .param p0, "exception"    # Ljava/io/IOException;
    .param p1, "observer"    # Lorg/apache/commons/io/input/ObservableInputStream$Observer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-virtual {p1, p0}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;->error(Ljava/io/IOException;)V

    return-void
.end method

.method private notify([BIILjava/io/IOException;)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "result"    # I
    .param p4, "ioe"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    if-nez p4, :cond_2

    .line 246
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteFinished()V

    goto :goto_0

    .line 248
    :cond_0
    if-lez p3, :cond_1

    .line 249
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ObservableInputStream;->noteDataBytes([BII)V

    .line 251
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    invoke-virtual {p0, p4}, Lorg/apache/commons/io/input/ObservableInputStream;->noteError(Ljava/io/IOException;)V

    .line 244
    throw p4
.end method


# virtual methods
.method public add(Lorg/apache/commons/io/input/ObservableInputStream$Observer;)V
    .locals 1
    .param p1, "observer"    # Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    .line 149
    iget-object v0, p0, Lorg/apache/commons/io/input/ObservableInputStream;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/io/IOException;
    move-object v0, v1

    .line 160
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteClosed()V

    goto :goto_1

    .line 163
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteError(Ljava/io/IOException;)V

    .line 165
    :goto_1
    return-void
.end method

.method public consume()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->consume(Ljava/io/InputStream;)J

    .line 174
    return-void
.end method

.method public getObservers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/io/input/ObservableInputStream$Observer;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/io/input/ObservableInputStream;->observers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected noteClosed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    new-instance v0, Lorg/apache/commons/io/input/ObservableInputStream$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ObservableInputStream$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->forEachObserver(Lorg/apache/commons/io/function/IOConsumer;)V

    .line 197
    return-void
.end method

.method protected noteDataByte(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    new-instance v0, Lorg/apache/commons/io/input/ObservableInputStream$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/input/ObservableInputStream$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->forEachObserver(Lorg/apache/commons/io/function/IOConsumer;)V

    .line 207
    return-void
.end method

.method protected noteDataBytes([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    new-instance v0, Lorg/apache/commons/io/input/ObservableInputStream$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/io/input/ObservableInputStream$$ExternalSyntheticLambda3;-><init>([BII)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->forEachObserver(Lorg/apache/commons/io/function/IOConsumer;)V

    .line 219
    return-void
.end method

.method protected noteError(Ljava/io/IOException;)V
    .locals 1
    .param p1, "exception"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    new-instance v0, Lorg/apache/commons/io/input/ObservableInputStream$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/input/ObservableInputStream$$ExternalSyntheticLambda4;-><init>(Ljava/io/IOException;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->forEachObserver(Lorg/apache/commons/io/function/IOConsumer;)V

    .line 230
    return-void
.end method

.method protected noteFinished()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    new-instance v0, Lorg/apache/commons/io/input/ObservableInputStream$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ObservableInputStream$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->forEachObserver(Lorg/apache/commons/io/function/IOConsumer;)V

    .line 239
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "result":I
    const/4 v1, 0x0

    .line 258
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->read()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 261
    goto :goto_0

    .line 259
    :catch_0
    move-exception v2

    .line 260
    .local v2, "ex":Ljava/io/IOException;
    move-object v1, v2

    .line 262
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_0
    if-nez v1, :cond_1

    .line 266
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 267
    invoke-virtual {p0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteFinished()V

    goto :goto_1

    .line 269
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream;->noteDataByte(I)V

    .line 271
    :goto_1
    return v0

    .line 263
    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/input/ObservableInputStream;->noteError(Ljava/io/IOException;)V

    .line 264
    throw v1
.end method

.method public read([B)I
    .locals 3
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "result":I
    const/4 v1, 0x0

    .line 279
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;->read([B)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 282
    goto :goto_0

    .line 280
    :catch_0
    move-exception v2

    .line 281
    .local v2, "ex":Ljava/io/IOException;
    move-object v1, v2

    .line 283
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/apache/commons/io/input/ObservableInputStream;->notify([BIILjava/io/IOException;)V

    .line 284
    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "result":I
    const/4 v1, 0x0

    .line 292
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ProxyInputStream;->read([BII)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 295
    goto :goto_0

    .line 293
    :catch_0
    move-exception v2

    .line 294
    .local v2, "ex":Ljava/io/IOException;
    move-object v1, v2

    .line 296
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_0
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/ObservableInputStream;->notify([BIILjava/io/IOException;)V

    .line 297
    return v0
.end method

.method public remove(Lorg/apache/commons/io/input/ObservableInputStream$Observer;)V
    .locals 1
    .param p1, "observer"    # Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    .line 306
    iget-object v0, p0, Lorg/apache/commons/io/input/ObservableInputStream;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 307
    return-void
.end method

.method public removeAllObservers()V
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/apache/commons/io/input/ObservableInputStream;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 314
    return-void
.end method
