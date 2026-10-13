.class public Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;
.super Lcom/hisilicon/multiscreen/protocol/message/Request;
.source "MouseRequest.java"


# static fields
.field private static final MOUSE_MESSAGE_LENGTH:S = 0x16s


# instance fields
.field private mBuf:Ljava/nio/ByteBuffer;

.field private mClickType:S

.field private mDx:F

.field private mDy:F

.field private mMsg:[B


# direct methods
.method public constructor <init>(SFF)V
    .locals 1
    .param p1, "clickType"    # S
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/message/Request;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mBuf:Ljava/nio/ByteBuffer;

    .line 43
    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mMsg:[B

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->setData(SFF)V

    .line 59
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->initHead()V

    .line 60
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->initBuf()V

    .line 61
    return-void
.end method

.method private initBuf()V
    .locals 3

    .prologue
    const/16 v2, 0x16

    .line 75
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mBuf:Ljava/nio/ByteBuffer;

    .line 76
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 77
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 78
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mMsg:[B

    .line 79
    return-void
.end method

.method private initHead()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->setMsgType(S)V

    .line 66
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->setSendModlueName(S)V

    .line 67
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->setRcvModlueName(S)V

    .line 68
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->setMsgLen(S)V

    .line 69
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    invoke-virtual {v0, v2}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->setRsv(S)V

    .line 70
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    invoke-virtual {v0, v2}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->setRsvTwo(S)V

    .line 71
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mBuf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mMsg:[B

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mBuf:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 181
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->getMouseClickType()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 182
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->getDx()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 183
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->getDy()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 188
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 189
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mMsg:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mMsg:[B

    return-object v0
.end method

.method public getDx()F
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mDx:F

    return v0
.end method

.method public getDy()F
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mDy:F

    return v0
.end method

.method public getMouseClickType()S
    .locals 1

    .prologue
    .line 113
    iget-short v0, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mClickType:S

    return v0
.end method

.method public setData(SFF)V
    .locals 0
    .param p1, "clickType"    # S
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->setMouseClickType(S)V

    .line 90
    invoke-virtual {p0, p2}, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->setDx(F)V

    .line 91
    invoke-virtual {p0, p3}, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->setDy(F)V

    .line 92
    return-void
.end method

.method public setDx(F)V
    .locals 0
    .param p1, "dx"    # F

    .prologue
    .line 137
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mDx:F

    .line 138
    return-void
.end method

.method public setDxDy(FF)V
    .locals 0
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 126
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mDx:F

    .line 127
    iput p2, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mDy:F

    .line 128
    return-void
.end method

.method public setDy(F)V
    .locals 0
    .param p1, "dy"    # F

    .prologue
    .line 147
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mDy:F

    .line 148
    return-void
.end method

.method public setMouseClickType(S)V
    .locals 0
    .param p1, "type"    # S

    .prologue
    .line 102
    iput-short p1, p0, Lcom/hisilicon/multiscreen/protocol/message/MouseRequest;->mClickType:S

    .line 103
    return-void
.end method
