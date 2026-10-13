.class Lcom/hisilicon/multiscreen/gsensor/AirMouse$1;
.super Ljava/lang/Object;
.source "AirMouse.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/multiscreen/gsensor/AirMouse;->initSensor(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;


# direct methods
.method constructor <init>(Lcom/hisilicon/multiscreen/gsensor/AirMouse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$1;->this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "s"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 340
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 272
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 335
    :goto_0
    :pswitch_0
    return-void

    .line 276
    :pswitch_1
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$1;->this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->access$000(Lcom/hisilicon/multiscreen/gsensor/AirMouse;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 277
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$1;->this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->access$000(Lcom/hisilicon/multiscreen/gsensor/AirMouse;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 278
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$1;->this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->access$000(Lcom/hisilicon/multiscreen/gsensor/AirMouse;)[F

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 289
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$1;->this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->access$100(Lcom/hisilicon/multiscreen/gsensor/AirMouse;)V

    goto :goto_0

    .line 294
    :pswitch_2
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$1;->this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->access$000(Lcom/hisilicon/multiscreen/gsensor/AirMouse;)[F

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    aput v2, v0, v1

    .line 295
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$1;->this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->access$000(Lcom/hisilicon/multiscreen/gsensor/AirMouse;)[F

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    aput v2, v0, v1

    .line 296
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$1;->this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->access$000(Lcom/hisilicon/multiscreen/gsensor/AirMouse;)[F

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    aput v2, v0, v1

    goto :goto_0

    .line 306
    :pswitch_3
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$1;->this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    iget-object v0, v0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newAcc:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 307
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$1;->this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    iget-object v0, v0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newAcc:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 308
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$1;->this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    iget-object v0, v0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newAcc:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    aput v1, v0, v5

    goto :goto_0

    .line 319
    :pswitch_4
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$1;->this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    iget-object v0, v0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newMgc:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 320
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$1;->this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    iget-object v0, v0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newMgc:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 321
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$1;->this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    iget-object v0, v0, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->newMgc:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    aput v1, v0, v5

    .line 323
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$1;->this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->access$200(Lcom/hisilicon/multiscreen/gsensor/AirMouse;)V

    goto/16 :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
