.class public Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;
.super Lcom/hisilicon/multiscreen/protocol/message/Request;
.source "TouchRequest.java"


# static fields
.field private static final FINGER_UP_VALUE:I = 0x0

.field public static final MAX_FINGER_NUM:I = 0x5

.field private static final PRESSED_VALUE:I = 0x1

.field private static final TOUCH_MESSAGE_LENGTH:S = 0x4cs


# instance fields
.field private mBuf:Ljava/nio/ByteBuffer;

.field private mFingerNum:I

.field private mFingers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMsg:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/message/Request;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mFingerNum:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mFingers:Ljava/util/ArrayList;

    .line 51
    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mBuf:Ljava/nio/ByteBuffer;

    .line 56
    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mMsg:[B

    .line 65
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->initHead()V

    .line 66
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->initBuf()V

    .line 67
    return-void
.end method

.method private initBuf()V
    .locals 3

    .prologue
    .line 81
    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mBuf:Ljava/nio/ByteBuffer;

    .line 82
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 83
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 84
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->getMsgLen()S

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mMsg:[B

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mFingers:Ljava/util/ArrayList;

    new-instance v2, Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;

    invoke-direct {v2}, Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->setFingerNum(I)V

    .line 92
    return-void
.end method

.method private initHead()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->setMsgType(S)V

    .line 72
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->setSendModlueName(S)V

    .line 73
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->setRcvModlueName(S)V

    .line 74
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->setMsgLen(S)V

    .line 75
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    invoke-virtual {v0, v2}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->setRsv(S)V

    .line 76
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    invoke-virtual {v0, v2}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;->setRsvTwo(S)V

    .line 77
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 177
    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mBuf:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mMsg:[B

    if-eqz v2, :cond_3

    .line 181
    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mBuf:Ljava/nio/ByteBuffer;

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 183
    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->getFingerNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 184
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->getFingerNum()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 188
    invoke-virtual {p0, v1}, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->getFingerInfo(I)Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;

    move-result-object v0

    .line 189
    .local v0, "fin":Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;
    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;->getX()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 190
    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;->getY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 191
    iget-object v4, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;->getPress()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 184
    .end local v0    # "fin":Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v0    # "fin":Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;
    :cond_0
    move v2, v3

    .line 191
    goto :goto_1

    .line 196
    .end local v0    # "fin":Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;
    :cond_1
    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 197
    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 198
    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 202
    :cond_2
    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 203
    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mBuf:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mMsg:[B

    iget-object v5, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mMsg:[B

    array-length v5, v5

    invoke-virtual {v2, v4, v3, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 205
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mMsg:[B

    return-object v2
.end method

.method public getFingerInfo(I)Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mFingers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;

    return-object v0
.end method

.method public getFingerNum()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mFingerNum:I

    return v0
.end method

.method public getFingers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mFingers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setFingerInfo(IIIZ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "press"    # Z

    .prologue
    .line 152
    const/4 v1, 0x5

    if-ge p1, v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mFingers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;

    .line 155
    .local v0, "info":Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;
    invoke-virtual {v0, p2}, Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;->setX(I)V

    .line 156
    invoke-virtual {v0, p3}, Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;->setY(I)V

    .line 157
    invoke-virtual {v0, p4}, Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;->setPress(Z)V

    .line 159
    .end local v0    # "info":Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;
    :cond_0
    return-void
.end method

.method public setFingerNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mFingerNum:I

    .line 103
    return-void
.end method

.method public setFingers(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "fingers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/hisilicon/multiscreen/protocol/message/FingerInfo;>;"
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/message/TouchRequest;->mFingers:Ljava/util/ArrayList;

    .line 125
    return-void
.end method
