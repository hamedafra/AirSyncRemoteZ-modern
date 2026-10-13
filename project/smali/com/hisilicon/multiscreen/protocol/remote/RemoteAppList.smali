.class public Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;
.super Ljava/lang/Object;
.source "RemoteAppList.java"


# static fields
.field private static final ENCODE_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final HTTP_REQUEST_TIMEOUT:I = 0xbb8

.field private static final STB_PUSH_SERVER_PORT:I = 0x22a3


# instance fields
.field public mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hisilicon/multiscreen/protocol/message/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

.field private mHostIp:Ljava/lang/String;

.field private mSaxXmlUtil:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;


# direct methods
.method public constructor <init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 4
    .param p1, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->mAppList:Ljava/util/ArrayList;

    .line 52
    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->mHostIp:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->mSaxXmlUtil:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    .line 71
    if-nez p1, :cond_0

    .line 73
    const-string v0, "device info is null in remote app list."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getDeviceIP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->mHostIp:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/hisilicon/multiscreen/http/HiHttpClient;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->mHostIp:Ljava/lang/String;

    const/16 v2, 0x22a3

    const/16 v3, 0xbb8

    invoke-direct {v0, v1, v2, v3}, Lcom/hisilicon/multiscreen/http/HiHttpClient;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

    .line 79
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->mSaxXmlUtil:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    goto :goto_0
.end method

