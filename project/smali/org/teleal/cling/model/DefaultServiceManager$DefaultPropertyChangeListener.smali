.class public Lorg/teleal/cling/model/DefaultServiceManager$DefaultPropertyChangeListener;
.super Ljava/lang/Object;
.source "DefaultServiceManager.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/teleal/cling/model/DefaultServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DefaultPropertyChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/cling/model/DefaultServiceManager;


# direct methods
.method protected constructor <init>(Lorg/teleal/cling/model/DefaultServiceManager;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lorg/teleal/cling/model/DefaultServiceManager$DefaultPropertyChangeListener;->this$0:Lorg/teleal/cling/model/DefaultServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 6
    .param p1, "e"    # Ljava/beans/PropertyChangeEvent;

    .prologue
    .line 204
    invoke-static {}, Lorg/teleal/cling/model/DefaultServiceManager;->access$0()Ljava/util/logging/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Property change event on local service: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_EventedStateVariables"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v3, p0, Lorg/teleal/cling/model/DefaultServiceManager$DefaultPropertyChangeListener;->this$0:Lorg/teleal/cling/model/DefaultServiceManager;

    invoke-virtual {v3}, Lorg/teleal/cling/model/DefaultServiceManager;->getService()Lorg/teleal/cling/model/meta/LocalService;

    move-result-object v3

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/teleal/cling/model/meta/LocalService;->getStateVariable(Ljava/lang/String;)Lorg/teleal/cling/model/meta/StateVariable;

    move-result-object v2

    .line 211
    .local v2, "sv":Lorg/teleal/cling/model/meta/StateVariable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/teleal/cling/model/meta/StateVariable;->getEventDetails()Lorg/teleal/cling/model/meta/StateVariableEventDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/StateVariableEventDetails;->isSendEvents()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    :try_start_0
    invoke-static {}, Lorg/teleal/cling/model/DefaultServiceManager;->access$0()Ljava/util/logging/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Evented state variable value changed, reading state of service: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 217
    iget-object v3, p0, Lorg/teleal/cling/model/DefaultServiceManager$DefaultPropertyChangeListener;->this$0:Lorg/teleal/cling/model/DefaultServiceManager;

    invoke-virtual {v3}, Lorg/teleal/cling/model/DefaultServiceManager;->readEventedStateVariableValues()Ljava/util/Collection;

    move-result-object v0

    .line 219
    .local v0, "currentValues":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/state/StateVariableValue;>;"
    iget-object v3, p0, Lorg/teleal/cling/model/DefaultServiceManager$DefaultPropertyChangeListener;->this$0:Lorg/teleal/cling/model/DefaultServiceManager;

    invoke-virtual {v3}, Lorg/teleal/cling/model/DefaultServiceManager;->getPropertyChangeSupport()Ljava/beans/PropertyChangeSupport;

    move-result-object v3

    .line 220
    const-string v4, "_EventedStateVariables"

    .line 221
    const/4 v5, 0x0

    .line 219
    invoke-virtual {v3, v4, v5, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    .end local v0    # "currentValues":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/teleal/cling/model/state/StateVariableValue;>;"
    :catch_0
    move-exception v1

    .line 227
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {}, Lorg/teleal/cling/model/DefaultServiceManager;->access$0()Ljava/util/logging/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error reading state of service after state variable update event: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/teleal/common/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0
.end method
