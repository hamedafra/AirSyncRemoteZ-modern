.class Lcom/aloys/formuler/airsyncremote/RemoteParent$1;
.super Ljava/lang/Object;
.source "RemoteParent.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/RemoteParent;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/RemoteParent;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/RemoteParent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/RemoteParent;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteParent;

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

    .line 100
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->access$000(Lcom/aloys/formuler/airsyncremote/RemoteParent;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    iget-object v2, v2, Lcom/aloys/formuler/airsyncremote/RemoteParent;->location:[I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 101
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    iget-object v2, v2, Lcom/aloys/formuler/airsyncremote/RemoteParent;->location:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, v1, Lcom/aloys/formuler/airsyncremote/RemoteParent;->x1:I

    .line 102
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    iget-object v2, v2, Lcom/aloys/formuler/airsyncremote/RemoteParent;->location:[I

    aget v2, v2, v4

    iput v2, v1, Lcom/aloys/formuler/airsyncremote/RemoteParent;->y1:I

    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 105
    .local v0, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 107
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    iget v1, v1, Lcom/aloys/formuler/airsyncremote/RemoteParent;->y1:I

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    iget v1, v1, Lcom/aloys/formuler/airsyncremote/RemoteParent;->y1:I

    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    invoke-static {v2}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->access$000(Lcom/aloys/formuler/airsyncremote/RemoteParent;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteParent$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteParent;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->dismiss()V

    .line 112
    :cond_1
    return v4
.end method
