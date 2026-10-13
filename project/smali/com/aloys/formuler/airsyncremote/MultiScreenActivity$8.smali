.class Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$8;
.super Ljava/lang/Object;
.source "MultiScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 918
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 922
    iget-object v5, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v5}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$700(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    .line 923
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 964
    :cond_0
    :goto_0
    :pswitch_0
    return v4

    .line 927
    :sswitch_0
    iget-object v5, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v5, p2}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$800(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 932
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 937
    :pswitch_1
    iget-object v5, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v5, v6}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$902(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;I)I

    .line 938
    iget-object v5, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v5, v6}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$1002(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;I)I

    .line 939
    iget-object v5, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v5}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$1100(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v1

    .line 940
    .local v1, "right":I
    iget-object v5, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v5}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$1200(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Button;->getWidth()I

    move-result v5

    sub-int v0, v1, v5

    .line 941
    .local v0, "left":I
    iget-object v5, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v5}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$900(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)I

    move-result v5

    if-lt v5, v0, :cond_1

    iget-object v5, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v5}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$900(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)I

    move-result v5

    if-le v5, v1, :cond_0

    .line 942
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 947
    .end local v0    # "left":I
    .end local v1    # "right":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v2, v5

    .line 948
    .local v2, "x2":I
    iget-object v5, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v5}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$1000(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)I

    move-result v3

    .line 950
    .local v3, "y2":I
    iget-object v5, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    iget-object v6, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v6}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$1100(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)Landroid/widget/RelativeLayout;

    move-result-object v6

    iget-object v7, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v7}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$900(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)I

    move-result v7

    sub-int v7, v2, v7

    iget-object v8, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v8}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$1000(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)I

    move-result v8

    sub-int v8, v3, v8

    invoke-static {v5, v6, v7, v8}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$1300(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Landroid/view/View;II)V

    .line 951
    iget-object v5, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v5, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$902(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;I)I

    .line 952
    iget-object v5, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$8;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v5, v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$1002(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;I)I

    goto :goto_0

    .line 923
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0061 -> :sswitch_0
        0x7f0b0065 -> :sswitch_1
    .end sparse-switch

    .line 932
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