.method private getLaunchAppAction(Lcom/hisilicon/multiscreen/protocol/message/Action;Ljava/lang/String;)Lcom/hisilicon/multiscreen/protocol/message/Action;
    .locals 3
    .param p1, "action"    # Lcom/hisilicon/multiscreen/protocol/message/Action;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/message/Argument;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/message/Argument;-><init>()V

    .line 171
    .local v0, "argument":Lcom/hisilicon/multiscreen/protocol/message/Argument;
    const/4 v1, 0x0

    .line 172
    .local v1, "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    .end local v1    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    const-string v2, "PackageName"

    invoke-direct {v1, v2, p2}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    .restart local v1    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->addArgumentValue(Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;)V

    .line 175
    const/16 v2, 0x3011

    invoke-virtual {p1, v2}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setId(I)V

    .line 176
    const-string v2, "launchAPP"

    invoke-virtual {p1, v2}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setName(Ljava/lang/String;)V

    .line 177
    const-string v2, "yes"

    invoke-virtual {p1, v2}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseFlag(Ljava/lang/String;)V

    .line 178
    const/16 v2, 0x3012

    invoke-virtual {p1, v2}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseId(I)V

    .line 179
    invoke-virtual {p1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->addArgument(Lcom/hisilicon/multiscreen/protocol/message/Argument;)V

    .line 181
    return-object p1
.end method

.method private getUpdateAppListAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;
    .locals 4
    .param p1, "action"    # Lcom/hisilicon/multiscreen/protocol/message/Action;

    .prologue
    .line 154
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/message/Argument;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/message/Argument;-><init>()V

    .line 155
    .local v0, "argument":Lcom/hisilicon/multiscreen/protocol/message/Argument;
    const/4 v1, 0x0

    .line 156
    .local v1, "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    .end local v1    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    const-string v2, "reserve"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    .restart local v1    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->addArgumentValue(Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;)V

    .line 159
    const/16 v2, 0x3001

    invoke-virtual {p1, v2}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setId(I)V

    .line 160
    const-string v2, "getAppList"

    invoke-virtual {p1, v2}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setName(Ljava/lang/String;)V

    .line 161
    const-string v2, "yes"

    invoke-virtual {p1, v2}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseFlag(Ljava/lang/String;)V

    .line 162
    const/16 v2, 0x3002

    invoke-virtual {p1, v2}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseId(I)V

    .line 163
    invoke-virtual {p1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->addArgument(Lcom/hisilicon/multiscreen/protocol/message/Argument;)V

    .line 165
    return-object p1
.end method

.method private sendRequestAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;
    .locals 10
    .param p1, "actionMsg"    # Lcom/hisilicon/multiscreen/protocol/message/Action;

    .prologue
    const/4 v7, 0x0

    .line 191
    const/4 v6, 0x0

    .line 192
    .local v6, "str":Ljava/lang/String;
    const/4 v3, 0x0

    .line 193
    .local v3, "responseAction":Lcom/hisilicon/multiscreen/protocol/message/Action;
    const/4 v4, 0x0

    .line 197
    .local v4, "responseContent":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->mSaxXmlUtil:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    invoke-virtual {v8, p1}, Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;->serialize(Lcom/hisilicon/multiscreen/protocol/message/Action;)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 210
    :goto_0
    iget-object v8, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

    invoke-virtual {v8, v6}, Lcom/hisilicon/multiscreen/http/HiHttpClient;->sendRequest(Ljava/lang/String;)Lcom/hisilicon/multiscreen/http/HiHttpResponse;

    move-result-object v2

    .line 214
    .local v2, "httpResponse":Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    :try_start_1
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->getMessage()[B

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v5, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .end local v4    # "responseContent":Ljava/lang/String;
    .local v5, "responseContent":Ljava/lang/String;
    move-object v4, v5

    .line 221
    .end local v5    # "responseContent":Ljava/lang/String;
    .restart local v4    # "responseContent":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 223
    :cond_0
    const-string v8, "action response is null."

    invoke-static {v8}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 252
    .end local v2    # "httpResponse":Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    :goto_2
    return-object v7

    .line 199
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljavax/xml/transform/TransformerConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 204
    .end local v0    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_1
    move-exception v0

    .line 206
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    .restart local v2    # "httpResponse":Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    :catch_2
    move-exception v1

    .line 218
    .local v1, "e1":Ljava/io/UnsupportedEncodingException;
    const-string v8, "Unsupported Encoding Exception."

    invoke-static {v8}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 229
    .end local v1    # "e1":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->mSaxXmlUtil:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    const-string v8, "UTF-8"

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;->parse([B)Lcom/hisilicon/multiscreen/protocol/message/Action;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v3

    :goto_3
    move-object v7, v3

    .line 252
    goto :goto_2

    .line 231
    :catch_3
    move-exception v0

    .line 233
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v3, 0x0

    .line 234
    const-string v7, "unsupported encoding exception."

    invoke-static {v7}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 236
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v0

    .line 238
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const/4 v3, 0x0

    .line 239
    const-string v7, "parse configuration exception."

    invoke-static {v7}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 241
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_5
    move-exception v0

    .line 243
    .local v0, "e":Lorg/xml/sax/SAXException;
    const/4 v3, 0x0

    .line 244
    const-string v7, "SAX exception."

    invoke-static {v7}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 246
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_6
    move-exception v0

    .line 248
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 249
    const-string v7, "IO exception."

    invoke-static {v7}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 90
    return-void
.end method

.method public launchApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "packagName"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/Action;

    invoke-direct {v1}, Lcom/hisilicon/multiscreen/protocol/message/Action;-><init>()V

    invoke-direct {p0, v1, p1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->getLaunchAppAction(Lcom/hisilicon/multiscreen/protocol/message/Action;Ljava/lang/String;)Lcom/hisilicon/multiscreen/protocol/message/Action;

    move-result-object v0

    .line 110
    .local v0, "updateAction":Lcom/hisilicon/multiscreen/protocol/message/Action;
    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->sendRequestAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;

    .line 111
    return-void
.end method

.method protected resetDevice(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 2
    .param p1, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getDeviceIP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->mHostIp:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->mHostIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/http/HiHttpClient;->setHostIp(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public updateAppList()V
    .locals 7

    .prologue
    .line 119
    new-instance v5, Lcom/hisilicon/multiscreen/protocol/message/Action;

    invoke-direct {v5}, Lcom/hisilicon/multiscreen/protocol/message/Action;-><init>()V

    invoke-direct {p0, v5}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->getUpdateAppListAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;

    move-result-object v4

    .line 120
    .local v4, "updateAction":Lcom/hisilicon/multiscreen/protocol/message/Action;
    const/4 v3, 0x0

    .line 121
    .local v3, "responseAction":Lcom/hisilicon/multiscreen/protocol/message/Action;
    const/4 v0, 0x0

    .line 122
    .local v0, "appInfo":Lcom/hisilicon/multiscreen/protocol/message/AppInfo;
    iget-object v5, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 124
    invoke-direct {p0, v4}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->sendRequestAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;

    move-result-object v3

    .line 126
    if-nez v3, :cond_1

    .line 128
    const-string v5, "response action is null."

    invoke-static {v5}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {v3}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getId()I

    move-result v5

    const/16 v6, 0x3002

    if-ne v5, v6, :cond_0

    .line 133
    invoke-virtual {v3}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getArgumentList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/multiscreen/protocol/message/Argument;

    .line 135
    .local v1, "arg":Lcom/hisilicon/multiscreen/protocol/message/Argument;
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;

    .end local v0    # "appInfo":Lcom/hisilicon/multiscreen/protocol/message/AppInfo;
    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;-><init>()V

    .line 136
    .restart local v0    # "appInfo":Lcom/hisilicon/multiscreen/protocol/message/AppInfo;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->getArgumentValue(I)Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getVaule()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->setAppName(Ljava/lang/String;)V

    .line 137
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->getArgumentValue(I)Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getVaule()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 138
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->getArgumentValue(I)Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getVaule()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->setPackageIndex(I)V

    .line 139
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->getArgumentValue(I)Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getVaule()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v2, v5

    check-cast v2, [B

    .line 140
    .local v2, "icon":[B
    invoke-virtual {v0, v2}, Lcom/hisilicon/multiscreen/protocol/message/AppInfo;->setPackageIcon([B)V

    .line 141
    iget-object v5, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteAppList;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
