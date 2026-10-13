.class Lcom/aloys/formuler/airsyncremote/RemoteActivity$1;
.super Ljava/lang/Object;
.source "RemoteActivity.java"

# interfaces
.implements Lcom/hisilicon/multiscreen/protocol/utils/ISpeechMsgDealer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/RemoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pushAudioData([BI)V
    .locals 1
    .param p1, "audiodate"    # [B
    .param p2, "seq"    # I

    .prologue
    .line 242
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    invoke-virtual {v0, p1, p2}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->sendAudioDate([BI)V

    .line 246
    :cond_0
    return-void
.end method

.method public pushSpeechInfo(Ljava/lang/String;I)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 213
    if-eqz p1, :cond_0

    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send speech info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    invoke-virtual {v0, p1, p2}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->sendSpeechInfo(Ljava/lang/String;I)V

    .line 219
    :cond_0
    return-void
.end method

.method public speakError(Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 251
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    if-eqz v0, :cond_0

    .line 253
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    invoke-virtual {v0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->sendErrorInfo(Ljava/lang/String;)V

    .line 255
    :cond_0
    return-void
.end method

.method public startSpeaking()V
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->startSpeak()V

    .line 228
    :cond_0
    return-void
.end method

.method public stopSpeaking()V
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Lcom/aloys/formuler/airsyncremote/BaseActivity;->mRemoteSpeech:Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/remote/RemoteSpeech;->stopSpeak()V

    .line 237
    :cond_0
    return-void
.end method
