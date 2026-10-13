.class public Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;
.super Ljava/lang/Object;
.source "PushMessageHead.java"


# static fields
.field public static final DEFAULT_RESPONSE:I = 0x301

.field public static final GET_APPS_REQUEST:I = 0x302

.field public static final GET_APPS_RESPONSE:I = 0x303

.field public static final LAUNCH_APP:I = 0x304

.field public static final PLAY_MEDIA:I = 0x305

.field private static final PUSH_MSG_BASE:I = 0x300


# instance fields
.field protected mMsgType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;->mMsgType:I

    return v0
.end method

.method public readInputMsg(Ljava/io/DataInputStream;)V
    .locals 1
    .param p1, "input"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;->mMsgType:I

    .line 96
    :cond_0
    return-void
.end method

.method public sendOutputMsg(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;->mMsgType:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 83
    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;->mMsgType:I

    .line 60
    return-void
.end method
