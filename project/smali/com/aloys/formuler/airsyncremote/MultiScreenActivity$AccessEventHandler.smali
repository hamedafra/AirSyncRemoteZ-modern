.class Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$AccessEventHandler;
.super Landroid/os/Handler;
.source "MultiScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
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
            "Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 1196
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$AccessEventHandler;->mActivityReference:Ljava/lang/ref/SoftReference;

    .line 1197
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$AccessEventHandler;->mActivityReference:Ljava/lang/ref/SoftReference;

    .line 1198
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1202
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$AccessEventHandler;->mActivityReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .line 1204
    .local v0, "activity":Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1206
    if-nez v0, :cond_0

    .line 1257
    :goto_0
    return-void

    .line 1211
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 1216
    :sswitch_0
    const-string v2, "keep alive packet loss!"

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1217
    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$1400(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    goto :goto_0

    .line 1224
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .line 1225
    .local v1, "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$1500(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    goto :goto_0

    .line 1232
    .end local v1    # "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .line 1233
    .restart local v1    # "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$1600(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    goto :goto_0

    .line 1240
    .end local v1    # "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .line 1241
    .restart local v1    # "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$1700(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    goto :goto_0

    .line 1248
    .end local v1    # "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .line 1249
    .restart local v1    # "caller":Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$1800(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    goto :goto_0

    .line 1211
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x50 -> :sswitch_4
    .end sparse-switch
.end method
