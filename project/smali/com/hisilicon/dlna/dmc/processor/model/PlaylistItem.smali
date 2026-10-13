.class public Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
.super Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
.source "PlaylistItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;,
        Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;
    }
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private metadata:Ljava/lang/String;

.field private playStatue:I

.field private remotePlay:Z

.field private title:Ljava/lang/String;

.field private type:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;-><init>(Ljava/lang/Object;)V

    .line 25
    iput v1, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->playStatue:I

    .line 26
    iput-boolean v1, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->remotePlay:Z

    .line 30
    const-string v0, "-1"

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->id:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->url:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->title:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->UNKNOW:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->type:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->metadata:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;-><init>(Ljava/lang/Object;)V

    .line 25
    iput v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->playStatue:I

    .line 26
    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->remotePlay:Z

    .line 39
    const-string v0, "-1"

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->id:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->url:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->title:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->UNKNOW:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->type:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->metadata:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 4
    .param p0, "object"    # Lorg/teleal/cling/support/model/DIDLObject;

    .prologue
    .line 132
    new-instance v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;-><init>(Ljava/lang/Object;)V

    .line 134
    .local v1, "item":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setId(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lorg/teleal/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setTitle(Ljava/lang/String;)V

    .line 137
    invoke-static {p0}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->getUrlFrom(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setUrl(Ljava/lang/String;)V

    .line 140
    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->mediaFromLocal(Ljava/lang/String;)Z

    move-result v0

    .line 142
    .local v0, "isLocal":Z
    instance-of v3, p0, Lorg/teleal/cling/support/model/item/AudioItem;

    if-eqz v3, :cond_1

    .line 143
    if-eqz v0, :cond_0

    .line 144
    sget-object v3, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->AUDIO_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setType(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;)V

    .line 161
    :goto_0
    invoke-static {p0}, Lcom/hisilicon/dlna/dmc/utility/Utility;->createMetaData(Lorg/teleal/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setMetaData(Ljava/lang/String;)V

    .line 163
    return-object v1

    .line 146
    :cond_0
    sget-object v3, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->AUDIO_REMOTE:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setType(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;)V

    goto :goto_0

    .line 147
    :cond_1
    instance-of v3, p0, Lorg/teleal/cling/support/model/item/VideoItem;

    if-eqz v3, :cond_3

    .line 148
    if-eqz v0, :cond_2

    .line 149
    sget-object v3, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->VIDEO_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setType(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;)V

    goto :goto_0

    .line 151
    :cond_2
    sget-object v3, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->VIDEO_REMOTE:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setType(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;)V

    goto :goto_0

    .line 152
    :cond_3
    instance-of v3, p0, Lorg/teleal/cling/support/model/item/ImageItem;

    if-eqz v3, :cond_5

    .line 153
    if-eqz v0, :cond_4

    .line 154
    sget-object v3, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->IMAGE_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setType(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;)V

    goto :goto_0

    .line 156
    :cond_4
    sget-object v3, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->IMAGE_REMOTE:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setType(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;)V

    goto :goto_0

    .line 158
    :cond_5
    sget-object v3, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->UNKNOW:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-virtual {v1, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->setType(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 125
    instance-of v2, p1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    if-nez v2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 127
    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 128
    .local v0, "other":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-super {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->type:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->type:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-virtual {v2, v3}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public fromLocalType()Z
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->type:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->IMAGE_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->type:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->VIDEO_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->type:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    sget-object v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->AUDIO_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 106
    const-string v0, ""

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->metadata:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->type:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->url:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/utility/Utility;->createMetaData(Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->metadata:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlayStatue()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->playStatue:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->type:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 6

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->fromLocalType()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->url:Ljava/lang/String;

    .line 70
    .local v1, "decodeUrl":Ljava/lang/String;
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    .line 71
    .local v4, "uri":Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->makeMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "media_id":Ljava/lang/String;
    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/HttpServerUtil;->createLinkWithId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    .end local v1    # "decodeUrl":Ljava/lang/String;
    .end local v3    # "media_id":Ljava/lang/String;
    .end local v4    # "uri":Ljava/net/URI;
    :goto_0
    return-object v0

    .line 74
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public isRemotePlay()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->remotePlay:Z

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->id:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setMetaData(Ljava/lang/String;)V
    .locals 0
    .param p1, "metadata"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->metadata:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setPlayStatue(I)V
    .locals 0
    .param p1, "playStatue"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->playStatue:I

    .line 121
    return-void
.end method

.method public setRemotePlay(Z)V
    .locals 0
    .param p1, "remotePlay"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->remotePlay:Z

    .line 60
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->title:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setType(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->type:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    .line 103
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->url:Ljava/lang/String;

    .line 87
    return-void
.end method
