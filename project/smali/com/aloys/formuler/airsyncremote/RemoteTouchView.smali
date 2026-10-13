.class public Lcom/aloys/formuler/airsyncremote/RemoteTouchView;
.super Landroid/widget/RelativeLayout;
.source "RemoteTouchView.java"


# static fields
.field public static final GESTURE_DOWN:I = 0x1

.field public static final GESTURE_ENTER:I = 0x4

.field public static final GESTURE_IDLE:I = 0x5

.field public static final GESTURE_LEFT:I = 0x2

.field public static final GESTURE_RIGHT:I = 0x3

.field public static final GESTURE_UP:I


# instance fields
.field private clearTouchRunnable:Ljava/lang/Runnable;

.field private downX:I

.field private downY:I

.field private mAirMouse:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

.field private mContext:Landroid/content/Context;

.field private mIsAirMouseOpen:Z

.field private mIsCloseBtnShown:Z

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mRemote_touch_airmouse:Landroid/widget/ImageView;

.field public mRemote_touch_info:Landroid/widget/TextView;

.field public mRemote_touch_layout:Landroid/widget/RelativeLayout;

.field private mRemote_touch_show:Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mAirMouse:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    .line 63
    iput-boolean v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mIsAirMouseOpen:Z

    .line 65
    iput-boolean v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mIsCloseBtnShown:Z

    .line 67
    iput v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->downX:I

    .line 69
    iput v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->downY:I

    .line 422
    new-instance v0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$3;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$3;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->clearTouchRunnable:Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mAirMouse:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    .line 63
    iput-boolean v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mIsAirMouseOpen:Z

    .line 65
    iput-boolean v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mIsCloseBtnShown:Z

    .line 67
    iput v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->downX:I

    .line 69
    iput v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->downY:I

    .line 422
    new-instance v0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$3;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$3;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->clearTouchRunnable:Ljava/lang/Runnable;

    .line 82
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {p0, p1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->initViews(Landroid/content/Context;)V

    .line 84
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->initDetector()V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mIsAirMouseOpen:Z

    return v0
.end method

.method static synthetic access$100(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)Lcom/hisilicon/multiscreen/gsensor/AirMouse;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mAirMouse:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->clearTouchRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->showBtnClose()V

    return-void
.end method

.method static synthetic access$300(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->hideBtnClose()V

    return-void
.end method

.method static synthetic access$400(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->isBtnCloseShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_airmouse:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)I
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    .prologue
    .line 19
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->downX:I

    return v0
.end method

.method static synthetic access$602(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteTouchView;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->downX:I

    return p1
.end method

.method static synthetic access$700(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)I
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    .prologue
    .line 19
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->downY:I

    return v0
.end method

.method static synthetic access$702(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteTouchView;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->downY:I

    return p1
.end method

.method static synthetic access$800(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteTouchView;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->setInfoVisible(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteTouchView;
    .param p1, "x1"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->doResult(I)V

    return-void
.end method

.method private doResult(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 442
    packed-switch p1, :pswitch_data_0

    .line 470
    :goto_0
    return-void

    .line 445
    :pswitch_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_show:Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->downX:I

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->downY:I

    invoke-virtual {v0, v1, v2}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touchShowRight(II)V

    .line 446
    const/16 v0, 0x7d7

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto :goto_0

    .line 450
    :pswitch_1
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_show:Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->downX:I

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->downY:I

    invoke-virtual {v0, v1, v2}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touchShowLeft(II)V

    .line 451
    const/16 v0, 0x7d6

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto :goto_0

    .line 454
    :pswitch_2
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_show:Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->downX:I

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->downY:I

    invoke-virtual {v0, v1, v2}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touchShowDown(II)V

    .line 455
    const/16 v0, 0x7d8

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto :goto_0

    .line 458
    :pswitch_3
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_show:Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->downX:I

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->downY:I

    invoke-virtual {v0, v1, v2}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touchShowUp(II)V

    .line 459
    const/16 v0, 0x7d5

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto :goto_0

    .line 463
    :pswitch_4
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_show:Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;

    iget v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->downX:I

    iget v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->downY:I

    invoke-virtual {v0, v1, v2}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touchShowOk(II)V

    .line 464
    const/16 v0, 0x7d4

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->doKeyboard(I)V

    goto :goto_0

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private hideBtnClose()V
    .locals 2

    .prologue
    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mIsCloseBtnShown:Z

    .line 295
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_airmouse:Landroid/widget/ImageView;

    const v1, 0x7f02011a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 296
    return-void
.end method

.method private initDetector()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->initTouchListener()V

    .line 162
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->initSwipeDetector()V

    .line 163
    return-void
.end method

.method private initSwipeDetector()V
    .locals 2

    .prologue
    .line 304
    new-instance v0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$2;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)V

    .line 416
    .local v0, "remoteTouchListener":Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 417
    return-void
.end method

.method private initTouchListener()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView$1;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteTouchView;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 278
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_airmouse:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 279
    return-void
.end method

.method private isBtnCloseShown()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mIsCloseBtnShown:Z

    return v0
.end method

.method private setInfoVisible(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_show:Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;->touchClearShow()V

    .line 434
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_info:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    return-void
.end method

.method private showBtnClose()V
    .locals 2

    .prologue
    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mIsCloseBtnShown:Z

    .line 289
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_airmouse:Landroid/widget/ImageView;

    const v1, 0x7f020119

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 290
    return-void
.end method


# virtual methods
.method public disableAirMouse()V
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mIsAirMouseOpen:Z

    .line 147
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_airmouse:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mAirMouse:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mAirMouse:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->disable()V

    .line 152
    :cond_0
    return-void
.end method

.method public enableAirMouse()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mAirMouse:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    if-eqz v0, :cond_1

    .line 120
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mIsAirMouseOpen:Z

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mAirMouse:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->enable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mIsAirMouseOpen:Z

    .line 131
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mIsAirMouseOpen:Z

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_airmouse:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->hideBtnClose()V

    .line 141
    :goto_1
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mIsAirMouseOpen:Z

    return v0

    .line 127
    :cond_1
    iput-boolean v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mIsAirMouseOpen:Z

    .line 128
    const-string v0, "Enable failed, air mouse hasn\'t initialized."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_airmouse:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public initAirMouse()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mAirMouse:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getAirMouse()Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    move-result-object v0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mAirMouse:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mAirMouse:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_info:Landroid/widget/TextView;

    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 111
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_airmouse:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mIsAirMouseOpen:Z

    .line 114
    :cond_1
    return-void
.end method

.method public initViews(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002b

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b00b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_info:Landroid/widget/TextView;

    .line 91
    const v1, 0x7f0b00b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_layout:Landroid/widget/RelativeLayout;

    .line 92
    const v1, 0x7f0b00b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_show:Lcom/hisilicon/multiscreen/widget/RemoteTouchShowView;

    .line 93
    const v1, 0x7f0b00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_airmouse:Landroid/widget/ImageView;

    .line 94
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mRemote_touch_airmouse:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    return-void
.end method

.method public isAirMouseOpen()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->mIsAirMouseOpen:Z

    return v0
.end method
