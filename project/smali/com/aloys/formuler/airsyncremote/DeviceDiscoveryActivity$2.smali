.class Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$2;
.super Ljava/lang/Object;
.source "DeviceDiscoveryActivity.java"

# interfaces
.implements Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deviceAdd(Lorg/cybergarage/upnp/Device;)V
    .locals 2
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$400(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$500(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V

    .line 281
    return-void
.end method

.method public deviceRemoved(Lorg/cybergarage/upnp/Device;)V
    .locals 1
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;->access$500(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity;)V

    .line 289
    return-void
.end method
