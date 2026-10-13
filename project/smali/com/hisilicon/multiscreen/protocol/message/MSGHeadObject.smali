.class public Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;
.super Ljava/lang/Object;
.source "MSGHeadObject.java"


# static fields
.field public static final MESSAGE_HEAD_LENGTH:I = 0xc


# instance fields
.field private mHeadBuf:Ljava/nio/ByteBuffer;

.field private s16msgType:S

.field private s16rcvModuleName:S

.field private s16sndModuleName:S

.field private s16usMsglen:S

.field private s16usRsv:S

.field private s16usRsvTwo:S


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-short v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16sndModuleName:S

    .line 27
    iput-short v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16rcvModuleName:S

    .line 33
    iput-short v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16msgType:S

    .line 39
    iput-short v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16usMsglen:S

    .line 45
    iput-short v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16usRsv:S

    .line 51
    iput-short v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16usRsvTwo:S

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->mHeadBuf:Ljava/nio/ByteBuffer;

    .line 64
    iput-short v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16sndModuleName:S

    .line 65
    iput-short v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16rcvModuleName:S

    .line 66
    iput-short v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16msgType:S

    .line 67
    iput-short v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16usMsglen:S

    .line 68
    iput-short v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16usRsv:S

    .line 69
    iput-short v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16usRsvTwo:S

    .line 70
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->mHeadBuf:Ljava/nio/ByteBuffer;

    .line 71
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->mHeadBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 215
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->mHeadBuf:Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16sndModuleName:S

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 216
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->mHeadBuf:Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16rcvModuleName:S

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 217
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->mHeadBuf:Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16msgType:S

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 218
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->mHeadBuf:Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16usMsglen:S

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 219
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->mHeadBuf:Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16usRsv:S

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 220
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->mHeadBuf:Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16usRsvTwo:S

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 222
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->mHeadBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public getMsgLen()S
    .locals 1

    .prologue
    .line 180
    iget-short v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16usMsglen:S

    return v0
.end method

.method public getMsgType()S
    .locals 1

    .prologue
    .line 169
    iget-short v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16msgType:S

    return v0
.end method

.method public getRcvModlueName()S
    .locals 1

    .prologue
    .line 158
    iget-short v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16rcvModuleName:S

    return v0
.end method

.method public getRsv()S
    .locals 1

    .prologue
    .line 191
    iget-short v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16usRsv:S

    return v0
.end method

.method public getRsvTwo()S
    .locals 1

    .prologue
    .line 202
    iget-short v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16usRsvTwo:S

    return v0
.end method

.method public getSendModlueName()S
    .locals 1

    .prologue
    .line 147
    iget-short v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16sndModuleName:S

    return v0
.end method

.method public setMsgLen(S)V
    .locals 0
    .param p1, "msgLen"    # S

    .prologue
    .line 114
    iput-short p1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16usMsglen:S

    .line 115
    return-void
.end method

.method public setMsgType(S)V
    .locals 0
    .param p1, "msgType"    # S

    .prologue
    .line 103
    iput-short p1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16msgType:S

    .line 104
    return-void
.end method

.method public setRcvModlueName(S)V
    .locals 0
    .param p1, "name"    # S

    .prologue
    .line 92
    iput-short p1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16rcvModuleName:S

    .line 93
    return-void
.end method

.method public setRsv(S)V
    .locals 0
    .param p1, "rsv"    # S

    .prologue
    .line 125
    iput-short p1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16usRsv:S

    .line 126
    return-void
.end method

.method public setRsvTwo(S)V
    .locals 0
    .param p1, "rsvTwo"    # S

    .prologue
    .line 136
    iput-short p1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16usRsvTwo:S

    .line 137
    return-void
.end method

.method public setSendModlueName(S)V
    .locals 0
    .param p1, "name"    # S

    .prologue
    .line 81
    iput-short p1, p0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->s16sndModuleName:S

    .line 82
    return-void
.end method
