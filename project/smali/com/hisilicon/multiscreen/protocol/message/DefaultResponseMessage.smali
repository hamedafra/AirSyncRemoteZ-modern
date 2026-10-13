.class public Lcom/hisilicon/multiscreen/protocol/message/DefaultResponseMessage;
.super Lcom/hisilicon/multiscreen/protocol/message/PushMessage;
.source "DefaultResponseMessage.java"


# instance fields
.field public mCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/message/PushMessage;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/hisilicon/multiscreen/protocol/message/DefaultResponseMessage;->mCode:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/DefaultResponseMessage;->mCode:I

    return v0
.end method

.method public readBody(Ljava/io/DataInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hisilicon/multiscreen/protocol/message/DefaultResponseMessage;->mCode:I

    .line 59
    return-void
.end method

.method public sendBody(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/DefaultResponseMessage;->mCode:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 49
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 50
    return-void
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/DefaultResponseMessage;->mCode:I

    .line 29
    return-void
.end method
