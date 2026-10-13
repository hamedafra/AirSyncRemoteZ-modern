.class Lcom/aloys/formuler/airsyncremote/RemoteActivity$6;
.super Ljava/lang/Object;
.source "RemoteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 508
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$6;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 512
    invoke-static {}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$700()Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    move-result-object v0

    invoke-static {}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$300()Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->showAtLocation(Landroid/view/View;III)V

    .line 513
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$6;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$800(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    .line 514
    return-void
.end method
