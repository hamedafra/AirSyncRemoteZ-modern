.class public Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
.super Ljava/lang/Object;
.source "AdapterItem.java"


# instance fields
.field protected m_data:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->m_data:Ljava/lang/Object;

    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 16
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 17
    check-cast v0, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    .line 18
    .local v0, "other":Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    iget-object v2, v0, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->m_data:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 19
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->m_data:Ljava/lang/Object;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 26
    .end local v0    # "other":Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    :cond_0
    :goto_0
    return v1

    .line 20
    .restart local v0    # "other":Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    :cond_1
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->m_data:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 23
    iget-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->m_data:Ljava/lang/Object;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->m_data:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->m_data:Ljava/lang/Object;

    return-object v0
.end method
