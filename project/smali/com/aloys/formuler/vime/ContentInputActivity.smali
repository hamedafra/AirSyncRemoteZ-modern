.class public Lcom/aloys/formuler/vime/ContentInputActivity;
.super Lcom/aloys/formuler/airsyncremote/BaseActivity;
.source "ContentInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aloys/formuler/vime/ContentInputActivity$SendTextRunnable;,
        Lcom/aloys/formuler/vime/ContentInputActivity$SyncTextHandler;,
        Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;
    }
.end annotation


# static fields
.field private static final IS_ON_TOP:Z = true

.field private static final MSG_KEY_END_SELECION:Ljava/lang/String; = "MSG_END_SELECTION"

.field private static final MSG_KEY_START_SELECION:Ljava/lang/String; = "MSG_START_SELECTION"

.field private static final MSG_KEY_TEXT:Ljava/lang/String; = "MSG_KEY_TEXT"

.field public static final MSG_SEND_CURSOR_DELAY:I = 0x101

.field private static final SEND_CURSOR_DELAY:J = 0x1f4L

.field private static final SEND_TEXT_INIT_SEQUENCE:I


# instance fields
.field private mBtnComplete:Landroid/widget/Button;

.field private mBtnCompleteClickListener:Landroid/view/View$OnClickListener;

.field private mEndInputType:Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

.field private mEtInputText:Lcom/hisilicon/multiscreen/vime/VIMEEditText;

.field private mEtWatcher:Lcom/hisilicon/multiscreen/vime/EditTextWatcher;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mImeOption:Lcom/hisilicon/multiscreen/vime/VImeOption;

.field private mLatestText:Ljava/lang/String;

.field private mSendTextSeq:I

.field private mVImeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mVImeClientControlService:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

.field private mVimeClientTransfer:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;

.field private myHandler:Lcom/aloys/formuler/vime/ContentInputActivity$SyncTextHandler;

