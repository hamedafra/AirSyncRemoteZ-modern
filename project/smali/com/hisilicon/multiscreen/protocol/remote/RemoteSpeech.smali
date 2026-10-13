.class public Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;
.super Ljava/lang/Object;
.source "RemoteSpeech.java"


# static fields
.field private static final ENCODE_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final HTTP_REQUEST_TIMEOUT:I = 0xbb8

.field private static final STB_PUSH_SERVER_PORT:I = 0x22a3


# instance fields
.field private mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

.field private mHostIp:Ljava/lang/String;

.field private mSaxXmlUtil:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;


# direct methods
.method public constructor <init>(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 4
    .param p1, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->mHostIp:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->mSaxXmlUtil:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    .line 63
    if-nez p1, :cond_0

    .line 65
    const-string v0, "device info is null in remote app list."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getDeviceIP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->mHostIp:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/hisilicon/multiscreen/http/HiHttpClient;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->mHostIp:Ljava/lang/String;

    const/16 v2, 0x22a3

    const/16 v3, 0xbb8

    invoke-direct {v0, v1, v2, v3}, Lcom/hisilicon/multiscreen/http/HiHttpClient;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

    .line 71
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->mSaxXmlUtil:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    goto :goto_0
.end method

.method private getRecordAudioDataAction(Lcom/hisilicon/multiscreen/protocol/message/Action;[BI)Lcom/hisilicon/multiscreen/protocol/message/Action;
    .locals 5
    .param p1, "action"    # Lcom/hisilicon/multiscreen/protocol/message/Action;
    .param p2, "audiodate"    # [B
    .param p3, "seq"    # I

    .prologue
    .line 175
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/Argument;

    invoke-direct {v1}, Lcom/hisilicon/multiscreen/protocol/message/Argument;-><init>()V

    .line 176
    .local v1, "argument":Lcom/hisilicon/multiscreen/protocol/message/Argument;
    const/4 v2, 0x0

    .line 177
    .local v2, "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    new-instance v2, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    .end local v2    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    const-string v3, "Audio"

    invoke-direct {v2, v3, p2}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    .restart local v2    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->addArgumentValue(Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;)V

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "SeqArgValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    .end local v0    # "SeqArgValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    const-string v3, "Seq"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    .restart local v0    # "SeqArgValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    invoke-virtual {v1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->addArgumentValue(Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;)V

    .line 184
    const/16 v3, 0x4001

    invoke-virtual {p1, v3}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setId(I)V

    .line 185
    const-string v3, "sendAudioData"

    invoke-virtual {p1, v3}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setName(Ljava/lang/String;)V

    .line 186
    const-string v3, "yes"

    invoke-virtual {p1, v3}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseFlag(Ljava/lang/String;)V

    .line 187
    const/16 v3, 0x4002

    invoke-virtual {p1, v3}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseId(I)V

    .line 188
    invoke-virtual {p1, v1}, Lcom/hisilicon/multiscreen/protocol/message/Action;->addArgument(Lcom/hisilicon/multiscreen/protocol/message/Argument;)V

    .line 189
    return-object p1
.end method

.method private getSendErrorInfoAction(Lcom/hisilicon/multiscreen/protocol/message/Action;Ljava/lang/String;)Lcom/hisilicon/multiscreen/protocol/message/Action;
    .locals 3
    .param p1, "action"    # Lcom/hisilicon/multiscreen/protocol/message/Action;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/message/Argument;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/message/Argument;-><init>()V

    .line 161
    .local v0, "argument":Lcom/hisilicon/multiscreen/protocol/message/Argument;
    const/4 v1, 0x0

    .line 162
    .local v1, "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    .end local v1    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    const-string v2, "SpeechErrorInfo"

    invoke-direct {v1, v2, p2}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    .restart local v1    # "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->addArgumentValue(Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;)V

    .line 165
    const/16 v2, 0x4041

    invoke-virtual {p1, v2}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setId(I)V

    .line 166
    const-string v2, "sendSpeechErrorInfo"

    invoke-virtual {p1, v2}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setName(Ljava/lang/String;)V

    .line 167
    const-string v2, "yes"

    invoke-virtual {p1, v2}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseFlag(Ljava/lang/String;)V

    .line 168
    const/16 v2, 0x4042

    invoke-virtual {p1, v2}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseId(I)V

    .line 169
    invoke-virtual {p1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->addArgument(Lcom/hisilicon/multiscreen/protocol/message/Argument;)V

    .line 170
    return-object p1
.end method

.method private getSendSpeechInfoAction(Lcom/hisilicon/multiscreen/protocol/message/Action;Ljava/lang/String;I)Lcom/hisilicon/multiscreen/protocol/message/Action;
    .locals 5
    .param p1, "action"    # Lcom/hisilicon/multiscreen/protocol/message/Action;
    .param p2, "speechInfo"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 142
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/message/Argument;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/message/Argument;-><init>()V

    .line 144
    .local v0, "argument":Lcom/hisilicon/multiscreen/protocol/message/Argument;
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    const-string v3, "SpeechInfo"

    invoke-direct {v1, v3, p2}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    .local v1, "argumentValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->addArgumentValue(Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;)V

    .line 147
    new-instance v2, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    const-string v3, "ResultType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    .local v2, "typeArgValue":Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;
    invoke-virtual {v0, v2}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->addArgumentValue(Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;)V

    .line 150
    const/16 v3, 0x4001

    invoke-virtual {p1, v3}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setId(I)V

    .line 151
    const-string v3, "sendSpeechInfo"

    invoke-virtual {p1, v3}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setName(Ljava/lang/String;)V

    .line 152
    const-string v3, "yes"

    invoke-virtual {p1, v3}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseFlag(Ljava/lang/String;)V

    .line 153
    const/16 v3, 0x4002

    invoke-virtual {p1, v3}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseId(I)V

    .line 154
    invoke-virtual {p1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->addArgument(Lcom/hisilicon/multiscreen/protocol/message/Argument;)V

    .line 155
    return-object p1
.end method

.method private getStartSpeakAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;
    .locals 1
    .param p1, "action"    # Lcom/hisilicon/multiscreen/protocol/message/Action;

    .prologue
    .line 194
    const/16 v0, 0x4011

    invoke-virtual {p1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setId(I)V

    .line 195
    const-string v0, "StartSpeaking"

    invoke-virtual {p1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setName(Ljava/lang/String;)V

    .line 196
    const-string v0, "yes"

    invoke-virtual {p1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseFlag(Ljava/lang/String;)V

    .line 197
    const/16 v0, 0x4012

    invoke-virtual {p1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseId(I)V

    .line 198
    return-object p1
.end method

.method private getStopSpeakAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;
    .locals 1
    .param p1, "action"    # Lcom/hisilicon/multiscreen/protocol/message/Action;

    .prologue
    .line 203
    const/16 v0, 0x4021

    invoke-virtual {p1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setId(I)V

    .line 204
    const-string v0, "StopSpeaking"

    invoke-virtual {p1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setName(Ljava/lang/String;)V

    .line 205
    const-string v0, "yes"

    invoke-virtual {p1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseFlag(Ljava/lang/String;)V

    .line 206
    const/16 v0, 0x4022

    invoke-virtual {p1, v0}, Lcom/hisilicon/multiscreen/protocol/message/Action;->setResponseId(I)V

    .line 207
    return-object p1
.end method

.method private sendRequestAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;
    .locals 10
    .param p1, "actionMsg"    # Lcom/hisilicon/multiscreen/protocol/message/Action;

    .prologue
    const/4 v7, 0x0

    .line 217
    const/4 v6, 0x0

    .line 218
    .local v6, "str":Ljava/lang/String;
    const/4 v3, 0x0

    .line 219
    .local v3, "responseAction":Lcom/hisilicon/multiscreen/protocol/message/Action;
    const/4 v4, 0x0

    .line 223
    .local v4, "responseContent":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->mSaxXmlUtil:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

    invoke-virtual {v8, p1}, Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;->serialize(Lcom/hisilicon/multiscreen/protocol/message/Action;)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 236
    :goto_0
    iget-object v8, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

    invoke-virtual {v8, v6}, Lcom/hisilicon/multiscreen/http/HiHttpClient;->sendRequest(Ljava/lang/String;)Lcom/hisilicon/multiscreen/http/HiHttpResponse;

    move-result-object v2

    .line 240
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

    .line 247
    .end local v5    # "responseContent":Ljava/lang/String;
    .restart local v4    # "responseContent":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 249
    :cond_0
    const-string v8, "action response is null."

    invoke-static {v8}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 278
    .end local v2    # "httpResponse":Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    :goto_2
    return-object v7

    .line 225
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljavax/xml/transform/TransformerConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 230
    .end local v0    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_1
    move-exception v0

    .line 232
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    .restart local v2    # "httpResponse":Lcom/hisilicon/multiscreen/http/HiHttpResponse;
    :catch_2
    move-exception v1

    .line 244
    .local v1, "e1":Ljava/io/UnsupportedEncodingException;
    const-string v8, "Unsupported Encoding Exception."

    invoke-static {v8}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 255
    .end local v1    # "e1":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->mSaxXmlUtil:Lcom/hisilicon/multiscreen/protocol/utils/SaxXmlUtil;

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

    .line 278
    goto :goto_2

    .line 257
    :catch_3
    move-exception v0

    .line 259
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v3, 0x0

    .line 260
    const-string v7, "unsupported encoding exception."

    invoke-static {v7}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 262
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v0

    .line 264
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const/4 v3, 0x0

    .line 265
    const-string v7, "parse configuration exception."

    invoke-static {v7}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 267
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_5
    move-exception v0

    .line 269
    .local v0, "e":Lorg/xml/sax/SAXException;
    const/4 v3, 0x0

    .line 270
    const-string v7, "SAX exception."

    invoke-static {v7}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 272
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_6
    move-exception v0

    .line 274
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 275
    const-string v7, "IO exception."

    invoke-static {v7}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method protected resetDevice(Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;)V
    .locals 2
    .param p1, "deviceInfo"    # Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/protocol/HiDeviceInfo;->getDeviceIP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->mHostIp:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->mHiHttpClient:Lcom/hisilicon/multiscreen/http/HiHttpClient;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->mHostIp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/http/HiHttpClient;->setHostIp(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public sendAudioDate([BI)V
    .locals 2
    .param p1, "audiodate"    # [B
    .param p2, "seq"    # I

    .prologue
    .line 110
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/Action;

    invoke-direct {v1}, Lcom/hisilicon/multiscreen/protocol/message/Action;-><init>()V

    invoke-direct {p0, v1, p1, p2}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->getRecordAudioDataAction(Lcom/hisilicon/multiscreen/protocol/message/Action;[BI)Lcom/hisilicon/multiscreen/protocol/message/Action;

    move-result-object v0

    .line 111
    .local v0, "sendAudioAction":Lcom/hisilicon/multiscreen/protocol/message/Action;
    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->sendRequestAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;

    .line 112
    return-void
.end method

.method public sendErrorInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/Action;

    invoke-direct {v1}, Lcom/hisilicon/multiscreen/protocol/message/Action;-><init>()V

    invoke-direct {p0, v1, p1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->getSendErrorInfoAction(Lcom/hisilicon/multiscreen/protocol/message/Action;Ljava/lang/String;)Lcom/hisilicon/multiscreen/protocol/message/Action;

    move-result-object v0

    .line 117
    .local v0, "sendErrorAction":Lcom/hisilicon/multiscreen/protocol/message/Action;
    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->sendRequestAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;

    .line 118
    return-void
.end method

.method public sendSpeechInfo(Ljava/lang/String;I)V
    .locals 2
    .param p1, "speechInfo"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 100
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/Action;

    invoke-direct {v1}, Lcom/hisilicon/multiscreen/protocol/message/Action;-><init>()V

    invoke-direct {p0, v1, p1, p2}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->getSendSpeechInfoAction(Lcom/hisilicon/multiscreen/protocol/message/Action;Ljava/lang/String;I)Lcom/hisilicon/multiscreen/protocol/message/Action;

    move-result-object v0

    .line 101
    .local v0, "sendSpeechAction":Lcom/hisilicon/multiscreen/protocol/message/Action;
    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->sendRequestAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;

    .line 102
    return-void
.end method

.method public startSpeak()V
    .locals 2

    .prologue
    .line 126
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/Action;

    invoke-direct {v1}, Lcom/hisilicon/multiscreen/protocol/message/Action;-><init>()V

    invoke-direct {p0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->getStartSpeakAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;

    move-result-object v0

    .line 127
    .local v0, "startSpeak":Lcom/hisilicon/multiscreen/protocol/message/Action;
    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->sendRequestAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;

    .line 128
    return-void
.end method

.method public stopSpeak()V
    .locals 2

    .prologue
    .line 136
    new-instance v1, Lcom/hisilicon/multiscreen/protocol/message/Action;

    invoke-direct {v1}, Lcom/hisilicon/multiscreen/protocol/message/Action;-><init>()V

    invoke-direct {p0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->getStopSpeakAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;

    move-result-object v0

    .line 137
    .local v0, "stopSpeak":Lcom/hisilicon/multiscreen/protocol/message/Action;
    invoke-direct {p0, v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->sendRequestAction(Lcom/hisilicon/multiscreen/protocol/message/Action;)Lcom/hisilicon/multiscreen/protocol/message/Action;

    .line 138
    return-void
.end method
