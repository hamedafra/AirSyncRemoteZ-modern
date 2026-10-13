.class public Lcom/hisilicon/multiscreen/protocol/message/PlayMediaMessage;
.super Lcom/hisilicon/multiscreen/protocol/message/PushMessage;
.source "PlayMediaMessage.java"


# static fields
.field public static final MEDIA_TYPE_AUDIO:I = 0x2

.field public static final MEDIA_TYPE_IMAGE:I = 0x3

.field public static final MEDIA_TYPE_VEDIO:I = 0x1


# instance fields
.field private mMediaType:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/hisilicon/multiscreen/protocol/message/PushMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getMediaType()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/PlayMediaMessage;->mMediaType:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/PlayMediaMessage;->mUrl:Ljava/lang/String;

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

    .line 104
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Lcom/hisilicon/multiscreen/protocol/message/PlayMediaMessage;->mMediaType:I

    .line 105
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 106
    .local v3, "len":I
    if-lez v3, :cond_1

    .line 108
    new-array v2, v3, [B

    .line 111
    .local v2, "data":[B
    new-array v0, v3, [B

    .line 112
    .local v0, "buf":[B
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 114
    array-length v5, v0

    invoke-virtual {p1, v0, v6, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v1

    .line 115
    .local v1, "c":I
    invoke-static {v0, v6, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    add-int/2addr v4, v1

    .line 117
    goto :goto_0

    .line 118
    .end local v1    # "c":I
    :cond_0
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/hisilicon/multiscreen/protocol/message/PlayMediaMessage;->mUrl:Ljava/lang/String;

    .line 125
    .end local v0    # "buf":[B
    .end local v2    # "data":[B
    .end local v4    # "p":I
    :goto_1
    return-void

    .line 123
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/hisilicon/multiscreen/protocol/message/PlayMediaMessage;->mUrl:Ljava/lang/String;

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
    .line 87
    iget v1, p0, Lcom/hisilicon/multiscreen/protocol/message/PlayMediaMessage;->mMediaType:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 88
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/PlayMediaMessage;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/message/PlayMediaMessage;->mUrl:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 91
    .local v0, "data":[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 92
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 98
    .end local v0    # "data":[B
    :goto_0
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 99
    return-void

    .line 96
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_0
.end method

.method public setMediaType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/PlayMediaMessage;->mMediaType:I

    .line 49
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/message/PlayMediaMessage;->mUrl:Ljava/lang/String;

    .line 71
    return-void
.end method
