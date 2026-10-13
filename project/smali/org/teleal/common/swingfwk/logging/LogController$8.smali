.class Lorg/teleal/common/swingfwk/logging/LogController$8;
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
    .line 246
    iput-object p1, p0, Lorg/teleal/common/swingfwk/logging/LogController$8;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 248
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController$8;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v0}, Lorg/teleal/common/swingfwk/logging/LogController;->access$300(Lorg/teleal/common/swingfwk/logging/LogController;)Lorg/teleal/common/swingfwk/logging/LogTableModel;

    move-result-object v1

    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController$8;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v0}, Lorg/teleal/common/swingfwk/logging/LogController;->access$300(Lorg/teleal/common/swingfwk/logging/LogController;)Lorg/teleal/common/swingfwk/logging/LogTableModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/common/swingfwk/logging/LogTableModel;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/teleal/common/swingfwk/logging/LogTableModel;->setPaused(Z)V

    .line 249
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController$8;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v0}, Lorg/teleal/common/swingfwk/logging/LogController;->access$300(Lorg/teleal/common/swingfwk/logging/LogController;)Lorg/teleal/common/swingfwk/logging/LogTableModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/common/swingfwk/logging/LogTableModel;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController$8;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v0}, Lorg/teleal/common/swingfwk/logging/LogController;->access$500(Lorg/teleal/common/swingfwk/logging/LogController;)Ljavax/swing/JLabel;

    move-result-object v0

    const-string v1, " (Paused)"

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    .line 254
    :goto_1
    return-void

    .line 248
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController$8;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v0}, Lorg/teleal/common/swingfwk/logging/LogController;->access$500(Lorg/teleal/common/swingfwk/logging/LogController;)Ljavax/swing/JLabel;

    move-result-object v0

    const-string v1, " (Active)"

    invoke-virtual {v0, v1}, Ljavax/swing/JLabel;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method
