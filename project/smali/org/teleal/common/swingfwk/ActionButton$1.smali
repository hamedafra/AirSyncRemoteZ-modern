.class Lorg/teleal/common/swingfwk/ActionButton$1;
.super Lorg/teleal/common/swingfwk/DefaultAction;
.source "ActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/common/swingfwk/ActionButton;->enableDefaultEvents(Lorg/teleal/common/swingfwk/Controller;)Lorg/teleal/common/swingfwk/ActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/common/swingfwk/ActionButton;

.field final synthetic val$controller:Lorg/teleal/common/swingfwk/Controller;


# direct methods
.method constructor <init>(Lorg/teleal/common/swingfwk/ActionButton;Lorg/teleal/common/swingfwk/Controller;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lorg/teleal/common/swingfwk/ActionButton$1;->this$0:Lorg/teleal/common/swingfwk/ActionButton;

    iput-object p2, p0, Lorg/teleal/common/swingfwk/ActionButton$1;->val$controller:Lorg/teleal/common/swingfwk/Controller;

    invoke-direct {p0}, Lorg/teleal/common/swingfwk/DefaultAction;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2
    .param p1, "actionEvent"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 61
    iget-object v1, p0, Lorg/teleal/common/swingfwk/ActionButton$1;->this$0:Lorg/teleal/common/swingfwk/ActionButton;

    invoke-virtual {v1}, Lorg/teleal/common/swingfwk/ActionButton;->createDefaultEvent()Lorg/teleal/common/swingfwk/Event;

    move-result-object v0

    .local v0, "e":Lorg/teleal/common/swingfwk/Event;
    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lorg/teleal/common/swingfwk/ActionButton$1;->val$controller:Lorg/teleal/common/swingfwk/Controller;

    invoke-interface {v1, v0}, Lorg/teleal/common/swingfwk/Controller;->fireEvent(Lorg/teleal/common/swingfwk/Event;)V

    .line 63
    :cond_0
    iget-object v1, p0, Lorg/teleal/common/swingfwk/ActionButton$1;->this$0:Lorg/teleal/common/swingfwk/ActionButton;

    invoke-virtual {v1}, Lorg/teleal/common/swingfwk/ActionButton;->createDefaultGlobalEvent()Lorg/teleal/common/swingfwk/Event;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v1, p0, Lorg/teleal/common/swingfwk/ActionButton$1;->val$controller:Lorg/teleal/common/swingfwk/Controller;

    invoke-interface {v1, v0}, Lorg/teleal/common/swingfwk/Controller;->fireEventGlobal(Lorg/teleal/common/swingfwk/Event;)V

    .line 65
    :cond_1
    return-void
.end method
