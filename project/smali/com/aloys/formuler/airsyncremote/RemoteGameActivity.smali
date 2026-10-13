.class public Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;
.super Lcom/aloys/formuler/airsyncremote/BaseActivity;
.source "RemoteGameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aloys/formuler/airsyncremote/RemoteGameActivity$PopwinClickEvent;
    }
.end annotation


# instance fields
.field private mBtnRemote_game_back:Landroid/widget/Button;

.field private mBtnRemote_game_key:Landroid/widget/Button;

.field private mBtnRemote_game_key_a:Landroid/widget/Button;

.field private mBtnRemote_game_key_b:Landroid/widget/Button;

.field private mBtnRemote_game_key_back:Landroid/widget/Button;

.field private mBtnRemote_game_key_select:Landroid/widget/Button;

.field private mBtnRemote_game_key_start:Landroid/widget/Button;

.field private mBtnRemote_game_key_x:Landroid/widget/Button;

.field private mBtnRemote_game_key_y:Landroid/widget/Button;

.field private mBtnRemote_game_menu:Landroid/widget/Button;

.field private mBtnRemote_game_sensor_back:Landroid/widget/Button;

.field private mPopClickListener:Landroid/view/View$OnClickListener;

.field private mPopwin:Lcom/aloys/formuler/airsyncremote/RemoteParent;

.field private mRemote_game_control:Landroid/widget/RelativeLayout;

.field private mRemote_game_sensor:Landroid/widget/RelativeLayout;

.field private mTextViewGameHandle:Landroid/widget/TextView;

.field private mTextViewGameSensor:Landroid/widget/TextView;

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPopClickListener:Landroid/view/View$OnClickListener;

    .line 111
    iput v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->width:I

    .line 113
    iput v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->x:I

    .line 115
    iput v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->y:I

    return-void
.end method

.method static synthetic access$100(Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;)Lcom/aloys/formuler/airsyncremote/RemoteParent;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPopwin:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    return-object v0
.end method

