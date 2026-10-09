.class Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/apache/commons/lang3/time/FastDatePrinter$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDatePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharacterLiteral"
.end annotation


# instance fields
.field private final value:C


# direct methods
.method constructor <init>(C)V
    .locals 0
    .param p1, "value"    # C

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-char p1, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;->value:C

    .line 110
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/Appendable;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-char v0, p0, Lorg/apache/commons/lang3/time/FastDatePrinter$CharacterLiteral;->value:C

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 118
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .line 125
    const/4 v0, 0x1

    return v0
.end method
