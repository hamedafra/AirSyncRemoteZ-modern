.class Lcom/hisilicon/multiscreen/gsensor/SensorService$1;
.super Ljava/lang/Object;
.source "SensorService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/gsensor/SensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/multiscreen/gsensor/SensorService;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method constructor <init>(Lcom/hisilicon/multiscreen/gsensor/SensorService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/hisilicon/multiscreen/gsensor/SensorService;

    .prologue
    const/4 v0, 0x0

    .line 50
    iput-object p1, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService$1;->this$0:Lcom/hisilicon/multiscreen/gsensor/SensorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService$1;->x:F

    iput v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService$1;->y:F

    iput v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService$1;->z:F

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "s"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 97
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService$1;->this$0:Lcom/hisilicon/multiscreen/gsensor/SensorService;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/gsensor/SensorService;->access$000(Lcom/hisilicon/multiscreen/gsensor/SensorService;)Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService$1;->x:F

    .line 87
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService$1;->y:F

    .line 88
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService$1;->z:F

    .line 89
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService$1;->this$0:Lcom/hisilicon/multiscreen/gsensor/SensorService;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/gsensor/SensorService;->access$000(Lcom/hisilicon/multiscreen/gsensor/SensorService;)Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    iget v2, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService$1;->x:F

    iget v3, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService$1;->y:F

    iget v4, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService$1;->z:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;->sendSensorEvent(IFFF)V

    .line 91
    :cond_0
    return-void
.end method
