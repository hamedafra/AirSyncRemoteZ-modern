.class public Lcom/hisilicon/multiscreen/vime/VImeClientControlService;
.super Landroid/app/Service;
.source "VImeClientControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/multiscreen/vime/VImeClientControlService$ToastRunnable;
    }
.end annotation


# static fields
.field private static final FIFTH_ARGUMENT_INDEX:I = 0x4

.field private static final FIRST_ARGUMENT_INDEX:I = 0x0

.field private static final FOURTH_ARGUMENT_INDEX:I = 0x3

.field private static final SECOND_ARGUMENT_INDEX:I = 0x1

.field private static final THIRD_ARGUMENT_INDEX:I = 0x2

.field private static mVImeControlServiceInstance:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;


# instance fields
.field private mActivityHandler:Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;

.field private mHandler:Landroid/os/Handler;

.field private mIsActivityOnTop:Z

.field private mVImeCenter:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mVImeControlServiceInstance:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mVImeCenter:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mIsActivityOnTop:Z

    .line 81
    iput-object v1, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService$1;

    invoke-direct {v0, p0}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService$1;-><init>(Lcom/hisilicon/multiscreen/vime/VImeClientControlService;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mActivityHandler:Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/multiscreen/vime/VImeClientControlService;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->showVImeDisableToast()V

    return-void
.end method

.method static synthetic access$100(Lcom/hisilicon/multiscreen/vime/VImeClientControlService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mIsActivityOnTop:Z

    return v0
.end method

.method public static getInstance()Lcom/hisilicon/multiscreen/vime/VImeClientControlService;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mVImeControlServiceInstance:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    if-nez v0, :cond_0

    .line 175
    const-string v0, "VImeControlServiceInstance is null"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 177
    :cond_0
    sget-object v0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mVImeControlServiceInstance:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    return-object v0
.end method

.method private initVimeServer(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;Z)Z
    .locals 4
    .param p1, "device"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;
    .param p2, "isSwitchOpened"    # Z

    .prologue
    .line 339
    const/4 v1, 0x0

    .line 340
    .local v1, "isEnableSuccess":Z
    invoke-static {p1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->getInstance(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    move-result-object v2

    iput-object v2, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mVImeCenter:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    .line 341
    iget-object v2, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mVImeCenter:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    iget-object v3, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mActivityHandler:Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;

    invoke-virtual {v2, v3}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->setVimeActivityHandler(Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;)V

    .line 343
    if-eqz p2, :cond_1

    .line 345
    const-string v2, "Send enable VIME"

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->enableVIme()Z

    move-result v1

    .line 348
    if-eqz v1, :cond_0

    .line 350
    const-string v2, "Enable VIME successful."

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 367
    :goto_0
    return v1

    .line 354
    :cond_0
    const-string v2, "Enable VIME failed."

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v2, "hiandroid.vimestatus.switch"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, "intentSwitchVime":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 363
    .end local v0    # "intentSwitchVime":Landroid/content/Intent;
    :cond_1
    const-string v2, "Switch closed"

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 364
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showVImeDisableToast()V
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/hisilicon/multiscreen/vime/VImeClientControlService$ToastRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService$ToastRunnable;-><init>(Lcom/hisilicon/multiscreen/vime/VImeClientControlService;Lcom/hisilicon/multiscreen/vime/VImeClientControlService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 377
    return-void
.end method

.method private writeVIMEStatusPreference(Z)V
    .locals 3
    .param p1, "isOpened"    # Z

    .prologue
    .line 323
    const-string v1, "Setting_Status"

    const/4 v2, 0x0

    .line 324
    invoke-virtual {p0, v1, v2}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 325
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 326
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "vime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 327
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 328
    return-void
.end method


# virtual methods
.method public disableVIme()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mVImeCenter:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->disableVIme()Z

    move-result v0

    return v0
.end method

.method public enableVIme()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mVImeCenter:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->enableVIme()Z

    move-result v0

    return v0
.end method

.method public isInputStatusOnClient()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mVImeCenter:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->isInputStatusOnClient()Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 184
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 213
    const-string v0, "VImeClientControl service onDestroy."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mVImeCenter:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->isVImeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "VIme will be disable."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->disableVIme()Z

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mVImeCenter:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->destroy()V

    .line 223
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flg"    # I
    .param p3, "startid"    # I

    .prologue
    .line 195
    const-string v0, "VImeClientControl service onStartCommand."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 196
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 198
    sput-object p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mVImeControlServiceInstance:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    .line 199
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mHandler:Landroid/os/Handler;

    .line 201
    iget-object v0, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mActivityHandler:Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;

    invoke-interface {v0}, Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;->endInputByServer()V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mIsActivityOnTop:Z

    .line 203
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->reset()Z

    .line 205
    const/4 v0, 0x2

    return v0
.end method

.method public readVIMEStatusPreference()Z
    .locals 4

    .prologue
    .line 284
    const/4 v0, 0x1

    .line 285
    .local v0, "isOpened":Z
    const-string v2, "Setting_Status"

    const/4 v3, 0x0

    .line 286
    invoke-virtual {p0, v2, v3}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 287
    .local v1, "prefrence":Landroid/content/SharedPreferences;
    const-string v2, "vime"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 313
    return v0
.end method

.method public reset()Z
    .locals 3

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->readVIMEStatusPreference()Z

    move-result v1

    .line 233
    .local v1, "isSwitchOpen":Z
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getHiDevice()Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->initVimeServer(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;Z)Z

    move-result v0

    .line 234
    .local v0, "isOK":Z
    return v0
.end method

.method public setInputActivityTopStatus(Z)V
    .locals 0
    .param p1, "isNewOnTop"    # Z

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->mIsActivityOnTop:Z

    .line 275
    return-void
.end method
