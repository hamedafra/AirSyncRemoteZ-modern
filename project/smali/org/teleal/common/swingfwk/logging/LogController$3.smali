.class Lorg/teleal/common/swingfwk/logging/LogController$3;
.super Ljava/lang/Object;
.source "LogController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/teleal/common/swingfwk/logging/LogController;->pushMessage(Lorg/teleal/common/swingfwk/logging/LogMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/teleal/common/swingfwk/logging/LogController;

.field final synthetic val$message:Lorg/teleal/common/swingfwk/logging/LogMessage;


# direct methods
.method constructor <init>(Lorg/teleal/common/swingfwk/logging/LogController;Lorg/teleal/common/swingfwk/logging/LogMessage;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lorg/teleal/common/swingfwk/logging/LogController$3;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    iput-object p2, p0, Lorg/teleal/common/swingfwk/logging/LogController$3;->val$message:Lorg/teleal/common/swingfwk/logging/LogMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 170
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController$3;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v0}, Lorg/teleal/common/swingfwk/logging/LogController;->access$300(Lorg/teleal/common/swingfwk/logging/LogController;)Lorg/teleal/common/swingfwk/logging/LogTableModel;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/common/swingfwk/logging/LogController$3;->val$message:Lorg/teleal/common/swingfwk/logging/LogMessage;

    invoke-virtual {v0, v1}, Lorg/teleal/common/swingfwk/logging/LogTableModel;->pushMessage(Lorg/teleal/common/swingfwk/logging/LogMessage;)V

    .line 173
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController$3;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v0}, Lorg/teleal/common/swingfwk/logging/LogController;->access$300(Lorg/teleal/common/swingfwk/logging/LogController;)Lorg/teleal/common/swingfwk/logging/LogTableModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/teleal/common/swingfwk/logging/LogTableModel;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/teleal/common/swingfwk/logging/LogController$3;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v0}, Lorg/teleal/common/swingfwk/logging/LogController;->access$000(Lorg/teleal/common/swingfwk/logging/LogController;)Ljavax/swing/JTable;

    move-result-object v0

    iget-object v1, p0, Lorg/teleal/common/swingfwk/logging/LogController$3;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v1}, Lorg/teleal/common/swingfwk/logging/LogController;->access$000(Lorg/teleal/common/swingfwk/logging/LogController;)Ljavax/swing/JTable;

    move-result-object v1

    iget-object v2, p0, Lorg/teleal/common/swingfwk/logging/LogController$3;->this$0:Lorg/teleal/common/swingfwk/logging/LogController;

    invoke-static {v2}, Lorg/teleal/common/swingfwk/logging/LogController;->access$300(Lorg/teleal/common/swingfwk/logging/LogController;)Lorg/teleal/common/swingfwk/logging/LogTableModel;

    move-result-object v2

    invoke-virtual {v2}, Lorg/teleal/common/swingfwk/logging/LogTableModel;->getRowCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljavax/swing/JTable;->getCellRect(IIZ)Ljava/awt/Rectangle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTable;->scrollRectToVisible(Ljava/awt/Rectangle;)V

    .line 178
    :cond_0
    return-void
.end method
