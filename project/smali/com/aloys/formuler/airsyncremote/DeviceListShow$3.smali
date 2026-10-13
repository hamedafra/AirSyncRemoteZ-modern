.class Lcom/aloys/formuler/airsyncremote/DeviceListShow$3;
.super Ljava/lang/Object;
.source "DeviceListShow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 109
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow$3;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 113
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow$3;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->access$200(Lcom/aloys/formuler/airsyncremote/DeviceListShow;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow$3;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    iget-object v2, v2, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->location:[I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 114
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow$3;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow$3;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    iget-object v2, v2, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->location:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, v1, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->x1:I

    .line 115
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow$3;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow$3;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    iget-object v2, v2, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->location:[I

    aget v2, v2, v4

    iput v2, v1, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->y1:I

    .line 117
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 118
    .local v0, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 119
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow$3;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    iget v1, v1, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->y1:I

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow$3;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    iget v1, v1, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->y1:I

    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow$3;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    invoke-static {v2}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->access$200(Lcom/aloys/formuler/airsyncremote/DeviceListShow;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/DeviceListShow$3;->this$0:Lcom/aloys/formuler/airsyncremote/DeviceListShow;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/DeviceListShow;->dismiss()V

    .line 123
    :cond_1
    return v4
.end method
