.class public Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;
.super Ljava/lang/Object;
.source "ContentNode.java"


# instance fields
.field private container:Lorg/teleal/cling/support/model/container/Container;

.field private fullPath:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isItem:Z

.field private item:Lorg/teleal/cling/support/model/item/Item;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/container/Container;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "container"    # Lorg/teleal/cling/support/model/container/Container;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->id:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->container:Lorg/teleal/cling/support/model/container/Container;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->fullPath:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->isItem:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/teleal/cling/support/model/item/Item;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "item"    # Lorg/teleal/cling/support/model/item/Item;
    .param p3, "fullPath"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->id:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->item:Lorg/teleal/cling/support/model/item/Item;

    .line 24
    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->fullPath:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->isItem:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getContainer()Lorg/teleal/cling/support/model/container/Container;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->container:Lorg/teleal/cling/support/model/container/Container;

    return-object v0
.end method

.method public getFullPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->isItem:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->fullPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->fullPath:Ljava/lang/String;

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getItem()Lorg/teleal/cling/support/model/item/Item;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->item:Lorg/teleal/cling/support/model/item/Item;

    return-object v0
.end method

.method public isItem()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentNode;->isItem:Z

    return v0
.end method
