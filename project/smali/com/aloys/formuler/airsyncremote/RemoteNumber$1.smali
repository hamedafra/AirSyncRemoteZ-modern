.class Lcom/aloys/formuler/airsyncremote/RemoteNumber$1;
.super Ljava/lang/Object;
.source "RemoteNumber.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/RemoteNumber;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/RemoteNumber;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/RemoteNumber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 188
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    invoke-static {v2}, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->access$000(Lcom/aloys/formuler/airsyncremote/RemoteNumber;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    iget-object v3, v3, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->location:[I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 189
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    iget-object v3, v3, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->location:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iput v3, v2, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->x1:I

    .line 190
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    iget-object v3, v3, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->location:[I

    aget v3, v3, v5

    iput v3, v2, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->y1:I

    .line 192
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 193
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 194
    .local v1, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 195
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    iget v2, v2, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->y1:I

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    iget v2, v2, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->y1:I

    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    invoke-static {v3}, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->access$000(Lcom/aloys/formuler/airsyncremote/RemoteNumber;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    iget v2, v2, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->x1:I

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    iget v2, v2, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->x1:I

    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    invoke-static {v3}, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->access$000(Lcom/aloys/formuler/airsyncremote/RemoteNumber;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-le v0, v2, :cond_1

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/RemoteNumber$1;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteNumber;

    invoke-virtual {v2}, Lcom/aloys/formuler/airsyncremote/RemoteNumber;->dismiss()V

    .line 199
    :cond_1
    return v5
.end method
