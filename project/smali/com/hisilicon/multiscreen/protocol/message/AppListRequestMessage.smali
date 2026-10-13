.class public Lcom/hisilicon/multiscreen/protocol/message/AppListRequestMessage;
.super Lcom/hisilicon/multiscreen/protocol/message/PushMessage;
.source "AppListRequestMessage.java"


# instance fields
.field private mCommand:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/message/PushMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/AppListRequestMessage;->mCommand:Ljava/lang/String;

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

    .line 57
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 58
    .local v3, "len":I
    if-lez v3, :cond_1

    .line 59
    new-array v2, v3, [B

    .line 60
    .local v2, "data":[B
    new-array v0, v3, [B

    .line 61
    .local v0, "buf":[B
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 62
    array-length v5, v0

    invoke-virtual {p1, v0, v6, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v1

    .line 63
    .local v1, "c":I
    invoke-static {v0, v6, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    add-int/2addr v4, v1

    .line 65
    goto :goto_0

    .line 66
    .end local v1    # "c":I
    :cond_0
    const/4 v0, 0x0

    .line 67
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/hisilicon/multiscreen/protocol/message/AppListRequestMessage;->mCommand:Ljava/lang/String;

    .line 72
    .end local v0    # "buf":[B
    .end local v2    # "data":[B
    .end local v4    # "p":I
    :goto_1
    return-void

    .line 69
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/hisilicon/multiscreen/protocol/message/AppListRequestMessage;->mCommand:Ljava/lang/String;

    goto :goto_1
.end method

.method public sendBody(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/AppListRequestMessage;->mCommand:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/AppListRequestMessage;->mCommand:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 46
    .local v0, "data":[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 47
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 48
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 50
    .end local v0    # "data":[B
    :cond_0
    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/message/AppListRequestMessage;->mCommand:Ljava/lang/String;

    .line 27
    return-void
.end method
