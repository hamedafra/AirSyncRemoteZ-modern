.class public abstract Lcom/aloys/formuler/airsyncremote/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/aloys/formuler/airsyncremote/RemotePool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aloys/formuler/airsyncremote/BaseActivity$AccessEventHandler;
    }
.end annotation


# static fields
.field protected static final MAX_LOOP_COUNT:I = 0x64

.field protected static final TIME_VIBRATE:J = 0x14L

.field protected static isHomePageRemote:Z

.field public static mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

.field public static mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

.field public static mRemoteTouch:Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

.field public static mVibrator:Landroid/os/Vibrator;

.field private static vib_status:Z


# instance fields
.field public DEFAULT_REMOTE_UI_STATUS:I

.field public mAccessEventHandler:Lcom/aloys/formuler/airsyncremote/BaseActivity$AccessEventHandler;

.field protected mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

.field protected mLoopCount:I

.field protected mLoopCount2:I

.field public mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

.field protected mPressTime:J

.field protected mPressTime2:J

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field protected mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

.field protected mRemoteUiStatus:I

.field protected mSceneListener:Lcom/hisilicon/multiscreen/scene/ISceneListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    sput-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    .line 82
    sput-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mRemoteTouch:Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

    .line 88
    sput-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    .line 135
    const/4 v0, 0x0

    sput-boolean v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->isHomePageRemote:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->DEFAULT_REMOTE_UI_STATUS:I

    .line 57
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->DEFAULT_REMOTE_UI_STATUS:I

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mRemoteUiStatus:I

    .line 63
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 69
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    .line 95
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 110
    iput-wide v4, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mPressTime:J

    .line 115
    iput-wide v4, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mPressTime2:J

    .line 120
    iput v2, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mLoopCount:I

    .line 125
    iput v2, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mLoopCount2:I

    .line 141
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    .line 147
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mSceneListener:Lcom/hisilicon/multiscreen/scene/ISceneListener;

    .line 152
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mAccessEventHandler:Lcom/aloys/formuler/airsyncremote/BaseActivity$AccessEventHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/aloys/formuler/airsyncremote/BaseActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/BaseActivity;
    .param p1, "x1"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->sendAccessStatusMessage(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    return-void
.end method

.method private checkState()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    .line 715
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity$3;->$SwitchMap$com$aloys$formuler$airsyncremote$MultiScreenControlService$ClientState:[I

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getState()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check state error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getState()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 750
    sget-object v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->Others:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    invoke-direct {p0, v0, v2}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->sendAccessStatusMessage(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    .line 754
    :goto_0
    return-void

    .line 719
    :pswitch_0
    const-string v0, "check state RUNNING."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->resetAccessListener()V

    goto :goto_0

    .line 725
    :pswitch_1
    const-string v0, "check state REAVED."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 726
    sget-object v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->AccessPing:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->sendAccessStatusMessage(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    goto :goto_0

    .line 731
    :pswitch_2
    const-string v0, "check state STB_LEAVE."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 732
    sget-object v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->AccessPing:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    const/16 v1, 0x28

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->sendAccessStatusMessage(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    goto :goto_0

    .line 737
    :pswitch_3
    const-string v0, "check state NETWORK_LOST."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 738
    sget-object v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->KeepAlive:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    invoke-direct {p0, v0, v2}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->sendAccessStatusMessage(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    goto :goto_0

    .line 743
    :pswitch_4
    const-string v0, "check state STB_SUSPEND."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 744
    sget-object v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->AccessPing:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    const/16 v1, 0x50

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->sendAccessStatusMessage(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    goto :goto_0

    .line 715
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private clearSceneListener()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setSceneListener(Lcom/hisilicon/multiscreen/scene/ISceneListener;)V

    .line 640
    return-void
.end method

.method public static doKeyboard(I)V
    .locals 2
    .param p0, "result"    # I

    .prologue
    .line 786
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->toVibrate()V

    .line 788
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    if-eqz v0, :cond_0

    .line 790
    sparse-switch p0, :sswitch_data_0

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 793
    :sswitch_0
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x9e

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0

    .line 796
    :sswitch_1
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0

    .line 800
    :sswitch_2
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0

    .line 804
    :sswitch_3
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0

    .line 808
    :sswitch_4
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0

    .line 812
    :sswitch_5
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0

    .line 816
    :sswitch_6
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0

    .line 820
    :sswitch_7
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0

    .line 824
    :sswitch_8
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0

    .line 828
    :sswitch_9
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0

    .line 832
    :sswitch_a
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0

    .line 836
    :sswitch_b
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0

    .line 840
    :sswitch_c
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0

    .line 844
    :sswitch_d
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0

    .line 848
    :sswitch_e
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0

    .line 852
    :sswitch_f
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0

    .line 856
    :sswitch_10
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto/16 :goto_0

    .line 860
    :sswitch_11
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto/16 :goto_0

    .line 864
    :sswitch_12
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto/16 :goto_0

    .line 868
    :sswitch_13
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto/16 :goto_0

    .line 872
    :sswitch_14
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto/16 :goto_0

    .line 876
    :sswitch_15
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto/16 :goto_0

    .line 880
    :sswitch_16
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto/16 :goto_0

    .line 884
    :sswitch_17
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto/16 :goto_0

    .line 888
    :sswitch_18
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x39

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto/16 :goto_0

    .line 892
    :sswitch_19
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto/16 :goto_0

    .line 896
    :sswitch_1a
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto/16 :goto_0

    .line 901
    :sswitch_1b
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto/16 :goto_0

    .line 790
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_1
        0x7d1 -> :sswitch_2
        0x7d2 -> :sswitch_3
        0x7d4 -> :sswitch_6
        0x7d5 -> :sswitch_7
        0x7d6 -> :sswitch_8
        0x7d7 -> :sswitch_9
        0x7d8 -> :sswitch_a
        0x7d9 -> :sswitch_f
        0x7da -> :sswitch_10
        0x7db -> :sswitch_11
        0x7dc -> :sswitch_12
        0x7dd -> :sswitch_13
        0x7de -> :sswitch_14
        0x7df -> :sswitch_15
        0x7e0 -> :sswitch_16
        0x7e1 -> :sswitch_17
        0x7e2 -> :sswitch_18
        0x7e3 -> :sswitch_19
        0x7e4 -> :sswitch_1a
        0x7e5 -> :sswitch_0
        0x7e6 -> :sswitch_b
        0x7e7 -> :sswitch_c
        0x7e8 -> :sswitch_d
        0x7e9 -> :sswitch_e
        0x7ea -> :sswitch_4
        0x7eb -> :sswitch_5
        0x270f -> :sswitch_1b
    .end sparse-switch
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 678
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->requestWindowFeature(I)Z

    .line 679
    const-string v0, "vibrator"

    invoke-direct {p0, v0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->readStatusPreference(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->vib_status:Z

    .line 680
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sput-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mVibrator:Landroid/os/Vibrator;

    .line 682
    return-void
.end method

.method protected static isVibrate()Z
    .locals 1

    .prologue
    .line 670
    sget-boolean v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->vib_status:Z

    return v0
.end method

.method private readStatusPreference(Ljava/lang/String;)Z
    .locals 3
    .param p1, "statusKey"    # Ljava/lang/String;

    .prologue
    .line 691
    const-string v1, "Setting_Status"

    const/4 v2, 0x0

    .line 692
    invoke-virtual {p0, v1, v2}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 693
    .local v0, "prefrence":Landroid/content/SharedPreferences;
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private removeInvalidDevice()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 468
    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getCurrentDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 467
    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->removeCannotAccessDevice(Lorg/cybergarage/upnp/Device;)V

    .line 469
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->clearCurrentDevice()V

    .line 470
    return-void
.end method

.method private sendAccessStatusMessage(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V
    .locals 2
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    .param p2, "what"    # I

    .prologue
    .line 644
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mAccessEventHandler:Lcom/aloys/formuler/airsyncremote/BaseActivity$AccessEventHandler;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/BaseActivity$AccessEventHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 645
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 646
    iput p2, v0, Landroid/os/Message;->what:I

    .line 647
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 648
    return-void
.end method

.method private setStrictMode()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 702
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 703
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 702
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 704
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 705
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 704
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 706
    return-void
.end method

.method protected static toVibrate()V
    .locals 4

    .prologue
    .line 656
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->isVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 662
    :cond_0
    return-void
.end method


# virtual methods
.method protected clearCurrentDevice()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->setCurrentDevice(Lorg/cybergarage/upnp/Device;)V

    .line 475
    return-void
.end method

.method protected deInitNetworkChecker(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V
    .locals 1
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    .param p2, "clientState"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0, p1, p2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->stopPing(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 459
    return-void
.end method

.method protected dealAccessByeForReave(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 1
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 309
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->REAVED:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {p0, p1, v0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->deInitNetworkChecker(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 310
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->stopVIME()V

    .line 311
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->destroyRemoteControl()V

    .line 312
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->clearCurrentDevice()V

    .line 313
    return-void
.end method

.method protected dealNetfailedStatus(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 2
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->NETWORK_LOST:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {v0, p1, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->stopPing(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 298
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->stopVIME()V

    .line 299
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->destroyRemoteControl()V

    .line 300
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->removeInvalidDevice()V

    .line 301
    return-void
.end method

.method protected dealSTBLeave(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 1
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 321
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->STB_LEAVE:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {p0, p1, v0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->deInitNetworkChecker(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 322
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->stopVIME()V

    .line 323
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->destroyRemoteControl()V

    .line 324
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->removeInvalidDevice()V

    .line 325
    return-void
.end method

.method protected dealSTBSuppend(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 1
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 333
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->STB_SUSPEND:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {p0, p1, v0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->deInitNetworkChecker(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 334
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->stopVIME()V

    .line 335
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->destroyRemoteControl()V

    .line 336
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->clearCurrentDevice()V

    .line 337
    return-void
.end method

.method protected dealSceneChanged(Lcom/hisilicon/multiscreen/scene/SceneType;)V
    .locals 2
    .param p1, "sceneType"    # Lcom/hisilicon/multiscreen/scene/SceneType;

    .prologue
    .line 346
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity$3;->$SwitchMap$com$hisilicon$multiscreen$scene$SceneType:[I

    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/scene/SceneType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 370
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->gotoRemoteTouch()V

    .line 374
    :goto_0
    return-void

    .line 350
    :pswitch_0
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->gotoRemoteTouch()V

    goto :goto_0

    .line 355
    :pswitch_1
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->gotoAirMouse()V

    goto :goto_0

    .line 360
    :pswitch_2
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->gotoMirror()V

    goto :goto_0

    .line 365
    :pswitch_3
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->gotoMirrorSensor()V

    goto :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected destroyRemoteControl()V
    .locals 0

    .prologue
    .line 447
    return-void
.end method

.method protected dismissProgressDialog()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 533
    :cond_0
    return-void
.end method

.method protected gotoAirMouse()V
    .locals 1

    .prologue
    .line 390
    const-string v0, ""

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method protected gotoDeviceDiscovery()V
    .locals 1

    .prologue
    .line 435
    const-string v0, ""

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method protected gotoGamePage()V
    .locals 1

    .prologue
    .line 408
    const-string v0, ""

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method protected gotoMirror()V
    .locals 1

    .prologue
    .line 417
    const-string v0, ""

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method protected gotoMirrorSensor()V
    .locals 1

    .prologue
    .line 426
    const-string v0, ""

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method protected gotoRemoteKey()V
    .locals 1

    .prologue
    .line 399
    const-string v0, ""

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method protected gotoRemoteTouch()V
    .locals 1

    .prologue
    .line 381
    const-string v0, ""

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method protected initData()V
    .locals 1

    .prologue
    .line 761
    invoke-static {p0}, Lcom/hisilicon/multiscreen/protocol/utils/ServiceUtil;->checkMultiScreenControlService(Landroid/content/Context;)V

    .line 762
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 764
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getRemoteControlCenter()Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    .line 765
    new-instance v0, Lcom/aloys/formuler/airsyncremote/BaseActivity$AccessEventHandler;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity$AccessEventHandler;-><init>(Lcom/aloys/formuler/airsyncremote/BaseActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mAccessEventHandler:Lcom/aloys/formuler/airsyncremote/BaseActivity$AccessEventHandler;

    .line 768
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 242
    const-string v0, "onConfigurationChanged"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 244
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 221
    const-string v0, "On Create."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 222
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 223
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 224
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->setStrictMode()V

    .line 225
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->initData()V

    .line 226
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->initView()V

    .line 227
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 285
    const-string v0, "on destroy."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 286
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 287
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 288
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 289
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 263
    const-string v0, "on pause."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 265
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->dismissProgressDialog()V

    .line 266
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->clearSceneListener()V

    .line 267
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 235
    const-string v0, "on restart."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 237
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 252
    const-string v0, "on resume."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 255
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 275
    const-string v0, "on stop."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 277
    return-void
.end method

.method protected registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 543
    invoke-virtual {p0, p1, p2}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 544
    return-void
.end method

.method protected resetAccessListener()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Lcom/aloys/formuler/airsyncremote/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity$1;-><init>(Lcom/aloys/formuler/airsyncremote/BaseActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setAllAccessListener(Lcom/hisilicon/multiscreen/controller/IAccessListener;)V

    .line 616
    return-void
.end method

.method protected resetSceneListener()V
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mSceneListener:Lcom/hisilicon/multiscreen/scene/ISceneListener;

    if-nez v0, :cond_0

    .line 625
    new-instance v0, Lcom/aloys/formuler/airsyncremote/BaseActivity$2;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity$2;-><init>(Lcom/aloys/formuler/airsyncremote/BaseActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mSceneListener:Lcom/hisilicon/multiscreen/scene/ISceneListener;

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mSceneListener:Lcom/hisilicon/multiscreen/scene/ISceneListener;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setSceneListener(Lcom/hisilicon/multiscreen/scene/ISceneListener;)V

    .line 635
    return-void
.end method

.method public sendLongPress(IS)V
    .locals 1
    .param p1, "key_value"    # I
    .param p2, "event_type"    # S

    .prologue
    .line 917
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    if-eqz v0, :cond_0

    .line 919
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    invoke-virtual {v0, p1, p2}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownOrUpKeyCode(IS)V

    .line 921
    :cond_0
    return-void
.end method

.method protected showProgressDialog(II)V
    .locals 2
    .param p1, "titleId"    # I
    .param p2, "msgId"    # I

    .prologue
    .line 512
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 514
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 518
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p2}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 520
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 521
    return-void
.end method

.method protected stopVIME()V
    .locals 2

    .prologue
    .line 776
    const-string v0, "stop vime."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 777
    new-instance v0, Landroid/content/Intent;

    const-string v1, "hiandroid.vime.endinput.stb"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 778
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->stopService(Landroid/content/Intent;)Z

    .line 779
    return-void
.end method

.method protected unbindDrawables(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 486
    if-eqz p1, :cond_2

    .line 488
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 490
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 492
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 494
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 496
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->unbindDrawables(Landroid/view/View;)V

    .line 494
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 501
    .end local v0    # "i":I
    :cond_2
    const/4 p1, 0x0

    .line 502
    .restart local p1    # "view":Landroid/view/View;
    return-void
.end method

.method protected unregisterBroadcastReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 556
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :goto_0
    return-void

    .line 558
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "the receiver was already unregistered or was not registered."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
