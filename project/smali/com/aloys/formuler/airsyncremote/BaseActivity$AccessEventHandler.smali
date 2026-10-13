.class Lcom/aloys/formuler/airsyncremote/BaseActivity$AccessEventHandler;
.super Landroid/os/Handler;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessEventHandler"
.end annotation


# instance fields
.field mActivityReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/aloys/formuler/airsyncremote/BaseActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/BaseActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/aloys/formuler/airsyncremote/BaseActivity;

    .prologue
    .line 163
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity$AccessEventHandler;->mActivityReference:Ljava/lang/ref/SoftReference;

    .line 164
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity$AccessEventHandler;->mActivityReference:Ljava/lang/ref/SoftReference;

    .line 165
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 169
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity$AccessEventHandler;->mActivityReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;

    .line 170
    .local v0, "activity":Lcom/aloys/formuler/airsyncremote/BaseActivity;
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 171
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 175
    :sswitch_0
    const-string v2, "keep alive packet loss!"

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 176
    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 185
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .line 186
    .local v1, "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->dealNetfailedStatus(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    goto :goto_0

    .line 192
    .end local v1    # "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .line 193
    .restart local v1    # "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->dealAccessByeForReave(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    goto :goto_0

    .line 198
    .end local v1    # "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .line 199
    .restart local v1    # "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->dealSTBLeave(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    goto :goto_0

    .line 204
    .end local v1    # "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .line 205
    .restart local v1    # "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->dealSTBSuppend(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    goto :goto_0

    .line 171
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x50 -> :sswitch_4
    .end sparse-switch
.end method
