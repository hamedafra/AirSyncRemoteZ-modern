.class public Lcom/aloys/formuler/airsyncremote/SettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;,
        Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;
    }
.end annotation


# static fields
.field public static final AUDIO_FIRST_USED_KEY:Ljava/lang/String; = "Audio_first_time"

.field public static final AUDIO_STATUS_FILE_NAME:Ljava/lang/String; = "Audio_Status"

.field public static final AUDIO_STATUS_KEY:Ljava/lang/String; = "status"

.field private static final DISMISS_DIALOG_AND_UPDATE_VIDEO_SWITCH:I = 0x3d

.field private static final DISMISS_DIALOG_AND_UPDATE_VIME_SWITCH:I = 0x3c

.field public static final GSENSOR_FIRST_USED_KEY:Ljava/lang/String; = "Gsensor_first_time"

.field public static final GSENSOR_STATUS_FILE_NAME:Ljava/lang/String; = "Gsensor_Status"

.field public static final GSENSOR_STATUS_KEY:Ljava/lang/String; = "status"

.field private static final PREFERENCES_KEY_AUDIO:Ljava/lang/CharSequence;

.field private static final PREFERENCES_KEY_GSENSOR:Ljava/lang/CharSequence;

.field private static final PREFERENCES_KEY_VIDEO:Ljava/lang/CharSequence;

.field private static final PREFERENCES_KEY_VIME:Ljava/lang/CharSequence;

.field private static final SHOW_DIALOG_TIMEOUT:J = 0x7d0L

.field private static final SHOW_VIDEO_DIALOG:I = 0x33

.field private static final SHOW_VIME_DIALOG:I = 0x32

.field public static final VIDEO_FIRST_USED_KEY:Ljava/lang/String; = "Video_first_time"

.field public static final VIDEO_STATUS_FILE_NAME:Ljava/lang/String; = "Video_Status"

.field public static final VIDEO_STATUS_KEY:Ljava/lang/String; = "status"

.field public static final VIME_FIRST_USED_KEY:Ljava/lang/String; = "VIME_first_time"

.field public static final VIME_STATUS_FILE_NAME:Ljava/lang/String; = "VIme_Status"

.field public static final VIME_STATUS_KEY:Ljava/lang/String; = "status"


# instance fields
.field private mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCheckBoxPreferenceAudio:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxPreferenceGsensor:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxPreferenceVIme:Landroid/preference/CheckBoxPreference;

.field private mCheckBoxPreferenceVideo:Landroid/preference/CheckBoxPreference;

.field private mDismissDialogTime:J

.field private mHandler:Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;

.field private mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

.field private mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

