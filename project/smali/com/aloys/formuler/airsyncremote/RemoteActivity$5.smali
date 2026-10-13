.class Lcom/aloys/formuler/airsyncremote/RemoteActivity$5;
.super Ljava/lang/Object;
.source "RemoteActivity.java"

# interfaces
.implements Lcom/aloys/formuler/airsyncremote/DeviceListShow$ClickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/RemoteActivity;->initView()V
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
    .line 499
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$5;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickItem(Lorg/cybergarage/upnp/Device;)V
    .locals 1
    .param p1, "device"    # Lorg/cybergarage/upnp/Device;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$5;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-static {v0, p1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$600(Lcom/aloys/formuler/airsyncremote/RemoteActivity;Lorg/cybergarage/upnp/Device;)V

    .line 504
    return-void
.end method
