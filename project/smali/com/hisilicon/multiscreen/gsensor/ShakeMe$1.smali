.class Lcom/hisilicon/multiscreen/gsensor/ShakeMe$1;
.super Ljava/lang/Object;
.source "ShakeMe.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->initSensor(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/multiscreen/gsensor/ShakeMe;


# direct methods
.method constructor <init>(Lcom/hisilicon/multiscreen/gsensor/ShakeMe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/multiscreen/gsensor/ShakeMe;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe$1;->this$0:Lcom/hisilicon/multiscreen/gsensor/ShakeMe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "s"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 121
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 112
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe$1;->this$0:Lcom/hisilicon/multiscreen/gsensor/ShakeMe;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->access$000(Lcom/hisilicon/multiscreen/gsensor/ShakeMe;FF)V

    .line 116
    :cond_0
    return-void
.end method
