.class public Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;
.super Ljava/lang/Object;
.source "EventListenerSupport.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/event/EventListenerSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ProxyInvocationHandler"
.end annotation


# instance fields
.field private final handler:Lorg/apache/commons/lang3/function/FailableConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/lang3/function/FailableConsumer<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/IllegalAccessException;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/lang3/event/EventListenerSupport;


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/event/EventListenerSupport;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/commons/lang3/event/EventListenerSupport;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;, "Lorg/apache/commons/lang3/event/EventListenerSupport<TL;>.ProxyInvocationHandler;"
    new-instance v0, Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;-><init>(Lorg/apache/commons/lang3/event/EventListenerSupport;Lorg/apache/commons/lang3/function/FailableConsumer;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang3/event/EventListenerSupport;Lorg/apache/commons/lang3/function/FailableConsumer;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/commons/lang3/event/EventListenerSupport;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableConsumer<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/IllegalAccessException;",
            ">;)V"
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;, "Lorg/apache/commons/lang3/event/EventListenerSupport<TL;>.ProxyInvocationHandler;"
    .local p2, "handler":Lorg/apache/commons/lang3/function/FailableConsumer;, "Lorg/apache/commons/lang3/function/FailableConsumer<Ljava/lang/Throwable;Ljava/lang/IllegalAccessException;>;"
    iput-object p1, p0, Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;->this$0:Lorg/apache/commons/lang3/event/EventListenerSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/function/FailableConsumer;

    iput-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;->handler:Lorg/apache/commons/lang3/function/FailableConsumer;

    .line 96
    return-void
.end method


# virtual methods
.method protected handle(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 108
    .local p0, "this":Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;, "Lorg/apache/commons/lang3/event/EventListenerSupport<TL;>.ProxyInvocationHandler;"
    iget-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;->handler:Lorg/apache/commons/lang3/function/FailableConsumer;

    invoke-interface {v0, p1}, Lorg/apache/commons/lang3/function/FailableConsumer;->accept(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "unusedProxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;, "Lorg/apache/commons/lang3/event/EventListenerSupport<TL;>.ProxyInvocationHandler;"
    iget-object v0, p0, Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;->this$0:Lorg/apache/commons/lang3/event/EventListenerSupport;

    invoke-static {v0}, Lorg/apache/commons/lang3/event/EventListenerSupport;->access$000(Lorg/apache/commons/lang3/event/EventListenerSupport;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 127
    .local v1, "listener":Ljava/lang/Object;, "TL;"
    :try_start_0
    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    goto :goto_1

    .line 128
    :catchall_0
    move-exception v2

    .line 129
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/event/EventListenerSupport$ProxyInvocationHandler;->handle(Ljava/lang/Throwable;)V

    .line 131
    .end local v1    # "listener":Ljava/lang/Object;, "TL;"
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 132
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
