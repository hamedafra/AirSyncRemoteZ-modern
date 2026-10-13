.class public interface abstract Lorg/teleal/common/swingfwk/Controller;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/awt/event/ActionListener;
.implements Ljava/awt/event/WindowListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/awt/Container;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/awt/event/ActionListener;",
        "Ljava/awt/event/WindowListener;"
    }
.end annotation


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract failedActionExecute()V
.end method

.method public abstract finalActionExecute()V
.end method

.method public abstract fireEvent(Lorg/teleal/common/swingfwk/Event;)V
.end method

.method public abstract fireEvent(Lorg/teleal/common/swingfwk/Event;Z)V
.end method

.method public abstract fireEventGlobal(Lorg/teleal/common/swingfwk/Event;)V
.end method

.method public abstract getParentController()Lorg/teleal/common/swingfwk/Controller;
.end method

.method public abstract getSubControllers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/teleal/common/swingfwk/Controller;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getView()Ljava/awt/Container;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public abstract postActionExecute()V
.end method

.method public abstract preActionExecute()V
.end method

.method public abstract registerAction(Ljavax/swing/AbstractButton;Ljava/lang/String;Lorg/teleal/common/swingfwk/DefaultAction;)V
.end method

.method public abstract registerAction(Ljavax/swing/AbstractButton;Lorg/teleal/common/swingfwk/DefaultAction;)V
.end method

.method public abstract registerEventListener(Ljava/lang/Class;Lorg/teleal/common/swingfwk/EventListener;)V
.end method
