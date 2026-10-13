.class Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$2;
.super Ljava/lang/Object;
.source "MirrorAudioService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;


# direct methods
.method constructor <init>(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 357
    iput-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$2;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$2;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->access$200(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    return-void

    .line 363
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 381
    :pswitch_1
    iget-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$2;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-static {p1, v0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->access$302(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;Z)Z

    .line 382
    iget-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$2;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-static {p1}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->access$400(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 383
    iget-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$2;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-static {p1, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->access$402(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;Z)Z

    .line 384
    sput-boolean v1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sPaused:Z

    .line 385
    iget-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$2;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-static {p1}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->access$500(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)V

    goto :goto_0

    .line 366
    :pswitch_2
    iget-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$2;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-static {p1, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->access$302(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;Z)Z

    .line 367
    sput-boolean v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sPaused:Z

    .line 368
    iget-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$2;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-static {p1, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->access$402(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;Z)Z

    .line 369
    iget-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$2;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-static {p1}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->access$500(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)V

    .line 370
    goto :goto_0

    .line 373
    :pswitch_3
    iget-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$2;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-static {p1, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->access$302(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;Z)Z

    .line 374
    sget-boolean p1, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sPaused:Z

    if-nez p1, :cond_1

    .line 375
    sput-boolean v0, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->sPaused:Z

    .line 376
    iget-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$2;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-static {p1, v0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->access$402(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;Z)Z

    .line 377
    iget-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$2;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-static {p1}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->access$500(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)V

    .line 391
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
