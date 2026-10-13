.class Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$3;
.super Landroid/content/BroadcastReceiver;
.source "MirrorAudioService.java"


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

    .line 394
    iput-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$3;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 397
    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 398
    iget-object p1, p0, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService$3;->this$0:Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;->access$000(Lcom/hisilicon/multiscreen/mirror/MirrorAudioService;Z)V

    .line 400
    :cond_0
    return-void
.end method
