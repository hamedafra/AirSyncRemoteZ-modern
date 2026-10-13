.class public Lcom/hisilicon/multiscreen/protocol/message/Action;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field public static final ACTION_ID_ACCESS_CONTROLLER_ACCESS_NOTIFY:I = 0x1200

.field public static final ACTION_ID_ACCESS_CONTROLLER_BYE_FOR_REAVE:I = 0x1210

.field public static final ACTION_ID_ACCESS_CONTROLLER_LEAVE_NOTIFY_BY_PHONE:I = 0x1220

.field public static final ACTION_ID_ACCESS_CONTROLLER_LEAVE_NOTIFY_BY_STB:I = 0x1230

.field public static final ACTION_ID_ACCESS_CONTROLLER_RET_ACCESS_NOTIFY:I = 0x1201

.field public static final ACTION_ID_ACCESS_CONTROLLER_RET_BYE_FOR_REAVE:I = 0x1211

.field public static final ACTION_ID_ACCESS_CONTROLLER_RET_LEAVE_NOTIFY_BY_PHONE:I = 0x1221

.field public static final ACTION_ID_ACCESS_CONTROLLER_RET_LEAVE_NOTIFY_BY_STB:I = 0x1231

.field public static final ACTION_ID_AUDIO_DATA_SEND:I = 0x4031

.field public static final ACTION_ID_NO_RESPONSE:I = 0x0

.field public static final ACTION_ID_REMOTE_APP_LAUNCH:I = 0x3011

.field public static final ACTION_ID_REMOTE_APP_RET_LAUNCH:I = 0x3012

.field public static final ACTION_ID_REMOTE_APP_RET_UPDATE_LIST:I = 0x3002

.field public static final ACTION_ID_REMOTE_APP_UPDATE_LIST:I = 0x3001

.field public static final ACTION_ID_RET_AUDIO_DATA_SEND:I = 0x4032

.field public static final ACTION_ID_RET_START_SPEAKING:I = 0x4012

.field public static final ACTION_ID_RET_STOP_SPEAKING:I = 0x4022

.field public static final ACTION_ID_SPEECH_ERROR:I = 0x4041

.field public static final ACTION_ID_SPEECH_ERROR_RET_SEND:I = 0x4042

.field public static final ACTION_ID_SPEECH_TEXT_RET_SEND:I = 0x4002

.field public static final ACTION_ID_SPEECH_TEXT_SEND:I = 0x4001

.field public static final ACTION_ID_START_SPEAKING:I = 0x4011

.field public static final ACTION_ID_STOP_SPEAKING:I = 0x4021

.field public static final ACTION_ID_VIME_CALL_INPUT:I = 0x5001

.field public static final ACTION_ID_VIME_CHECK:I = 0x1121

.field public static final ACTION_ID_VIME_DISABLE:I = 0x1111

.field public static final ACTION_ID_VIME_ENALBE:I = 0x1101

.field public static final ACTION_ID_VIME_ENDINPUT_FROM_PHONE:I = 0x5021

.field public static final ACTION_ID_VIME_ENDINPUT_FROM_STB:I = 0x5031

.field public static final ACTION_ID_VIME_FAIL_FLAG:I = 0x0

.field public static final ACTION_ID_VIME_RET_CALL_INPUT:I = 0x5002

.field public static final ACTION_ID_VIME_RET_CHECK:I = 0x1122

.field public static final ACTION_ID_VIME_RET_DISABLE:I = 0x1112

.field public static final ACTION_ID_VIME_RET_ENABLE:I = 0x1102

.field public static final ACTION_ID_VIME_RET_ENDINPUT_FROM_PHONE:I = 0x5022

.field public static final ACTION_ID_VIME_RET_ENDINPUT_FROM_STB:I = 0x5032

.field public static final ACTION_ID_VIME_RET_SEND_TEXT:I = 0x5012

.field public static final ACTION_ID_VIME_SEND_TEXT:I = 0x5011

.field public static final ACTION_ID_VIME_SUCCESS_FLAG:I = 0x1

.field public static final ACTION_ID_XML_PARSE_ERROR_RESPONSE:I = 0x1


# instance fields
.field protected mArgumentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hisilicon/multiscreen/protocol/message/Argument;",
            ">;"
        }
    .end annotation
.end field

.field protected mId:I

.field protected mName:Ljava/lang/String;

.field protected mResponseFlag:Ljava/lang/String;

.field protected mResponseId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mArgumentList:Ljava/util/ArrayList;

    .line 270
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mId:I

    .line 272
    iput-object v2, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mName:Ljava/lang/String;

    .line 274
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mResponseId:I

    .line 276
    iput-object v2, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mResponseFlag:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mArgumentList:Ljava/util/ArrayList;

    .line 270
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mId:I

    .line 272
    iput-object v2, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mName:Ljava/lang/String;

    .line 274
    iput v1, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mResponseId:I

    .line 276
    iput-object v2, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mResponseFlag:Ljava/lang/String;

    .line 293
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mId:I

    .line 294
    iput-object p2, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mName:Ljava/lang/String;

    .line 295
    return-void
.end method


# virtual methods
.method public addArgument(Lcom/hisilicon/multiscreen/protocol/message/Argument;)V
    .locals 1
    .param p1, "argument"    # Lcom/hisilicon/multiscreen/protocol/message/Argument;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mArgumentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    return-void
.end method

.method public getArgument(I)Lcom/hisilicon/multiscreen/protocol/message/Argument;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 389
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mArgumentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 391
    const/4 v0, 0x0

    .line 393
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mArgumentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/multiscreen/protocol/message/Argument;

    goto :goto_0
.end method

.method public getArgumentList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hisilicon/multiscreen/protocol/message/Argument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mArgumentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mResponseFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseId()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mResponseId:I

    return v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 313
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mId:I

    .line 314
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mName:Ljava/lang/String;

    .line 332
    return-void
.end method

.method public setResponseFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseFlag"    # Ljava/lang/String;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mResponseFlag:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setResponseId(I)V
    .locals 0
    .param p1, "responseId"    # I

    .prologue
    .line 349
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/Action;->mResponseId:I

    .line 350
    return-void
.end method
