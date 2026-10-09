.class public abstract Lorg/apache/commons/compress/harmony/pack200/Pack200Adapter;
.super Ljava/lang/Object;
.source "Pack200Adapter.java"


# static fields
.field protected static final DEFAULT_BUFFER_SIZE:I = 0x2000


# instance fields
.field private final properties:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final support:Ljava/beans/PropertyChangeSupport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Adapter;->support:Ljava/beans/PropertyChangeSupport;

    .line 34
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Adapter;->properties:Ljava/util/SortedMap;

    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;

    .line 37
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Adapter;->support:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 38
    return-void
.end method

.method protected completed(D)V
    .locals 3
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pack.progress"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/compress/harmony/pack200/Pack200Adapter;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method protected firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Adapter;->support:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1, p2, p3}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public properties()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Adapter;->properties:Ljava/util/SortedMap;

    return-object v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;

    .line 67
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/Pack200Adapter;->support:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 68
    return-void
.end method
