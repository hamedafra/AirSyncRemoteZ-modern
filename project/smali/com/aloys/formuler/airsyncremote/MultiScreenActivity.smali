.class public Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
.super Landroid/app/Activity;
.source "MultiScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$MultiScreenMorePop;,
        Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$AccessEventHandler;,
        Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$OrientationDetector;
    }
.end annotation


# static fields
.field public static final ACCESS_REAVED:I = 0x1e

.field private static final CONTROLLER_CHECK_TIME:I = 0x1388

.field private static final FINGER_PRESSED:Z = true

.field private static final FINGER_UP:Z = false

.field public static final KEEP_ALIVE_FAILED:I = 0x14

.field public static final KEEP_ALIVE_PACKET_LOSS:I = 0xa

.field private static final MAX_STB_TOUCH_HEIGHT:I = 0x2cf

.field private static final MAX_STB_TOUCH_WIDTH:I = 0x4ff

.field private static final MSG_HIDE_CONTROLLER:I = 0x1

.field private static final MSG_SHOW_CONTROLLER:I = 0x0

.field public static final START_SYNC_STB_INFO:I = 0x32

.field public static final STB_LEAVE:I = 0x28

.field public static final STB_SUSPEND:I = 0x50

.field public static final STOP_SYNC_STB_INFO:I = 0x3c

.field public static mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

.field public static mRemoteKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

.field private static sLoaded:Z


# instance fields
.field private countMove:I

.field private currentX:I

.field private currentY:I

.field private dm:Landroid/util/DisplayMetrics;

.field private mAccessEventHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$AccessEventHandler;

.field private mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

.field private mCloseWidth:I

.field private mContext:Landroid/content/Context;

.field private mControl_back:Landroid/widget/Button;

.field private mControl_close:Landroid/widget/Button;

.field private mControl_layout:Landroid/widget/RelativeLayout;

.field private mControl_more:Landroid/widget/Button;

.field private mControl_pop_game:Landroid/widget/Button;

.field private mControl_pop_home:Landroid/widget/Button;

.field private mControl_pop_menu:Landroid/widget/Button;

.field private mControl_pop_vol:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field public mLayout:Landroid/widget/LinearLayout;

.field private mLayoutWidth:I

.field public mMirrorView:Lcom/hisilicon/multiscreen/mirror/MirrorView;

.field private mMorePop:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$MultiScreenMorePop;

.field private mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

.field private mOrientationDetector:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$OrientationDetector;

.field private mRemoteTouch:Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

.field private mSceneListener:Lcom/hisilicon/multiscreen/scene/ISceneListener;

.field private mTouchInfo:Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private parent:Landroid/view/View;

.field private remote_game_flag:Z

.field private screenHeight:I

.field private screenWidth:I

