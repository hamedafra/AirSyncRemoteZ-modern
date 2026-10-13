.class Lcom/hisilicon/multiscreen/controller/AccessUpnpController$ReAccessRunnable;
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
    name = "ReAccessRunnable"
.end annotation


# instance fields
.field private mRemoteID:Ljava/lang/String;

.field final synthetic this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;


# direct methods
.method public constructor <init>(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)V
    .locals 1

    .prologue
    .line 345
    iput-object p1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$ReAccessRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$ReAccessRunnable;->mRemoteID:Ljava/lang/String;

    .line 346
    invoke-static {p1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$100(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getRemoteId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$ReAccessRunnable;->mRemoteID:Ljava/lang/String;

    .line 347
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x1388

    const/4 v4, 0x1

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$ReAccessRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$600(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 354
    const/16 v0, 0xa

    .line 355
    .local v0, "sleepTime":I
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$ReAccessRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$700(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$ReAccessRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$600(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$ReAccessRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$ReAccessRunnable;->mRemoteID:Ljava/lang/String;

    .line 359
    invoke-static {v1, v2, v5, v5}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$800(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Ljava/lang/String;II)Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 361
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$ReAccessRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$900(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)V

    .line 362
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$ReAccessRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$1000(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Z

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$ReAccessRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$600(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Z

    move-result v1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$ReAccessRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$700(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$ReAccessRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$1100(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getDeviceDiscover()Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->msearch()V

    .line 372
    :cond_2
    :goto_0
    if-lez v0, :cond_0

    .line 374
    add-int/lit8 v0, v0, -0x1

    .line 375
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$ReAccessRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$600(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$ReAccessRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$500(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;J)V

    goto :goto_0

    .line 381
    .end local v0    # "sleepTime":I
    :cond_3
    return-void
.end method
