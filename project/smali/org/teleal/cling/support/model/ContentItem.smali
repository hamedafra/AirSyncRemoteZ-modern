.class public Lorg/teleal/cling/support/model/ContentItem;
.super Ljava/lang/Object;
.source "ContentItem.java"


# instance fields
.field private content:Lorg/teleal/cling/support/model/DIDLObject;

.field private device:Lorg/teleal/cling/model/meta/Device;

.field private id:Ljava/lang/String;

.field private isContainer:Ljava/lang/Boolean;

.field private service:Lorg/teleal/cling/model/meta/Service;


# direct methods
.method public constructor <init>(Lorg/teleal/cling/support/model/container/Container;Lorg/teleal/cling/model/meta/Service;)V
    .locals 1
    .param p1, "container"    # Lorg/teleal/cling/support/model/container/Container;
    .param p2, "service"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lorg/teleal/cling/support/model/ContentItem;->service:Lorg/teleal/cling/model/meta/Service;

    .line 18
    iput-object p1, p0, Lorg/teleal/cling/support/model/ContentItem;->content:Lorg/teleal/cling/support/model/DIDLObject;

    .line 19
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/container/Container;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/support/model/ContentItem;->id:Ljava/lang/String;

    .line 20
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/support/model/ContentItem;->isContainer:Ljava/lang/Boolean;

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/support/model/item/Item;Lorg/teleal/cling/model/meta/Service;)V
    .locals 1
    .param p1, "item"    # Lorg/teleal/cling/support/model/item/Item;
    .param p2, "service"    # Lorg/teleal/cling/model/meta/Service;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lorg/teleal/cling/support/model/ContentItem;->service:Lorg/teleal/cling/model/meta/Service;

    .line 26
    iput-object p1, p0, Lorg/teleal/cling/support/model/ContentItem;->content:Lorg/teleal/cling/support/model/DIDLObject;

    .line 27
    invoke-virtual {p1}, Lorg/teleal/cling/support/model/item/Item;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/support/model/ContentItem;->id:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/teleal/cling/support/model/ContentItem;->isContainer:Ljava/lang/Boolean;

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    if-ne p0, p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v1

    .line 57
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 59
    check-cast v0, Lorg/teleal/cling/support/model/ContentItem;

    .line 61
    .local v0, "that":Lorg/teleal/cling/support/model/ContentItem;
    iget-object v3, p0, Lorg/teleal/cling/support/model/ContentItem;->id:Ljava/lang/String;

    iget-object v4, v0, Lorg/teleal/cling/support/model/ContentItem;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getContainer()Lorg/teleal/cling/support/model/container/Container;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/teleal/cling/support/model/ContentItem;->isContainer:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lorg/teleal/cling/support/model/ContentItem;->content:Lorg/teleal/cling/support/model/DIDLObject;

    check-cast v0, Lorg/teleal/cling/support/model/container/Container;

    .line 35
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem()Lorg/teleal/cling/support/model/item/Item;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/teleal/cling/support/model/ContentItem;->isContainer:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/teleal/cling/support/model/ContentItem;->content:Lorg/teleal/cling/support/model/DIDLObject;

    check-cast v0, Lorg/teleal/cling/support/model/item/Item;

    goto :goto_0
.end method

.method public getService()Lorg/teleal/cling/model/meta/Service;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/teleal/cling/support/model/ContentItem;->service:Lorg/teleal/cling/model/meta/Service;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/teleal/cling/support/model/ContentItem;->content:Lorg/teleal/cling/support/model/DIDLObject;

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/DIDLObject;->hashCode()I

    move-result v0

    return v0
.end method

.method public isContainer()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/teleal/cling/support/model/ContentItem;->isContainer:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/teleal/cling/support/model/ContentItem;->content:Lorg/teleal/cling/support/model/DIDLObject;

    invoke-virtual {v0}, Lorg/teleal/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
