.class public Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;
.super Ljava/lang/Object;
.source "VImeClientController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;
    }
.end annotation


# static fields
.field private static final CHECK_VIME_THREAD_NAME:Ljava/lang/String; = "CheckVimeThread"

.field private static final HTTP_REQUEST_TIMEOUT:I = 0x7d0

.field public static final VIME_CHECK_PERIOD:J = 0x3e8L

.field private static mVImeClientController:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

.field private static mVImeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;


# instance fields
.field private mCheckVImeThread:Ljava/lang/Thread;

.field private mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

.field private mHiHttpMsglistener:Lcom/hisilicon/multiscreen/http/HiHttpRecvMsgListener;

.field private mHttpServer:Lcom/hisilicon/multiscreen/http/HiHttpServer;

.field private mIsRunning:Z

.field private mSaxXmlUtil:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

.field private mVImeActivityHandler:Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    sput-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeClientController:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    .line 68
    sput-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    return-void
.end method

.method constructor <init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 1
    .param p1, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mSaxXmlUtil:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    .line 73
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

    .line 78
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mHttpServer:Lcom/hisilicon/multiscreen/http/HiHttpServer;

    .line 83
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeActivityHandler:Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;

    .line 88
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mCheckVImeThread:Ljava/lang/Thread;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mIsRunning:Z

    .line 394
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$1;

    invoke-direct {v0, p0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$1;-><init>(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mHiHttpMsglistener:Lcom/hisilicon/multiscreen/http/HiHttpRecvMsgListener;

    .line 122
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->initHttpClient(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    .line 123
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mSaxXmlUtil:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    .line 124
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->getInstance()Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;[B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;
    .param p1, "x1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->vimeMessageHandle([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$202(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->sendCheckMessage()Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    return-object v0
.end method

.method static synthetic access$500(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;)Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeActivityHandler:Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;)V
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->stopHttpServer()V

    return-void
.end method

.method private getDisableVImeAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;
    .locals 1
    .param p1, "action"    # Lcom/hisilicon/multiscreen/protocol/message/Action;

    .prologue
    .line 305
    const/16 v0, 0x1111

    invoke-virtual {p1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setId(I)V

    .line 306
    const-string v0, "disableVirtualIME"

    invoke-virtual {p1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setName(Ljava/lang/String;)V

    .line 307
    const-string v0, "yes"

    invoke-virtual {p1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseFlag(Ljava/lang/String;)V

    .line 308
    const/16 v0, 0x1112

    invoke-virtual {p1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseId(I)V

    .line 310
    return-object p1
.end method

.method private getEnableVImeAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;
    .locals 1
    .param p1, "action"    # Lcom/hisilicon/multiscreen/protocol/message/Action;

    .prologue
    .line 289
    const/16 v0, 0x1101

    invoke-virtual {p1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setId(I)V

    .line 290
    const-string v0, "enableVirtualIME"

    invoke-virtual {p1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setName(Ljava/lang/String;)V

    .line 291
    const-string v0, "yes"

    invoke-virtual {p1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseFlag(Ljava/lang/String;)V

    .line 292
    const/16 v0, 0x1102

    invoke-virtual {p1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseId(I)V

    .line 294
    return-object p1
.end method

.method public static getInstance(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;
    .locals 2
    .param p0, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    .line 102
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeClientController:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    invoke-direct {v0, p0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;-><init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeClientController:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    .line 113
    :goto_0
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeClientController:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    return-object v0

    .line 108
    :cond_0
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeClientController:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getDeviceIP()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->setHostIp(Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeClientController:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeClientController:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    .line 110
    invoke-direct {v1, p0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->getVimeServerControlPort(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)I

    move-result v1

    .line 109
    invoke-direct {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->setHostPort(I)V

    .line 111
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->getInstance()Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    goto :goto_0
.end method

.method private getVimeServerControlPort(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)I
    .locals 3
    .param p1, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    .line 349
    const-string v1, "2016"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 351
    .local v0, "port":I
    if-eqz p1, :cond_0

    const-string v1, "HI_UPNP_VAR_VIMEControlServerURI"

    .line 352
    invoke-virtual {p1, v1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getService(Ljava/lang/String;)Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 354
    const-string v1, "HI_UPNP_VAR_VIMEControlServerURI"

    invoke-virtual {p1, v1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getService(Ljava/lang/String;)Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->getServicePort()I

    move-result v0

    .line 362
    :goto_0
    return v0

    .line 358
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vime server control service in deviceInfo is null, and init http client by default port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleActionAndUpdateStateMachine(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    .locals 2
    .param p1, "action"    # Lcom/hisilicon/multiscreen/protocol/message/Action;

    .prologue
    .line 913
    if-nez p1, :cond_0

    .line 915
    const/4 v1, 0x0

    .line 964
    :goto_0
    return-object v1

    .line 921
    :cond_0
    const/4 v0, 0x0

    .line 922
    .local v0, "stateDriverMsg":Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;
    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 959
    const-string v1, "Action id is null"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 964
    :goto_1
    sget-object v1, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    invoke-virtual {v1, v0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->updateStatus(Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    move-result-object v1

    goto :goto_0

    .line 926
    :sswitch_0
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->OPEN_VIME:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    .line 927
    goto :goto_1

    .line 934
    :sswitch_1
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CLOSE_VIME:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    .line 935
    const-string v1, "receive action vime ret disable"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    goto :goto_1

    .line 941
    :sswitch_2
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CLOSE_VIME:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    .line 942
    goto :goto_1

    .line 947
    :sswitch_3
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CALL_INPUT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    .line 948
    goto :goto_1

    .line 953
    :sswitch_4
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->END_INPUT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    .line 954
    goto :goto_1

    .line 922
    :sswitch_data_0
    .sparse-switch
        0x1102 -> :sswitch_0
        0x1111 -> :sswitch_2
        0x1112 -> :sswitch_1
        0x5001 -> :sswitch_3
        0x5031 -> :sswitch_4
    .end sparse-switch
.end method

.method private initHttpClient(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 4
    .param p1, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->getVimeServerControlPort(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)I

    move-result v0

    .line 320
    .local v0, "port":I
    new-instance v1, Lcom/hisilicon/multiscreen/http/HiHttpClient;

    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getDeviceIP()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-direct {v1, v2, v0, v3}, Lcom/hisilicon/multiscreen/http/HiHttpClient;-><init>(Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

    .line 321
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/http/HiHttpClient;->debugOff()V

    .line 322
    return-void
.end method

.method private sendCheckMessage()Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    .locals 7

    .prologue
    const/16 v6, 0x1122

    .line 803
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-direct {v1}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>()V

    .line 804
    .local v1, "argValueStatus":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    new-instance v2, Lcom/hisilicon/multiscreen/protocol/message/Argument;

    invoke-direct {v2}, Lcom/hisilicon/multiscreen/protocol/message/Argument;-><init>()V

    .line 805
    .local v2, "argument":Lcom/hisilicon/multiscreen/protocol/message/Argument;
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/message/Action;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;-><init>()V

    .line 806
    .local v0, "actionMsg":Lcom/hisilicon/multiscreen/protocol/message/Action;
    const/4 v3, 0x0

    .line 808
    .local v3, "responseAction":Lcom/hisilicon/multiscreen/protocol/message/Action;
    const-string v5, "status"

    invoke-virtual {v1, v5}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setKey(Ljava/lang/String;)V

    .line 809
    sget-object v5, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    invoke-virtual {v5}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->getStatusIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setValue(Ljava/lang/Object;)V

    .line 810
    invoke-virtual {v2, v1}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->addArgumentValue(Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;)V

    .line 812
    const/16 v5, 0x1121

    invoke-virtual {v0, v5}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setId(I)V

    .line 813
    const-string v5, "checkStatus"

    invoke-virtual {v0, v5}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setName(Ljava/lang/String;)V

    .line 814
    const-string v5, "yes"

    invoke-virtual {v0, v5}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseFlag(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v0, v6}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseId(I)V

    .line 816
    invoke-virtual {v0, v2}, Lcom/hisilicon/multiscreen/protocol/message/Action;->addArgument(Lcom/hisilicon/multiscreen/protocol/message/Argument;)V

    .line 818
    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->sendRequestAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;

    move-result-object v3

    .line 820
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getId()I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 822
    const/4 v5, 0x0

    .line 823
    invoke-virtual {v3, v5}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getArgument(I)Lcom/hisilicon/multiscreen/protocol/message/Argument;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->getArgumentValue(I)Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getVaule()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 824
    .local v4, "serverState":I
    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->getStatus(I)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    move-result-object v5

    .line 829
    .end local v4    # "serverState":I
    :goto_0
    return-object v5

    .line 828
    :cond_0
    const-string v5, "check response error."

    invoke-static {v5}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 829
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private sendRequestAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;
    .locals 7
    .param p1, "actionMsg"    # Lcom/hisilicon/multiscreen/protocol/message/Action;

    .prologue
    const/4 v5, 0x0

    .line 841
    const-string v4, ""

    .line 842
    .local v4, "str":Ljava/lang/String;
    const/4 v2, 0x0

    .line 845
    .local v2, "responseAction":Lcom/hisilicon/multiscreen/protocol/message/Action;
    :try_start_0
    iget-object v6, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mSaxXmlUtil:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    invoke-virtual {v6, p1}, Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;->serialize(Lcom/hisilicon/multiscreen/protocol/message/Action;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 854
    iget-object v6, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

    invoke-virtual {v6, v4}, Lcom/hisilicon/multiscreen/http/HiHttpClient;->sendRequest(Ljava/lang/String;)Lcom/hisilicon/multiscreen/http/HiHttpResponse;

    move-result-object v1

    .line 855
    .local v1, "httpResponse":Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    .line 858
    .local v3, "responseContent":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 860
    :cond_0
    const-string v6, "action response is null."

    invoke-static {v6}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 901
    .end local v1    # "httpResponse":Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    .end local v3    # "responseContent":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 847
    :catch_0
    move-exception v0

    .line 849
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "serialize exception"

    invoke-static {v6}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 866
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "httpResponse":Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    .restart local v3    # "responseContent":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mSaxXmlUtil:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    const-string v6, "UTF-8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;->parse([B)Lcom/hisilicon/multiscreen/protocol/message/Action;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v2

    :goto_1
    move-object v5, v2

    .line 901
    goto :goto_0

    .line 868
    :catch_1
    move-exception v0

    .line 870
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v2, 0x0

    .line 871
    const-string v5, "unsupported encoding exception."

    invoke-static {v5}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 873
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 875
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const/4 v2, 0x0

    .line 876
    const-string v5, "parse configuration exception."

    invoke-static {v5}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 878
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v0

    .line 880
    .local v0, "e":Lorg/xml/sax/SAXException;
    const/4 v2, 0x0

    .line 881
    const-string v5, "SAX exception."

    invoke-static {v5}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 883
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_4
    move-exception v0

    .line 885
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 886
    const-string v5, "IO exception."

    invoke-static {v5}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setHostIp(Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

    invoke-virtual {v0, p1}, Lcom/hisilicon/multiscreen/http/HiHttpClient;->setHostIp(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method private setHostPort(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

    invoke-virtual {v0, p1}, Lcom/hisilicon/multiscreen/http/HiHttpClient;->setPort(I)V

    .line 340
    return-void
.end method

.method private static setInstance(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;)V
    .locals 0
    .param p0, "control"    # Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    .prologue
    .line 278
    sput-object p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeClientController:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    .line 279
    return-void
.end method

.method private startCheckThread()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 572
    iput-boolean v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mIsRunning:Z

    .line 575
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CHECK_OK:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->updateStatus(Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 577
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mCheckVImeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mCheckVImeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 579
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;-><init>(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mCheckVImeThread:Ljava/lang/Thread;

    .line 580
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mCheckVImeThread:Ljava/lang/Thread;

    const-string v1, "CheckVimeThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mCheckVImeThread:Ljava/lang/Thread;

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 582
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mCheckVImeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 584
    :cond_1
    return-void
.end method

.method private startHttpServer()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mHttpServer:Lcom/hisilicon/multiscreen/http/HiHttpServer;

    if-nez v0, :cond_0

    .line 373
    const-string v0, "Start http server."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 374
    new-instance v0, Lcom/hisilicon/multiscreen/http/HiHttpServer;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/http/HiHttpServer;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mHttpServer:Lcom/hisilicon/multiscreen/http/HiHttpServer;

    .line 375
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mHttpServer:Lcom/hisilicon/multiscreen/http/HiHttpServer;

    const/16 v1, 0x7e0

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/http/HiHttpServer;->setServerPort(I)V

    .line 376
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mHttpServer:Lcom/hisilicon/multiscreen/http/HiHttpServer;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mHiHttpMsglistener:Lcom/hisilicon/multiscreen/http/HiHttpRecvMsgListener;

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/http/HiHttpServer;->setHttpRecvMsgListener(Lcom/hisilicon/multiscreen/http/HiHttpRecvMsgListener;)V

    .line 377
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mHttpServer:Lcom/hisilicon/multiscreen/http/HiHttpServer;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/http/HiHttpServer;->startServer()V

    .line 379
    :cond_0
    return-void
.end method

.method private stopCheckThread()V
    .locals 4

    .prologue
    .line 592
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mIsRunning:Z

    .line 593
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mCheckVImeThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mCheckVImeThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mCheckVImeThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mCheckVImeThread:Ljava/lang/Thread;

    .line 605
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "InterruptedException when StopCheckVime"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopHttpServer()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mHttpServer:Lcom/hisilicon/multiscreen/http/HiHttpServer;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mHttpServer:Lcom/hisilicon/multiscreen/http/HiHttpServer;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/http/HiHttpServer;->stopServer()V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mHttpServer:Lcom/hisilicon/multiscreen/http/HiHttpServer;

    .line 392
    :cond_0
    return-void
.end method

.method private vimeMessageHandle([B)Ljava/lang/String;
    .locals 11
    .param p1, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 430
    const/4 v6, 0x0

    .line 431
    .local v6, "responseString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 432
    .local v4, "receiveAction":Lcom/hisilicon/multiscreen/protocol/message/Action;
    const/4 v5, 0x0

    .line 433
    .local v5, "responseAction":Lcom/hisilicon/multiscreen/protocol/message/Action;
    const/4 v2, 0x0

    .line 436
    .local v2, "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    iget-object v7, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mSaxXmlUtil:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    invoke-virtual {v7, p1}, Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;->parse([B)Lcom/hisilicon/multiscreen/protocol/message/Action;

    move-result-object v4

    .line 438
    if-nez v4, :cond_0

    .line 440
    const-string v7, "receiveAction is null."

    invoke-static {v7}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 441
    const/4 v7, 0x0

    .line 563
    :goto_0
    return-object v7

    .line 445
    :cond_0
    new-instance v5, Lcom/hisilicon/multiscreen/protocol/message/Action;

    .end local v5    # "responseAction":Lcom/hisilicon/multiscreen/protocol/message/Action;
    invoke-direct {v5}, Lcom/hisilicon/multiscreen/protocol/message/Action;-><init>()V

    .line 447
    .restart local v5    # "responseAction":Lcom/hisilicon/multiscreen/protocol/message/Action;
    invoke-virtual {v4}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 540
    invoke-virtual {v5, v9}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setId(I)V

    .line 541
    const-string v7, "defaultResponse"

    invoke-virtual {v5, v7}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setName(Ljava/lang/String;)V

    .line 542
    const-string v7, "no"

    invoke-virtual {v5, v7}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseFlag(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v5, v9}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseId(I)V

    .line 550
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receive action name is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 555
    :try_start_0
    iget-object v7, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mSaxXmlUtil:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    invoke-virtual {v7, v5}, Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;->serialize(Lcom/hisilicon/multiscreen/protocol/message/Action;)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_2
    move-object v7, v6

    .line 563
    goto :goto_0

    .line 455
    :sswitch_0
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/Argument;

    invoke-direct {v1}, Lcom/hisilicon/multiscreen/protocol/message/Argument;-><init>()V

    .line 457
    .local v1, "argument":Lcom/hisilicon/multiscreen/protocol/message/Argument;
    const/16 v7, 0x5002

    invoke-virtual {v5, v7}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setId(I)V

    .line 458
    const-string v7, "retCallInputModule"

    invoke-virtual {v5, v7}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setName(Ljava/lang/String;)V

    .line 460
    invoke-direct {p0, v4}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->handleActionAndUpdateStateMachine(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    move-result-object v0

    .line 461
    .local v0, "StatusNow":Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    sget-object v7, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->INPUT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    if-ne v0, v7, :cond_1

    .line 463
    iget-object v7, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeActivityHandler:Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;

    invoke-interface {v7, v4}, Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;->callInput(Lcom/hisilicon/multiscreen/protocol/message/Action;)V

    .line 464
    new-instance v2, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    .end local v2    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    const-string v7, "result"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    .restart local v2    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    :goto_3
    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->addArgumentValue(Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;)V

    .line 474
    invoke-virtual {v5, v1}, Lcom/hisilicon/multiscreen/protocol/message/Action;->addArgument(Lcom/hisilicon/multiscreen/protocol/message/Argument;)V

    .line 475
    const-string v7, "no"

    invoke-virtual {v5, v7}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseFlag(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v5, v9}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseId(I)V

    goto :goto_1

    .line 468
    :cond_1
    new-instance v2, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    .end local v2    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    const-string v7, "result"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 469
    .restart local v2    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callInput failed! status of VIme statemachine is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 470
    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 469
    invoke-static {v7}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 483
    .end local v0    # "StatusNow":Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    .end local v1    # "argument":Lcom/hisilicon/multiscreen/protocol/message/Argument;
    :sswitch_1
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/Argument;

    invoke-direct {v1}, Lcom/hisilicon/multiscreen/protocol/message/Argument;-><init>()V

    .line 484
    .restart local v1    # "argument":Lcom/hisilicon/multiscreen/protocol/message/Argument;
    const/16 v7, 0x5032

    invoke-virtual {v5, v7}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setId(I)V

    .line 485
    const-string v7, "retEndInputFromSTB"

    invoke-virtual {v5, v7}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setName(Ljava/lang/String;)V

    .line 487
    invoke-direct {p0, v4}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->handleActionAndUpdateStateMachine(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    move-result-object v7

    sget-object v8, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->READY_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    if-ne v7, v8, :cond_2

    .line 491
    iget-object v7, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeActivityHandler:Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;

    invoke-interface {v7}, Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;->endInputByServer()V

    .line 492
    new-instance v2, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    .end local v2    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    const-string v7, "result"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 500
    .restart local v2    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    :goto_4
    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->addArgumentValue(Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;)V

    .line 501
    invoke-virtual {v5, v1}, Lcom/hisilicon/multiscreen/protocol/message/Action;->addArgument(Lcom/hisilicon/multiscreen/protocol/message/Argument;)V

    .line 502
    const-string v7, "no"

    invoke-virtual {v5, v7}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseFlag(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v5, v9}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseId(I)V

    goto/16 :goto_1

    .line 497
    :cond_2
    new-instance v2, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    .end local v2    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    const-string v7, "result"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .restart local v2    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    goto :goto_4

    .line 511
    .end local v1    # "argument":Lcom/hisilicon/multiscreen/protocol/message/Argument;
    :sswitch_2
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/Argument;

    invoke-direct {v1}, Lcom/hisilicon/multiscreen/protocol/message/Argument;-><init>()V

    .line 512
    .restart local v1    # "argument":Lcom/hisilicon/multiscreen/protocol/message/Argument;
    const/16 v7, 0x1112

    invoke-virtual {v5, v7}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setId(I)V

    .line 513
    const-string v7, "retDisableVirtualIME"

    invoke-virtual {v5, v7}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setName(Ljava/lang/String;)V

    .line 515
    invoke-direct {p0, v4}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->handleActionAndUpdateStateMachine(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    move-result-object v7

    sget-object v8, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->DEINIT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    if-ne v7, v8, :cond_3

    .line 517
    iget-object v7, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeActivityHandler:Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;

    invoke-interface {v7}, Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;->closeVimeSwitch()V

    .line 518
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->stopHttpServer()V

    .line 519
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->stopCheckThread()V

    .line 521
    new-instance v2, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    .end local v2    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    const-string v7, "result"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 530
    .restart local v2    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    :goto_5
    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->addArgumentValue(Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;)V

    .line 531
    invoke-virtual {v5, v1}, Lcom/hisilicon/multiscreen/protocol/message/Action;->addArgument(Lcom/hisilicon/multiscreen/protocol/message/Argument;)V

    .line 532
    const-string v7, "no"

    invoke-virtual {v5, v7}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseFlag(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v5, v9}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseId(I)V

    goto/16 :goto_1

    .line 526
    :cond_3
    const-string v7, "VIme can\'t be disable on client."

    invoke-static {v7}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 527
    new-instance v2, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    .end local v2    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    const-string v7, "result"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .restart local v2    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    goto :goto_5

    .line 557
    .end local v1    # "argument":Lcom/hisilicon/multiscreen/protocol/message/Argument;
    :catch_0
    move-exception v3

    .line 559
    .local v3, "e":Ljavax/xml/transform/TransformerConfigurationException;
    const/4 v6, 0x0

    .line 560
    const-string v7, "transformer configuration exception."

    invoke-static {v7}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 447
    nop

    :sswitch_data_0
    .sparse-switch
        0x1111 -> :sswitch_2
        0x5001 -> :sswitch_0
        0x5031 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->stopHttpServer()V

    .line 153
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->stopCheckThread()V

    .line 155
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->deInitVimeClient()V

    .line 160
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->setInstance(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;)V

    .line 161
    return-void
.end method

.method public disableVIme()Z
    .locals 5

    .prologue
    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, "isSuccess":Z
    new-instance v3, Lcom/hisilicon/multiscreen/protocol/message/Action;

    invoke-direct {v3}, Lcom/hisilicon/multiscreen/protocol/message/Action;-><init>()V

    invoke-direct {p0, v3}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->getDisableVImeAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;

    move-result-object v0

    .line 238
    .local v0, "disableAction":Lcom/hisilicon/multiscreen/protocol/message/Action;
    const/4 v2, 0x0

    .line 241
    .local v2, "responseAction":Lcom/hisilicon/multiscreen/protocol/message/Action;
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->stopHttpServer()V

    .line 242
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->stopCheckThread()V

    .line 246
    sget-object v3, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    sget-object v4, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CLOSE_VIME:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    invoke-virtual {v3, v4}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->updateStatus(Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 248
    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->sendRequestAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;

    move-result-object v2

    .line 250
    if-nez v2, :cond_1

    .line 252
    const-string v3, "disable VIme responseAction is null."

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 253
    const/4 v1, 0x0

    .line 269
    :cond_0
    :goto_0
    return v1

    .line 255
    :cond_1
    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getId()I

    move-result v3

    const/16 v4, 0x1112

    if-ne v3, v4, :cond_0

    .line 257
    sget-object v3, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    invoke-virtual {v3}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->getStatus()Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    move-result-object v3

    sget-object v4, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->DEINIT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    if-ne v3, v4, :cond_2

    .line 259
    const-string v3, "disable VIme success."

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 260
    const/4 v1, 0x1

    goto :goto_0

    .line 264
    :cond_2
    const-string v3, "status is not deinit after disable vime!"

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 265
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableVIme()Z
    .locals 6

    .prologue
    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, "isSuccess":Z
    const/4 v3, 0x0

    .line 190
    .local v3, "responseAction":Lcom/hisilicon/multiscreen/protocol/message/Action;
    new-instance v4, Lcom/hisilicon/multiscreen/protocol/message/Action;

    invoke-direct {v4}, Lcom/hisilicon/multiscreen/protocol/message/Action;-><init>()V

    invoke-direct {p0, v4}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->getEnableVImeAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;

    move-result-object v0

    .line 192
    .local v0, "actionMsg":Lcom/hisilicon/multiscreen/protocol/message/Action;
    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->sendRequestAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;

    move-result-object v3

    .line 194
    if-nez v3, :cond_1

    .line 196
    const-string v4, "enable VIme responseAction is null."

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->v(Ljava/lang/String;)V

    .line 197
    const/4 v1, 0x0

    .line 226
    :cond_0
    :goto_0
    return v1

    .line 199
    :cond_1
    invoke-virtual {v3}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getId()I

    move-result v4

    const/16 v5, 0x1102

    if-ne v4, v5, :cond_0

    .line 202
    invoke-direct {p0, v3}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->handleActionAndUpdateStateMachine(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    move-result-object v2

    .line 206
    .local v2, "newState":Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    sget-object v4, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->DEINIT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    if-eq v2, v4, :cond_2

    .line 208
    iget-object v4, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeActivityHandler:Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;

    invoke-interface {v4}, Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;->openVimeSwitch()V

    .line 209
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->startCheckThread()V

    .line 210
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->startHttpServer()V

    .line 212
    const/4 v1, 0x1

    .line 213
    const-string v4, "Enable success on phone."

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_2
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->stopHttpServer()V

    .line 219
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->stopCheckThread()V

    .line 221
    const/4 v1, 0x0

    .line 222
    const-string v4, "Enable fail on phone."

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isInputStatusOnClient()Z
    .locals 2

    .prologue
    .line 170
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->getStatus()Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    move-result-object v0

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->INPUT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    if-ne v0, v1, :cond_0

    .line 172
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVImeEnable()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mIsRunning:Z

    return v0
.end method

.method public setVimeActivityHandler(Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->mVImeActivityHandler:Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;

    .line 134
    return-void
.end method
