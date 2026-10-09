.class public final Lorg/apache/commons/io/input/MessageDigestInputStream;
.super Lorg/apache/commons/io/input/ObservableInputStream;
.source "MessageDigestInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;,
        Lorg/apache/commons/io/input/MessageDigestInputStream$MessageDigestMaintainingObserver;
    }
.end annotation


# instance fields
.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "messageDigest"    # Ljava/security/MessageDigest;

    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    new-instance v1, Lorg/apache/commons/io/input/MessageDigestInputStream$MessageDigestMaintainingObserver;

    invoke-direct {v1, p2}, Lorg/apache/commons/io/input/MessageDigestInputStream$MessageDigestMaintainingObserver;-><init>(Ljava/security/MessageDigest;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/ObservableInputStream;-><init>(Ljava/io/InputStream;[Lorg/apache/commons/io/input/ObservableInputStream$Observer;)V

    .line 190
    iput-object p2, p0, Lorg/apache/commons/io/input/MessageDigestInputStream;->messageDigest:Ljava/security/MessageDigest;

    .line 191
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Ljava/security/MessageDigest;Lorg/apache/commons/io/input/MessageDigestInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Ljava/security/MessageDigest;
    .param p3, "x2"    # Lorg/apache/commons/io/input/MessageDigestInputStream$1;

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/input/MessageDigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    return-void
.end method

.method public static builder()Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;
    .locals 1

    .line 173
    new-instance v0, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;

    invoke-direct {v0}, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getMessageDigest()Ljava/security/MessageDigest;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/apache/commons/io/input/MessageDigestInputStream;->messageDigest:Ljava/security/MessageDigest;

    return-object v0
.end method
