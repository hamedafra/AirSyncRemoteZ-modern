.class public Lorg/teleal/common/swingfwk/AbstractController;
.super Ljava/lang/Object;
.source "AbstractController.java"

# interfaces
.implements Lorg/teleal/common/swingfwk/Controller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/awt/Container;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/teleal/common/swingfwk/Controller",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static log:Ljava/util/logging/Logger;


# instance fields
.field private actions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/teleal/common/swingfwk/DefaultAction;",
            ">;"
        }
    .end annotation
.end field

.field private eventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/common/swingfwk/EventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private parentController:Lorg/teleal/common/swingfwk/Controller;

.field private subControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/teleal/common/swingfwk/Controller;",
            ">;"
        }
    .end annotation
.end field

.field private view:Ljava/awt/Container;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/teleal/common/swingfwk/AbstractController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/teleal/common/swingfwk/AbstractController;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/AbstractController;->subControllers:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/AbstractController;->actions:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/AbstractController;->eventListeners:Ljava/util/Map;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/awt/Container;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    .local p1, "view":Ljava/awt/Container;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/AbstractController;->subControllers:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/AbstractController;->actions:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/AbstractController;->eventListeners:Ljava/util/Map;

    .line 51
    iput-object p1, p0, Lorg/teleal/common/swingfwk/AbstractController;->view:Ljava/awt/Container;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/awt/Container;Lorg/teleal/common/swingfwk/Controller;)V
    .locals 1
    .param p2, "parentController"    # Lorg/teleal/common/swingfwk/Controller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lorg/teleal/common/swingfwk/Controller;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    .local p1, "view":Ljava/awt/Container;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/AbstractController;->subControllers:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/AbstractController;->actions:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/teleal/common/swingfwk/AbstractController;->eventListeners:Ljava/util/Map;

    .line 76
    iput-object p1, p0, Lorg/teleal/common/swingfwk/AbstractController;->view:Ljava/awt/Container;

    .line 79
    if-eqz p2, :cond_0

    .line 80
    iput-object p2, p0, Lorg/teleal/common/swingfwk/AbstractController;->parentController:Lorg/teleal/common/swingfwk/Controller;

    .line 81
    invoke-interface {p2}, Lorg/teleal/common/swingfwk/Controller;->getSubControllers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/teleal/common/swingfwk/Controller;)V
    .locals 1
    .param p1, "parentController"    # Lorg/teleal/common/swingfwk/Controller;

    .prologue
    .line 66
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/teleal/common/swingfwk/AbstractController;-><init>(Ljava/awt/Container;Lorg/teleal/common/swingfwk/Controller;)V

    .line 67
    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 8
    .param p1, "actionEvent"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 218
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/swing/AbstractButton;

    .line 219
    .local v2, "button":Ljavax/swing/AbstractButton;
    invoke-virtual {v2}, Ljavax/swing/AbstractButton;->getActionCommand()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "actionCommand":Ljava/lang/String;
    iget-object v5, p0, Lorg/teleal/common/swingfwk/AbstractController;->actions:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/common/swingfwk/DefaultAction;

    .line 222
    .local v0, "action":Lorg/teleal/common/swingfwk/DefaultAction;
    if-eqz v0, :cond_0

    .line 224
    sget-object v5, Lorg/teleal/common/swingfwk/AbstractController;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handling command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 226
    :try_start_1
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/AbstractController;->preActionExecute()V

    .line 227
    sget-object v5, Lorg/teleal/common/swingfwk/AbstractController;->log:Ljava/util/logging/Logger;

    const-string v6, "Dispatching to action for execution"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, p0, p1}, Lorg/teleal/common/swingfwk/DefaultAction;->executeInController(Lorg/teleal/common/swingfwk/Controller;Ljava/awt/event/ActionEvent;)V

    .line 229
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/AbstractController;->postActionExecute()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :try_start_2
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/AbstractController;->finalActionExecute()V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    .line 252
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v4

    .line 231
    .local v4, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/AbstractController;->failedActionExecute()V

    .line 232
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/AbstractController;->finalActionExecute()V

    throw v5
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1

    .line 249
    .end local v0    # "action":Lorg/teleal/common/swingfwk/DefaultAction;
    .end local v1    # "actionCommand":Ljava/lang/String;
    .end local v2    # "button":Ljavax/swing/AbstractButton;
    :catch_1
    move-exception v3

    .line 250
    .local v3, "e":Ljava/lang/ClassCastException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action source is not an Abstractbutton: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 233
    .end local v3    # "e":Ljava/lang/ClassCastException;
    .restart local v0    # "action":Lorg/teleal/common/swingfwk/DefaultAction;
    .restart local v1    # "actionCommand":Ljava/lang/String;
    .restart local v2    # "button":Ljavax/swing/AbstractButton;
    :catch_2
    move-exception v4

    .line 234
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/AbstractController;->failedActionExecute()V

    .line 235
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 241
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_0
    :try_start_6
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/AbstractController;->getParentController()Lorg/teleal/common/swingfwk/Controller;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 242
    sget-object v5, Lorg/teleal/common/swingfwk/AbstractController;->log:Ljava/util/logging/Logger;

    const-string v6, "Passing action on to parent controller"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 243
    iget-object v5, p0, Lorg/teleal/common/swingfwk/AbstractController;->parentController:Lorg/teleal/common/swingfwk/Controller;

    invoke-interface {v5, p1}, Lorg/teleal/common/swingfwk/Controller;->actionPerformed(Ljava/awt/event/ActionEvent;)V

    goto :goto_0

    .line 245
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Nobody is responsible for action command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_1
.end method

