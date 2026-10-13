.class public Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;
.super Landroid/app/Activity;
.source "MultiSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final AUDIO_STATUS_KEY:Ljava/lang/String; = "audio"

.field public static final HOMEPAGE_REMOTE_KEY:Ljava/lang/String; = "homepage_remote"

.field public static final SENSOR_STATUS_KEY:Ljava/lang/String; = "sensor"

.field public static final SETTING_STATUS_FILE_NAME:Ljava/lang/String; = "Setting_Status"

.field public static final VIBRATOR_STATUS_KEY:Ljava/lang/String; = "vibrator"

.field public static final VIDEO_STATUS_KEY:Ljava/lang/String; = "video"

.field public static final VIME_STATUS_KEY:Ljava/lang/String; = "vime"


# instance fields
.field private audio_status:Z

.field private mBtnSetHomePage:Landroid/widget/Button;

.field private mHelp_layout:Landroid/widget/RelativeLayout;

.field private mHomePage_remote_status:Z

.field private mIdea_layout:Landroid/widget/RelativeLayout;

.field private mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

.field private mSet_Audio:Landroid/widget/Button;

.field private mSet_Sensor:Landroid/widget/Button;

.field private mSet_Vibrator:Landroid/widget/Button;

.field private mSet_Video:Landroid/widget/Button;

.field private mSet_Vime:Landroid/widget/Button;

.field private mTitle_logo_img:Landroid/widget/Button;

.field private mTitle_user_txt:Landroid/widget/TextView;

.field private sensor_status:Z

.field private vibrator_status:Z

.field private video_status:Z

.field private vime_status:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 120
    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->vime_status:Z

    .line 125
    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->sensor_status:Z

    .line 130
    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->video_status:Z

    .line 135
    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->audio_status:Z

    .line 140
    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->vibrator_status:Z

    .line 145
    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mHomePage_remote_status:Z

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    return-void
.end method

