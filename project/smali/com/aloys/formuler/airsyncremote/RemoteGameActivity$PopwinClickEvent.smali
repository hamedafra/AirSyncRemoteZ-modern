.class Lcom/aloys/formuler/airsyncremote/RemoteGameActivity$PopwinClickEvent;
.super Ljava/lang/Object;
.source "RemoteGameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopwinClickEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;


# direct methods
.method private constructor <init>(Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity$PopwinClickEvent;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;Lcom/aloys/formuler/airsyncremote/RemoteGameActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;
    .param p2, "x1"    # Lcom/aloys/formuler/airsyncremote/RemoteGameActivity$1;

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity$PopwinClickEvent;-><init>(Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity$PopwinClickEvent;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->access$100(Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;)Lcom/aloys/formuler/airsyncremote/RemoteParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity$PopwinClickEvent;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->access$100(Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;)Lcom/aloys/formuler/airsyncremote/RemoteParent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->dismiss()V

    .line 329
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 353
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity$PopwinClickEvent;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->access$100(Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;)Lcom/aloys/formuler/airsyncremote/RemoteParent;

    move-result-object v0

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity$PopwinClickEvent;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;

    iget v1, v1, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->mRemoteUiStatus:I

    invoke-virtual {v0, v1}, Lcom/aloys/formuler/airsyncremote/RemoteParent;->updateBackground(I)V

    .line 354
    return-void

    .line 333
    :pswitch_1
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity$PopwinClickEvent;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->gotoRemoteTouch()V

    goto :goto_0

    .line 339
    :pswitch_2
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity$PopwinClickEvent;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->gotoRemoteKey()V

    goto :goto_0

    .line 345
    :pswitch_3
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity$PopwinClickEvent;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteGameActivity;->updateHandsUI()V

    goto :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0x7f0b00ae
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
