.class public Lcom/aloys/formuler/airsyncremote/PopAdapter;
.super Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;
.source "PopAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aloys/formuler/airsyncremote/PopAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter",
        "<",
        "Lorg/cybergarage/upnp/Device;",
        ">;"
    }
.end annotation


# static fields
.field public static mActivity:Landroid/app/Activity;


# instance fields
.field devList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

.field private hashmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/PopAdapter;->hashmap:Ljava/util/HashMap;

    .line 26
    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/PopAdapter;->devList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    .line 30
    sput-object p1, Lcom/aloys/formuler/airsyncremote/PopAdapter;->mActivity:Landroid/app/Activity;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/PopAdapter;->hashmap:Ljava/util/HashMap;

    .line 32
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/PopAdapter;->resetData()V

    .line 33
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 63
    if-nez p2, :cond_2

    .line 64
    sget-object v3, Lcom/aloys/formuler/airsyncremote/PopAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030034

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    new-instance v1, Lcom/aloys/formuler/airsyncremote/PopAdapter$ViewHolder;

    invoke-direct {v1, p0, v5}, Lcom/aloys/formuler/airsyncremote/PopAdapter$ViewHolder;-><init>(Lcom/aloys/formuler/airsyncremote/PopAdapter;Lcom/aloys/formuler/airsyncremote/PopAdapter$1;)V

    .line 66
    .local v1, "holder":Lcom/aloys/formuler/airsyncremote/PopAdapter$ViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    const v3, 0x7f0b00dd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v1, Lcom/aloys/formuler/airsyncremote/PopAdapter$ViewHolder;->llItem:Landroid/widget/LinearLayout;

    .line 68
    const v3, 0x7f0b00de

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/aloys/formuler/airsyncremote/PopAdapter$ViewHolder;->groupItem:Landroid/widget/TextView;

    .line 73
    :goto_0
    iget-object v3, v1, Lcom/aloys/formuler/airsyncremote/PopAdapter$ViewHolder;->groupItem:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/aloys/formuler/airsyncremote/PopAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/Device;

    .line 76
    .local v0, "device":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/PopAdapter;->hashmap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hisilicon/multiscreen/protocol/utils/HostNetInterface;->uri2Ip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    :cond_0
    if-eqz v2, :cond_1

    .line 82
    sget-object v3, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->save_ip:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->save_ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    iget-object v3, v1, Lcom/aloys/formuler/airsyncremote/PopAdapter$ViewHolder;->llItem:Landroid/widget/LinearLayout;

    const v4, 0x7f020018

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 88
    :cond_1
    :goto_1
    iget-object v3, v1, Lcom/aloys/formuler/airsyncremote/PopAdapter$ViewHolder;->groupItem:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-object p2

    .line 70
    .end local v0    # "device":Lorg/cybergarage/upnp/Device;
    .end local v1    # "holder":Lcom/aloys/formuler/airsyncremote/PopAdapter$ViewHolder;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aloys/formuler/airsyncremote/PopAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/aloys/formuler/airsyncremote/PopAdapter$ViewHolder;
    goto :goto_0

    .line 85
    .restart local v0    # "device":Lorg/cybergarage/upnp/Device;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_3
    iget-object v3, v1, Lcom/aloys/formuler/airsyncremote/PopAdapter$ViewHolder;->llItem:Landroid/widget/LinearLayout;

    const v4, 0x7f020017

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public resetData()V
    .locals 6

    .prologue
    .line 37
    invoke-super {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/MyAdapter;->clear()V

    .line 38
    iget-object v4, p0, Lcom/aloys/formuler/airsyncremote/PopAdapter;->hashmap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 39
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getInstance()Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getDeviceDiscover()Lcom/hisilicon/multiscreen/controller/DeviceDiscover;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hisilicon/multiscreen/controller/DeviceDiscover;->getDeviceList()Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    move-result-object v4

    iput-object v4, p0, Lcom/aloys/formuler/airsyncremote/PopAdapter;->devList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    .line 40
    iget-object v4, p0, Lcom/aloys/formuler/airsyncremote/PopAdapter;->devList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    if-eqz v4, :cond_1

    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/aloys/formuler/airsyncremote/PopAdapter;->devList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    invoke-virtual {v4}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 44
    iget-object v4, p0, Lcom/aloys/formuler/airsyncremote/PopAdapter;->devList:Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;

    invoke-virtual {v4, v1}, Lcom/hisilicon/multiscreen/upnputils/MultiScreenDeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 45
    .local v0, "device":Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/aloys/formuler/airsyncremote/PopAdapter;->hashmap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 47
    .local v2, "lis":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 49
    iget-object v4, p0, Lcom/aloys/formuler/airsyncremote/PopAdapter;->hashmap:Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_1
    invoke-virtual {p0, v0}, Lcom/aloys/formuler/airsyncremote/PopAdapter;->add(Ljava/lang/Object;)V

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    iget-object v4, p0, Lcom/aloys/formuler/airsyncremote/PopAdapter;->hashmap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 58
    .end local v0    # "device":Lorg/cybergarage/upnp/Device;
    .end local v1    # "i":I
    .end local v2    # "lis":Ljava/lang/Integer;
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    return-void
.end method
