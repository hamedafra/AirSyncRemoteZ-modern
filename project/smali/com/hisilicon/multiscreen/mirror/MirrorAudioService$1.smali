.class Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$1;
.super Landroid/media/session/MediaSession$Callback;
.source "MirrorAudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->createSession()V
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

    .line 281
    iput-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$1;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$1;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->access$000(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;Z)V

    .line 290
    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$1;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->access$000(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;Z)V

    .line 285
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$1;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->access$100(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;)V

    .line 295
    return-void
.end method
