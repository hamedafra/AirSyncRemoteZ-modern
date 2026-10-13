.class public Lorg/teleal/cling/support/lastchange/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field protected instanceIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/lastchange/InstanceID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/lastchange/Event;->instanceIDs:Ljava/util/List;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/lastchange/InstanceID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "instanceIDs":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/cling/support/lastchange/InstanceID;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/lastchange/Event;->instanceIDs:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lorg/teleal/cling/support/lastchange/Event;->instanceIDs:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/cling/support/lastchange/Event;->instanceIDs:Ljava/util/List;

    .line 53
    return-void
.end method

.method public getEventedValue(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Ljava/lang/Class;)Lorg/teleal/cling/support/lastchange/EventedValue;
    .locals 5
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
    .line 78
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TEV;>;"
    invoke-virtual {p0}, Lorg/teleal/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 86
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 78
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/lastchange/InstanceID;

    .line 79
    .local v1, "instanceID":Lorg/teleal/cling/support/lastchange/InstanceID;
    invoke-virtual {v1}, Lorg/teleal/cling/support/lastchange/InstanceID;->getId()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {v1}, Lorg/teleal/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/lastchange/EventedValue;

    .line 81
    .local v0, "eventedValue":Lorg/teleal/cling/support/lastchange/EventedValue;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0
.end method

.method public getInstanceID(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)Lorg/teleal/cling/support/lastchange/InstanceID;
    .locals 3
    .param p1, "id"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    .prologue
    .line 45
    iget-object v1, p0, Lorg/teleal/cling/support/lastchange/Event;->instanceIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 48
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 45
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/lastchange/InstanceID;

    .line 46
    .local v0, "instanceID":Lorg/teleal/cling/support/lastchange/InstanceID;
    invoke-virtual {v0}, Lorg/teleal/cling/support/lastchange/InstanceID;->getId()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getInstanceIDs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/cling/support/lastchange/InstanceID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lorg/teleal/cling/support/lastchange/Event;->instanceIDs:Ljava/util/List;

    return-object v0
.end method

.method public hasChanges()Z
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lorg/teleal/cling/support/lastchange/Event;->instanceIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 90
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/lastchange/InstanceID;

    .line 91
    .local v0, "instanceID":Lorg/teleal/cling/support/lastchange/InstanceID;
    invoke-virtual {v0}, Lorg/teleal/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setEventedValue(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;Lorg/teleal/cling/support/lastchange/EventedValue;)V
    .locals 6
    .param p1, "id"    # Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;
    .param p2, "ev"    # Lorg/teleal/cling/support/lastchange/EventedValue;

    .prologue
    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, "instanceID":Lorg/teleal/cling/support/lastchange/InstanceID;
    invoke-virtual {p0}, Lorg/teleal/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 62
    if-nez v2, :cond_1

    .line 63
    new-instance v2, Lorg/teleal/cling/support/lastchange/InstanceID;

    .end local v2    # "instanceID":Lorg/teleal/cling/support/lastchange/InstanceID;
    invoke-direct {v2, p1}, Lorg/teleal/cling/support/lastchange/InstanceID;-><init>(Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;)V

    .line 64
    .restart local v2    # "instanceID":Lorg/teleal/cling/support/lastchange/InstanceID;
    invoke-virtual {p0}, Lorg/teleal/cling/support/lastchange/Event;->getInstanceIDs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_1
    invoke-virtual {v2}, Lorg/teleal/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 68
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/cling/support/lastchange/EventedValue;>;"
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 74
    invoke-virtual {v2}, Lorg/teleal/cling/support/lastchange/InstanceID;->getValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-void

    .line 57
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/cling/support/lastchange/EventedValue;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/cling/support/lastchange/InstanceID;

    .line 58
    .local v1, "i":Lorg/teleal/cling/support/lastchange/InstanceID;
    invoke-virtual {v1}, Lorg/teleal/cling/support/lastchange/InstanceID;->getId()Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    move-object v2, v1

    goto :goto_0

    .line 69
    .end local v1    # "i":Lorg/teleal/cling/support/lastchange/InstanceID;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/cling/support/lastchange/EventedValue;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/support/lastchange/EventedValue;

    .line 70
    .local v0, "existingEv":Lorg/teleal/cling/support/lastchange/EventedValue;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 71
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method
