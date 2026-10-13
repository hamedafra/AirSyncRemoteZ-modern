.class public Lcom/hisilicon/multiscreen/protocol/message/AppListResponseMessage;
.super Lcom/hisilicon/multiscreen/protocol/message/PushMessage;
.source "AppListResponseMessage.java"


# instance fields
.field private mContent:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/message/PushMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()[B
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/AppListResponseMessage;->mContent:[B

    return-object v0
.end method

.method public readBody(Ljava/io/DataInputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 50
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 51
    .local v3, "len":I
    if-lez v3, :cond_1

    .line 52
    new-array v2, v3, [B

    .line 55
    .local v2, "data":[B
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 56
    .local v0, "buf":[B
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 57
    array-length v5, v0

    invoke-virtual {p1, v0, v6, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v1

    .line 58
    .local v1, "c":I
    invoke-static {v0, v6, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    add-int/2addr v4, v1

    .line 60
    goto :goto_0

    .line 62
    .end local v1    # "c":I
    :cond_0
    iput-object v2, p0, Lcom/hisilicon/multiscreen/protocol/message/AppListResponseMessage;->mContent:[B

    .line 66
    .end local v0    # "buf":[B
    .end local v2    # "data":[B
    .end local v4    # "p":I
    :goto_1
    return-void

    .line 64
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/hisilicon/multiscreen/protocol/message/AppListResponseMessage;->mContent:[B

    goto :goto_1
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
    .line 41
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/AppListResponseMessage;->mContent:[B

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/AppListResponseMessage;->mContent:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 43
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/AppListResponseMessage;->mContent:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 44
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 46
    :cond_0
    return-void
.end method

.method public setContent([B)V
    .locals 0
    .param p1, "content"    # [B

    .prologue
    .line 26
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/message/AppListResponseMessage;->mContent:[B

    .line 27
    return-void
.end method
