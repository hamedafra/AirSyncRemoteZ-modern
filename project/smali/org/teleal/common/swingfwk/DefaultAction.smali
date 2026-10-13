.class public abstract Lorg/teleal/common/swingfwk/DefaultAction;
.super Ljavax/swing/AbstractAction;
.source "DefaultAction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljavax/swing/AbstractAction;-><init>()V

    return-void
.end method


# virtual methods
.method public executeInController(Lorg/teleal/common/swingfwk/Controller;Ljava/awt/event/ActionEvent;)V
    .locals 0
    .param p1, "controller"    # Lorg/teleal/common/swingfwk/Controller;
    .param p2, "event"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 30
    invoke-virtual {p0, p2}, Lorg/teleal/common/swingfwk/DefaultAction;->actionPerformed(Ljava/awt/event/ActionEvent;)V

    .line 31
    return-void
.end method