.method private getKeyboardXY(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->width:I

    .line 399
    return-void
.end method

.method private initModules()V
    .locals 1

    .prologue
    .line 208
    const-string v0, "initModules"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->initRemoteCenter()V

    .line 212
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mRemote_game_sensor:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->startGsensor()V

    .line 216
    :cond_0
    return-void
.end method

.method private initRemoteCenter()V
    .locals 1

    .prologue
    .line 245
    const-string v0, "initRemoteCenter"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getRemoteControlCenter()Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    .line 249
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->getRemoteKeyboard()Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    move-result-object v0

    sput-object v0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    .line 250
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->getRemoteTouch()Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

    move-result-object v0

    sput-object v0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mRemoteTouch:Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

    .line 251
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 266
    const-string v0, "initView"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 268
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->setContentView(I)V

    .line 270
    const/4 v0, 0x4

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mRemoteUiStatus:I

    .line 272
    const v0, 0x7f0b007f

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mTextViewGameHandle:Landroid/widget/TextView;

    .line 273
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mTextViewGameHandle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mTextViewGameSensor:Landroid/widget/TextView;

    .line 276
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mTextViewGameSensor:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    const v0, 0x7f0b0082

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mRemote_game_control:Landroid/widget/RelativeLayout;

    .line 279
    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mRemote_game_sensor:Landroid/widget/RelativeLayout;

    .line 281
    const v0, 0x7f0b007d

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_back:Landroid/widget/Button;

    .line 282
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const v0, 0x7f0b0081

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_menu:Landroid/widget/Button;

    .line 285
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_menu:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    const v0, 0x7f0b0083

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key:Landroid/widget/Button;

    .line 288
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 290
    const v0, 0x7f0b0084

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_back:Landroid/widget/Button;

    .line 291
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 293
    const v0, 0x7f0b0086

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_select:Landroid/widget/Button;

    .line 294
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_select:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 296
    const v0, 0x7f0b0087

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_start:Landroid/widget/Button;

    .line 297
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_start:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 299
    const v0, 0x7f0b0088

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_x:Landroid/widget/Button;

    .line 300
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_x:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 302
    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_y:Landroid/widget/Button;

    .line 303
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_y:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 305
    const v0, 0x7f0b008a

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_a:Landroid/widget/Button;

    .line 306
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 308
    const v0, 0x7f0b008b

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_b:Landroid/widget/Button;

    .line 309
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 311
    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_sensor_back:Landroid/widget/Button;

    .line 312
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_sensor_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 313
    return-void
.end method

.method private resumeActivity()V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->resetAccessListener()V

    .line 198
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->resetSceneListener()V

    .line 199
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->initModules()V

    .line 200
    return-void
.end method

.method private startGsensor()V
    .locals 2

    .prologue
    .line 224
    const-string v1, "startGsensor"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hisilicon/multiscreen/gsensor/SensorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 227
    return-void
.end method

.method private stopGsensor()V
    .locals 2

    .prologue
    .line 234
    const-string v1, "stopGsensor"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hisilicon/multiscreen/gsensor/SensorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->stopService(Landroid/content/Intent;)Z

    .line 237
    return-void
.end method

.method private updateSensotUI()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 378
    iput v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mRemoteUiStatus:I

    .line 380
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mTextViewGameSensor:Landroid/widget/TextView;

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 381
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mTextViewGameHandle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 382
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_menu:Landroid/widget/Button;

    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 383
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mRemote_game_control:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mRemote_game_sensor:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 386
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->startGsensor()V

    .line 387
    return-void
.end method


# virtual methods
.method protected dealNetfailedStatus(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 0
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 392
    invoke-super {p0, p1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->dealNetfailedStatus(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    .line 393
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->gotoRemoteTouch()V

    .line 394
    return-void
.end method

.method protected gotoAirMouse()V
    .locals 3

    .prologue
    .line 830
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->gotoAirMouse()V

    .line 831
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 832
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 833
    const-string v1, "REMOTE_STATUS"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 834
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->startActivity(Landroid/content/Intent;)V

    .line 835
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->finish()V

    .line 836
    return-void
.end method

.method protected gotoDeviceDiscovery()V
    .locals 2

    .prologue
    .line 875
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->gotoDeviceDiscovery()V

    .line 876
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 877
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 878
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->startActivity(Landroid/content/Intent;)V

    .line 879
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->finish()V

    .line 880
    return-void
.end method

.method protected gotoMirror()V
    .locals 3

    .prologue
    .line 852
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->gotoMirror()V

    .line 853
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 854
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 855
    const-string v1, "REMOTE_STATUS"

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mRemoteUiStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 856
    const-string v1, "MIRROR_STATUS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 857
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->startActivity(Landroid/content/Intent;)V

    .line 858
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->finish()V

    .line 859
    return-void
.end method

.method protected gotoMirrorSensor()V
    .locals 3

    .prologue
    .line 864
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->gotoMirrorSensor()V

    .line 865
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 866
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 867
    const-string v1, "MIRROR_STATUS"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 868
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->startActivity(Landroid/content/Intent;)V

    .line 869
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->finish()V

    .line 870
    return-void
.end method

.method protected gotoRemoteKey()V
    .locals 3

    .prologue
    .line 841
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->gotoRemoteKey()V

    .line 842
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 843
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 844
    const-string v1, "REMOTE_STATUS"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 845
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->startActivity(Landroid/content/Intent;)V

    .line 846
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->finish()V

    .line 847
    return-void
.end method

.method protected gotoRemoteTouch()V
    .locals 3

    .prologue
    .line 819
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->gotoRemoteTouch()V

    .line 820
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 821
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 822
    const-string v1, "REMOTE_STATUS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 823
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->startActivity(Landroid/content/Intent;)V

    .line 824
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->finish()V

    .line 825
    return-void
.end method

.method protected initData()V
    .locals 2

    .prologue
    .line 256
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->initData()V

    .line 257
    new-instance v0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity$PopwinClickEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity$PopwinClickEvent;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;Lcom/aloys/formuler/airsyncremote/RemoteGameActivity$1;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPopClickListener:Landroid/view/View$OnClickListener;

    .line 258
    new-instance v0, Lcom/aloys/formuler/airsyncremote/RemoteParent;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPopClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteParent;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPopwin:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    .line 259
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onBackPressed()V

    .line 142
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->gotoDeviceDiscovery()V

    .line 143
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 193
    :goto_0
    :pswitch_0
    return-void

    .line 163
    :pswitch_1
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->updateHandsUI()V

    goto :goto_0

    .line 169
    :pswitch_2
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->updateSensotUI()V

    goto :goto_0

    .line 175
    :pswitch_3
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->gotoDeviceDiscovery()V

    goto :goto_0

    .line 181
    :pswitch_4
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPopwin:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPopwin:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->dismiss()V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPopwin:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mRemoteUiStatus:I

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->updateBackground(I)V

    .line 186
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPopwin:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    const v1, 0x7f0b0081

    invoke-virtual {p0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x7f0b007d
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->initView()V

    .line 122
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onDestroy()V

    .line 150
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->unbindDrawables(Landroid/view/View;)V

    .line 151
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onPause()V

    .line 135
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->stopGsensor()V

    .line 136
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onResume()V

    .line 128
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->resumeActivity()V

    .line 129
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 408
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->x:I

    .line 409
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->y:I

    .line 411
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 813
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 415
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->getKeyboardXY(Landroid/view/MotionEvent;)V

    .line 417
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->y:I

    if-lez v0, :cond_5

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->y:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->width:I

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->width:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->width:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_5

    .line 419
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 421
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->toVibrate()V

    .line 422
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key:Landroid/widget/Button;

    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 423
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount:I

    .line 424
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime:J

    .line 425
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 427
    const/16 v0, 0x67

    invoke-virtual {p0, v0, v2}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    goto :goto_0

    .line 430
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_3

    .line 432
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 434
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 436
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount:I

    goto :goto_0

    .line 440
    :cond_2
    const/16 v0, 0x67

    invoke-virtual {p0, v0, v2}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    .line 441
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount:I

    goto :goto_0

    .line 445
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 446
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 448
    :cond_4
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key:Landroid/widget/Button;

    const v1, 0x7f0200c8

    .line 449
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 451
    const/16 v0, 0x67

    invoke-virtual {p0, v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 454
    :cond_5
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->x:I

    if-lez v0, :cond_a

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->width:I

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_a

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->y:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->width:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_a

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->y:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->width:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_a

    .line 456
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    .line 458
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->toVibrate()V

    .line 459
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key:Landroid/widget/Button;

    const v1, 0x7f0200c6

    .line 460
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 461
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount:I

    .line 462
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime:J

    .line 463
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 465
    const/16 v0, 0x69

    invoke-virtual {p0, v0, v2}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 468
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_8

    .line 470
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 472
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_7

    .line 474
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount:I

    goto/16 :goto_0

    .line 478
    :cond_7
    const/16 v0, 0x69

    invoke-virtual {p0, v0, v2}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    .line 479
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount:I

    goto/16 :goto_0

    .line 483
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_9

    .line 484
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 486
    :cond_9
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key:Landroid/widget/Button;

    const v1, 0x7f0200c8

    .line 487
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 489
    const/16 v0, 0x69

    invoke-virtual {p0, v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 492
    :cond_a
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->width:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_f

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->width:I

    if-ge v0, v1, :cond_f

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->y:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->width:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_f

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->y:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->width:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_f

    .line 495
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_b

    .line 497
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->toVibrate()V

    .line 498
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key:Landroid/widget/Button;

    const v1, 0x7f0200c9

    .line 499
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 500
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount:I

    .line 501
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime:J

    .line 502
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 504
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, v2}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 507
    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_d

    .line 509
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 511
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_c

    .line 513
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount:I

    goto/16 :goto_0

    .line 517
    :cond_c
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, v2}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    .line 518
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount:I

    goto/16 :goto_0

    .line 522
    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_e

    .line 523
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 525
    :cond_e
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key:Landroid/widget/Button;

    const v1, 0x7f0200c8

    .line 526
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 528
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 531
    :cond_f
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->y:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->width:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_14

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->y:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->width:I

    if-ge v0, v1, :cond_14

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->width:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_14

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->width:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_14

    .line 534
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_10

    .line 536
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->toVibrate()V

    .line 537
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key:Landroid/widget/Button;

    const v1, 0x7f0200c5

    .line 538
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 539
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount:I

    .line 540
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime:J

    .line 541
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 543
    const/16 v0, 0x6c

    invoke-virtual {p0, v0, v2}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 546
    :cond_10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_12

    .line 548
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 550
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_11

    .line 552
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount:I

    goto/16 :goto_0

    .line 556
    :cond_11
    const/16 v0, 0x6c

    invoke-virtual {p0, v0, v2}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    .line 557
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount:I

    goto/16 :goto_0

    .line 561
    :cond_12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_13

    .line 562
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 564
    :cond_13
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key:Landroid/widget/Button;

    const v1, 0x7f0200c8

    .line 565
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 567
    const/16 v0, 0x6c

    invoke-virtual {p0, v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 570
    :cond_14
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->y:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->width:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_17

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->y:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->width:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_17

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->width:I

    div-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_17

    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->x:I

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->width:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_17

    .line 572
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_15

    .line 574
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key:Landroid/widget/Button;

    const v1, 0x7f0200c7

    .line 575
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 577
    :cond_15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_16

    .line 578
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 580
    :cond_16
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key:Landroid/widget/Button;

    const v1, 0x7f0200c8

    .line 581
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 582
    const/16 v0, 0x7d4

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 588
    :cond_17
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key:Landroid/widget/Button;

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 589
    const/16 v0, 0x67

    invoke-virtual {p0, v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    .line 590
    const/16 v0, 0x69

    invoke-virtual {p0, v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    .line 591
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    .line 592
    const/16 v0, 0x6c

    invoke-virtual {p0, v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 598
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_18

    .line 600
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_back:Landroid/widget/Button;

    const v1, 0x7f0200c2

    .line 601
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 603
    :cond_18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 605
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_back:Landroid/widget/Button;

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 606
    const/16 v0, 0x7e5

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 613
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_19

    .line 615
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_select:Landroid/widget/Button;

    const v1, 0x7f0200c4

    .line 616
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 618
    :cond_19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 620
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_select:Landroid/widget/Button;

    const v1, 0x7f0200c3

    .line 621
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 642
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1a

    .line 644
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_start:Landroid/widget/Button;

    const v1, 0x7f0200d0

    .line 645
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 647
    :cond_1a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 649
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_start:Landroid/widget/Button;

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 650
    const/16 v0, 0x7d1

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 656
    :pswitch_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1b

    .line 658
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->toVibrate()V

    .line 659
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_x:Landroid/widget/Button;

    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 660
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount2:I

    .line 661
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime2:J

    .line 662
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime2:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 664
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 667
    :cond_1b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_1d

    .line 669
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime2:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 671
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount2:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1c

    .line 673
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount2:I

    goto/16 :goto_0

    .line 677
    :cond_1c
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    .line 678
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount2:I

    goto/16 :goto_0

    .line 682
    :cond_1d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_1e

    .line 683
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 685
    :cond_1e
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_x:Landroid/widget/Button;

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 686
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 691
    :pswitch_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1f

    .line 693
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->toVibrate()V

    .line 694
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_y:Landroid/widget/Button;

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 695
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount2:I

    .line 696
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime2:J

    .line 697
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime2:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {p0, v6, v2}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 702
    :cond_1f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_21

    .line 704
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime2:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 706
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount2:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_20

    .line 708
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount2:I

    goto/16 :goto_0

    .line 712
    :cond_20
    invoke-virtual {p0, v6, v2}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    .line 713
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount2:I

    goto/16 :goto_0

    .line 717
    :cond_21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_22

    .line 718
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 720
    :cond_22
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_y:Landroid/widget/Button;

    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 721
    invoke-virtual {p0, v6, v3}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 726
    :pswitch_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_23

    .line 728
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->toVibrate()V

    .line 729
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_a:Landroid/widget/Button;

    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 730
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount2:I

    .line 731
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime2:J

    .line 732
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime2:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 734
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v2}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 737
    :cond_23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_25

    .line 739
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime2:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 741
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount2:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_24

    .line 743
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount2:I

    goto/16 :goto_0

    .line 747
    :cond_24
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v2}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    .line 748
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount2:I

    goto/16 :goto_0

    .line 752
    :cond_25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_26

    .line 753
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 755
    :cond_26
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_a:Landroid/widget/Button;

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 756
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v3}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 761
    :pswitch_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_27

    .line 763
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->toVibrate()V

    .line 764
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_b:Landroid/widget/Button;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 765
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount2:I

    .line 766
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime2:J

    .line 767
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime2:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {p0, v7, v2}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 772
    :cond_27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_29

    .line 774
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mPressTime2:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 776
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount2:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_28

    .line 778
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount2:I

    goto/16 :goto_0

    .line 782
    :cond_28
    invoke-virtual {p0, v7, v2}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    .line 783
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mLoopCount2:I

    goto/16 :goto_0

    .line 787
    :cond_29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_2a

    .line 788
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 790
    :cond_2a
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_key_b:Landroid/widget/Button;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 791
    invoke-virtual {p0, v7, v3}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->sendLongPress(IS)V

    goto/16 :goto_0

    .line 797
    :pswitch_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2b

    .line 799
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_sensor_back:Landroid/widget/Button;

    const v1, 0x7f020117

    .line 800
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 802
    :cond_2b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 804
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_sensor_back:Landroid/widget/Button;

    const v1, 0x7f020116

    .line 805
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 806
    const/16 v0, 0x7e5

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->doKeyboard(I)V

    goto/16 :goto_0

    .line 411
    :pswitch_data_0
    .packed-switch 0x7f0b0083
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public updateHandsUI()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 362
    iput v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mRemoteUiStatus:I

    .line 364
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mTextViewGameSensor:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mTextViewGameHandle:Landroid/widget/TextView;

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 366
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mBtnRemote_game_menu:Landroid/widget/Button;

    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 367
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mRemote_game_control:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mRemote_game_sensor:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 370
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->stopGsensor()V

    .line 371
    return-void
.end method
