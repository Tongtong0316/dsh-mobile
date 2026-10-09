.class public final Lorg/apache/commons/lang3/compare/ObjectToStringComparator;
.super Ljava/lang/Object;
.source "ObjectToStringComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/commons/lang3/compare/ObjectToStringComparator;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/commons/lang3/compare/ObjectToStringComparator;

    invoke-direct {v0}, Lorg/apache/commons/lang3/compare/ObjectToStringComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/compare/ObjectToStringComparator;->INSTANCE:Lorg/apache/commons/lang3/compare/ObjectToStringComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 57
    return v0

    .line 59
    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 60
    return v1

    .line 62
    :cond_1
    const/4 v2, -0x1

    if-nez p2, :cond_2

    .line 63
    return v2

    .line 65
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "string1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "string2":Ljava/lang/String;
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    .line 69
    return v0

    .line 71
    :cond_3
    if-nez v3, :cond_4

    .line 72
    return v1

    .line 74
    :cond_4
    if-nez v4, :cond_5

    .line 75
    return v2

    .line 77
    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
