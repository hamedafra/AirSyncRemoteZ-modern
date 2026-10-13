.class Lorg/teleal/common/swingfwk/logging/LogController$2;
.super Ljava/lang/Object;
.source "LogController.java"

# interfaces
.implements Ljavax/swing/event/ListSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/common/swingfwk/logging/LogController;-><init>(Lorg/teleal/common/swingfwk/Controller;Lorg/teleal/common/swingfwk/logging/LogController$Expiration;Ljava/util/List;)V
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
    .line 128
    iput-object p1, p0, Lorg/teleal/common/swingfwk/logging/LogController$2;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 6
    .param p1, "e"    # Ljavax/swing/event/ListSelectionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/teleal/common/swingfwk/logging/LogController$2;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v3}, Lorg/teleal/common/swingfwk/logging/LogController;->access$000(Lorg/teleal/common/swingfwk/logging/LogController;)Ljavax/swing/JTable;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/swing/JTable;->getSelectionModel()Ljavax/swing/ListSelectionModel;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 134
    iget-object v2, p0, Lorg/teleal/common/swingfwk/logging/LogController$2;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v2}, Lorg/teleal/common/swingfwk/logging/LogController;->access$000(Lorg/teleal/common/swingfwk/logging/LogController;)Ljavax/swing/JTable;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JTable;->getSelectedRows()[I

    move-result-object v1

    .line 136
    .local v1, "rows":[I
    if-eqz v1, :cond_2

    array-length v2, v1

    if-nez v2, :cond_3

    .line 137
    :cond_2
    iget-object v2, p0, Lorg/teleal/common/swingfwk/logging/LogController$2;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v2}, Lorg/teleal/common/swingfwk/logging/LogController;->access$100(Lorg/teleal/common/swingfwk/logging/LogController;)Ljavax/swing/JButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 138
    iget-object v2, p0, Lorg/teleal/common/swingfwk/logging/LogController$2;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v2}, Lorg/teleal/common/swingfwk/logging/LogController;->access$200(Lorg/teleal/common/swingfwk/logging/LogController;)Ljavax/swing/JButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljavax/swing/JButton;->setEnabled(Z)V

    goto :goto_0

    .line 139
    :cond_3
    array-length v2, v1

    if-ne v2, v5, :cond_5

    .line 140
    iget-object v2, p0, Lorg/teleal/common/swingfwk/logging/LogController$2;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v2}, Lorg/teleal/common/swingfwk/logging/LogController;->access$100(Lorg/teleal/common/swingfwk/logging/LogController;)Ljavax/swing/JButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 141
    iget-object v2, p0, Lorg/teleal/common/swingfwk/logging/LogController$2;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v2}, Lorg/teleal/common/swingfwk/logging/LogController;->access$300(Lorg/teleal/common/swingfwk/logging/LogController;)Lorg/teleal/common/swingfwk/logging/LogTableModel;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3, v4}, Lorg/teleal/common/swingfwk/logging/LogTableModel;->getValueAt(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/common/swingfwk/logging/LogMessage;

    .line 142
    .local v0, "msg":Lorg/teleal/common/swingfwk/logging/LogMessage;
    invoke-virtual {v0}, Lorg/teleal/common/swingfwk/logging/LogMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lorg/teleal/common/swingfwk/logging/LogController$2;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-virtual {v3}, Lorg/teleal/common/swingfwk/logging/LogController;->getExpandMessageCharacterLimit()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 143
    iget-object v2, p0, Lorg/teleal/common/swingfwk/logging/LogController$2;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v2}, Lorg/teleal/common/swingfwk/logging/LogController;->access$200(Lorg/teleal/common/swingfwk/logging/LogController;)Ljavax/swing/JButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljavax/swing/JButton;->setEnabled(Z)V

    goto :goto_0

    .line 145
    :cond_4
    iget-object v2, p0, Lorg/teleal/common/swingfwk/logging/LogController$2;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v2}, Lorg/teleal/common/swingfwk/logging/LogController;->access$200(Lorg/teleal/common/swingfwk/logging/LogController;)Ljavax/swing/JButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljavax/swing/JButton;->setEnabled(Z)V

    goto :goto_0

    .line 148
    .end local v0    # "msg":Lorg/teleal/common/swingfwk/logging/LogMessage;
    :cond_5
    iget-object v2, p0, Lorg/teleal/common/swingfwk/logging/LogController$2;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v2}, Lorg/teleal/common/swingfwk/logging/LogController;->access$100(Lorg/teleal/common/swingfwk/logging/LogController;)Ljavax/swing/JButton;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljavax/swing/JButton;->setEnabled(Z)V

    .line 149
    iget-object v2, p0, Lorg/teleal/common/swingfwk/logging/LogController$2;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v2}, Lorg/teleal/common/swingfwk/logging/LogController;->access$200(Lorg/teleal/common/swingfwk/logging/LogController;)Ljavax/swing/JButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljavax/swing/JButton;->setEnabled(Z)V

    goto/16 :goto_0
.end method
