.class public Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;
.super Ljava/lang/Object;
.source "TypeUtils.java"

# interfaces
.implements Lorg/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/reflect/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WildcardTypeBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/lang3/builder/Builder<",
        "Ljava/lang/reflect/WildcardType;",
        ">;"
    }
.end annotation


# instance fields
.field private lowerBounds:[Ljava/lang/reflect/Type;

.field private upperBounds:[Ljava/lang/reflect/Type;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/lang3/reflect/TypeUtils$1;

    .line 183
    invoke-direct {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 183
    invoke-virtual {p0}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->build()Ljava/lang/reflect/WildcardType;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/reflect/WildcardType;
    .locals 4

    .line 199
    new-instance v0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;

    iget-object v1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->upperBounds:[Ljava/lang/reflect/Type;

    iget-object v2, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->lowerBounds:[Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Lorg/apache/commons/lang3/reflect/TypeUtils$1;)V

    return-object v0
.end method

.method public varargs withLowerBounds([Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;
    .locals 0
    .param p1, "bounds"    # [Ljava/lang/reflect/Type;

    .line 209
    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->lowerBounds:[Ljava/lang/reflect/Type;

    .line 210
    return-object p0
.end method

.method public varargs withUpperBounds([Ljava/lang/reflect/Type;)Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;
    .locals 0
    .param p1, "bounds"    # [Ljava/lang/reflect/Type;

    .line 220
    iput-object p1, p0, Lorg/apache/commons/lang3/reflect/TypeUtils$WildcardTypeBuilder;->upperBounds:[Ljava/lang/reflect/Type;

    .line 221
    return-object p0
.end method
