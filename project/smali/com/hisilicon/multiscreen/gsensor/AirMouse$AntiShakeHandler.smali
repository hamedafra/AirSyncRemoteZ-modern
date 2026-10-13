.class Lcom/hisilicon/multiscreen/gsensor/AirMouse$AntiShakeHandler;
.super Landroid/os/Handler;
.source "AirMouse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/gsensor/AirMouse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AntiShakeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;


# direct methods
.method constructor <init>(Lcom/hisilicon/multiscreen/gsensor/AirMouse;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$AntiShakeHandler;->this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    .line 442
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 443
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 448
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 458
    :goto_0
    return-void

    .line 452
    :pswitch_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/gsensor/AirMouse$AntiShakeHandler;->this$0:Lcom/hisilicon/multiscreen/gsensor/AirMouse;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/hisilicon/multiscreen/gsensor/AirMouse;->access$300(Lcom/hisilicon/multiscreen/gsensor/AirMouse;F)V

    goto :goto_0

    .line 448
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
