.class Lcom/hisilicon/multiscreen/gsensor/AirMouse$HideMouseHandler;
.super Landroid/os/Handler;
.source "AirMouse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/gsensor/AirMouse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideMouseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;


# direct methods
.method constructor <init>(Lcom/hisilicon/multiscreen/gsensor/AirMouse;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$HideMouseHandler;->this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    .line 527
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 528
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 533
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 544
    :goto_0
    return-void

    .line 537
    :pswitch_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$HideMouseHandler;->this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->access$400(Lcom/hisilicon/multiscreen/gsensor/AirMouse;)V

    goto :goto_0

    .line 533
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
