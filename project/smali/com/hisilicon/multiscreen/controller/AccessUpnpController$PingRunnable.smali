.class Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingRunnable;
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
    name = "PingRunnable"
.end annotation


# instance fields
.field private mRemoteID:Ljava/lang/String;

.field private mTimeCost:I

.field final synthetic this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;


# direct methods
.method public constructor <init>(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)V
    .locals 2

    .prologue
    .line 296
    iput-object p1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingRunnable;->mRemoteID:Ljava/lang/String;

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingRunnable;->mTimeCost:I

    .line 297
    invoke-static {p1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$000(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

    move-result-object v0

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

    invoke-direct {v0, p1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;-><init>(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)V

    invoke-static {p1, v0}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$002(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;)Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

    .line 301
    :cond_0
    invoke-static {p1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$000(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->setPingTimeCost(I)V

    .line 302
    invoke-static {p1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$100(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getRemoteId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingRunnable;->mRemoteID:Ljava/lang/String;

    .line 303
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 308
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$200(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    const/16 v0, 0xa

    .line 311
    .local v0, "sleepTime":I
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    iget-object v2, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingRunnable;->mRemoteID:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$300(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingRunnable;->mTimeCost:I

    .line 312
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$000(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;

    move-result-object v1

    iget v2, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingRunnable;->mTimeCost:I

    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->setPingTimeCost(I)V

    .line 316
    iget v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingRunnable;->mTimeCost:I

    const/16 v2, 0x7530

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingRunnable;->mTimeCost:I

    if-lez v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$402(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;I)I

    .line 321
    :cond_1
    :goto_0
    if-lez v0, :cond_0

    .line 323
    add-int/lit8 v0, v0, -0x1

    .line 324
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$200(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingRunnable;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    const-wide/16 v2, 0x96

    invoke-static {v1, v2, v3}, Lcom/hisilicon/multiscreen/controller/AccessUpnpController;->access$500(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;J)V

    goto :goto_0

    .line 330
    .end local v0    # "sleepTime":I
    :cond_2
    return-void
.end method
