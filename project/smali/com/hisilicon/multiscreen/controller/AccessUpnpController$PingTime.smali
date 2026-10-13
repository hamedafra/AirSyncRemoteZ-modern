.class Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;
.super Ljava/lang/Object;
.source "AccessUpnpController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/controller/AccessUpnpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PingTime"
.end annotation


# instance fields
.field private mIsValid:Z

.field private mPingStartTime:J

.field private mPingTimeCost:I

.field final synthetic this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;


# direct methods
.method public constructor <init>(Lcom/hisilicon/multiscreen/controller/AccessUpnpController;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/16 v1, 0xbb8

    const/4 v0, 0x1

    .line 207
    iput-object p1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->this$0:Lcom/hisilicon/multiscreen/controller/AccessUpnpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-wide v2, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->mPingStartTime:J

    .line 199
    iput v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->mPingTimeCost:I

    .line 204
    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->mIsValid:Z

    .line 208
    iput-wide v2, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->mPingStartTime:J

    .line 209
    iput v1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->mPingTimeCost:I

    .line 210
    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->mIsValid:Z

    .line 211
    return-void
.end method


# virtual methods
.method protected getLatestPingTimeCost()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->mPingTimeCost:I

    return v0
.end method

.method protected getPingTimeCost()I
    .locals 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->mIsValid:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->mIsValid:Z

    .line 255
    iget v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->mPingTimeCost:I

    .line 260
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x7530

    goto :goto_0
.end method

.method protected getStartTime()I
    .locals 4

    .prologue
    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->mPingStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method protected declared-synchronized setPingTimeCost(I)V
    .locals 1
    .param p1, "timeCost"    # I

    .prologue
    .line 239
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->mIsValid:Z

    .line 240
    iput p1, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->mPingTimeCost:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected startup()V
    .locals 2

    .prologue
    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hisilicon/multiscreen/controller/AccessUpnpController$PingTime;->mPingStartTime:J

    .line 220
    return-void
.end method
