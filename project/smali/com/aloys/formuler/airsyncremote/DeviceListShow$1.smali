.class Lcom/aloys/formuler/airsyncremote/DeviceListShow$1;
.super Ljava/lang/Object;
.source "DeviceListShow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 66
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow$1;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow$1;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->dismiss()V

    .line 72
    return-void
.end method
