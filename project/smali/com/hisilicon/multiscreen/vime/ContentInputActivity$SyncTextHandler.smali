.class Lcom/hisilicon/multiscreen/vime/ContentInputActivity$SyncTextHandler;
.super Landroid/os/Handler;
.source "ContentInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/vime/ContentInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncTextHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/multiscreen/vime/ContentInputActivity;


# direct methods
.method public constructor <init>(Lcom/hisilicon/multiscreen/vime/ContentInputActivity;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$SyncTextHandler;->this$0:Lcom/hisilicon/multiscreen/vime/ContentInputActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 569
    return-void
.end method

.method public constructor <init>(Lcom/hisilicon/multiscreen/vime/ContentInputActivity;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$SyncTextHandler;->this$0:Lcom/hisilicon/multiscreen/vime/ContentInputActivity;

    .line 573
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 574
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 579
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 597
    :goto_0
    return-void

    .line 583
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 584
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "MSG_KEY_TEXT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, "text":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 587
    const-string v1, ""

    .line 588
    const-string v2, "Get string form data fail, and it will send blank."

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 590
    :cond_0
    iget-object v2, p0, Lcom/hisilicon/multiscreen/vime/ContentInputActivity$SyncTextHandler;->this$0:Lcom/hisilicon/multiscreen/vime/ContentInputActivity;

    const-string v3, "MSG_START_SELECTION"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "MSG_END_SELECTION"

    .line 591
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 590
    invoke-static {v2, v1, v3, v4}, Lcom/hisilicon/multiscreen/vime/ContentInputActivity;->access$400(Lcom/hisilicon/multiscreen/vime/ContentInputActivity;Ljava/lang/String;II)V

    goto :goto_0

    .line 579
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
    .end packed-switch
.end method
