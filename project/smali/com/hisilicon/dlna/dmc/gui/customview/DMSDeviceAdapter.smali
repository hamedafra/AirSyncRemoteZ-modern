.class public Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;
.super Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;
.source "DMSDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter",
        "<",
        "Lorg/teleal/cling/model/meta/Device;",
        ">;"
    }
.end annotation


# instance fields
.field private deviceName:Ljava/lang/String;

.field private m_inflater:Landroid/view/LayoutInflater;

.field private selPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;->m_inflater:Landroid/view/LayoutInflater;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;->selPosition:I

    .line 25
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;->m_inflater:Landroid/view/LayoutInflater;

    .line 26
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 43
    if-nez p2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;->m_inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030010

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 48
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 50
    invoke-virtual {p0, p2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;->setViewHolder(Landroid/view/View;)V

    .line 53
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter$ViewHolder;

    .line 55
    .local v1, "holder":Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/teleal/cling/model/meta/Device;

    .line 57
    .local v0, "device":Lorg/teleal/cling/model/meta/Device;
    iget-object v2, v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter$ViewHolder;->rc_device_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/teleal/cling/model/meta/Device;->getDetails()Lorg/teleal/cling/model/meta/DeviceDetails;

    move-result-object v3

    invoke-virtual {v3}, Lorg/teleal/cling/model/meta/DeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/utility/Utility;->getDeviceFriendlyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;->selPosition:I

    if-ne p1, v2, :cond_3

    .line 66
    iget-object v2, v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter$ViewHolder;->rc_device_ll:Landroid/widget/LinearLayout;

    const v3, 0x7f020018

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 69
    :goto_0
    instance-of v2, v0, Lorg/teleal/cling/model/meta/LocalDevice;

    if-eqz v2, :cond_2

    .line 71
    iget-object v2, v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter$ViewHolder;->rc_device_name:Landroid/widget/TextView;

    const v3, 0x7f08004d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 74
    :cond_2
    return-object p2

    .line 68
    :cond_3
    iget-object v2, v1, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter$ViewHolder;->rc_device_ll:Landroid/widget/LinearLayout;

    const v3, 0x7f020017

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public notifyVisibleItemChanged(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 39
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;->deviceName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setSelPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;->selPosition:I

    .line 30
    return-void
.end method

.method public setViewHolder(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 79
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter$ViewHolder;-><init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter;Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter$1;)V

    .line 80
    .local v0, "viewHolder":Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter$ViewHolder;
    iput-object p1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter$ViewHolder;->view:Landroid/view/View;

    .line 81
    const v1, 0x7f0b0044

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter$ViewHolder;->rc_device_name:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f0b0043

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSDeviceAdapter$ViewHolder;->rc_device_ll:Landroid/widget/LinearLayout;

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    return-void
.end method
