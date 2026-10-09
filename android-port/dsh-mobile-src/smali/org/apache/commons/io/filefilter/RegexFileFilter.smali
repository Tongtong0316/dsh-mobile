.class public Lorg/apache/commons/io/filefilter/RegexFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "RegexFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3b40d487ba1ad7e6L


# instance fields
.field private final transient pathToString:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method public static synthetic $r8$lambda$EVdv2IWjvSWLIgfOIrKO0OyLGhY(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/filefilter/RegexFileFilter;-><init>(Ljava/lang/String;I)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 150
    invoke-static {p1, p2}, Lorg/apache/commons/io/filefilter/RegexFileFilter;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/io/filefilter/RegexFileFilter;-><init>(Ljava/util/regex/Pattern;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/commons/io/IOCase;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "ioCase"    # Lorg/apache/commons/io/IOCase;

    .line 161
    invoke-static {p2}, Lorg/apache/commons/io/filefilter/RegexFileFilter;->toFlags(Lorg/apache/commons/io/IOCase;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/commons/io/filefilter/RegexFileFilter;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/io/filefilter/RegexFileFilter;-><init>(Ljava/util/regex/Pattern;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 115
    new-instance v0, Lorg/apache/commons/io/filefilter/RegexFileFilter$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/RegexFileFilter$$ExternalSyntheticLambda1;-><init>()V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/function/Function;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/filefilter/RegexFileFilter;-><init>(Ljava/util/regex/Pattern;Ljava/util/function/Function;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;Ljava/util/function/Function;)V
    .locals 1
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/function/Function<",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p2, "pathToString":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/nio/file/Path;Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 127
    const-string v0, "pattern"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    iput-object p1, p0, Lorg/apache/commons/io/filefilter/RegexFileFilter;->pattern:Ljava/util/regex/Pattern;

    .line 129
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/io/filefilter/RegexFileFilter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/RegexFileFilter$$ExternalSyntheticLambda0;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/io/filefilter/RegexFileFilter;->pathToString:Ljava/util/function/Function;

    .line 130
    return-void
.end method

.method private static compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    .locals 1
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 87
    const-string v0, "pattern"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method private static toFlags(Lorg/apache/commons/io/IOCase;)I
    .locals 1
    .param p0, "ioCase"    # Lorg/apache/commons/io/IOCase;

    .line 98
    invoke-static {p0}, Lorg/apache/commons/io/IOCase;->isCaseSensitive(Lorg/apache/commons/io/IOCase;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method


# virtual methods
.method public accept(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 2
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "attributes"    # Ljava/nio/file/attribute/BasicFileAttributes;

    .line 185
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/RegexFileFilter;->pathToString:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/io/filefilter/RegexFileFilter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/io/filefilter/RegexFileFilter;->toFileVisitResult(Z)Ljava/nio/file/FileVisitResult;

    move-result-object v1

    return-object v1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/RegexFileFilter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegexFileFilter [pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/io/filefilter/RegexFileFilter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
