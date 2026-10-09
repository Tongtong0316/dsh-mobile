.class public Lorg/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;
.super Lorg/apache/commons/lang3/text/translate/CodePointTranslator;
.source "UnicodeUnpairedSurrogateRemover.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CodePointTranslator;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public translate(ILjava/io/Writer;)Z
    .locals 1
    .param p1, "codePoint"    # I
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const v0, 0xd800

    if-lt p1, v0, :cond_0

    const v0, 0xdfff

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
