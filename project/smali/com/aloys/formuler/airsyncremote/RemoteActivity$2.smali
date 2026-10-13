.class Lcom/aloys/formuler/airsyncremote/RemoteActivity$2;
.super Ljava/lang/Object;
.source "RemoteActivity.java"

# interfaces
.implements Lcom/aloys/formuler/airsyncremote/IOriginalDeviceListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/RemoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deviceAdd(Lorg/cybergarage/upnp/Device;)V
    .locals 2
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$000(Lcom/aloys/formuler/airsyncremote/RemoteActivity;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$100(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    .line 272
    return-void
.end method

.method public deviceRemoved(Lorg/cybergarage/upnp/Device;)V
    .locals 1
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$100(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    .line 280
    return-void
.end method
