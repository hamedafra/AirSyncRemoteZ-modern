.class public Lcom/hisilicon/multiscreen/gsensor/SensorService;
.super Landroid/app/Service;
.source "SensorService.java"


# static fields
.field public static final GRAVITY_EARTH:F = 9.80665f

.field public static final MAX_ACC:F = 19.6133f


# instance fields
.field private mAccSensor:Landroid/hardware/Sensor;

.field private mGyrSensor:Landroid/hardware/Sensor;

.field private mSensor:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensormanager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService;->mSensor:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;

    .line 33
    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService;->mSensormanager:Landroid/hardware/SensorManager;

    .line 35
    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService;->mAccSensor:Landroid/hardware/Sensor;

    .line 37
    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService;->mGyrSensor:Landroid/hardware/Sensor;

    .line 49
    new-instance v0, Lcom/hisilicon/multiscreen/gsensor/SensorService$1;

    invoke-direct {v0, p0}, Lcom/hisilicon/multiscreen/gsensor/SensorService$1;-><init>(Lcom/hisilicon/multiscreen/gsensor/SensorService;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/multiscreen/gsensor/SensorService;)Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/gsensor/SensorService;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService;->mSensor:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;

    return-object v0
.end method

.method private registerSensor(Landroid/hardware/Sensor;)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService;->mSensormanager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 158
    return-void
.end method

.method private setSensorManager()V
    .locals 2

    .prologue
    .line 136
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/hisilicon/multiscreen/gsensor/SensorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService;->mSensormanager:Landroid/hardware/SensorManager;

    .line 138
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService;->mSensormanager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService;->mAccSensor:Landroid/hardware/Sensor;

    .line 139
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService;->mSensormanager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService;->mGyrSensor:Landroid/hardware/Sensor;

    .line 146
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService;->mAccSensor:Landroid/hardware/Sensor;

    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/gsensor/SensorService;->registerSensor(Landroid/hardware/Sensor;)V

    .line 147
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService;->mGyrSensor:Landroid/hardware/Sensor;

    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/gsensor/SensorService;->registerSensor(Landroid/hardware/Sensor;)V

    .line 152
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 127
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 129
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService;->mSensormanager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 132
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 110
    const-string v0, "onStart."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/gsensor/SensorService;->setSensorManager()V

    .line 114
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getRemoteControlCenter()Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->getRemoteSensor()Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/SensorService;->mSensor:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSensor;

    .line 116
    const/4 v0, 0x2

    return v0
.end method
