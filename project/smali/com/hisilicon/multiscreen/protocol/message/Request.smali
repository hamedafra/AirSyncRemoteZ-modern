.class public abstract Lcom/hisilicon/multiscreen/protocol/message/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field protected head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Request;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    .line 20
    return-void
.end method


# virtual methods
.method public abstract getBytes()[B
.end method

.method public getHead()Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/message/Request;->head:Lcom/hisilicon/multiscreen/protocol/message/MSGHeadObject;

    return-object v0
.end method
