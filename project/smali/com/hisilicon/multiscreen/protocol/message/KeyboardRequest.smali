.class public Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;
.super Lcom/hisilicon/multiscreen/protocol/message/Request;
.source "KeyboardRequest.java"


# static fields
.field private static final KEYBOARD_EVEN_TYPE:S = 0x107s

.field private static final KEYBOARD_MESSAGE_LENGTH:S = 0x16s


# instance fields
.field private mBuf:Ljava/nio/ByteBuffer;

.field private mKeyValue:I

.field private mMsg:[B

.field private mUpdownState:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/message/Request;-><init>()V

    .line 28
    iput v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mKeyValue:I

    .line 34
    iput v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mUpdownState:I

    .line 39
    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mBuf:Ljava/nio/ByteBuffer;

    .line 44
    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mMsg:[B

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->setData(II)V

    .line 59
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->initHead()V

    .line 60
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->initBuf()V

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

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mBuf:Ljava/nio/ByteBuffer;

    .line 76
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 77
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 78
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mMsg:[B

    .line 79
    return-void
.end method

.method private initHead()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    invoke-virtual {v0, v3}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->setMsgType(S)V

    .line 66
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->setSendModlueName(S)V

    .line 67
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    invoke-virtual {v0, v3}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->setRcvModlueName(S)V

    .line 68
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->setMsgLen(S)V

    .line 69
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    invoke-virtual {v0, v2}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->setRsv(S)V

    .line 70
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    invoke-virtual {v0, v2}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->setRsvTwo(S)V

    .line 71
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mBuf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mMsg:[B

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mBuf:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mBuf:Ljava/nio/ByteBuffer;

    const/16 v1, 0x107

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 141
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->getKey()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 142
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 146
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 147
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mMsg:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mMsg:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mMsg:[B

    return-object v0
.end method

.method public getKey()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mKeyValue:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mUpdownState:I

    return v0
.end method

.method public setData(II)V
    .locals 0
    .param p1, "key"    # I
    .param p2, "state"    # I

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->setKey(I)V

    .line 84
    invoke-virtual {p0, p2}, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->setState(I)V

    .line 85
    return-void
.end method

.method public setKey(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mKeyValue:I

    .line 96
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/KeyboardRequest;->mUpdownState:I

    .line 107
    return-void
.end method