.method public deregisterAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "actionCommand"    # Ljava/lang/String;

    .prologue
    .line 137
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    iget-object v0, p0, Lorg/teleal/common/swingfwk/AbstractController;->actions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 103
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    sget-object v2, Lorg/teleal/common/swingfwk/AbstractController;->log:Ljava/util/logging/Logger;

    const-string v3, "Disposing controller"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lorg/teleal/common/swingfwk/AbstractController;->subControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 105
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/teleal/common/swingfwk/Controller;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/common/swingfwk/Controller;

    .line 107
    .local v1, "subcontroller":Lorg/teleal/common/swingfwk/Controller;
    invoke-interface {v1}, Lorg/teleal/common/swingfwk/Controller;->dispose()V

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 110
    .end local v1    # "subcontroller":Lorg/teleal/common/swingfwk/Controller;
    :cond_0
    return-void
.end method

.method public failedActionExecute()V
    .locals 0

    .prologue
    .line 261
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    return-void
.end method

.method public finalActionExecute()V
    .locals 0

    .prologue
    .line 264
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    return-void
.end method

.method public fireEvent(Lorg/teleal/common/swingfwk/Event;)V
    .locals 1
    .param p1, "event"    # Lorg/teleal/common/swingfwk/Event;

    .prologue
    .line 164
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/teleal/common/swingfwk/AbstractController;->fireEvent(Lorg/teleal/common/swingfwk/Event;Z)V

    .line 165
    return-void
.end method

