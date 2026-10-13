.class public Lorg/teleal/cling/support/lastchange/LastChange;
.super Ljava/lang/Object;
.source "LastChange.java"


# instance fields
.field private final event:Lorg/teleal/cling/support/lastchange/Event;

.field private final parser:Lorg/teleal/cling/support/lastchange/LastChangeParser;

.field private previousValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This constructor is only for service binding detection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/teleal/cling/support/lastchange/LastChangeParser;)V
    .locals 1
    .param p1, "parser"    # Lorg/teleal/cling/support/lastchange/LastChangeParser;

    .prologue
    .line 63
    new-instance v0, Lorg/teleal/cling/support/lastchange/Event;

    invoke-direct {v0}, Lorg/teleal/cling/support/lastchange/Event;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/teleal/cling/support/lastchange/LastChange;-><init>(Lorg/teleal/cling/support/lastchange/LastChangeParser;Lorg/teleal/cling/support/lastchange/Event;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/lastchange/LastChangeParser;Ljava/lang/String;)V
    .locals 1
    .param p1, "parser"    # Lorg/teleal/cling/support/lastchange/LastChangeParser;
    .param p2, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 68
    invoke-virtual {p1, p2}, Lorg/teleal/cling/support/lastchange/LastChangeParser;->parse(Ljava/lang/String;)Lorg/teleal/cling/support/lastchange/Event;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/support/lastchange/LastChange;->event:Lorg/teleal/cling/support/lastchange/Event;

    .line 72
    :goto_0
    iput-object p1, p0, Lorg/teleal/cling/support/lastchange/LastChange;->parser:Lorg/teleal/cling/support/lastchange/LastChangeParser;

    .line 73
    return-void

    .line 70
    :cond_0
    new-instance v0, Lorg/teleal/cling/support/lastchange/Event;

    invoke-direct {v0}, Lorg/teleal/cling/support/lastchange/Event;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/lastchange/LastChange;->event:Lorg/teleal/cling/support/lastchange/Event;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/teleal/cling/support/lastchange/LastChangeParser;Lorg/teleal/cling/support/lastchange/Event;)V
    .locals 0
    .param p1, "parser"    # Lorg/teleal/cling/support/lastchange/LastChangeParser;
    .param p2, "event"    # Lorg/teleal/cling/support/lastchange/Event;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/teleal/cling/support/lastchange/LastChange;->parser:Lorg/teleal/cling/support/lastchange/LastChangeParser;

    .line 59
    iput-object p2, p0, Lorg/teleal/cling/support/lastchange/LastChange;->event:Lorg/teleal/cling/support/lastchange/Event;

    .line 60
    return-void
.end method


