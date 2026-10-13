.class public abstract Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mNotifyOnChange:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    .local p0, "this":Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;, "Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->mNotifyOnChange:Z

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->itemList:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;, "Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->itemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->itemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 37
    .local v0, "position":I
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->itemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 38
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->itemList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 43
    .end local v0    # "position":I
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->itemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;, "Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter<TT;>;"
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->notifyDataSetChanged()V

    .line 60
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;, "Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter<TT;>;"
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;, "Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter<TT;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 76
    .local p0, "this":Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;, "Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;, "Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter<TT;>;"
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->itemList:Ljava/util/List;

    return-object v0
.end method

.method public insert(Ljava/lang/Object;I)V
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;, "Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 49
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->notifyDataSetChanged()V

    .line 50
    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;, "Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 54
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->notifyDataSetChanged()V

    .line 55
    :cond_0
    return-void
.end method

.method public setItemList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;, "Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->clear()V

    .line 25
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    :cond_0
    iget-boolean v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->notifyDataSetChanged()V

    .line 28
    :cond_1
    return-void
.end method

.method public setNotifyOnChange(Z)V
    .locals 0
    .param p1, "notifyOnChange"    # Z

    .prologue
    .line 20
    .local p0, "this":Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;, "Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->mNotifyOnChange:Z

    .line 21
    return-void
.end method
