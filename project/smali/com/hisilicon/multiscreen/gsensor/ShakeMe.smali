.class public Lcom/hisilicon/multiscreen/gsensor/ShakeMe;
.super Ljava/lang/Object;
.source "ShakeMe.java"


# static fields
.field private static final MAX_LINE_ACC_TIMES:I = 0x6

.field private static final MAX_RECORDING_TIMES:I = 0x14

.field private static final SHAKE_SENSOR_VALUE:F = 10.0f


# instance fields
.field private isEnable:Z

.field private mIsRecording:Z

.field private mLineSensor:Landroid/hardware/Sensor;

.field private mRecordingTimes:I

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensormanager:Landroid/hardware/SensorManager;

.field private mShakeListener:Lcom/hisilicon/multiscreen/gsensor/IShakeListener;

.field private mShakeTimes:I

.field private mTotalLineAccTimes:F

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisilicon/multiscreen/gsensor/IShakeListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shakeListener"    # Lcom/hisilicon/multiscreen/gsensor/IShakeListener;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mSensormanager:Landroid/hardware/SensorManager;

    .line 29
    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mLineSensor:Landroid/hardware/Sensor;

    .line 31
    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 33
    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mShakeListener:Lcom/hisilicon/multiscreen/gsensor/IShakeListener;

    .line 39
    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mVibrator:Landroid/os/Vibrator;

    .line 41
    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->isEnable:Z

    .line 46
    iput v1, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mShakeTimes:I

    .line 51
    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mIsRecording:Z

    .line 56
    iput v1, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mRecordingTimes:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mTotalLineAccTimes:F

    .line 70
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->initSensor(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p0, p2}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->setListener(Lcom/hisilicon/multiscreen/gsensor/IShakeListener;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->initVibrator(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/multiscreen/gsensor/ShakeMe;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/gsensor/ShakeMe;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->handleSensorEvent(FF)V

    return-void
.end method

.method private handleSensorEvent(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 153
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mIsRecording:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->isLineAcc(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mIsRecording:Z

    .line 157
    const/16 v0, 0x14

    iput v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mRecordingTimes:I

    .line 158
    iput v1, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mTotalLineAccTimes:F

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mIsRecording:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mRecordingTimes:I

    if-lez v0, :cond_0

    .line 162
    iget v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mRecordingTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mRecordingTimes:I

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->isLineAcc(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mTotalLineAccTimes:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mTotalLineAccTimes:F

    .line 169
    :cond_2
    iget v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mTotalLineAccTimes:F

    const/high16 v1, 0x40c00000    # 6.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 173
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->shake()V

    .line 174
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->resetRecord()V

    .line 177
    :cond_3
    iget v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mRecordingTimes:I

    if-nez v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->resetRecord()V

    goto :goto_0
.end method

.method private initSensor(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mSensormanager:Landroid/hardware/SensorManager;

    .line 105
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mSensormanager:Landroid/hardware/SensorManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mLineSensor:Landroid/hardware/Sensor;

    .line 107
    new-instance v0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe$1;

    invoke-direct {v0, p0}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe$1;-><init>(Lcom/hisilicon/multiscreen/gsensor/ShakeMe;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 123
    return-void
.end method

.method private initVibrator(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mVibrator:Landroid/os/Vibrator;

    .line 128
    return-void
.end method

.method private isLineAcc(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v1, 0x41200000    # 10.0f

    .line 193
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 195
    :cond_0
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerSensor()Z
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 220
    .local v0, "isOK":Z
    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mSensormanager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_0

    .line 222
    const-string v1, "Fail to enable shakeMe, sensormanger is null."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    .line 235
    :goto_0
    return v0

    .line 225
    :cond_0
    iget-boolean v1, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->isEnable:Z

    if-eqz v1, :cond_1

    .line 228
    const/4 v0, 0x1

    goto :goto_0

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mLineSensor:Landroid/hardware/Sensor;

    invoke-direct {p0, v1}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->registerSensor(Landroid/hardware/Sensor;)Z

    move-result v0

    goto :goto_0
.end method

.method private registerSensor(Landroid/hardware/Sensor;)Z
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mSensormanager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mShakeTimes:I

    .line 133
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->resetRecord()V

    .line 134
    return-void
.end method

.method private resetRecord()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mIsRecording:Z

    .line 139
    iput v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mRecordingTimes:I

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mTotalLineAccTimes:F

    .line 141
    return-void
.end method

.method private shake()V
    .locals 3

    .prologue
    .line 206
    iget v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mShakeTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mShakeTimes:I

    .line 207
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mShakeListener:Lcom/hisilicon/multiscreen/gsensor/IShakeListener;

    iget v1, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mShakeTimes:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hisilicon/multiscreen/gsensor/IShakeListener;->shake(II)V

    .line 209
    return-void
.end method

.method private unregisterSensor()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mSensormanager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mSensormanager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 256
    :cond_0
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->reset()V

    .line 89
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->unregisterSensor()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->isEnable:Z

    .line 91
    return-void
.end method

.method public doVibrate()V
    .locals 3

    .prologue
    .line 95
    const/4 v1, 0x4

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    .line 98
    .local v0, "pattern":[J
    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mVibrator:Landroid/os/Vibrator;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 99
    return-void

    .line 95
    nop

    :array_0
    .array-data 8
        0x0
        0x12c
        0xc8
        0x12c
    .end array-data
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->reset()V

    .line 83
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->registerSensor()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->isEnable:Z

    .line 84
    return-void
.end method

.method public setListener(Lcom/hisilicon/multiscreen/gsensor/IShakeListener;)V
    .locals 0
    .param p1, "shakeListener"    # Lcom/hisilicon/multiscreen/gsensor/IShakeListener;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->mShakeListener:Lcom/hisilicon/multiscreen/gsensor/IShakeListener;

    .line 78
    return-void
.end method
