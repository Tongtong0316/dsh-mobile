.class final Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;
.super Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;
.source "ColognePhonetic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/ColognePhonetic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CologneOutputBuffer"
.end annotation


# instance fields
.field private lastCode:C

.field final synthetic this$0:Lorg/apache/commons/codec/language/ColognePhonetic;


# direct methods
.method public constructor <init>(Lorg/apache/commons/codec/language/ColognePhonetic;I)V
    .locals 0
    .param p2, "buffSize"    # I

    .line 252
    iput-object p1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->this$0:Lorg/apache/commons/codec/language/ColognePhonetic;

    .line 253
    invoke-direct {p0, p2}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;-><init>(I)V

    .line 254
    const/16 p1, 0x2f

    iput-char p1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->lastCode:C

    .line 255
    return-void
.end method


# virtual methods
.method protected copyData(II)[C
    .locals 1
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 259
    iget-object v0, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->data:[C

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    return-object v0
.end method

.method public put(C)V
    .locals 2
    .param p1, "code"    # C

    .line 271
    const/16 v0, 0x2d

    if-eq p1, v0, :cond_1

    iget-char v0, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->lastCode:C

    if-eq v0, p1, :cond_1

    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->length:I

    if-nez v0, :cond_1

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->data:[C

    iget v1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->length:I

    aput-char p1, v0, v1

    .line 273
    iget v0, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->length:I

    .line 275
    :cond_1
    iput-char p1, p0, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->lastCode:C

    .line 276
    return-void
.end method
