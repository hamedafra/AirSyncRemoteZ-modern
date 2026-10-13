.class public Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;
.super Ljava/lang/Object;
.source "PlaylistProcessorImpl.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;


# static fields
.field private static RANDOM:Ljava/util/Random;


# instance fields
.field private m_currentItemIdx:I

.field private m_listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;",
            ">;"
        }
    .end annotation
.end field

.field private m_playlistItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 21
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_listeners:Ljava/util/List;

    .line 26
    return-void
.end method

.method private fireOnItemChangedEvent(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;)V
    .locals 5
    .param p1, "changeMode"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    .prologue
    .line 72
    iget v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v2

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    .line 76
    .local v0, "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    iget v4, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-interface {v0, v1, p1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;->onItemChanged(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;)V

    goto :goto_1

    .line 78
    .end local v0    # "listener":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private isMusic()Z
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->getCurrentItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->getCurrentItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/teleal/cling/support/model/item/AudioItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextNormal()V
    .locals 4

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->getAllItems()Ljava/util/List;

    move-result-object v1

    .line 47
    .local v1, "playlistItems":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 55
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    iget v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 50
    .local v0, "currentIdx":I
    add-int/lit8 v0, v0, 0x1

    .line 51
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 52
    const/4 v0, 0x0

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    .line 54
    sget-object v2, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;->NEXT:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    invoke-direct {p0, v2}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->fireOnItemChangedEvent(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;)V

    goto :goto_0
.end method

.method private nextShuffle()V
    .locals 5

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->getAllItems()Ljava/util/List;

    move-result-object v2

    .line 59
    .local v2, "playlistItems":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 69
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 62
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    iget v4, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 63
    .local v0, "currentIdx":I
    move v1, v0

    .line 64
    .local v1, "newIdx":I
    :goto_1
    if-ne v1, v0, :cond_1

    .line 65
    sget-object v3, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->RANDOM:Ljava/util/Random;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    goto :goto_1

    .line 66
    :cond_1
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    .line 68
    .end local v0    # "currentIdx":I
    .end local v1    # "newIdx":I
    :cond_2
    sget-object v3, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;->NEXT:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    invoke-direct {p0, v3}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->fireOnItemChangedEvent(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;)V

    goto :goto_0
.end method


# virtual methods
.method public addDIDLObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 1
    .param p1, "object"    # Lorg/teleal/cling/support/model/DIDLObject;

    .prologue
    .line 175
    invoke-static {p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->addItem(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    return-object v0
.end method

.method public addItem(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 3
    .param p1, "item"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    monitor-exit v1

    .line 135
    :goto_0
    return-object p1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    .line 135
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    monitor-exit v1

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 96
    iget v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v0

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 101
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    iget v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    goto :goto_0
.end method

.method public getCurrentItemIndex()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    return v0
.end method

.method public getItemAt(I)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    return-object v0
.end method

.method public getItemsByViewMode(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;)Ljava/util/List;
    .locals 5
    .param p1, "viewMode"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;>;"
    sget-object v2, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl$1;->$SwitchMap$com$hisilicon$dlna$dmc$processor$model$PlaylistItem$ViewMode:[I

    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 234
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 214
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;>;"
    :pswitch_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    goto :goto_0

    .line 216
    :pswitch_1
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 217
    .local v0, "item":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getType()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    move-result-object v3

    sget-object v4, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->AUDIO_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-virtual {v3, v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getType()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    move-result-object v3

    sget-object v4, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->AUDIO_REMOTE:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-virtual {v3, v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 222
    .end local v0    # "item":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    :pswitch_2
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 223
    .restart local v0    # "item":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getType()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    move-result-object v3

    sget-object v4, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->IMAGE_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-virtual {v3, v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getType()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    move-result-object v3

    sget-object v4, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->IMAGE_REMOTE:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-virtual {v3, v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 224
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 228
    .end local v0    # "item":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    :pswitch_3
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 229
    .restart local v0    # "item":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getType()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    move-result-object v3

    sget-object v4, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->VIDEO_LOCAL:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-virtual {v3, v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getType()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    move-result-object v3

    sget-object v4, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->VIDEO_REMOTE:Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;

    invoke-virtual {v3, v4}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 230
    :cond_6
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public next()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getShuffle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->nextShuffle()V

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->nextNormal()V

    goto :goto_0
.end method

.method public previous()V
    .locals 4

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->getAllItems()Ljava/util/List;

    move-result-object v1

    .line 84
    .local v1, "playlistItems":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 92
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    iget v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 87
    .local v0, "currentIdx":I
    add-int/lit8 v0, v0, -0x1

    .line 88
    if-gez v0, :cond_1

    .line 89
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    .line 91
    sget-object v2, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;->PREV:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    invoke-direct {p0, v2}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->fireOnItemChangedEvent(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;)V

    goto :goto_0
.end method

.method public removeDIDLObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 1
    .param p1, "object"    # Lorg/teleal/cling/support/model/DIDLObject;

    .prologue
    .line 180
    invoke-static {p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->createFromDLDIObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->removeItem(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    return-object v0
.end method

.method public removeItem(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 5
    .param p1, "item"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .prologue
    .line 141
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    monitor-enter v3

    .line 142
    const/4 v1, -0x1

    .line 143
    .local v1, "itemIdx":I
    :try_start_0
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 144
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v2

    invoke-interface {v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    .line 146
    .local v0, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->getCurrentTrackURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->stop()V

    .line 149
    :cond_0
    iget v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    if-ne v1, v2, :cond_1

    .line 150
    const/4 v2, 0x0

    iput v2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    .line 151
    :cond_1
    monitor-exit v3

    .line 153
    .end local v0    # "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    .end local p1    # "item":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    :goto_0
    return-object p1

    .restart local p1    # "item":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    :cond_2
    const/4 p1, 0x0

    monitor-exit v3

    goto :goto_0

    .line 154
    .end local p1    # "item":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;

    .prologue
    .line 198
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_listeners:Ljava/util/List;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 201
    :cond_0
    monitor-exit v1

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentItem(I)I
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 108
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 109
    iput p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    .line 110
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;->UNKNOW:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    invoke-direct {p0, v0}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->fireOnItemChangedEvent(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;)V

    .line 111
    iget v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setCurrentItem(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)I
    .locals 2
    .param p1, "item"    # Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    .line 120
    sget-object v0, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;->UNKNOW:Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;

    invoke-direct {p0, v0}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->fireOnItemChangedEvent(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;)V

    .line 121
    iget v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    monitor-exit v1

    return v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;>;"
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    monitor-enter v1

    .line 160
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    .line 161
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 162
    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    :cond_0
    monitor-exit v1

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateForViewMode()V
    .locals 3

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->getAllItems()Ljava/util/List;

    move-result-object v0

    .line 240
    .local v0, "playlistItems":Ljava/util/List;, "Ljava/util/List<Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_playlistItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;->m_currentItemIdx:I

    .line 241
    return-void

    .line 240
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
