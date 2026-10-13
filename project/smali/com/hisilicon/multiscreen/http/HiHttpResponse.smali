.class public Lcom/hisilicon/multiscreen/http/HiHttpResponse;
.super Ljava/lang/Object;
.source "HiHttpResponse.java"


# instance fields
.field private mMessage:[B

.field private mResponseMessage:Ljava/lang/String;

.field private mStatusCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v1, p0, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->mStatusCode:I

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->mResponseMessage:Ljava/lang/String;

    .line 14
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->mMessage:[B

    .line 23
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v1, p0, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->mStatusCode:I

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->mResponseMessage:Ljava/lang/String;

    .line 14
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->mMessage:[B

    .line 35
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->setStatusCode(I)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->setResponseMessage(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "body"    # [B

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v1, p0, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->mStatusCode:I

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->mResponseMessage:Ljava/lang/String;

    .line 14
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->mMessage:[B

    .line 49
    invoke-virtual {p0, p1}, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->setStatusCode(I)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->setMessage([B)V

    .line 51
    return-void
.end method


# virtual methods
.method public getMessage()[B
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->mMessage:[B

    return-object v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->mResponseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->mStatusCode:I

    return v0
.end method

.method public setMessage([B)V
    .locals 0
    .param p1, "responseMessage"    # [B

    .prologue
    .line 103
    iput-object p1, p0, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->mMessage:[B

    .line 104
    return-void
.end method

.method public setResponseMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseMessage"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->mResponseMessage:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/hisilicon/multiscreen/http/HiHttpResponse;->mStatusCode:I

    .line 61
    return-void
.end method
