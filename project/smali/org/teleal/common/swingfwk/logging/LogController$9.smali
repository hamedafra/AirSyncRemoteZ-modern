.class Lorg/teleal/common/swingfwk/logging/LogController$9;
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
    .line 259
    iput-object p1, p0, Lorg/teleal/common/swingfwk/logging/LogController$9;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 4
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 261
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/JComboBox;

    .line 262
    .local v0, "cb":Ljavax/swing/JComboBox;
    invoke-virtual {v0}, Ljavax/swing/JComboBox;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;

    .line 263
    .local v1, "expiration":Lorg/teleal/common/swingfwk/logging/LogController$Expiration;
    iget-object v2, p0, Lorg/teleal/common/swingfwk/logging/LogController$9;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v2}, Lorg/teleal/common/swingfwk/logging/LogController;->access$300(Lorg/teleal/common/swingfwk/logging/LogController;)Lorg/teleal/common/swingfwk/logging/LogTableModel;

    move-result-object v2

    invoke-virtual {v1}, Lorg/teleal/common/swingfwk/logging/LogController$Expiration;->getSeconds()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/teleal/common/swingfwk/logging/LogTableModel;->setMaxAgeSeconds(I)V

    .line 264
    return-void
.end method
