.class Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$4;
.super Ljava/lang/Object;
.source "MirrorAudioService.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 403
    iput-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$4;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 406
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$4;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->access$200(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    return-void

    .line 409
    :cond_0
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->isBackground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$4;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->access$600(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)V

    .line 411
    return-void

    .line 413
    :cond_1
    invoke-static {}, Lcom/hisilicon/multiscreen/mirror/MirrorStream;->msSinceAudio()J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 414
    const-string v0, "MirrorAudioService"

    const-string v1, "no sound from the receiver for 15 s, stopping"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$4;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->access$100(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)V

    .line 416
    return-void

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$4;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->access$700(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 419
    return-void
.end method
