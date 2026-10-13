.class public Lorg/teleal/cling/model/message/UpnpResponse;
.super Lorg/teleal/cling/model/message/UpnpOperation;
.source "UpnpResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/teleal/cling/model/message/UpnpResponse$Status;
    }
.end annotation


# instance fields
.field private statusCode:I

.field private statusMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "statusMessage"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/teleal/cling/model/message/UpnpOperation;-><init>()V

    .line 67
    iput p1, p0, Lorg/teleal/cling/model/message/UpnpResponse;->statusCode:I

    .line 68
    iput-object p2, p0, Lorg/teleal/cling/model/message/UpnpResponse;->statusMessage:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/message/UpnpResponse$Status;)V
    .locals 1
    .param p1, "status"    # Lorg/teleal/cling/model/message/UpnpResponse$Status;

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/teleal/cling/model/message/UpnpOperation;-><init>()V

    .line 72
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpResponse$Status;->getStatusCode()I

    move-result v0

    iput v0, p0, Lorg/teleal/cling/model/message/UpnpResponse;->statusCode:I

    .line 73
    invoke-virtual {p1}, Lorg/teleal/cling/model/message/UpnpResponse$Status;->getStatusMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/model/message/UpnpResponse;->statusMessage:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public getResponseDetails()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpResponse;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/teleal/cling/model/message/UpnpResponse;->statusCode:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/teleal/cling/model/message/UpnpResponse;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isFailed()Z
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lorg/teleal/cling/model/message/UpnpResponse;->statusCode:I

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/teleal/cling/model/message/UpnpResponse;->getResponseDetails()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
