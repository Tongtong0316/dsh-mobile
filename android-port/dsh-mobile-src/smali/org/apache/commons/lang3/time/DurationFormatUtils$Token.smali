.class Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/DurationFormatUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;


# instance fields
.field private count:I

.field private optionalIndex:I

.field private final value:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->EMPTY_ARRAY:[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;ZI)V
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "optional"    # Z
    .param p3, "optionalIndex"    # I

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->optionalIndex:I

    .line 113
    const-string v0, "value"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/CharSequence;

    .line 114
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    .line 115
    if-eqz p2, :cond_0

    .line 116
    iput p3, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->optionalIndex:I

    .line 118
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    .line 85
    iget v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->optionalIndex:I

    return v0
.end method

.method static synthetic access$100()[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .locals 1

    .line 85
    sget-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->EMPTY_ARRAY:[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    return-object v0
.end method

.method static containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "tokens"    # [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .param p1, "value"    # Ljava/lang/Object;

    .line 98
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$containsTokenWithValue$0(Ljava/lang/Object;Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "token"    # Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    .line 98
    invoke-virtual {p1}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj2"    # Ljava/lang/Object;

    .line 128
    instance-of v0, p1, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 129
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    .line 130
    .local v0, "tok2":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    iget-object v2, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 131
    return v1

    .line 133
    :cond_0
    iget v2, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    iget v3, v0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    if-eq v2, v3, :cond_1

    .line 134
    return v1

    .line 136
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/CharSequence;

    instance-of v2, v2, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    .line 137
    iget-object v1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 139
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/CharSequence;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_3

    .line 140
    iget-object v1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/CharSequence;

    iget-object v2, v0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 142
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/CharSequence;

    iget-object v3, v0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/CharSequence;

    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 144
    .end local v0    # "tok2":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    :cond_5
    return v1
.end method

.method getCount()I
    .locals 1

    .line 153
    iget v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    return v0
.end method

.method getValue()Ljava/lang/Object;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method increment()V
    .locals 1

    .line 181
    iget v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    .line 182
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 191
    iget-object v0, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