.method private handleClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 318
    :goto_0
    :pswitch_0
    return-void

    .line 260
    :pswitch_1
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->finish()V

    goto :goto_0

    .line 265
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aloys/formuler/airsyncremote/GuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 270
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aloys/formuler/airsyncremote/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 275
    :pswitch_4
    iget-boolean v2, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->vime_status:Z

    if-nez v2, :cond_0

    :goto_1
    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->vime_status:Z

    .line 276
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->vime_status:Z

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Vime:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->updateStatus(ZLandroid/widget/Button;)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 275
    goto :goto_1

    .line 281
    :pswitch_5
    iget-boolean v2, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->sensor_status:Z

    if-nez v2, :cond_1

    :goto_2
    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->sensor_status:Z

    .line 282
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->sensor_status:Z

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Sensor:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->updateStatus(ZLandroid/widget/Button;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 281
    goto :goto_2

    .line 287
    :pswitch_6
    iget-boolean v2, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->video_status:Z

    if-nez v2, :cond_2

    :goto_3
    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->video_status:Z

    .line 288
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->video_status:Z

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Video:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->updateStatus(ZLandroid/widget/Button;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 287
    goto :goto_3

    .line 293
    :pswitch_7
    iget-boolean v2, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->audio_status:Z

    if-nez v2, :cond_3

    :goto_4
    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->audio_status:Z

    .line 294
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->audio_status:Z

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Audio:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->updateStatus(ZLandroid/widget/Button;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 293
    goto :goto_4

    .line 299
    :pswitch_8
    iget-boolean v2, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->vibrator_status:Z

    if-nez v2, :cond_4

    :goto_5
    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->vibrator_status:Z

    .line 300
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->vibrator_status:Z

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Vibrator:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->updateStatus(ZLandroid/widget/Button;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 299
    goto :goto_5

    .line 305
    :pswitch_9
    iget-boolean v2, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mHomePage_remote_status:Z

    if-nez v2, :cond_5

    :goto_6
    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mHomePage_remote_status:Z

    .line 306
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mHomePage_remote_status:Z

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mBtnSetHomePage:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->updateStatus(ZLandroid/widget/Button;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 305
    goto :goto_6

    .line 256
    :pswitch_data_0
    .packed-switch 0x7f0b00b9
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 186
    return-void
.end method

.method private initStatusPreference()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 232
    const-string v0, "vime"

    invoke-direct {p0, v0, v2}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->readStatusPreference(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->vime_status:Z

    .line 233
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->vime_status:Z

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Vime:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->updateStatus(ZLandroid/widget/Button;)V

    .line 235
    const-string v0, "sensor"

    invoke-direct {p0, v0, v3}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->readStatusPreference(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->sensor_status:Z

    .line 236
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->sensor_status:Z

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Sensor:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->updateStatus(ZLandroid/widget/Button;)V

    .line 238
    const-string v0, "video"

    invoke-direct {p0, v0, v2}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->readStatusPreference(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->video_status:Z

    .line 239
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->video_status:Z

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Video:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->updateStatus(ZLandroid/widget/Button;)V

    .line 241
    const-string v0, "audio"

    invoke-direct {p0, v0, v2}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->readStatusPreference(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->audio_status:Z

    .line 242
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->audio_status:Z

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Audio:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->updateStatus(ZLandroid/widget/Button;)V

    .line 244
    const-string v0, "vibrator"

    invoke-direct {p0, v0, v2}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->readStatusPreference(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->vibrator_status:Z

    .line 245
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->vibrator_status:Z

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Vibrator:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->updateStatus(ZLandroid/widget/Button;)V

    .line 247
    const-string v0, "homepage_remote"

    invoke-direct {p0, v0, v3}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->readStatusPreference(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mHomePage_remote_status:Z

    .line 248
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mHomePage_remote_status:Z

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mBtnSetHomePage:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->updateStatus(ZLandroid/widget/Button;)V

    .line 252
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 190
    const-string v0, "initView"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 192
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->setContentView(I)V

    .line 193
    const v0, 0x7f0b00c3

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mTitle_logo_img:Landroid/widget/Button;

    .line 194
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mTitle_logo_img:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const v0, 0x7f0b00c4

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mTitle_user_txt:Landroid/widget/TextView;

    .line 197
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mTitle_user_txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const v0, 0x7f0b00c0

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mHelp_layout:Landroid/widget/RelativeLayout;

    .line 200
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mHelp_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v0, 0x7f0b00c1

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mIdea_layout:Landroid/widget/RelativeLayout;

    .line 203
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mIdea_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v0, 0x7f0b00b9

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Vime:Landroid/widget/Button;

    .line 206
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Vime:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v0, 0x7f0b00ba

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Sensor:Landroid/widget/Button;

    .line 209
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Sensor:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const v0, 0x7f0b00bc

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Video:Landroid/widget/Button;

    .line 212
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Video:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v0, 0x7f0b00bd

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Audio:Landroid/widget/Button;

    .line 215
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Audio:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    const v0, 0x7f0b00be

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Vibrator:Landroid/widget/Button;

    .line 218
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Vibrator:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const v0, 0x7f0b00bf

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mBtnSetHomePage:Landroid/widget/Button;

    .line 221
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mBtnSetHomePage:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->initStatusPreference()V

    .line 228
    return-void
.end method

.method private readStatusPreference(Ljava/lang/String;F)F
    .locals 3
    .param p1, "statusKey"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 431
    const-string v1, "Setting_Status"

    const/4 v2, 0x0

    .line 432
    invoke-virtual {p0, v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 433
    .local v0, "prefrence":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method private readStatusPreference(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "statusKey"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 412
    const-string v1, "Setting_Status"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 413
    .local v0, "prefrence":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private switchAudioStatus(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 377
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0, p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setAudioPlay(Z)V

    .line 381
    :cond_0
    return-void
.end method

.method private switchScene(Z)V
    .locals 0
    .param p1, "isOpen"    # Z

    .prologue
    .line 402
    invoke-static {p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->switchScene(Z)V

    .line 403
    return-void
.end method

.method private switchVideoStatus(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 389
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0, p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setVideoPlay(Z)V

    .line 393
    :cond_0
    return-void
.end method

.method private updateStatus(ZLandroid/widget/Button;)V
    .locals 1
    .param p1, "status"    # Z
    .param p2, "btn"    # Landroid/widget/Button;

    .prologue
    .line 325
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 327
    const v0, 0x7f020064

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 334
    :goto_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Vime:Landroid/widget/Button;

    if-ne p2, v0, :cond_1

    .line 336
    const-string v0, "vime"

    invoke-direct {p0, v0, p1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->writeStatusPreference(Ljava/lang/String;Z)V

    .line 369
    :goto_1
    return-void

    .line 331
    :cond_0
    const v0, 0x7f020063

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Sensor:Landroid/widget/Button;

    if-ne p2, v0, :cond_2

    .line 340
    const-string v0, "sensor"

    invoke-direct {p0, v0, p1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->writeStatusPreference(Ljava/lang/String;Z)V

    goto :goto_1

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Video:Landroid/widget/Button;

    if-ne p2, v0, :cond_3

    .line 344
    const-string v0, "video"

    invoke-direct {p0, v0, p1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->writeStatusPreference(Ljava/lang/String;Z)V

    .line 345
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->switchVideoStatus(Z)V

    goto :goto_1

    .line 347
    :cond_3
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Audio:Landroid/widget/Button;

    if-ne p2, v0, :cond_4

    .line 349
    const-string v0, "audio"

    invoke-direct {p0, v0, p1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->writeStatusPreference(Ljava/lang/String;Z)V

    .line 350
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->switchAudioStatus(Z)V

    goto :goto_1

    .line 352
    :cond_4
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mSet_Vibrator:Landroid/widget/Button;

    if-ne p2, v0, :cond_5

    .line 354
    const-string v0, "vibrator"

    invoke-direct {p0, v0, p1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->writeStatusPreference(Ljava/lang/String;Z)V

    goto :goto_1

    .line 356
    :cond_5
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->mBtnSetHomePage:Landroid/widget/Button;

    if-ne p2, v0, :cond_6

    .line 358
    const-string v0, "homepage_remote"

    invoke-direct {p0, v0, p1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->writeStatusPreference(Ljava/lang/String;Z)V

    goto :goto_1

    .line 367
    :cond_6
    const-string v0, "Unkown button."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private writeStatusPreference(Ljava/lang/String;F)V
    .locals 3
    .param p1, "statusKey"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 438
    const-string v1, "Setting_Status"

    const/4 v2, 0x0

    .line 439
    invoke-virtual {p0, v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 440
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 441
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 442
    return-void
.end method

.method private writeStatusPreference(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "statusKey"    # Ljava/lang/String;
    .param p2, "isOpened"    # Z

    .prologue
    .line 423
    const-string v1, "Setting_Status"

    const/4 v2, 0x0

    .line 424
    invoke-virtual {p0, v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 425
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 426
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 427
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 172
    const-string v0, "onBackPressed."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 174
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->finish()V

    .line 175
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->handleClick(Landroid/view/View;)V

    .line 181
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 157
    const-string v0, "onCreate."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->initData()V

    .line 160
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiSettingActivity;->initView()V

    invoke-static {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->attachSettings(Landroid/app/Activity;)V

    .line 161
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 167
    return-void
.end method
