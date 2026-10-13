.class public Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;
.super Ljava/lang/Object;
.source "VImeClientTransfer.java"


# static fields
.field private static final HTTP_REQUEST_TIMEOUT:I = 0x7d0

.field private static mVImeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

.field private static mVImeClientTransfer:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;


# instance fields
.field private mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

.field private mSaxVirtualIMEClient:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->mVImeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    .line 43
    sput-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->mVImeClientTransfer:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;

    return-void
.end method

.method private constructor <init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 4
    .param p1, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

    .line 33
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->mSaxVirtualIMEClient:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    .line 73
    new-instance v0, Lcom/hisilicon/multiscreen/http/HiHttpClient;

    .line 74
    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getDeviceIP()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HI_UPNP_VAR_VIMEDataServerURI"

    invoke-virtual {p1, v2}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getService(Ljava/lang/String;)Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    move-result-object v2

    .line 75
    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->getServicePort()I

    move-result v2

    const/16 v3, 0x7d0

    invoke-direct {v0, v1, v2, v3}, Lcom/hisilicon/multiscreen/http/HiHttpClient;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

    .line 76
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->mSaxVirtualIMEClient:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    .line 77
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->getInstance()Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->mVImeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    .line 78
    return-void
.end method

.method private getEndInputAction(I)Lcom/hisilicon/multiscreen/protocol/message/Action;
    .locals 4
    .param p1, "imeOption"    # I

    .prologue
    .line 186
    new-instance v2, Lcom/hisilicon/multiscreen/protocol/message/Action;

    invoke-direct {v2}, Lcom/hisilicon/multiscreen/protocol/message/Action;-><init>()V

    .line 187
    .local v2, "endInput_message":Lcom/hisilicon/multiscreen/protocol/message/Action;
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/message/Argument;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/message/Argument;-><init>()V

    .line 189
    .local v0, "argument":Lcom/hisilicon/multiscreen/protocol/message/Argument;
    const/16 v3, 0x5021

    invoke-virtual {v2, v3}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setId(I)V

    .line 190
    const-string v3, "endInputFromPhone"

    invoke-virtual {v2, v3}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setName(Ljava/lang/String;)V

    .line 191
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-direct {v1}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>()V

    .line 192
    .local v1, "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    const-string v3, "imeOptions"

    invoke-virtual {v1, v3}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setKey(Ljava/lang/String;)V

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setValue(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->addArgumentValue(Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;)V

    .line 196
    invoke-virtual {v2, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->addArgument(Lcom/hisilicon/multiscreen/protocol/message/Argument;)V

    .line 197
    const-string v3, "yes"

    invoke-virtual {v2, v3}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseFlag(Ljava/lang/String;)V

    .line 198
    const/16 v3, 0x5022

    invoke-virtual {v2, v3}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseId(I)V

    .line 200
    return-object v2
.end method

.method public static getInstance(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;
    .locals 3
    .param p0, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    .line 53
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->mVImeClientTransfer:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;

    invoke-direct {v0, p0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;-><init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->mVImeClientTransfer:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;

    .line 64
    :goto_0
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->mVImeClientTransfer:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;

    return-object v0

    .line 59
    :cond_0
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->mVImeClientTransfer:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getDeviceIP()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HI_UPNP_VAR_VIMEDataServerURI"

    .line 60
    invoke-virtual {p0, v2}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getService(Ljava/lang/String;)Lcom/hisilicon/multiscreen/protocol/ServiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/protocol/ServiceInfo;->getServicePort()I

    move-result v2

    .line 59
    invoke-direct {v0, v1, v2}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->resetHttpClient(Ljava/lang/String;I)V

    .line 61
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->getInstance()Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->mVImeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    goto :goto_0
.end method

.method private resetHttpClient(Ljava/lang/String;I)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

    invoke-virtual {v0, p1}, Lcom/hisilicon/multiscreen/http/HiHttpClient;->setHostIp(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

    invoke-virtual {v0, p2}, Lcom/hisilicon/multiscreen/http/HiHttpClient;->setPort(I)V

    .line 89
    return-void
.end method


# virtual methods
.method public endInput(I)Lcom/hisilicon/multiscreen/protocol/message/Action;
    .locals 6
    .param p1, "imeOptionIndex"    # I

    .prologue
    const/4 v5, 0x0

    .line 155
    const/4 v2, 0x0

    .line 157
    .local v2, "str":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->getEndInputAction(I)Lcom/hisilicon/multiscreen/protocol/message/Action;

    move-result-object v1

    .line 159
    .local v1, "endInput_message":Lcom/hisilicon/multiscreen/protocol/message/Action;
    sget-object v3, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->mVImeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    sget-object v4, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->END_INPUT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    invoke-virtual {v3, v4}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->updateStatus(Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 163
    :try_start_0
    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->mSaxVirtualIMEClient:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    invoke-virtual {v3, v1}, Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;->serialize(Lcom/hisilicon/multiscreen/protocol/message/Action;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 173
    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

    invoke-virtual {v3, v2}, Lcom/hisilicon/multiscreen/http/HiHttpClient;->sendRequest(Ljava/lang/String;)Lcom/hisilicon/multiscreen/http/HiHttpResponse;

    .line 175
    :goto_0
    return-object v5

    .line 165
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "parse input stream error"

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendText(ILjava/lang/String;II)Lcom/hisilicon/multiscreen/protocol/message/Action;
    .locals 10
    .param p1, "seq"    # I
    .param p2, "curText"    # Ljava/lang/String;
    .param p3, "startSelection"    # I
    .param p4, "endSelection"    # I

    .prologue
    const/4 v9, 0x0

    .line 99
    const/4 v6, 0x0

    .line 100
    .local v6, "str":Ljava/lang/String;
    new-instance v4, Lcom/hisilicon/multiscreen/protocol/message/Argument;

    invoke-direct {v4}, Lcom/hisilicon/multiscreen/protocol/message/Argument;-><init>()V

    .line 102
    .local v4, "argument":Lcom/hisilicon/multiscreen/protocol/message/Argument;
    new-instance v7, Lcom/hisilicon/multiscreen/protocol/message/Action;

    invoke-direct {v7}, Lcom/hisilicon/multiscreen/protocol/message/Action;-><init>()V

    .line 104
    .local v7, "textMessage":Lcom/hisilicon/multiscreen/protocol/message/Action;
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-direct {v1}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>()V

    .line 105
    .local v1, "argSeq":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    const-string v8, "sequence"

    invoke-virtual {v1, v8}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setKey(Ljava/lang/String;)V

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setValue(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v4, v1}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->addArgumentValue(Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;)V

    .line 109
    new-instance v3, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-direct {v3}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>()V

    .line 110
    .local v3, "argText":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    const-string v8, "srcText"

    invoke-virtual {v3, v8}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setKey(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v3, p2}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setValue(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v4, v3}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->addArgumentValue(Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;)V

    .line 114
    new-instance v2, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-direct {v2}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>()V

    .line 115
    .local v2, "argStartSelection":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    const-string v8, "srcStartSelection"

    invoke-virtual {v2, v8}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setKey(Ljava/lang/String;)V

    .line 116
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setValue(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v4, v2}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->addArgumentValue(Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;)V

    .line 119
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>()V

    .line 120
    .local v0, "argEndSelection":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    const-string v8, "srcEndSelection"

    invoke-virtual {v0, v8}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setKey(Ljava/lang/String;)V

    .line 121
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->setValue(Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v4, v0}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->addArgumentValue(Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;)V

    .line 124
    const/16 v8, 0x5011

    invoke-virtual {v7, v8}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setId(I)V

    .line 125
    const-string v8, "sendText"

    invoke-virtual {v7, v8}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setName(Ljava/lang/String;)V

    .line 126
    const-string v8, "yes"

    invoke-virtual {v7, v8}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseFlag(Ljava/lang/String;)V

    .line 127
    const/16 v8, 0x5012

    invoke-virtual {v7, v8}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseId(I)V

    .line 128
    invoke-virtual {v7, v4}, Lcom/hisilicon/multiscreen/protocol/message/Action;->addArgument(Lcom/hisilicon/multiscreen/protocol/message/Argument;)V

    .line 132
    :try_start_0
    iget-object v8, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->mSaxVirtualIMEClient:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    invoke-virtual {v8, v7}, Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;->serialize(Lcom/hisilicon/multiscreen/protocol/message/Action;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 142
    iget-object v8, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientTransfer;->mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

    invoke-virtual {v8, v6}, Lcom/hisilicon/multiscreen/http/HiHttpClient;->sendRequest(Ljava/lang/String;)Lcom/hisilicon/multiscreen/http/HiHttpResponse;

    .line 144
    :goto_0
    return-object v9

    .line 134
    :catch_0
    move-exception v5

    .line 136
    .local v5, "e":Ljava/lang/Exception;
    const-string v8, "parse string error in sending text."

    invoke-static {v8}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
