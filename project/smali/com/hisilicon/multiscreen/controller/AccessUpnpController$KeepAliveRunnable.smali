.class Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;
.super Ljava/lang/Object;
.source "AccessUpnpController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/controller/AccessUpnpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeepAliveRunnable"
.end annotation


# instance fields
.field private mTempPingTimeCost:I

.field final synthetic this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;


# direct methods
.method public constructor <init>(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)V
    .locals 1

    .prologue
    .line 392
    iput-object p1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->mTempPingTimeCost:I

    .line 394
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$402(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;I)I

    .line 395
    return-void
.end method

.method private isNetworkLost(I)Z
    .locals 3
    .param p1, "failedCount"    # I

    .prologue
    .line 496
    const/4 v0, 0x0

    .line 498
    .local v0, "isLost":Z
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 500
    const/4 v0, 0x0

    .line 501
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$1600(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)V

    .line 510
    :cond_0
    :goto_0
    return v0

    .line 503
    :cond_1
    const/16 v1, 0xf

    if-lt p1, v1, :cond_0

    .line 505
    const/4 v0, 0x1

    .line 506
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$1100(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v1

    sget-object v2, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->NETWORK_LOST:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setState(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 507
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    sget-object v2, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->KeepAlive:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    invoke-static {v1, v2}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$1700(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    goto :goto_0
.end method

.method private isPingException(I)Z
    .locals 3
    .param p1, "pingTime"    # I

    .prologue
    .line 453
    const/4 v0, 0x1

    .line 454
    .local v0, "isException":Z
    packed-switch p1, :pswitch_data_0

    .line 480
    const/4 v0, 0x0

    .line 485
    :goto_0
    return v0

    .line 458
    :pswitch_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$1100(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v1

    sget-object v2, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->REAVED:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setState(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 459
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    sget-object v2, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->KeepAlive:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    invoke-static {v1, v2}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$1300(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    goto :goto_0

    .line 465
    :pswitch_1
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$1100(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v1

    sget-object v2, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->STB_LEAVE:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setState(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 466
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    sget-object v2, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->KeepAlive:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    invoke-static {v1, v2}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$1400(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    goto :goto_0

    .line 473
    :pswitch_2
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$1100(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v1

    sget-object v2, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->STB_SUSPEND:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setState(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 474
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    sget-object v2, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->KeepAlive:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    invoke-static {v1, v2}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$1500(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    goto :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$1200(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    const/16 v0, 0xa

    .line 403
    .local v0, "sleepTime":I
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$000(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->getPingTimeCost()I

    move-result v1

    iput v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->mTempPingTimeCost:I

    .line 405
    iget v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->mTempPingTimeCost:I

    invoke-direct {p0, v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->isPingException(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    const-string v1, "Ping time exception is being dealt."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1, v4}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$202(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Z)Z

    .line 409
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1, v4}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$602(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Z)Z

    .line 410
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1, v4}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$1202(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Z)Z

    .line 443
    .end local v0    # "sleepTime":I
    :cond_1
    :goto_0
    return-void

    .line 415
    .restart local v0    # "sleepTime":I
    :cond_2
    iget v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->mTempPingTimeCost:I

    const/16 v2, 0x7530

    if-ge v1, v2, :cond_3

    iget v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->mTempPingTimeCost:I

    if-lez v1, :cond_3

    .line 417
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1, v4}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$402(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;I)I

    .line 425
    :goto_1
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$400(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->isNetworkLost(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 428
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1, v4}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$202(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Z)Z

    .line 429
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1, v4}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$602(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Z)Z

    .line 430
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1, v4}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$1202(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Z)Z

    goto :goto_0

    .line 421
    :cond_3
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$408(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)I

    goto :goto_1

    .line 434
    :cond_4
    :goto_2
    if-lez v0, :cond_0

    .line 436
    add-int/lit8 v0, v0, -0x1

    .line 437
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$1200(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$KeepAliveRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$500(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;J)V

    goto :goto_2
.end method
