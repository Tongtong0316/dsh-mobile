.class public Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "ValidatingObjectInputStream.java"


# instance fields
.field private final acceptMatchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/io/serialization/ClassNameMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final rejectMatchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/io/serialization/ClassNameMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->acceptMatchers:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->rejectMatchers:Ljava/util/List;

    .line 61
    return-void
.end method

.method private checkClassName(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->rejectMatchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/serialization/ClassNameMatcher;

    .line 121
    .local v1, "m":Lorg/apache/commons/io/serialization/ClassNameMatcher;
    invoke-interface {v1, p1}, Lorg/apache/commons/io/serialization/ClassNameMatcher;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->invalidClassNameFound(Ljava/lang/String;)V

    .line 124
    .end local v1    # "m":Lorg/apache/commons/io/serialization/ClassNameMatcher;
    :cond_0
    goto :goto_0

    .line 126
    :cond_1
    const/4 v0, 0x0

    .line 127
    .local v0, "ok":Z
    iget-object v1, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->acceptMatchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/io/serialization/ClassNameMatcher;

    .line 128
    .local v2, "m":Lorg/apache/commons/io/serialization/ClassNameMatcher;
    invoke-interface {v2, p1}, Lorg/apache/commons/io/serialization/ClassNameMatcher;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    const/4 v0, 0x1

    .line 130
    goto :goto_2

    .line 132
    .end local v2    # "m":Lorg/apache/commons/io/serialization/ClassNameMatcher;
    :cond_2
    goto :goto_1

    .line 133
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 134
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->invalidClassNameFound(Ljava/lang/String;)V

    .line 136
    :cond_4
    return-void
.end method

.method static synthetic lambda$accept$0(Ljava/lang/Class;)Lorg/apache/commons/io/serialization/FullClassNameMatcher;
    .locals 4
    .param p0, "c"    # Ljava/lang/Class;

    .line 71
    new-instance v0, Lorg/apache/commons/io/serialization/FullClassNameMatcher;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/commons/io/serialization/FullClassNameMatcher;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$reject$1(Ljava/lang/Class;)Lorg/apache/commons/io/serialization/FullClassNameMatcher;
    .locals 4
    .param p0, "c"    # Ljava/lang/Class;

    .line 158
    new-instance v0, Lorg/apache/commons/io/serialization/FullClassNameMatcher;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/commons/io/serialization/FullClassNameMatcher;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/util/regex/Pattern;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 2
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 95
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->acceptMatchers:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/io/serialization/RegexpClassNameMatcher;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/serialization/RegexpClassNameMatcher;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-object p0
.end method

.method public accept(Lorg/apache/commons/io/serialization/ClassNameMatcher;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 1
    .param p1, "m"    # Lorg/apache/commons/io/serialization/ClassNameMatcher;

    .line 83
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->acceptMatchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-object p0
.end method

.method public varargs accept([Ljava/lang/Class;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;"
        }
    .end annotation

    .line 71
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->acceptMatchers:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 72
    return-object p0
.end method

.method public varargs accept([Ljava/lang/String;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 3
    .param p1, "patterns"    # [Ljava/lang/String;

    .line 108
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->acceptMatchers:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 109
    return-object p0
.end method

.method protected invalidClassNameFound(Ljava/lang/String;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/io/InvalidClassException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class name not accepted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reject(Ljava/util/regex/Pattern;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 2
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 182
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->rejectMatchers:Ljava/util/List;

    new-instance v1, Lorg/apache/commons/io/serialization/RegexpClassNameMatcher;

    invoke-direct {v1, p1}, Lorg/apache/commons/io/serialization/RegexpClassNameMatcher;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    return-object p0
.end method

.method public reject(Lorg/apache/commons/io/serialization/ClassNameMatcher;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 1
    .param p1, "m"    # Lorg/apache/commons/io/serialization/ClassNameMatcher;

    .line 170
    iget-object v0, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->rejectMatchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    return-object p0
.end method

.method public varargs reject([Ljava/lang/Class;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;"
        }
    .end annotation

    .line 158
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->rejectMatchers:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 159
    return-object p0
.end method

.method public varargs reject([Ljava/lang/String;)Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;
    .locals 3
    .param p1, "patterns"    # [Ljava/lang/String;

    .line 195
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->rejectMatchers:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 196
    return-object p0
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 1
    .param p1, "osc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 201
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/io/serialization/ValidatingObjectInputStream;->checkClassName(Ljava/lang/String;)V

    .line 202
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
