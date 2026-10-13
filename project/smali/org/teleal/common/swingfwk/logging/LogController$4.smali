.class Lorg/teleal/common/swingfwk/logging/LogController$4;
.super Ljava/lang/Object;
.source "LogController.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/common/swingfwk/logging/LogController;->initializeToolBar(Lorg/teleal/common/swingfwk/logging/LogController$Expiration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/common/swingfwk/logging/LogController;


# direct methods
.method constructor <init>(Lorg/teleal/common/swingfwk/logging/LogController;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lorg/teleal/common/swingfwk/logging/LogController$4;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 210
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController$4;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v0}, Lorg/teleal/common/swingfwk/logging/LogController;->access$400(Lorg/teleal/common/swingfwk/logging/LogController;)Lorg/teleal/common/swingfwk/logging/LogCategorySelector;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/common/swingfwk/logging/LogController$4;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-virtual {v1}, Lorg/teleal/common/swingfwk/logging/LogController;->getParentWindow()Ljava/awt/Frame;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/teleal/common/swingfwk/Application;->center(Ljava/awt/Window;Ljava/awt/Window;)Ljava/awt/Window;

    .line 211
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController$4;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v0}, Lorg/teleal/common/swingfwk/logging/LogController;->access$400(Lorg/teleal/common/swingfwk/logging/LogController;)Lorg/teleal/common/swingfwk/logging/LogCategorySelector;

    move-result-object v1

    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController$4;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v0}, Lorg/teleal/common/swingfwk/logging/LogController;->access$400(Lorg/teleal/common/swingfwk/logging/LogController;)Lorg/teleal/common/swingfwk/logging/LogCategorySelector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/teleal/common/swingfwk/logging/LogCategorySelector;->setVisible(Z)V

    .line 212
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
