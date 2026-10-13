.class public Lcom/aloys/formuler/airsyncremote/AboutActivity;
.super Landroid/app/Activity;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMybox_about_version:Landroid/widget/TextView;

.field private mTitle_logo_img:Landroid/widget/Button;

.field private mTitle_user_txt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/AboutActivity;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getVersionName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "appVersion":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 115
    .local v3, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 116
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v0

    .line 117
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 56
    const-string v0, "initView"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 58
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/AboutActivity;->setContentView(I)V

    .line 59
    iput-object p0, p0, Lcom/aloys/formuler/airsyncremote/AboutActivity;->mContext:Landroid/content/Context;

    .line 60
    const v0, 0x7f0b00c3

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/AboutActivity;->mTitle_logo_img:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/AboutActivity;->mTitle_logo_img:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v0, 0x7f0b00c4

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/AboutActivity;->mTitle_user_txt:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/AboutActivity;->mTitle_user_txt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/AboutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/AboutActivity;->mMybox_about_version:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/AboutActivity;->mMybox_about_version:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/AboutActivity;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "onBackPressed."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 50
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 84
    :pswitch_0
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/AboutActivity;->finish()V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x7f0b00c3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    const-string v0, "onCreate."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/AboutActivity;->initView()V

    .line 45
    return-void
.end method

.method public onDestory()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 73
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 100
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/AboutActivity;->finish()V

    .line 103
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
