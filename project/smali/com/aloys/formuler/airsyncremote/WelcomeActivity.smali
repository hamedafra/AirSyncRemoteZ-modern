.class public Lcom/aloys/formuler/airsyncremote/WelcomeActivity;
.super Landroid/app/Activity;
.source "WelcomeActivity.java"


# instance fields
.field private final SPLASH_LENGTH:J

.field private myHandler:Landroid/os/Handler;

.field private splash:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->SPLASH_LENGTH:J

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->myHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/aloys/formuler/airsyncremote/WelcomeActivity$1;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/WelcomeActivity$1;-><init>(Lcom/aloys/formuler/airsyncremote/WelcomeActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->splash:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/aloys/formuler/airsyncremote/WelcomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/WelcomeActivity;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->showStatusBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/aloys/formuler/airsyncremote/WelcomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/WelcomeActivity;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->startTheActivity()V

    return-void
.end method

.method private initData()V
    .locals 0

    .prologue
    .line 54
    invoke-static {p0}, Lcom/hisilicon/multiscreen/protocol/utils/ServiceUtil;->startMultiScreenControlService(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 48
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 49
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->setContentView(I)V

    .line 50
    return-void
.end method

.method private readStatusPreference(Ljava/lang/String;)Z
    .locals 3
    .param p1, "statusKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 114
    const-string v1, "Setting_Status"

    .line 115
    invoke-virtual {p0, v1, v2}, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    .local v0, "prefrence":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private showStatusBar()V
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, -0x401

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 74
    return-void
.end method

.method private startTheActivity()V
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->isAppFirstUse()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->finish()V

    .line 105
    :goto_0
    return-void

    .line 92
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v2, "homepage_remote"

    .line 93
    invoke-direct {p0, v2}, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->readStatusPreference(Ljava/lang/String;)Z

    move-result v1

    .line 94
    .local v1, "isHomePageRemote":Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->finish()V

    goto :goto_0

    .line 100
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->initView()V

    .line 27
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->initData()V

    .line 28
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 41
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->splash:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 34
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/WelcomeActivity;->splash:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    return-void
.end method
