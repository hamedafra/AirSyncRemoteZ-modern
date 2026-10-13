.class public Lcom/hisilicon/multiscreen/protocol/message/CheckNetworkRequest;
.super Ljava/lang/Object;
.source "CheckNetworkRequest.java"


# static fields
.field private static final BIT_NUMBER_IN_BYTE:I = 0x8

.field private static final CHECK_NUMBER_LENGTH:I = 0x4

.field private static final CHECK_TAG_LENGTH:I = 0x2

.field public static final DATA_LENGTH:I = 0x6


# instance fields
.field private mNumber:I

.field private mTag:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-short v0, p0, Lcom/hisilicon/multiscreen/protocol/message/CheckNetworkRequest;->mTag:S

    .line 58
    iput v0, p0, Lcom/hisilicon/multiscreen/protocol/message/CheckNetworkRequest;->mNumber:I

    .line 59
    return-void
.end method

.method public constructor <init>(SI)V
    .locals 0
    .param p1, "tag"    # S
    .param p2, "number"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-short p1, p0, Lcom/hisilicon/multiscreen/protocol/message/CheckNetworkRequest;->mTag:S

    .line 72
    iput p2, p0, Lcom/hisilicon/multiscreen/protocol/message/CheckNetworkRequest;->mNumber:I

    .line 73
    return-void
.end method


# virtual methods
.method public getCheckNetworkRequestfromBytes([B)Lcom/hisilicon/multiscreen/protocol/message/CheckNetworkRequest;
    .locals 14
    .param p1, "data"    # [B

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 155
    const/4 v11, 0x2

    .line 156
    .local v11, "tagLength":I
    const/4 v7, 0x4

    .line 157
    .local v7, "numberLength":I
    new-array v10, v11, [B

    .line 158
    .local v10, "tagData":[B
    new-array v6, v7, [B

    .line 163
    .local v6, "numberData":[B
    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_0
    invoke-static {p1, v12, v10, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 165
    .local v4, "inputStreamTag":Ljava/io/InputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 168
    .local v2, "inTag":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    .line 171
    .local v9, "tag":S
    const/4 v12, 0x0

    invoke-static {p1, v11, v6, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 173
    .local v3, "inputStreamNumber":Ljava/io/InputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 176
    .local v1, "inNumber":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 178
    .local v5, "number":I
    new-instance v8, Lcom/hisilicon/multiscreen/protocol/message/CheckNetworkRequest;

    invoke-direct {v8, v9, v5}, Lcom/hisilicon/multiscreen/protocol/message/CheckNetworkRequest;-><init>(SI)V

    .line 180
    .local v8, "request":Lcom/hisilicon/multiscreen/protocol/message/CheckNetworkRequest;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 181
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v1    # "inNumber":Ljava/io/DataInputStream;
    .end local v2    # "inTag":Ljava/io/DataInputStream;
    .end local v3    # "inputStreamNumber":Ljava/io/InputStream;
    .end local v4    # "inputStreamTag":Ljava/io/InputStream;
    .end local v5    # "number":I
    .end local v6    # "numberData":[B
    .end local v7    # "numberLength":I
    .end local v8    # "request":Lcom/hisilicon/multiscreen/protocol/message/CheckNetworkRequest;
    .end local v9    # "tag":S
    .end local v10    # "tagData":[B
    .end local v11    # "tagLength":I
    :goto_0
    return-object v8

    .line 186
    .restart local v6    # "numberData":[B
    .restart local v7    # "numberLength":I
    .restart local v10    # "tagData":[B
    .restart local v11    # "tagLength":I
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/io/IOException;
    const-string v12, "IO Exception"

    invoke-static {v12}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 192
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "numberData":[B
    .end local v7    # "numberLength":I
    .end local v10    # "tagData":[B
    .end local v11    # "tagLength":I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public getData()[B
    .locals 4

    .prologue
    const/4 v2, 0x6

    .line 127
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 128
    .local v0, "buf":Ljava/nio/ByteBuffer;
    new-array v1, v2, [B

    .line 130
    .local v1, "msg":[B
    iget-short v2, p0, Lcom/hisilicon/multiscreen/protocol/message/CheckNetworkRequest;->mTag:S

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 131
    iget v2, p0, Lcom/hisilicon/multiscreen/protocol/message/CheckNetworkRequest;->mNumber:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 133
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 136
    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 137
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 139
    :cond_0
    return-object v1
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/message/CheckNetworkRequest;->mNumber:I

    return v0
.end method

.method public getTag()S
    .locals 1

    .prologue
    .line 83
    iget-short v0, p0, Lcom/hisilicon/multiscreen/protocol/message/CheckNetworkRequest;->mTag:S

    return v0
.end method

.method public setNumber(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/message/CheckNetworkRequest;->mNumber:I

    .line 117
    return-void
.end method

.method public setTag(S)V
    .locals 0
    .param p1, "tag"    # S

    .prologue
    .line 94
    iput-short p1, p0, Lcom/hisilicon/multiscreen/protocol/message/CheckNetworkRequest;->mTag:S

    .line 95
    return-void
.end method
