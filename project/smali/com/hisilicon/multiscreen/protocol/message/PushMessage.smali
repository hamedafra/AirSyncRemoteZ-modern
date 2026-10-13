.class public abstract Lcom/hisilicon/multiscreen/protocol/message/PushMessage;
.super Ljava/lang/Object;
.source "PushMessage.java"


# instance fields
.field protected mHead:Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHead()Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/PushMessage;->mHead:Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;

    return-object v0
.end method

.method public abstract readBody(Ljava/io/DataInputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendBody(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
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
    .line 67
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/PushMessage;->mHead:Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/PushMessage;->mHead:Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;

    invoke-virtual {v0, p1}, Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;->sendOutputMsg(Ljava/io/DataOutputStream;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/protocol/message/PushMessage;->sendBody(Ljava/io/DataOutputStream;)V

    goto :goto_0
.end method

.method public setHead(Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;)V
    .locals 0
    .param p1, "h"    # Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/message/PushMessage;->mHead:Lcom/hisilicon/multiscreen/protocol/message/PushMessageHead;

    .line 27
    return-void
.end method