.method public fireEvent(Lorg/teleal/common/swingfwk/Event;Z)V
    .locals 7
    .param p1, "event"    # Lorg/teleal/common/swingfwk/Event;
    .param p2, "global"    # Z

    .prologue
    .line 180
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    invoke-interface {p1, p0}, Lorg/teleal/common/swingfwk/Event;->alreadyFired(Lorg/teleal/common/swingfwk/Controller;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    sget-object v3, Lorg/teleal/common/swingfwk/AbstractController;->log:Ljava/util/logging/Logger;

    const-string v4, "Event has not been fired already"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 182
    iget-object v3, p0, Lorg/teleal/common/swingfwk/AbstractController;->eventListeners:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 183
    sget-object v3, Lorg/teleal/common/swingfwk/AbstractController;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Have listeners for this type of event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/teleal/common/swingfwk/AbstractController;->eventListeners:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 184
    iget-object v3, p0, Lorg/teleal/common/swingfwk/AbstractController;->eventListeners:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/common/swingfwk/EventListener;

    .line 185
    .local v0, "eventListener":Lorg/teleal/common/swingfwk/EventListener;
    sget-object v3, Lorg/teleal/common/swingfwk/AbstractController;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processing event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 186
    invoke-interface {v0, p1}, Lorg/teleal/common/swingfwk/EventListener;->handleEvent(Lorg/teleal/common/swingfwk/Event;)V

    goto :goto_0

    .line 189
    .end local v0    # "eventListener":Lorg/teleal/common/swingfwk/EventListener;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {p1, p0}, Lorg/teleal/common/swingfwk/Event;->addFiredInController(Lorg/teleal/common/swingfwk/Controller;)V

    .line 190
    sget-object v3, Lorg/teleal/common/swingfwk/AbstractController;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Passing event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " DOWN in the controller hierarchy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 191
    iget-object v3, p0, Lorg/teleal/common/swingfwk/AbstractController;->subControllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/teleal/common/swingfwk/Controller;

    .local v2, "subController":Lorg/teleal/common/swingfwk/Controller;
    invoke-interface {v2, p1, p2}, Lorg/teleal/common/swingfwk/Controller;->fireEvent(Lorg/teleal/common/swingfwk/Event;Z)V

    goto :goto_1

    .line 193
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "subController":Lorg/teleal/common/swingfwk/Controller;
    :cond_1
    sget-object v3, Lorg/teleal/common/swingfwk/AbstractController;->log:Ljava/util/logging/Logger;

    const-string v4, "Event already fired here, ignoring..."

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 195
    :cond_2
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/AbstractController;->getParentController()Lorg/teleal/common/swingfwk/Controller;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/AbstractController;->getParentController()Lorg/teleal/common/swingfwk/Controller;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/teleal/common/swingfwk/Event;->alreadyFired(Lorg/teleal/common/swingfwk/Controller;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p2, :cond_3

    .line 198
    sget-object v3, Lorg/teleal/common/swingfwk/AbstractController;->log:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Passing event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UP in the controller hierarchy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/AbstractController;->getParentController()Lorg/teleal/common/swingfwk/Controller;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lorg/teleal/common/swingfwk/Controller;->fireEvent(Lorg/teleal/common/swingfwk/Event;Z)V

    .line 203
    :goto_2
    return-void

    .line 201
    :cond_3
    sget-object v3, Lorg/teleal/common/swingfwk/AbstractController;->log:Ljava/util/logging/Logger;

    const-string v4, "Event does not propagate up the tree from here"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public fireEventGlobal(Lorg/teleal/common/swingfwk/Event;)V
    .locals 1
    .param p1, "event"    # Lorg/teleal/common/swingfwk/Event;

    .prologue
    .line 176
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/teleal/common/swingfwk/AbstractController;->fireEvent(Lorg/teleal/common/swingfwk/Event;Z)V

    .line 177
    return-void
.end method

.method public getParentController()Lorg/teleal/common/swingfwk/Controller;
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    iget-object v0, p0, Lorg/teleal/common/swingfwk/AbstractController;->parentController:Lorg/teleal/common/swingfwk/Controller;

    return-object v0
.end method

.method public getSubControllers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/common/swingfwk/Controller;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    iget-object v0, p0, Lorg/teleal/common/swingfwk/AbstractController;->subControllers:Ljava/util/List;

    return-object v0
.end method

.method public getView()Ljava/awt/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    iget-object v0, p0, Lorg/teleal/common/swingfwk/AbstractController;->view:Ljava/awt/Container;

    return-object v0
.end method

.method public postActionExecute()V
    .locals 0

    .prologue
    .line 258
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    return-void
.end method

.method public preActionExecute()V
    .locals 0

    .prologue
    .line 255
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    return-void
.end method

.method public registerAction(Ljavax/swing/AbstractButton;Ljava/lang/String;Lorg/teleal/common/swingfwk/DefaultAction;)V
    .locals 0
    .param p1, "source"    # Ljavax/swing/AbstractButton;
    .param p2, "actionCommand"    # Ljava/lang/String;
    .param p3, "action"    # Lorg/teleal/common/swingfwk/DefaultAction;

    .prologue
    .line 132
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    invoke-virtual {p1, p2}, Ljavax/swing/AbstractButton;->setActionCommand(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, p1, p3}, Lorg/teleal/common/swingfwk/AbstractController;->registerAction(Ljavax/swing/AbstractButton;Lorg/teleal/common/swingfwk/DefaultAction;)V

    .line 134
    return-void
.end method

.method public registerAction(Ljavax/swing/AbstractButton;Lorg/teleal/common/swingfwk/DefaultAction;)V
    .locals 2
    .param p1, "source"    # Ljavax/swing/AbstractButton;
    .param p2, "action"    # Lorg/teleal/common/swingfwk/DefaultAction;

    .prologue
    .line 119
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    invoke-virtual {p1, p0}, Ljavax/swing/AbstractButton;->removeActionListener(Ljava/awt/event/ActionListener;)V

    .line 120
    invoke-virtual {p1, p0}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 121
    iget-object v0, p0, Lorg/teleal/common/swingfwk/AbstractController;->actions:Ljava/util/Map;

    invoke-virtual {p1}, Ljavax/swing/AbstractButton;->getActionCommand()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public registerEventListener(Ljava/lang/Class;Lorg/teleal/common/swingfwk/EventListener;)V
    .locals 4
    .param p1, "eventClass"    # Ljava/lang/Class;
    .param p2, "eventListener"    # Lorg/teleal/common/swingfwk/EventListener;

    .prologue
    .line 147
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    sget-object v1, Lorg/teleal/common/swingfwk/AbstractController;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for event type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lorg/teleal/common/swingfwk/AbstractController;->eventListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 149
    .local v0, "listenersForEvent":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/common/swingfwk/EventListener;>;"
    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "listenersForEvent":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/common/swingfwk/EventListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .restart local v0    # "listenersForEvent":Ljava/util/List;, "Ljava/util/List<Lorg/teleal/common/swingfwk/EventListener;>;"
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v1, p0, Lorg/teleal/common/swingfwk/AbstractController;->eventListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public windowActivated(Ljava/awt/event/WindowEvent;)V
    .locals 0
    .param p1, "windowEvent"    # Ljava/awt/event/WindowEvent;

    .prologue
    .line 286
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    return-void
.end method

.method public windowClosed(Ljava/awt/event/WindowEvent;)V
    .locals 0
    .param p1, "windowEvent"    # Ljava/awt/event/WindowEvent;

    .prologue
    .line 277
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    return-void
.end method

.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 1
    .param p1, "windowEvent"    # Ljava/awt/event/WindowEvent;

    .prologue
    .line 269
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/AbstractController;->dispose()V

    .line 270
    invoke-virtual {p0}, Lorg/teleal/common/swingfwk/AbstractController;->getView()Ljava/awt/Container;

    move-result-object v0

    check-cast v0, Ljavax/swing/JFrame;

    invoke-virtual {v0}, Ljavax/swing/JFrame;->dispose()V

    .line 271
    return-void
.end method

.method public windowDeactivated(Ljava/awt/event/WindowEvent;)V
    .locals 0
    .param p1, "windowEvent"    # Ljava/awt/event/WindowEvent;

    .prologue
    .line 289
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    return-void
.end method

.method public windowDeiconified(Ljava/awt/event/WindowEvent;)V
    .locals 0
    .param p1, "windowEvent"    # Ljava/awt/event/WindowEvent;

    .prologue
    .line 283
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    return-void
.end method

.method public windowIconified(Ljava/awt/event/WindowEvent;)V
    .locals 0
    .param p1, "windowEvent"    # Ljava/awt/event/WindowEvent;

    .prologue
    .line 280
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    return-void
.end method

.method public windowOpened(Ljava/awt/event/WindowEvent;)V
    .locals 0
    .param p1, "windowEvent"    # Ljava/awt/event/WindowEvent;

    .prologue
    .line 274
    .local p0, "this":Lorg/teleal/common/swingfwk/AbstractController;, "Lorg/teleal/common/swingfwk/AbstractController<TV;>;"
    return-void
.end method
