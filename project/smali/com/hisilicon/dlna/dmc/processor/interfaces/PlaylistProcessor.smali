.class public interface abstract Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
.super Ljava/lang/Object;
.source "PlaylistProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$ChangeMode;,
        Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;
    }
.end annotation


# virtual methods
.method public abstract addDIDLObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
.end method

.method public abstract addItem(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
.end method

.method public abstract addListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V
.end method

.method public abstract getAllItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
.end method

.method public abstract getCurrentItemIndex()I
.end method

.method public abstract getItemAt(I)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
.end method

.method public abstract getItemsByViewMode(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem$ViewMode;)Ljava/util/List;
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
.end method

.method public abstract getSize()I
.end method

.method public abstract next()V
.end method

.method public abstract previous()V
.end method

.method public abstract removeDIDLObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
.end method

.method public abstract removeItem(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
.end method

.method public abstract removeListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor$PlaylistListener;)V
.end method

.method public abstract setCurrentItem(I)I
.end method

.method public abstract setCurrentItem(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)I
.end method

.method public abstract setItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateForViewMode()V
.end method
