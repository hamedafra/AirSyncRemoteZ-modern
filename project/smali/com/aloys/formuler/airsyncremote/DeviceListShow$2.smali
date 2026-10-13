.class Lcom/aloys/formuler/airsyncremote/DeviceListShow$2;
.super Ljava/lang/Object;
.source "DeviceListShow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/DeviceListShow;-><init>(Landroid/app/Activity;Lcom/aloys/formuler/airsyncremote/DeviceListShow$ClickCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/DeviceListShow;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/DeviceListShow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow$2;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow$2;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->access$000(Lcom/aloys/formuler/airsyncremote/DeviceListShow;)Lcom/aloys/formuler/airsyncremote/PopAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/aloys/formuler/airsyncremote/PopAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/Device;

    .line 100
    .local v0, "mDevice":Lorg/cybergarage/upnp/Device;
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow$2;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->access$100(Lcom/aloys/formuler/airsyncremote/DeviceListShow;)Lcom/aloys/formuler/airsyncremote/DeviceListShow$ClickCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow$2;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->access$100(Lcom/aloys/formuler/airsyncremote/DeviceListShow;)Lcom/aloys/formuler/airsyncremote/DeviceListShow$ClickCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/aloys/formuler/airsyncremote/DeviceListShow$ClickCallback;->clickItem(Lorg/cybergarage/upnp/Device;)V

    .line 103
    :cond_0
    return-void
.end method