.field private openKeyboardTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mSendTextSeq:I

    .line 92
    iput-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mVimeClientTransfer:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;

    .line 98
    iput-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mVImeClientControlService:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    .line 104
    iput-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mEtInputText:Lcom/hisilicon/multiscreen/vime/VIMEEditText;

    .line 110
    iput-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mBtnComplete:Landroid/widget/Button;

    .line 116
    iput-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mImeOption:Lcom/hisilicon/multiscreen/vime/VImeOption;

    .line 122
    iput-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mEndInputType:Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    .line 128
    iput-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->openKeyboardTimer:Ljava/util/Timer;

    .line 143
    iput-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->myHandler:Lcom/aloys/formuler/vime/ContentInputActivity$SyncTextHandler;

    .line 149
    iput-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mLatestText:Ljava/lang/String;

    .line 161
    new-instance v0, Lcom/aloys/formuler/vime/ContentInputActivity$1;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/vime/ContentInputActivity$1;-><init>(Lcom/aloys/formuler/vime/ContentInputActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mVImeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance v0, Lcom/aloys/formuler/vime/ContentInputActivity$2;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/vime/ContentInputActivity$2;-><init>(Lcom/aloys/formuler/vime/ContentInputActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mBtnCompleteClickListener:Landroid/view/View$OnClickListener;

    .line 199
    new-instance v0, Lcom/aloys/formuler/vime/ContentInputActivity$3;

    invoke-direct {v0, p0}, Lcom/aloys/formuler/vime/ContentInputActivity$3;-><init>(Lcom/aloys/formuler/vime/ContentInputActivity;)V

    iput-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mEtWatcher:Lcom/hisilicon/multiscreen/vime/EditTextWatcher;

    return-void
.end method

.method static synthetic access$002(Lcom/aloys/formuler/vime/ContentInputActivity;Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;)Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/vime/ContentInputActivity;
    .param p1, "x1"    # Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mEndInputType:Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    return-object p1
.end method

.method static synthetic access$100(Lcom/aloys/formuler/vime/ContentInputActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/vime/ContentInputActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mLatestText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/aloys/formuler/vime/ContentInputActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/vime/ContentInputActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mLatestText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/aloys/formuler/vime/ContentInputActivity;Ljava/lang/String;IIJ)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/vime/ContentInputActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # J

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lcom/aloys/formuler/vime/ContentInputActivity;->sendTextDelay(Ljava/lang/String;IIJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/aloys/formuler/vime/ContentInputActivity;)Lcom/hisilicon/multiscreen/vime/VIMEEditText;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/vime/ContentInputActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mEtInputText:Lcom/hisilicon/multiscreen/vime/VIMEEditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/aloys/formuler/vime/ContentInputActivity;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/vime/ContentInputActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/aloys/formuler/vime/ContentInputActivity;->sendText(Ljava/lang/String;II)V

    return-void
.end method

.method private cancelKeyboard()V
    .locals 4

    .prologue
    .line 490
    iget-object v2, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->openKeyboardTimer:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 493
    iget-object v2, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->openKeyboardTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 494
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->openKeyboardTimer:Ljava/util/Timer;

    .line 497
    :cond_0
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/aloys/formuler/vime/ContentInputActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 498
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/aloys/formuler/vime/ContentInputActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 499
    .local v0, "focusView":Landroid/view/View;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 501
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 504
    :cond_1
    return-void
.end method

.method private clearMessages()V
    .locals 2

    .prologue
    const/16 v1, 0x101

    .line 536
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->myHandler:Lcom/aloys/formuler/vime/ContentInputActivity$SyncTextHandler;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/vime/ContentInputActivity$SyncTextHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->myHandler:Lcom/aloys/formuler/vime/ContentInputActivity$SyncTextHandler;

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/vime/ContentInputActivity$SyncTextHandler;->removeMessages(I)V

    .line 540
    :cond_0
    return-void
.end method

.method private deinitHandler()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/aloys/formuler/vime/ContentInputActivity;->clearMessages()V

    .line 447
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 450
    :cond_0
    return-void
.end method

.method private finishContentInput(Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;)V
    .locals 2
    .param p1, "endInputType"    # Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/aloys/formuler/vime/ContentInputActivity;->clearMessages()V

    .line 345
    invoke-direct {p0}, Lcom/aloys/formuler/vime/ContentInputActivity;->cancelKeyboard()V

    .line 347
    sget-object v0, Lcom/aloys/formuler/vime/ContentInputActivity$5;->$SwitchMap$com$aloys$formuler$vime$ContentInputActivity$EndInputType:[I

    invoke-virtual {p1}, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 371
    const-string v0, "No default end input type"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 375
    :goto_0
    :pswitch_0
    return-void

    .line 352
    :pswitch_1
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mVimeClientTransfer:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;

    iget-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mImeOption:Lcom/hisilicon/multiscreen/vime/VImeOption;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/vime/VImeOption;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->endInput(I)Lcom/hisilicon/multiscreen/protocol/message/Action;

    goto :goto_0

    .line 365
    :pswitch_2
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mVimeClientTransfer:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;

    sget-object v1, Lcom/hisilicon/multiscreen/vime/VImeOption;->HIDE_KEYBOARD:Lcom/hisilicon/multiscreen/vime/VImeOption;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/vime/VImeOption;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->endInput(I)Lcom/hisilicon/multiscreen/protocol/message/Action;

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initCompleteButton(Lcom/hisilicon/multiscreen/vime/VImeOption;)V
    .locals 2
    .param p1, "imeOption"    # Lcom/hisilicon/multiscreen/vime/VImeOption;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mBtnComplete:Landroid/widget/Button;

    iget-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mBtnCompleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    return-void
.end method

.method private initData(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/aloys/formuler/vime/ContentInputActivity;->initHandler()V

    .line 397
    const/4 v2, 0x0

    .line 398
    .local v2, "inputType":I
    const-string v4, ""

    .line 399
    .local v4, "text":Ljava/lang/String;
    const/4 v3, 0x0

    .line 400
    .local v3, "startSelection":I
    const/4 v1, 0x0

    .line 401
    .local v1, "endSelection":I
    sget-object v5, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;->OTHERS:Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    iput-object v5, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mEndInputType:Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    .line 403
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 406
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "imeOptions"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/hisilicon/multiscreen/vime/VImeOption;->getOption(I)Lcom/hisilicon/multiscreen/vime/VImeOption;

    move-result-object v5

    iput-object v5, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mImeOption:Lcom/hisilicon/multiscreen/vime/VImeOption;

    .line 407
    const-string v5, "inputType"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 408
    const-string v5, "text"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 409
    const-string v5, "srcStartSelection"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 410
    const-string v5, "srcEndSelection"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 412
    iget-object v5, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mImeOption:Lcom/hisilicon/multiscreen/vime/VImeOption;

    invoke-direct {p0, v5}, Lcom/aloys/formuler/vime/ContentInputActivity;->initCompleteButton(Lcom/hisilicon/multiscreen/vime/VImeOption;)V

    .line 413
    iget-object v5, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mEtInputText:Lcom/hisilicon/multiscreen/vime/VIMEEditText;

    invoke-virtual {v5, v2}, Lcom/hisilicon/multiscreen/vime/VIMEEditText;->setInputType(I)V

    .line 414
    iget-object v5, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mEtInputText:Lcom/hisilicon/multiscreen/vime/VIMEEditText;

    sget-object v6, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v4, v6}, Lcom/hisilicon/multiscreen/vime/VIMEEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 415
    iput-object v4, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mLatestText:Ljava/lang/String;

    .line 417
    iget-object v5, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mEtInputText:Lcom/hisilicon/multiscreen/vime/VIMEEditText;

    invoke-virtual {v5, v3, v1}, Lcom/hisilicon/multiscreen/vime/VIMEEditText;->setSelection(II)V

    .line 418
    const/4 v5, 0x0

    iput v5, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mSendTextSeq:I

    .line 422
    iget-object v5, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mEtInputText:Lcom/hisilicon/multiscreen/vime/VIMEEditText;

    iget-object v6, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mEtWatcher:Lcom/hisilicon/multiscreen/vime/EditTextWatcher;

    invoke-virtual {v5, v6}, Lcom/hisilicon/multiscreen/vime/VIMEEditText;->addWatcher(Lcom/hisilicon/multiscreen/vime/EditTextWatcher;)V

    .line 426
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getHiDevice()Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->getInstance(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;

    move-result-object v5

    iput-object v5, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mVimeClientTransfer:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;

    .line 427
    return-void
.end method

.method private initHandler()V
    .locals 2

    .prologue
    .line 434
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "multiscreen_contentinput_handlerthread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 435
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 436
    new-instance v0, Lcom/aloys/formuler/vime/ContentInputActivity$SyncTextHandler;

    iget-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aloys/formuler/vime/ContentInputActivity$SyncTextHandler;-><init>(Lcom/aloys/formuler/vime/ContentInputActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->myHandler:Lcom/aloys/formuler/vime/ContentInputActivity$SyncTextHandler;

    .line 437
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 383
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/vime/ContentInputActivity;->setContentView(I)V

    .line 384
    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/vime/ContentInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/multiscreen/vime/VIMEEditText;

    iput-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mEtInputText:Lcom/hisilicon/multiscreen/vime/VIMEEditText;

    .line 385
    const v0, 0x7f0b0058

    invoke-virtual {p0, v0}, Lcom/aloys/formuler/vime/ContentInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mBtnComplete:Landroid/widget/Button;

    .line 386
    return-void
.end method

.method private isInputStatusOnClient()Z
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->getInstance()Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    move-result-object v0

    .line 325
    .local v0, "mVImeClientControlService":Lcom/hisilicon/multiscreen/vime/VImeClientControlService;
    if-nez v0, :cond_0

    .line 328
    const-string v1, "mVImeClientControlService is null"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 329
    const/4 v1, 0x0

    .line 333
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->isInputStatusOnClient()Z

    move-result v1

    goto :goto_0
.end method

.method private openKeyboard()V
    .locals 6

    .prologue
    .line 469
    const-wide/16 v0, 0x1f4

    .line 470
    .local v0, "DELAY_TIME":J
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->openKeyboardTimer:Ljava/util/Timer;

    .line 472
    iget-object v2, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->openKeyboardTimer:Ljava/util/Timer;

    new-instance v3, Lcom/aloys/formuler/vime/ContentInputActivity$4;

    invoke-direct {v3, p0}, Lcom/aloys/formuler/vime/ContentInputActivity$4;-><init>(Lcom/aloys/formuler/vime/ContentInputActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 482
    return-void
.end method

.method private processExtraData()V
    .locals 3

    .prologue
    .line 241
    invoke-static {}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->getInstance()Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    move-result-object v1

    iput-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mVImeClientControlService:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    .line 242
    iget-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mVImeClientControlService:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->setInputActivityTopStatus(Z)V

    .line 244
    invoke-direct {p0}, Lcom/aloys/formuler/vime/ContentInputActivity;->isInputStatusOnClient()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/aloys/formuler/vime/ContentInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 247
    .local v0, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/aloys/formuler/vime/ContentInputActivity;->initView()V

    .line 248
    invoke-direct {p0, v0}, Lcom/aloys/formuler/vime/ContentInputActivity;->initData(Landroid/content/Intent;)V

    .line 249
    invoke-direct {p0}, Lcom/aloys/formuler/vime/ContentInputActivity;->openKeyboard()V

    .line 250
    iget-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mVImeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/aloys/formuler/vime/ContentInputActivity;->registerVImeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 257
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 254
    :cond_0
    const-string v1, "Create fail, to finish activity."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/aloys/formuler/vime/ContentInputActivity;->finish()V

    goto :goto_0
.end method

.method private registerVImeReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 513
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 514
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "hiandroid.vime.endinput.stb"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 515
    const-string v1, "hiandroid.vime.endinput.phone"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0, p1, v0}, Lcom/aloys/formuler/vime/ContentInputActivity;->registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 518
    return-void
.end method

.method private sendText(Ljava/lang/String;II)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 613
    iget v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mSendTextSeq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mSendTextSeq:I

    .line 614
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mVimeClientTransfer:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;

    iget v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mSendTextSeq:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->sendText(ILjava/lang/String;II)Lcom/hisilicon/multiscreen/protocol/message/Action;

    .line 615
    return-void
.end method

.method private sendTextDelay(Ljava/lang/String;IIJ)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "delayMillis"    # J

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/aloys/formuler/vime/ContentInputActivity;->clearMessages()V

    .line 554
    iget-object v2, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->myHandler:Lcom/aloys/formuler/vime/ContentInputActivity$SyncTextHandler;

    invoke-virtual {v2}, Lcom/aloys/formuler/vime/ContentInputActivity$SyncTextHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 555
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x101

    iput v2, v1, Landroid/os/Message;->what:I

    .line 556
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 557
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "MSG_KEY_TEXT"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v2, "MSG_START_SELECTION"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 559
    const-string v2, "MSG_END_SELECTION"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 560
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 561
    iget-object v2, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->myHandler:Lcom/aloys/formuler/vime/ContentInputActivity$SyncTextHandler;

    invoke-virtual {v2, v1, p4, p5}, Lcom/aloys/formuler/vime/ContentInputActivity$SyncTextHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 562
    return-void
.end method

.method private unregisterVImeReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 527
    invoke-virtual {p0, p1}, Lcom/aloys/formuler/vime/ContentInputActivity;->unregisterBroadcastReceiver(Landroid/content/BroadcastReceiver;)V

    .line 528
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 220
    const-string v0, "on create"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 222
    invoke-super {p0, p1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 223
    invoke-direct {p0}, Lcom/aloys/formuler/vime/ContentInputActivity;->processExtraData()V

    .line 224
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 311
    const-string v0, "on destroy."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 312
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onDestroy()V

    .line 313
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 229
    const-string v0, "onNewIntent"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 230
    invoke-super {p0, p1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/aloys/formuler/vime/ContentInputActivity;->setIntent(Landroid/content/Intent;)V

    .line 233
    invoke-direct {p0}, Lcom/aloys/formuler/vime/ContentInputActivity;->processExtraData()V

    .line 234
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 288
    const-string v0, "on pause."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 289
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onPause()V

    .line 291
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mVImeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/aloys/formuler/vime/ContentInputActivity;->unregisterVImeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 292
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mEndInputType:Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    invoke-direct {p0, v0}, Lcom/aloys/formuler/vime/ContentInputActivity;->finishContentInput(Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;)V

    .line 293
    invoke-direct {p0}, Lcom/aloys/formuler/vime/ContentInputActivity;->deinitHandler()V

    .line 294
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mVImeClientControlService:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mVImeClientControlService:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->setInputActivityTopStatus(Z)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mVImeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lcom/aloys/formuler/vime/ContentInputActivity;->unregisterVImeReceiver(Landroid/content/BroadcastReceiver;)V

    .line 299
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 262
    const-string v0, "on Restart"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 263
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onRestart()V

    .line 265
    iget-object v0, p0, Lcom/aloys/formuler/vime/ContentInputActivity;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/aloys/formuler/vime/ContentInputActivity;->finish()V

    .line 269
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 281
    const-string v0, "on Resume."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 282
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onResume()V

    .line 283
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 274
    const-string v0, "onStart."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 275
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onStart()V

    .line 276
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 304
    const-string v0, "on stop."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 305
    invoke-super {p0}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->onStop()V

    .line 306
    return-void
.end method