.field private vime_status:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    .line 229
    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mRemoteKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 78
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMirrorView:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    .line 80
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mLayout:Landroid/widget/LinearLayout;

    .line 157
    iput v2, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mLayoutWidth:I

    .line 159
    iput v2, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mCloseWidth:I

    .line 194
    iput-boolean v2, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->remote_game_flag:Z

    .line 198
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->dm:Landroid/util/DisplayMetrics;

    .line 204
    iput v2, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->screenWidth:I

    .line 210
    iput v2, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->screenHeight:I

    .line 220
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mRemoteTouch:Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

    .line 222
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;-><init>()V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchInfo:Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

    .line 231
    iput v2, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->countMove:I

    .line 237
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    .line 243
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mSceneListener:Lcom/hisilicon/multiscreen/scene/ISceneListener;

    .line 249
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mOrientationDetector:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$OrientationDetector;

    .line 264
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mAccessEventHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$AccessEventHandler;

    .line 269
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mContext:Landroid/content/Context;

    .line 917
    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$8;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$8;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 1375
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$12;

    invoke-direct {v1, p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$12;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->checkRemoteIntent()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->gotoAirMouse()V

    return-void
.end method

.method static synthetic access$1000(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 60
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->currentY:I

    return v0
.end method

.method static synthetic access$1002(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->currentY:I

    return p1
.end method

.method static synthetic access$1100(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_close:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Landroid/view/View;II)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->moveViewBy(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->dealPacketLoss()V

    return-void
.end method

.method static synthetic access$1500(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
    .param p1, "x1"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->dealNetfailedStatus(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
    .param p1, "x1"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->dealAccessByeForReave(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
    .param p1, "x1"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->dealSTBLeave(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
    .param p1, "x1"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->dealSTBSuspend(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->gotoRemoteTouch()V

    return-void
.end method

.method static synthetic access$2000(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->hideController()V

    return-void
.end method

.method static synthetic access$2100(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->parent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->parent:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_pop_home:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_pop_home:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_pop_menu:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_pop_menu:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_pop_vol:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_pop_vol:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_pop_game:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_pop_game:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$300(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->gotoDeviceDiscovery()V

    return-void
.end method

.method static synthetic access$400(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$AccessEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mAccessEventHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$AccessEventHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
    .param p1, "x1"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->sendAccessStatusMessage(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Lcom/hisilicon/multiscreen/scene/SceneType;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
    .param p1, "x1"    # Lcom/hisilicon/multiscreen/scene/SceneType;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->dealSceneChanged(Lcom/hisilicon/multiscreen/scene/SceneType;)V

    return-void
.end method

.method static synthetic access$700(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->showController()V

    return-void
.end method

.method static synthetic access$800(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->handleMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 60
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->currentX:I

    return v0
.end method

.method static synthetic access$902(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->currentX:I

    return p1
.end method

.method private checkRemoteIntent()I
    .locals 4

    .prologue
    .line 1398
    const/4 v2, 0x0

    .line 1399
    .local v2, "retVal":I
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1400
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1401
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1403
    const-string v3, "REMOTE_STATUS"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1405
    :cond_0
    return v2
.end method

.method private checkState()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    .line 1652
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$13;->$SwitchMap$com$aloys$formuler$airsyncremote$MultiScreenControlService$ClientState:[I

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getState()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check state error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getState()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1689
    sget-object v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->Others:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    invoke-direct {p0, v0, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->sendAccessStatusMessage(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    .line 1693
    :goto_0
    return-void

    .line 1656
    :pswitch_0
    const-string v0, "check state RUNNING."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1657
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->takeKeptStream()Z

    move-result v0

    if-nez v0, :bg_stream_kept

    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->startMirror()Z

    :bg_stream_kept

    .line 1658
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->handleIntent()V

    goto :goto_0

    .line 1663
    :pswitch_1
    const-string v0, "check state REAVED."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1664
    sget-object v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->AccessPing:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->sendAccessStatusMessage(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    goto :goto_0

    .line 1669
    :pswitch_2
    const-string v0, "check state STB_LEAVE."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1670
    sget-object v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->AccessPing:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    const/16 v1, 0x28

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->sendAccessStatusMessage(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    goto :goto_0

    .line 1675
    :pswitch_3
    const-string v0, "check state NETWORK_LOST."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1676
    sget-object v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->KeepAlive:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    invoke-direct {p0, v0, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->sendAccessStatusMessage(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    goto :goto_0

    .line 1681
    :pswitch_4
    const-string v0, "check state STB_SUSPEND."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1682
    sget-object v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->AccessPing:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    const/16 v1, 0x50

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->sendAccessStatusMessage(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V

    goto :goto_0

    .line 1652
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private clearAccessListener()V
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setAllAccessListener(Lcom/hisilicon/multiscreen/controller/IAccessListener;)V

    .line 633
    return-void
.end method

.method private clearCurrentDevice()V
    .locals 2

    .prologue
    .line 858
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->setCurrentDevice(Lorg/cybergarage/upnp/Device;)V

    .line 859
    return-void
.end method

.method private clearSceneListener()V
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setSceneListener(Lcom/hisilicon/multiscreen/scene/ISceneListener;)V

    .line 654
    return-void
.end method

.method private deInitNetworkChecker(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V
    .locals 1
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    .param p2, "clientState"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0, p1, p2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->stopPing(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 1474
    return-void
.end method

.method private deInitRemoteCenter()V
    .locals 1

    .prologue
    .line 1495
    const-string v0, "destroy remote control center."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1496
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    if-eqz v0, :cond_0

    .line 1498
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->destroy()V

    .line 1499
    const/4 v0, 0x0

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    .line 1501
    :cond_0
    return-void
.end method

.method private deInitSensorService()V
    .locals 2

    .prologue
    .line 1642
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->stopGsensor()V

    .line 1643
    const-string v0, "sensor"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->writeStatusPreference(Ljava/lang/String;Z)V

    .line 1644
    return-void
.end method

.method private deInitVIMEService()V
    .locals 2

    .prologue
    .line 1602
    const-string v0, "stopService VImeClientControlService."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 1603
    new-instance v0, Landroid/content/Intent;

    const-string v1, "hiandroid.vime.endinput.stb"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1604
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->stopService(Landroid/content/Intent;)Z

    .line 1605
    return-void
.end method

.method private dealAccessByeForReave(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 4
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 787
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->REAVED:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-direct {p0, p1, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->finishCurActivity(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 788
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->clearCurrentDevice()V

    .line 789
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f080004

    const v2, 0x7f080002

    new-instance v3, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$5;

    invoke-direct {v3, p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$5;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/aloys/formuler/airsyncremote/DialogUtils;->showDialogNoCancelable(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    .line 799
    return-void
.end method

.method private dealNetfailedStatus(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 4
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 767
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->NETWORK_LOST:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-direct {p0, p1, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->finishCurActivity(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 769
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->removeInvalidDevice()V

    .line 770
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f080051

    const v2, 0x7f080050

    new-instance v3, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$4;

    invoke-direct {v3, p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$4;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/aloys/formuler/airsyncremote/DialogUtils;->showDialogNoCancelable(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    .line 779
    return-void
.end method

.method private dealPacketLoss()V
    .locals 2

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 758
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 759
    return-void
.end method

.method private dealSTBLeave(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 4
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 807
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->STB_LEAVE:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-direct {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->finishCurActivity(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 809
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->removeInvalidDevice()V

    .line 811
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mContext:Landroid/content/Context;

    .line 812
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 813
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f080000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$6;

    invoke-direct {v3, p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$6;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    .line 811
    invoke-static {v0, v1, v2, v3}, Lcom/aloys/formuler/airsyncremote/DialogUtils;->showDialogNoCancelable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 822
    return-void
.end method

.method private dealSTBSuspend(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;)V
    .locals 4
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    .prologue
    .line 831
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->STB_SUSPEND:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-direct {p0, p1, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->finishCurActivity(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 832
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->clearCurrentDevice()V

    .line 833
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f080004

    const v2, 0x7f080001

    new-instance v3, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$7;

    invoke-direct {v3, p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$7;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    invoke-static {v0, v1, v2, v3}, Lcom/aloys/formuler/airsyncremote/DialogUtils;->showDialogNoCancelable(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    .line 843
    return-void
.end method

.method private dealSceneChanged(Lcom/hisilicon/multiscreen/scene/SceneType;)V
    .locals 2
    .param p1, "sceneType"    # Lcom/hisilicon/multiscreen/scene/SceneType;

    .prologue
    .line 658
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$13;->$SwitchMap$com$hisilicon$multiscreen$scene$SceneType:[I

    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/scene/SceneType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 677
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->gotoRemoteTouch()V

    .line 681
    :goto_0
    return-void

    .line 662
    :pswitch_0
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->gotoRemoteTouch()V

    goto :goto_0

    .line 667
    :pswitch_1
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->gotoAirMouse()V

    goto :goto_0

    .line 672
    :pswitch_2
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->gotoMirrorSensor()V

    goto :goto_0

    .line 658
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private disableOrientationDetector()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mOrientationDetector:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$OrientationDetector;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mOrientationDetector:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$OrientationDetector;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$OrientationDetector;->disable()V

    .line 566
    :cond_0
    return-void
.end method

.method private doFinishWork()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 477
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->unbindDrawables(Landroid/view/View;)V

    .line 478
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMirrorView:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    .line 479
    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mContext:Landroid/content/Context;

    .line 480
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->stopGsensor()V

    .line 481
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->deInitVIMEService()V

    .line 482
    return-void
.end method

.method private enableOrientationDetector()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mOrientationDetector:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$OrientationDetector;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mOrientationDetector:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$OrientationDetector;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$OrientationDetector;->enable()V

    .line 558
    :cond_0
    return-void
.end method

.method private exitImageControl()V
    .locals 5

    .prologue
    .line 515
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f08005a

    const v2, 0x7f080059

    new-instance v3, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$1;

    invoke-direct {v3, p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$1;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/aloys/formuler/airsyncremote/DialogUtils;->showCancelDialog(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 524
    return-void
.end method

.method private finishCurActivity(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V
    .locals 1
    .param p1, "clientState"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    .prologue
    .line 690
    sget-object v0, Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;->Others:Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;

    invoke-direct {p0, v0, p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->finishCurActivity(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 691
    return-void
.end method

.method private finishCurActivity(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V
    .locals 0
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    .param p2, "clientState"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->clearAccessListener()V

    .line 696
    invoke-direct {p0, p1, p2}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->deInitNetworkChecker(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 697
    invoke-direct {p0, p2}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->sendByeToSTB(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    .line 698
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->stopGsensor()V

    .line 699
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->deInitVIMEService()V

    .line 700
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->deInitRemoteCenter()V

    .line 701
    return-void
.end method

.method private getMappingX(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 997
    const/4 v1, 0x0

    .line 1000
    .local v1, "ret_value":I
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMirrorView:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMirrorView:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    iget-object v2, v2, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_1

    .line 1003
    :cond_0
    iget v2, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->screenWidth:I

    add-int/lit8 v0, v2, -0x1

    .line 1011
    .local v0, "localWidth":I
    :goto_0
    if-le p1, v0, :cond_2

    .line 1013
    const/16 v1, 0x4ff

    .line 1020
    :goto_1
    return v1

    .line 1008
    .end local v0    # "localWidth":I
    :cond_1
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMirrorView:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    iget-object v2, v2, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "localWidth":I
    goto :goto_0

    .line 1017
    :cond_2
    mul-int/lit16 v2, p1, 0x4ff

    div-int v1, v2, v0

    goto :goto_1
.end method

.method private getMappingY(I)I
    .locals 3
    .param p1, "y"    # I

    .prologue
    .line 1031
    const/4 v1, 0x0

    .line 1034
    .local v1, "ret_value":I
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMirrorView:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMirrorView:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    iget-object v2, v2, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_1

    .line 1037
    :cond_0
    iget v2, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->screenHeight:I

    add-int/lit8 v0, v2, -0x1

    .line 1045
    .local v0, "localHeight":I
    :goto_0
    if-le p1, v0, :cond_2

    .line 1047
    const/16 v1, 0x2cf

    .line 1054
    :goto_1
    return v1

    .line 1042
    .end local v0    # "localHeight":I
    :cond_1
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMirrorView:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    iget-object v2, v2, Lcom/hisilicon/multiscreen/mirror/MirrorView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "localHeight":I
    goto :goto_0

    .line 1051
    :cond_2
    mul-int/lit16 v2, p1, 0x2cf

    div-int v1, v2, v0

    goto :goto_1
.end method

.method private gotoAirMouse()V
    .locals 3

    .prologue
    .line 1785
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMirrorView:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    if-eqz v1, :cond_0

    .line 1786
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMirrorView:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->setVisibility(I)V

    .line 1788
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1789
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1790
    const-string v1, "REMOTE_STATUS"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1791
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 1792
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->finish()V

    .line 1793
    return-void
.end method

.method private gotoDeviceDiscovery()V
    .locals 3

    .prologue
    .line 1810
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMirrorView:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    if-eqz v1, :cond_0

    .line 1811
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMirrorView:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->setVisibility(I)V

    .line 1813
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1814
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1815
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 1816
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->finish()V

    .line 1817
    return-void
.end method

.method private gotoMirrorSensor()V
    .locals 3

    .prologue
    .line 1797
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1798
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1799
    const-string v1, "MIRROR_STATUS"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1800
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 1801
    return-void
.end method

.method private gotoRemoteTouch()V
    .locals 3

    .prologue
    .line 1772
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMirrorView:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    if-eqz v1, :cond_0

    .line 1773
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMirrorView:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->setVisibility(I)V

    .line 1775
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1776
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1777
    const-string v1, "REMOTE_STATUS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1778
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 1779
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->finish()V

    .line 1780
    return-void
.end method

.method private handleIntent()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1703
    const-string v1, ""

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1704
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "MIRROR_STATUS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1706
    .local v0, "mirrorStatus":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1709
    iput-boolean v3, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->remote_game_flag:Z

    .line 1710
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_pop_game:Landroid/widget/Button;

    const v2, 0x7f020043

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1711
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->startGsensor()V

    .line 1720
    :goto_0
    return-void

    .line 1716
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->remote_game_flag:Z

    .line 1717
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_pop_game:Landroid/widget/Button;

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1718
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->stopGsensor()V

    goto :goto_0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1063
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 1064
    .local v2, "index":I
    if-le v2, v8, :cond_0

    .line 1066
    const-string v8, "Action index is not 0 or 1, so we will not handle it."

    invoke-static {v8}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1160
    :goto_0
    return-void

    .line 1070
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    if-ne v10, v8, :cond_2

    move v3, v8

    .line 1071
    .local v3, "pointCount":I
    :goto_1
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v10, v10

    invoke-direct {p0, v10}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->getMappingX(I)I

    move-result v4

    .line 1072
    .local v4, "x0":I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v10, v10

    invoke-direct {p0, v10}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->getMappingY(I)I

    move-result v6

    .line 1073
    .local v6, "y0":I
    if-ne v3, v8, :cond_3

    move v5, v9

    .line 1074
    .local v5, "x1":I
    :goto_2
    if-ne v3, v8, :cond_4

    move v7, v9

    .line 1075
    .local v7, "y1":I
    :goto_3
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-nez v10, :cond_5

    move v0, v9

    .line 1076
    .local v0, "id0":I
    :goto_4
    if-le v3, v8, :cond_1

    .line 1078
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    if-gt v10, v11, :cond_6

    move v0, v9

    .line 1080
    :cond_1
    :goto_5
    if-nez v0, :cond_7

    move v1, v8

    .line 1082
    .local v1, "id1":I
    :goto_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 1156
    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unkown Motion Action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1070
    .end local v0    # "id0":I
    .end local v1    # "id1":I
    .end local v3    # "pointCount":I
    .end local v4    # "x0":I
    .end local v5    # "x1":I
    .end local v6    # "y0":I
    .end local v7    # "y1":I
    :cond_2
    const/4 v3, 0x2

    goto :goto_1

    .line 1073
    .restart local v3    # "pointCount":I
    .restart local v4    # "x0":I
    .restart local v6    # "y0":I
    :cond_3
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v10, v10

    invoke-direct {p0, v10}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->getMappingX(I)I

    move-result v5

    goto :goto_2

    .line 1074
    .restart local v5    # "x1":I
    :cond_4
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v10, v10

    invoke-direct {p0, v10}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->getMappingY(I)I

    move-result v7

    goto :goto_3

    .restart local v7    # "y1":I
    :cond_5
    move v0, v8

    .line 1075
    goto :goto_4

    .restart local v0    # "id0":I
    :cond_6
    move v0, v8

    .line 1078
    goto :goto_5

    :cond_7
    move v1, v9

    .line 1080
    goto :goto_6

    .line 1088
    .restart local v1    # "id1":I
    :pswitch_1
    if-ne v3, v8, :cond_8

    .line 1090
    iget-object v10, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchInfo:Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

    invoke-virtual {v10, v0, v4, v6, v8}, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->setFingerInfo(IIIZ)V

    .line 1091
    iget-object v8, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchInfo:Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

    invoke-virtual {v8, v1}, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->getFingerInfo(I)Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;->setPress(Z)V

    .line 1098
    :goto_7
    iget-object v8, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mRemoteTouch:Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

    iget-object v9, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchInfo:Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

    invoke-virtual {v8, v9}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;->sendMultiTouchEvent(Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;)V

    goto/16 :goto_0

    .line 1095
    :cond_8
    iget-object v9, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchInfo:Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

    invoke-virtual {v9, v0, v4, v6, v8}, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->setFingerInfo(IIIZ)V

    .line 1096
    iget-object v9, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchInfo:Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

    invoke-virtual {v9, v1, v5, v7, v8}, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->setFingerInfo(IIIZ)V

    goto :goto_7

    .line 1105
    :pswitch_2
    iget v10, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->countMove:I

    if-eq v10, v8, :cond_9

    .line 1107
    iget v8, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->countMove:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->countMove:I

    goto/16 :goto_0

    .line 1110
    :cond_9
    iput v9, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->countMove:I

    .line 1111
    if-ne v3, v8, :cond_a

    .line 1113
    iget-object v9, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchInfo:Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

    invoke-virtual {v9, v0, v4, v6, v8}, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->setFingerInfo(IIIZ)V

    .line 1120
    :goto_8
    iget-object v8, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mRemoteTouch:Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

    iget-object v9, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchInfo:Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

    invoke-virtual {v8, v9}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;->sendMultiTouchEvent(Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;)V

    goto/16 :goto_0

    .line 1117
    :cond_a
    iget-object v9, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchInfo:Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

    invoke-virtual {v9, v0, v4, v6, v8}, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->setFingerInfo(IIIZ)V

    .line 1118
    iget-object v9, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchInfo:Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

    invoke-virtual {v9, v1, v5, v7, v8}, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->setFingerInfo(IIIZ)V

    goto :goto_8

    .line 1130
    :pswitch_3
    if-ne v3, v8, :cond_b

    .line 1132
    iget-object v8, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchInfo:Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

    invoke-virtual {v8, v0, v4, v6, v9}, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->setFingerInfo(IIIZ)V

    .line 1133
    iget-object v8, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchInfo:Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

    invoke-virtual {v8, v1, v5, v7, v9}, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->setFingerInfo(IIIZ)V

    .line 1148
    :goto_9
    iget-object v8, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mRemoteTouch:Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

    iget-object v9, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchInfo:Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

    invoke-virtual {v8, v9}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;->sendMultiTouchEvent(Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;)V

    .line 1150
    iget-object v8, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mRemoteTouch:Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

    iget-object v9, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchInfo:Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

    invoke-virtual {v8, v9}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;->sendMultiTouchEvent(Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;)V

    goto/16 :goto_0

    .line 1137
    :cond_b
    if-nez v2, :cond_c

    .line 1139
    iget-object v10, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchInfo:Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

    invoke-virtual {v10, v0, v4, v6, v9}, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->setFingerInfo(IIIZ)V

    .line 1140
    iget-object v9, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchInfo:Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

    invoke-virtual {v9, v1, v5, v7, v8}, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->setFingerInfo(IIIZ)V

    goto :goto_9

    .line 1144
    :cond_c
    iget-object v10, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchInfo:Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

    invoke-virtual {v10, v0, v4, v6, v8}, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->setFingerInfo(IIIZ)V

    .line 1145
    iget-object v8, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchInfo:Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;

    invoke-virtual {v8, v1, v5, v7, v9}, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->setFingerInfo(IIIZ)V

    goto :goto_9

    .line 1082
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private hideController()V
    .locals 2

    .prologue
    .line 1352
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_layout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1353
    :cond_1
    const v1, 0x7f040001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1354
    .local v0, "ani":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1355
    new-instance v1, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$11;

    invoke-direct {v1, p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$11;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 1282
    const-string v0, "initData"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1283
    invoke-static {p0}, Lcom/hisilicon/multiscreen/protocol/utils/ServiceUtil;->checkMultiScreenControlService(Landroid/content/Context;)V

    .line 1284
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 1285
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->initOrientationDetector()V

    .line 1286
    return-void
.end method

.method private initGsensor()V
    .locals 3

    .prologue
    .line 1627
    const-string v1, "sensor"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->readStatusPreference(Ljava/lang/String;Z)Z

    move-result v0

    .line 1628
    .local v0, "isOpened":Z
    if-eqz v0, :cond_0

    .line 1630
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->startGsensor()V

    .line 1631
    const-string v1, "sensor"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->writeStatusPreference(Ljava/lang/String;Z)V

    .line 1633
    :cond_0
    return-void
.end method

.method private initMirror()V
    .locals 2

    .prologue
    .line 1526
    const-string v0, "initMirror"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1528
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->initMirrorServer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1530
    const-string v0, "Fail to set mirror parameter."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1535
    :cond_0
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->loadMirrorLibs()Z

    .line 1536
    const v0, 0x7f0b0061

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/multiscreen/mirror/MirrorView;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMirrorView:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    .line 1538
    const v0, 0x7f0b0062

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mLayout:Landroid/widget/LinearLayout;

    .line 1539
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMirrorView:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->setViewLayout(Landroid/widget/LinearLayout;)V

    .line 1543
    return-void
.end method

.method private initMirrorServer()Z
    .locals 2

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setDefaultMirrorParameter(I)Z

    move-result v0

    return v0
.end method

.method private initModules()V
    .locals 1

    .prologue
    .line 1455
    const-string v0, "initModules"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1458
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->initRemoteCenter()V

    .line 1459
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->initMirror()V

    .line 1460
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->initTouch()V

    .line 1461
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->initVIME()V

    .line 1462
    return-void
.end method

.method private initOrientationDetector()V
    .locals 1

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->checkRemoteIntent()I

    move-result v0

    .line 545
    .local v0, "remoteStatus":I
    if-eqz v0, :cond_0

    .line 550
    :cond_0
    return-void
.end method

.method private initRemoteCenter()V
    .locals 1

    .prologue
    .line 1482
    const-string v0, "initRemoteCenter"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1483
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getRemoteControlCenter()Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    move-result-object v0

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    .line 1486
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->getRemoteKeyboard()Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    move-result-object v0

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mRemoteKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    .line 1487
    return-void
.end method

.method private initTouch()V
    .locals 2

    .prologue
    .line 1509
    const-string v0, "initTouch"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1512
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mRemoteControlCenter:Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteControlCenter;->getRemoteTouch()Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

    move-result-object v0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mRemoteTouch:Lcom/hisilicon/multiscreen/protocol/remote/RemoteTouch;

    .line 1514
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMirrorView:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    if-eqz v0, :cond_0

    .line 1516
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMirrorView:Lcom/hisilicon/multiscreen/mirror/MirrorView;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1518
    :cond_0
    return-void
.end method

.method private initVIME()V
    .locals 2

    .prologue
    .line 1561
    const-string v0, "initVIME"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1563
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->vime_status:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1564
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1567
    :goto_0
    return-void

    .line 1566
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 1294
    const-string v0, "initView"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1297
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->setContentView(I)V

    .line 1298
    iput-object p0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mContext:Landroid/content/Context;

    .line 1300
    const-string v0, "vime"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->readStatusPreference(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->vime_status:Z

    .line 1302
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->dm:Landroid/util/DisplayMetrics;

    .line 1303
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->screenWidth:I

    .line 1304
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->screenHeight:I

    .line 1306
    const v0, 0x7f0b0066

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_close:Landroid/widget/Button;

    .line 1307
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_close:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1309
    const v0, 0x7f0b0065

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_layout:Landroid/widget/RelativeLayout;

    .line 1310
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1312
    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_back:Landroid/widget/Button;

    .line 1313
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1315
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_more:Landroid/widget/Button;

    .line 1316
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_more:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1318
    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$MultiScreenMorePop;

    invoke-direct {v0, p0, p0, p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$MultiScreenMorePop;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMorePop:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$MultiScreenMorePop;

    .line 1320
    return-void
.end method

.method private static loadMirrorLibs()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 868
    sget-boolean v4, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->sLoaded:Z

    if-eqz v4, :cond_0

    .line 910
    .local v1, "err":Z
    :goto_0
    return v3

    .line 872
    .end local v1    # "err":Z
    :cond_0
    const/4 v1, 0x0

    .line 879
    .restart local v1    # "err":Z
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 880
    .local v2, "osVersion":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xe

    if-ge v4, v5, :cond_2

    .line 882
    const-string v4, "load libmirror23_jni.so"

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 883
    const-string v4, "mirror23_jni"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    .end local v2    # "osVersion":Ljava/lang/String;
    :goto_1
    if-nez v1, :cond_1

    .line 908
    sput-boolean v3, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->sLoaded:Z

    .line 910
    :cond_1
    sget-boolean v3, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->sLoaded:Z

    goto :goto_0

    .line 885
    .restart local v2    # "osVersion":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x13

    if-ge v4, v5, :cond_3

    .line 887
    const-string v4, "load libmirror40_jni.so"

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 888
    const-string v4, "mirror40_jni"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 901
    .end local v2    # "osVersion":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const/4 v1, 0x1

    .line 904
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when Loading our lib: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 890
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v2    # "osVersion":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x15

    if-ge v4, v5, :cond_4

    .line 892
    const-string v4, "load libmirror44_jni.so"

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 893
    const-string v4, "mirror44_jni"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_1

    .line 897
    :cond_4
    const-string v4, "load libmirror50_jni.so"

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 898
    const-string v4, "mirror50_jni"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private moveViewBy(Landroid/view/View;II)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 974
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int v1, v5, p2

    .line 975
    .local v1, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v2, v5, p2

    .line 976
    .local v2, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    add-int v3, v5, p3

    .line 977
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int v0, v5, p3

    .line 979
    .local v0, "bottom":I
    iget-object v5, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mLayoutWidth:I

    .line 980
    iget-object v5, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_close:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mCloseWidth:I

    .line 981
    iget v5, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mLayoutWidth:I

    iget v6, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mCloseWidth:I

    sub-int v4, v5, v6

    .line 983
    .local v4, "width":I
    neg-int v5, v4

    if-lt v1, v5, :cond_0

    iget v5, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->screenWidth:I

    if-gt v2, v5, :cond_0

    .line 985
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 987
    :cond_0
    return-void
.end method

.method private readStatusPreference(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "statusKey"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 1577
    const-string v1, "Setting_Status"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1579
    .local v0, "prefrence":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private removeInvalidDevice()V
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 852
    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getControlPoint()Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->getCurrentDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 851
    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenUpnpControlPoint;->removeCannotAccessDevice(Lorg/cybergarage/upnp/Device;)V

    .line 853
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->clearCurrentDevice()V

    .line 854
    return-void
.end method

.method private resetAccessListener()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mAccessEventHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$AccessEventHandler;

    if-nez v0, :cond_0

    .line 575
    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$AccessEventHandler;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$AccessEventHandler;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mAccessEventHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$AccessEventHandler;

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    if-nez v0, :cond_1

    .line 580
    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$2;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$2;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    .line 623
    :cond_1
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mAccessListener:Lcom/hisilicon/multiscreen/controller/IAccessListener;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setAllAccessListener(Lcom/hisilicon/multiscreen/controller/IAccessListener;)V

    .line 624
    return-void
.end method

.method private resetSceneListener()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mSceneListener:Lcom/hisilicon/multiscreen/scene/ISceneListener;

    if-nez v0, :cond_0

    .line 639
    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$3;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$3;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mSceneListener:Lcom/hisilicon/multiscreen/scene/ISceneListener;

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mSceneListener:Lcom/hisilicon/multiscreen/scene/ISceneListener;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setSceneListener(Lcom/hisilicon/multiscreen/scene/ISceneListener;)V

    .line 649
    return-void
.end method

.method private resumeActivity()V
    .locals 2

    .prologue
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->leaveBackground()V

    .line 528
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;->mirror:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setTopActivity(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;)V

    .line 529
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->enableOrientationDetector()V

    .line 530
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->resetAccessListener()V

    .line 531
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->resetSceneListener()V

    .line 532
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->checkState()V

    .line 534
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->showController()V

    .line 535
    return-void
.end method

.method private sendAccessStatusMessage(Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;I)V
    .locals 2
    .param p1, "caller"    # Lcom/hisilicon/multiscreen/controller/IAccessListener$Caller;
    .param p2, "what"    # I

    .prologue
    .line 1729
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mAccessEventHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$AccessEventHandler;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$AccessEventHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1730
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1731
    iput p2, v0, Landroid/os/Message;->what:I

    .line 1732
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1733
    return-void
.end method

.method private sendByeToSTB(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V
    .locals 1
    .param p1, "clientState"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    .prologue
    .line 1170
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->REAVED:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    if-eq p1, v0, :cond_0

    .line 1172
    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$9;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$9;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    .line 1183
    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$9;->start()V

    .line 1185
    :cond_0
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
    .line 1266
    const-string v0, "setStrictMode"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1269
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 1270
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1269
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1271
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 1272
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 1271
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1274
    return-void
.end method

.method private showController()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1325
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1326
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1327
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1349
    :goto_0
    return-void

    .line 1330
    :cond_0
    const/high16 v1, 0x7f040000

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1331
    .local v0, "ani":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1332
    new-instance v1, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$10;

    invoke-direct {v1, p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$10;-><init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private startGsensor()V
    .locals 2

    .prologue
    .line 1609
    const-string v0, "Start gsensor service."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1610
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hisilicon/multiscreen/gsensor/SensorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1611
    return-void
.end method

.method private startMirror()Z
    .locals 3

    .prologue
    .line 709
    const-string v1, "Start mirror."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 710
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->startMirror(I)Z

    move-result v0

    .line 717
    .local v0, "isOK":Z
    if-nez v0, :cond_0

    .line 719
    const-string v1, "Start mirror failed."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 720
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mAccessEventHandler:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$AccessEventHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$AccessEventHandler;->sendEmptyMessage(I)Z

    .line 722
    :cond_0
    return v0
.end method

.method private stopGsensor()V
    .locals 2

    .prologue
    .line 1615
    const-string v0, "Stop gsensor service."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 1616
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/hisilicon/multiscreen/gsensor/SensorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->stopService(Landroid/content/Intent;)Z

    .line 1617
    return-void
.end method

.method private stopMirror()Z
    .locals 3

    .prologue
    .line 731
    const-string v1, "Stop mirror."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 732
    const/4 v0, 0x0

    .line 734
    .local v0, "isOK":Z
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .line 735
    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getState()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    move-result-object v1

    sget-object v2, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->NETWORK_LOST:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    if-ne v1, v2, :cond_1

    .line 737
    :cond_0
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->stopMirror(I)Z

    move-result v0

    .line 738
    if-nez v0, :cond_1

    .line 740
    const-string v1, "Fail to stop mirror."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->w(Ljava/lang/String;)V

    .line 748
    :cond_1
    return v0
.end method

.method private syncInfo()V
    .locals 3

    .prologue
    .line 1414
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getState()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    move-result-object v0

    .line 1415
    .local v0, "state":Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;
    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$13;->$SwitchMap$com$aloys$formuler$airsyncremote$MultiScreenControlService$ClientState:[I

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The client state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when activity on create."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1447
    :goto_0
    return-void

    .line 1420
    :pswitch_0
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->canSyncInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1423
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->startPing()V

    .line 1424
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->initModules()V

    goto :goto_0

    .line 1429
    :cond_0
    const-string v1, "sync STB info failed!"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1430
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMultiScreenControlService:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    sget-object v2, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->NETWORK_LOST:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->setState(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;)V

    goto :goto_0

    .line 1437
    :pswitch_1
    const-string v1, "Resume MultiScreenActivity from HOME."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 1438
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->initModules()V

    goto :goto_0

    .line 1415
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 492
    if-eqz p1, :cond_2

    .line 494
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 498
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 500
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 502
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->unbindDrawables(Landroid/view/View;)V

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 507
    .end local v0    # "i":I
    :cond_2
    const/4 p1, 0x0

    .line 508
    .restart local p1    # "view":Landroid/view/View;
    return-void
.end method

.method private writeStatusPreference(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "statusKey"    # Ljava/lang/String;
    .param p2, "isOpened"    # Z

    .prologue
    .line 1590
    const-string v1, "Setting_Status"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1591
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1592
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1593
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1594
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f020043

    const v4, 0x7f020042

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 409
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMorePop:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$MultiScreenMorePop;

    if-eqz v2, :cond_0

    .line 411
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMorePop:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$MultiScreenMorePop;

    invoke-virtual {v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$MultiScreenMorePop;->dismiss()V

    .line 414
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 469
    :goto_0
    return-void

    .line 417
    :pswitch_0
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mRemoteKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x9e

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0

    .line 422
    :pswitch_1
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mMorePop:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$MultiScreenMorePop;

    const v3, 0x7f0b0068

    invoke-virtual {p0, v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0, v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$MultiScreenMorePop;->showAtLocation(Landroid/view/View;III)V

    .line 424
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->remote_game_flag:Z

    if-ne v0, v1, :cond_1

    .line 426
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_pop_game:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_pop_game:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 436
    :pswitch_2
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->exitImageControl()V

    goto :goto_0

    .line 440
    :pswitch_3
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mRemoteKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0

    .line 444
    :pswitch_4
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mRemoteKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0

    .line 448
    :pswitch_5
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mRemoteKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    .line 449
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mRemoteKeyboard:Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteKeyboard;->sendDownAndUpKeyCode(I)V

    goto :goto_0

    .line 453
    :pswitch_6
    iget-boolean v2, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->remote_game_flag:Z

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->remote_game_flag:Z

    .line 454
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->remote_game_flag:Z

    if-ne v0, v1, :cond_3

    .line 456
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_pop_game:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 457
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->startGsensor()V

    goto :goto_0

    .line 461
    :cond_3
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mControl_pop_game:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 462
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->stopGsensor()V

    goto :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0066
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 343
    const-string v0, "onConfigurationChanged"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 344
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 345
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 322
    const-string v0, "onCreate."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 323
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 325
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->loadMirrorLibs()Z

    .line 326
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->setStrictMode()V

    .line 327
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->initData()V

    .line 328
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->initView()V

    .line 329
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->syncInfo()V

    .line 330
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 382
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 383
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 384
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->doFinishWork()V

    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->onMirrorScreenDestroyed()V

    .line 385
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 394
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->exitImageControl()V

    .line 397
    const/4 v0, 0x1

    .line 399
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 335
    const-string v0, "onNewIntent"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 336
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 337
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->handleIntent()V

    .line 338
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 358
    const-string v0, "onPause"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 359
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 360
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->clearSceneListener()V

    .line 361
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->disableOrientationDetector()V

    .line 362
    invoke-static {p0}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->enterBackground(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :bg_keep_stream

    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->stopMirror()Z

    :bg_keep_stream

    .line 363
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->stopGsensor()V

    .line 364
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->hideController()V

    .line 366
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 350
    const-string v0, "on resume."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 351
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 352
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->resumeActivity()V

    .line 353
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 375
    const-string v0, "onStop"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 376
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 377
    return-void
.end method
