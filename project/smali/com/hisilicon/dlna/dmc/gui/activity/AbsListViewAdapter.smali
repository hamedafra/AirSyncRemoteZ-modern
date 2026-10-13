.class public abstract Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;
.super Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;
.source "AbsListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    .local p0, "this":Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;, "Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter<TT;>;"
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract notifyVisibleItemChanged(Landroid/widget/AbsListView;)V
.end method