# virtual methods
.method public declared-synchronized fire(Ljava/beans/PropertyChangeSupport;)V
    .locals 3
    .param p1, "propertyChangeSupport"    # Ljava/beans/PropertyChangeSupport;

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/support/lastchange/LastChange;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "lastChanges":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 116
    const-string v1, "LastChange"

    iget-object v2, p0, Lorg/teleal/cling/support/lastchange/LastChange;->previousValue:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p0}, Lorg/teleal/cling/support/lastchange/LastChange;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_0
    monitor-exit p0

    return-void

    .line 114
    .end local v0    # "lastChanges":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getEventedValue(ILjava/lang/Class;)Lorg/teleal/cling/support/lastchange/EventedValue;
    .locals 4
    .param p1, "instanceID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EV:",
            "Lorg/teleal/cling/support/lastchange/EventedValue;",
            ">(I",
            "Ljava/lang/Class",
            "<TEV;>;)TEV;"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TEV;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    int-to-long v2, p1

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-virtual {p0, v0, p2}, Lorg/teleal/cling/support/lastchange/LastChange;->getEventedValue(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/Class;)Lorg/teleal/cling/support/lastchange/EventedValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEventedValue(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/Class;)Lorg/teleal/cling/support/lastchange/EventedValue;
    .locals 1
    .param p1, "id"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EV:",
            "Lorg/teleal/cling/support/lastchange/EventedValue;",
            ">(",
            "Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;",
            "Ljava/lang/Class",
            "<TEV;>;)TEV;"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TEV;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/teleal/cling/support/lastchange/LastChange;->event:Lorg/teleal/cling/support/lastchange/Event;

    invoke-virtual {v0, p1, p2}, Lorg/teleal/cling/support/lastchange/Event;->getEventedValue(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/Class;)Lorg/teleal/cling/support/lastchange/EventedValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getEventedValues(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)[Lorg/teleal/cling/support/lastchange/EventedValue;
    .locals 3
    .param p1, "instanceID"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/teleal/cling/support/lastchange/LastChange;->event:Lorg/teleal/cling/support/lastchange/Event;

    invoke-virtual {v1, p1}, Lorg/teleal/cling/support/lastchange/Event;->getInstanceID(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/lastchange/InstanceID;

    move-result-object v0

    .line 102
    .local v0, "inst":Lorg/teleal/cling/support/lastchange/InstanceID;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/teleal/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lorg/teleal/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/teleal/cling/support/lastchange/EventedValue;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/teleal/cling/support/lastchange/EventedValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 101
    .end local v0    # "inst":Lorg/teleal/cling/support/lastchange/InstanceID;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getInstanceIDs()[Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .locals 4

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;>;"
    iget-object v2, p0, Lorg/teleal/cling/support/lastchange/LastChange;->event:Lorg/teleal/cling/support/lastchange/Event;

    invoke-virtual {v2}, Lorg/teleal/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 94
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/lastchange/InstanceID;

    .line 95
    .local v0, "instanceID":Lorg/teleal/cling/support/lastchange/InstanceID;
    invoke-virtual {v0}, Lorg/teleal/cling/support/lastchange/InstanceID;->getId()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    .end local v0    # "instanceID":Lorg/teleal/cling/support/lastchange/InstanceID;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/teleal/cling/support/lastchange/LastChange;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/support/lastchange/LastChange;->previousValue:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lorg/teleal/cling/support/lastchange/LastChange;->event:Lorg/teleal/cling/support/lastchange/Event;

    invoke-virtual {v0}, Lorg/teleal/cling/support/lastchange/Event;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized setEventedValue(I[Lorg/teleal/cling/support/lastchange/EventedValue;)V
    .locals 4
    .param p1, "instanceID"    # I
    .param p2, "ev"    # [Lorg/teleal/cling/support/lastchange/EventedValue;

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    int-to-long v2, p1

    invoke-direct {v0, v2, v3}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    invoke-virtual {p0, v0, p2}, Lorg/teleal/cling/support/lastchange/LastChange;->setEventedValue(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;[Lorg/teleal/cling/support/lastchange/EventedValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized setEventedValue(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;[Lorg/teleal/cling/support/lastchange/EventedValue;)V
    .locals 4
    .param p1, "instanceID"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p2, "ev"    # [Lorg/teleal/cling/support/lastchange/EventedValue;

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    array-length v2, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 90
    monitor-exit p0

    return-void

    .line 85
    :cond_0
    :try_start_1
    aget-object v0, p2, v1

    .line 86
    .local v0, "eventedValue":Lorg/teleal/cling/support/lastchange/EventedValue;
    if-eqz v0, :cond_1

    .line 87
    iget-object v3, p0, Lorg/teleal/cling/support/lastchange/LastChange;->event:Lorg/teleal/cling/support/lastchange/Event;

    invoke-virtual {v3, p1, v0}, Lorg/teleal/cling/support/lastchange/Event;->setEventedValue(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/support/lastchange/EventedValue;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "eventedValue":Lorg/teleal/cling/support/lastchange/EventedValue;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/teleal/cling/support/lastchange/LastChange;->event:Lorg/teleal/cling/support/lastchange/Event;

    invoke-virtual {v1}, Lorg/teleal/cling/support/lastchange/Event;->hasChanges()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/teleal/cling/support/lastchange/LastChange;->parser:Lorg/teleal/cling/support/lastchange/LastChangeParser;

    iget-object v2, p0, Lorg/teleal/cling/support/lastchange/LastChange;->event:Lorg/teleal/cling/support/lastchange/Event;

    invoke-virtual {v1, v2}, Lorg/teleal/cling/support/lastchange/LastChangeParser;->generate(Lorg/teleal/cling/support/lastchange/Event;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
