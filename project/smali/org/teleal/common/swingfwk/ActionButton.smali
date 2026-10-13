.class public Lorg/teleal/common/swingfwk/ActionButton;
.super Ljavax/swing/JButton;
.source "ActionButton.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionCommand"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljavax/swing/JButton;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lorg/teleal/common/swingfwk/ActionButton;->setActionCommand(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "actionCommand"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p2}, Lorg/teleal/common/swingfwk/ActionButton;->setActionCommand(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/swing/Icon;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "icon"    # Ljavax/swing/Icon;
    .param p3, "actionCommand"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;Ljavax/swing/Icon;)V

    .line 53
    invoke-virtual {p0, p3}, Lorg/teleal/common/swingfwk/ActionButton;->setActionCommand(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljavax/swing/Action;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljavax/swing/Action;
    .param p2, "actionCommand"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljavax/swing/JButton;-><init>(Ljavax/swing/Action;)V

    .line 48
    invoke-virtual {p0, p2}, Lorg/teleal/common/swingfwk/ActionButton;->setActionCommand(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljavax/swing/Icon;Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljavax/swing/Icon;
    .param p2, "actionCommand"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljavax/swing/JButton;-><init>(Ljavax/swing/Icon;)V

    .line 38
    invoke-virtual {p0, p2}, Lorg/teleal/common/swingfwk/ActionButton;->setActionCommand(Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public createDefaultEvent()Lorg/teleal/common/swingfwk/Event;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public createDefaultGlobalEvent()Lorg/teleal/common/swingfwk/Event;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public enableDefaultEvents(Lorg/teleal/common/swingfwk/Controller;)Lorg/teleal/common/swingfwk/ActionButton;
    .locals 1
    .param p1, "controller"    # Lorg/teleal/common/swingfwk/Controller;

    .prologue
    .line 57
    new-instance v0, Lorg/teleal/common/swingfwk/ActionButton$1;

    invoke-direct {v0, p0, p1}, Lorg/teleal/common/swingfwk/ActionButton$1;-><init>(Lorg/teleal/common/swingfwk/ActionButton;Lorg/teleal/common/swingfwk/Controller;)V

    invoke-interface {p1, p0, v0}, Lorg/teleal/common/swingfwk/Controller;->registerAction(Ljavax/swing/AbstractButton;Lorg/teleal/common/swingfwk/DefaultAction;)V

    .line 68
    return-object p0
.end method