.field private mShowDialogTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    const-string v0, "vimeclient"

    sput-object v0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->PREFERENCES_KEY_VIME:Ljava/lang/CharSequence;

    .line 195
    const-string v0, "Gsensorclient"

    sput-object v0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->PREFERENCES_KEY_GSENSOR:Ljava/lang/CharSequence;

    .line 201
    const-string v0, "Videoclient"

    sput-object v0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->PREFERENCES_KEY_VIDEO:Ljava/lang/CharSequence;

    .line 207
    const-string v0, "Audioclient"

    sput-object v0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->PREFERENCES_KEY_AUDIO:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 62
    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    .line 67
    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mCheckBoxPreferenceVIme:Landroid/preference/CheckBoxPreference;

    .line 72
    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mCheckBoxPreferenceGsensor:Landroid/preference/CheckBoxPreference;

    .line 77
    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mCheckBoxPreferenceVideo:Landroid/preference/CheckBoxPreference;

    .line 82
    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mCheckBoxPreferenceAudio:Landroid/preference/CheckBoxPreference;

    .line 147
    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 152
    iput-wide v2, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mShowDialogTime:J

    .line 157
    iput-wide v2, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mDismissDialogTime:J

    .line 218
    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mHandler:Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;

    .line 224
    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    .line 230
    new-instance v0, Lcom/aloys/formuler/airsyncremote/SettingActivity$1;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity$1;-><init>(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 252
    new-instance v0, Lcom/aloys/formuler/airsyncremote/SettingActivity$2;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity$2;-><init>(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/aloys/formuler/airsyncremote/SettingActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/SettingActivity;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mDismissDialogTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/aloys/formuler/airsyncremote/SettingActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/SettingActivity;
    .param p1, "x1"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mDismissDialogTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/aloys/formuler/airsyncremote/SettingActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/SettingActivity;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mShowDialogTime:J

    return-wide v0
.end method

.method static synthetic access$1000()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->PREFERENCES_KEY_AUDIO:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/SettingActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->resumeAudio()V

    return-void
.end method

.method static synthetic access$1200(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/SettingActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->pauseAudio()V

    return-void
.end method

.method static synthetic access$1300(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/SettingActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->showDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/aloys/formuler/airsyncremote/SettingActivity;Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/SettingActivity;
    .param p1, "x1"    # Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->dismissDialogAndUpdateChecked(Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/SettingActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->destroyRemoteControl()V

    return-void
.end method

.method static synthetic access$200(Lcom/aloys/formuler/airsyncremote/SettingActivity;)Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/SettingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mHandler:Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->PREFERENCES_KEY_GSENSOR:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$400(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/SettingActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->startGsensor()V

    return-void
.end method

.method static synthetic access$500(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/SettingActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->stopGsensor()V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->PREFERENCES_KEY_VIDEO:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$700(Lcom/aloys/formuler/airsyncremote/SettingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/SettingActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->resumeVideo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/aloys/formuler/airsyncremote/SettingActivity;)Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/SettingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/aloys/formuler/airsyncremote/SettingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/SettingActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->pauseVideo()Z

    move-result v0

    return v0
.end method

.method private checkState()V
    .locals 2

    .prologue
    .line 910
    sget-object v0, Lcom/aloys/formuler/airsyncremote/SettingActivity$4;->$SwitchMap$com$aloys$formuler$airsyncremote$MultiScreenControlService$ClientState:[I

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getState()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 921
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mHandler:Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;->sendEmptyMessage(I)Z

    .line 925
    :goto_0
    return-void

    .line 914
    :pswitch_0
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->resetAccessListener()V

    .line 915
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->registerBroadcastReceiver(Landroid/content/BroadcastReceiver;)V

    .line 916
    new-instance v0, Landroid/content/Intent;

    const-string v1, "hiandroid.vimestatus.switch"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 910
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private deInitVIMEService()V
    .locals 2

    .prologue
    .line 872
    const-string v0, "stopService VImeClientControlService."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 873
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->stopService(Landroid/content/Intent;)Z

    .line 874
    return-void
.end method

.method private destroyRemoteControl()V
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->destroy()V

    .line 830
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->finish()V

    .line 831
    return-void
.end method

.method private dismissDialogAndUpdateChecked(Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;)V
    .locals 2
    .param p1, "item"    # Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->dismissProgressDialog()V

    .line 675
    sget-object v0, Lcom/aloys/formuler/airsyncremote/SettingActivity$4;->$SwitchMap$com$aloys$formuler$airsyncremote$SettingActivity$SwitchItem:[I

    invoke-virtual {p1}, Lcom/aloys/formuler/airsyncremote/SettingActivity$SwitchItem;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 691
    :goto_0
    return-void

    .line 679
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mDismissDialogTime:J

    goto :goto_0

    .line 685
    :pswitch_1
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mCheckBoxPreferenceVideo:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isVideoPlay()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 675
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 658
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 849
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 850
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getRemoteControlCenter()Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    .line 852
    new-instance v0, Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;-><init>(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mHandler:Lcom/aloys/formuler/airsyncremote/SettingActivity$SettingActivityHandler;

    .line 853
    return-void
.end method

.method private initVIME()V
    .locals 2

    .prologue
    .line 861
    const-string v0, "initVIME"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 863
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 864
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 882
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->addPreferencesFromResource(I)V

    .line 885
    sget-object v0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->PREFERENCES_KEY_VIME:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mCheckBoxPreferenceVIme:Landroid/preference/CheckBoxPreference;

    .line 890
    sget-object v0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->PREFERENCES_KEY_GSENSOR:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mCheckBoxPreferenceGsensor:Landroid/preference/CheckBoxPreference;

    .line 891
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mCheckBoxPreferenceGsensor:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->readGsensorStatusPreference()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 892
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mCheckBoxPreferenceGsensor:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 895
    sget-object v0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->PREFERENCES_KEY_VIDEO:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mCheckBoxPreferenceVideo:Landroid/preference/CheckBoxPreference;

    .line 896
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mCheckBoxPreferenceVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->readVideoStatusPreference()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 897
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mCheckBoxPreferenceVideo:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 900
    sget-object v0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->PREFERENCES_KEY_AUDIO:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mCheckBoxPreferenceAudio:Landroid/preference/CheckBoxPreference;

    .line 901
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mCheckBoxPreferenceAudio:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->readAudioStatusPreference()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 902
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mCheckBoxPreferenceAudio:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mOnPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 903
    return-void
.end method

.method private pauseAudio()V
    .locals 3

    .prologue
    .line 472
    const-string v0, "Audio_Status"

    const-string v1, "status"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->writeStatusPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 473
    return-void
.end method

.method private pauseVideo()Z
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x1

    return v0
.end method

.method private readAudioStatusPreference()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 532
    const/4 v2, 0x0

    .line 533
    .local v2, "isOpen":Z
    const/4 v1, 0x1

    .line 535
    .local v1, "isFirstTime":Z
    const-string v4, "Audio_Status"

    invoke-virtual {p0, v4, v5}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 536
    .local v3, "prefrence":Landroid/content/SharedPreferences;
    const-string v4, "Audio_first_time"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 538
    if-eqz v1, :cond_0

    .line 541
    const/4 v2, 0x1

    .line 542
    const-string v4, "Audio_Status"

    .line 543
    invoke-virtual {p0, v4, v5}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 544
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "Audio_first_time"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 545
    const-string v4, "status"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 546
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 554
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v2

    .line 551
    :cond_0
    const-string v4, "status"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method

.method private readGsensorStatusPreference()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 499
    const/4 v2, 0x0

    .line 500
    .local v2, "isOpen":Z
    const/4 v1, 0x1

    .line 502
    .local v1, "isFirstTime":Z
    const-string v4, "Gsensor_Status"

    invoke-virtual {p0, v4, v6}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 503
    .local v3, "prefrence":Landroid/content/SharedPreferences;
    const-string v4, "Gsensor_first_time"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 505
    if-eqz v1, :cond_0

    .line 508
    const/4 v2, 0x0

    .line 509
    const-string v4, "Gsensor_Status"

    .line 510
    invoke-virtual {p0, v4, v6}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 511
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "Gsensor_first_time"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 512
    const-string v4, "status"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 513
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 521
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v2

    .line 518
    :cond_0
    const-string v4, "status"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method

.method private registerBroadcastReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 604
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 605
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "hiandroid.vimestatus.switch"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0, p1, v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 607
    return-void
.end method

.method private resetAccessListener()V
    .locals 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    if-nez v0, :cond_0

    .line 782
    new-instance v0, Lcom/aloys/formuler/airsyncremote/SettingActivity$3;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity$3;-><init>(Lcom/aloys/formuler/airsyncremote/SettingActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setAllAccessListener(Lcom/hisilicon/multiscreen/controller/IAccessListener;)V

    .line 822
    return-void
.end method

.method private resumeAudio()V
    .locals 3

    .prologue
    .line 464
    const-string v0, "Audio_Status"

    const-string v1, "status"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->writeStatusPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 465
    return-void
.end method

.method private resumeVideo()Z
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x1

    return v0
.end method

.method private setStrictMode()V
    .locals 1

    .prologue
    .line 838
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 839
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 838
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 840
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 841
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 840
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 842
    return-void
.end method

.method private showDialog()V
    .locals 2

    .prologue
    .line 665
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mShowDialogTime:J

    .line 666
    const v0, 0x7f08002e

    const v1, 0x7f08002c

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->showProgressDialog(II)V

    .line 667
    return-void
.end method

.method private showProgressDialog(II)V
    .locals 2
    .param p1, "titleId"    # I
    .param p2, "msgId"    # I

    .prologue
    .line 636
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 638
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 642
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p2}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 643
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 644
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 645
    return-void
.end method

.method private startGsensor()V
    .locals 2

    .prologue
    .line 443
    const-string v1, "start Gsensor"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 444
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hisilicon/multiscreen/gsensor/SensorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 445
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 446
    return-void
.end method

.method private stopGsensor()V
    .locals 2

    .prologue
    .line 454
    const-string v1, "stop Gsensor"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 455
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hisilicon/multiscreen/gsensor/SensorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    .local v0, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->stopService(Landroid/content/Intent;)Z

    .line 457
    return-void
.end method

.method private unregisterBroadcastReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 618
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :goto_0
    return-void

    .line 620
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "the receiver was already unregistered or was not registered."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeStatusPreference(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "statusKey"    # Ljava/lang/String;
    .param p3, "isOpened"    # Z

    .prologue
    .line 592
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 593
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 594
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 595
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 356
    const-string v0, "onBackPressed."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 357
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 358
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 341
    const-string v0, "onConfigurationChanged"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 342
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 343
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 330
    const-string v0, "onCreate."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 331
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 333
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->setStrictMode()V

    .line 334
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->initData()V

    .line 335
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->initView()V

    .line 336
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 377
    const-string v0, "onDestroy."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 378
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 380
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->dismissProgressDialog()V

    .line 381
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->unregisterBroadcastReceiver(Landroid/content/BroadcastReceiver;)V

    .line 383
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mCheckBoxPreferenceVIme:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const-string v0, "VIme_Status"

    const-string v1, "status"

    invoke-direct {p0, v0, v1, v3}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->writeStatusPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 392
    :goto_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mCheckBoxPreferenceGsensor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    const-string v0, "Gsensor_Status"

    const-string v1, "status"

    invoke-direct {p0, v0, v1, v3}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->writeStatusPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 401
    :goto_1
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mCheckBoxPreferenceVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    const-string v0, "Video_Status"

    const-string v1, "status"

    invoke-direct {p0, v0, v1, v3}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->writeStatusPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 410
    :goto_2
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mCheckBoxPreferenceAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 412
    const-string v0, "Audio_Status"

    const-string v1, "status"

    invoke-direct {p0, v0, v1, v3}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->writeStatusPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 418
    :goto_3
    return-void

    .line 389
    :cond_0
    const-string v0, "VIme_Status"

    const-string v1, "status"

    invoke-direct {p0, v0, v1, v2}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->writeStatusPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 398
    :cond_1
    const-string v0, "Gsensor_Status"

    const-string v1, "status"

    invoke-direct {p0, v0, v1, v2}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->writeStatusPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 407
    :cond_2
    const-string v0, "Video_Status"

    const-string v1, "status"

    invoke-direct {p0, v0, v1, v2}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->writeStatusPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 416
    :cond_3
    const-string v0, "Audio_Status"

    const-string v1, "status"

    invoke-direct {p0, v0, v1, v2}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->writeStatusPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 363
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 364
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/SettingActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->unregisterBroadcastReceiver(Landroid/content/BroadcastReceiver;)V

    .line 365
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 348
    const-string v0, "onResume."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 349
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 350
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->checkState()V

    .line 351
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 370
    const-string v0, "onStop."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 371
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 372
    return-void
.end method

.method public readVideoStatusPreference()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 559
    const/4 v2, 0x0

    .line 560
    .local v2, "isOpen":Z
    const/4 v1, 0x1

    .line 561
    .local v1, "isFirstTime":Z
    const-string v4, "Video_Status"

    .line 562
    invoke-virtual {p0, v4, v5}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 563
    .local v3, "prefrence":Landroid/content/SharedPreferences;
    const-string v4, "Video_first_time"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 565
    if-eqz v1, :cond_0

    .line 568
    const/4 v2, 0x1

    .line 569
    const-string v4, "Video_Status"

    .line 570
    invoke-virtual {p0, v4, v5}, Lcom/aloys/formuler/airsyncremote/SettingActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 571
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "Video_first_time"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 572
    const-string v4, "status"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 573
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 580
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v2

    .line 578
    :cond_0
    const-string v4, "status"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method
