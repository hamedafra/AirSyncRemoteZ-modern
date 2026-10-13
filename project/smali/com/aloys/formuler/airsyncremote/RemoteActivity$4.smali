.class Lcom/aloys/formuler/airsyncremote/RemoteActivity$4;
.super Ljava/lang/Object;
.source "RemoteActivity.java"

# interfaces
.implements Lcom/hisilicon/multiscreen/gsensor/IShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/RemoteActivity;->initShakeMe()V
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
    .line 430
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$4;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shake(II)V
    .locals 1
    .param p1, "times"    # I
    .param p2, "level"    # I

    .prologue
    .line 434
    sget-object v0, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->mRemoteTouchView:Lcom/aloys/formuler/airsyncremote/RemoteTouchView;

    invoke-virtual {v0}, Lcom/aloys/formuler/airsyncremote/RemoteTouchView;->isAirMouseOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$4;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$400(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)V

    .line 437
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$4;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/RemoteActivity;->access$500(Lcom/aloys/formuler/airsyncremote/RemoteActivity;)Lcom/hisilicon/multiscreen/gsensor/ShakeMe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/gsensor/ShakeMe;->doVibrate()V

    .line 439
    :cond_0
    return-void
.end method
