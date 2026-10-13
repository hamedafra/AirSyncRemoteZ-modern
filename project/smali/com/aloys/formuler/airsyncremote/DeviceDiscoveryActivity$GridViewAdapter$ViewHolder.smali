.class Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DeviceDiscoveryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public mDevice_image:Landroid/widget/ImageView;

.field public mDevice_layer:Landroid/widget/ImageView;

.field public mDevice_tag_info:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;

    .prologue
    .line 1793
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter$ViewHolder;->this$1:Lcom/aloys/formuler/airsyncremote/DeviceDiscoveryActivity$GridViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
