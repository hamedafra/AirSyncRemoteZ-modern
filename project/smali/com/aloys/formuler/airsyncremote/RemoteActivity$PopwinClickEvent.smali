.class Lcom/aloys/formuler/airsyncremote/RemoteActivity$PopwinClickEvent;
.super Ljava/lang/Object;
.source "RemoteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/RemoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopwinClickEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;


# direct methods
.method private constructor <init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V
    .locals 0

    .prologue
    .line 1521
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$PopwinClickEvent;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;Lcom/aloys/formuler/airsyncremote/RemoteActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;
    .param p2, "x1"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity$1;

    .prologue
    .line 1521
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/RemoteActivity$PopwinClickEvent;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$PopwinClickEvent;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$1800(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)Lcom/aloys/formuler/airsyncremote/RemoteParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1528
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$PopwinClickEvent;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$1800(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)Lcom/aloys/formuler/airsyncremote/RemoteParent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->dismiss()V

    .line 1531
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1548
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$PopwinClickEvent;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$1800(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)Lcom/aloys/formuler/airsyncremote/RemoteParent;

    move-result-object v0

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$PopwinClickEvent;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    iget v1, v1, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteUiStatus:I

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->updateBackground(I)V

    .line 1549
    return-void

    .line 1534
    :pswitch_1
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$PopwinClickEvent;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->gotoRemoteTouch()V

    goto :goto_0

    .line 1538
    :pswitch_2
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$PopwinClickEvent;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->gotoRemoteKey()V

    goto :goto_0

    .line 1542
    :pswitch_3
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$PopwinClickEvent;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->gotoGamePage()V

    goto :goto_0

    .line 1531
    :pswitch_data_0
    .packed-switch 0x7f0b00ae
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
