.class public Lcom/hisilicon/multiscreen/protocol/message/SensorMessage;
.super Ljava/lang/Object;
.source "SensorMessage.java"


# instance fields
.field private accuracy:S

.field private dataType:S

.field private pointX:F

.field private pointY:F

.field private pointZ:F

.field private sensorType:S


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-short v1, p0, Lcom/hisilicon/multiscreen/protocol/message/SensorMessage;->dataType:S

    .line 23
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/hisilicon/multiscreen/protocol/message/SensorMessage;->sensorType:S

    .line 28
    iput-short v1, p0, Lcom/hisilicon/multiscreen/protocol/message/SensorMessage;->accuracy:S

    return-void
.end method


# virtual methods
.method public getAccuracy()S
    .locals 1

    .prologue
    .line 100
    iget-short v0, p0, Lcom/hisilicon/multiscreen/protocol/message/SensorMessage;->accuracy:S

    return v0
.end method

.method public getDataType()S
    .locals 1

    .prologue
    .line 56
    iget-short v0, p0, Lcom/hisilicon/multiscreen/protocol/message/SensorMessage;->dataType:S

    return v0
.end method

.method public getPointX()F
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/SensorMessage;->pointX:F

    return v0
.end method

.method public getPointY()F
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/SensorMessage;->pointY:F

    return v0
.end method

.method public getPointZ()F
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/SensorMessage;->pointZ:F

    return v0
.end method

.method public getSensorType()S
    .locals 1

    .prologue
    .line 78
    iget-short v0, p0, Lcom/hisilicon/multiscreen/protocol/message/SensorMessage;->sensorType:S

    return v0
.end method

.method public setAccuracy(S)V
    .locals 0
    .param p1, "accuracy"    # S

    .prologue
    .line 111
    iput-short p1, p0, Lcom/hisilicon/multiscreen/protocol/message/SensorMessage;->accuracy:S

    .line 112
    return-void
.end method

.method public setDataType(S)V
    .locals 0
    .param p1, "dataType"    # S

    .prologue
    .line 67
    iput-short p1, p0, Lcom/hisilicon/multiscreen/protocol/message/SensorMessage;->dataType:S

    .line 68
    return-void
.end method

.method public setPointX(F)V
    .locals 0
    .param p1, "pointX"    # F

    .prologue
    .line 133
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/SensorMessage;->pointX:F

    .line 134
    return-void
.end method

.method public setPointY(F)V
    .locals 0
    .param p1, "pointY"    # F

    .prologue
    .line 155
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/SensorMessage;->pointY:F

    .line 156
    return-void
.end method

.method public setPointZ(F)V
    .locals 0
    .param p1, "pointZ"    # F

    .prologue
    .line 177
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/SensorMessage;->pointZ:F

    .line 178
    return-void
.end method

.method public setSensorType(S)V
    .locals 0
    .param p1, "sensorType"    # S

    .prologue
    .line 89
    iput-short p1, p0, Lcom/hisilicon/multiscreen/protocol/message/SensorMessage;->sensorType:S

    .line 90
    return-void
.end method
