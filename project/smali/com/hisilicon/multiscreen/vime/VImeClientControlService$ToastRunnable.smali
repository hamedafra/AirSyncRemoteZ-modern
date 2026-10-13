.class Lcom/hisilicon/multiscreen/vime/VImeClientControlService$ToastRunnable;
.super Ljava/lang/Object;
.source "VImeClientControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/vime/VImeClientControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToastRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;


# direct methods
.method private constructor <init>(Lcom/hisilicon/multiscreen/vime/VImeClientControlService;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService$ToastRunnable;->this$0:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/multiscreen/vime/VImeClientControlService;Lcom/hisilicon/multiscreen/vime/VImeClientControlService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/multiscreen/vime/VImeClientControlService;
    .param p2, "x1"    # Lcom/hisilicon/multiscreen/vime/VImeClientControlService$1;

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService$ToastRunnable;-><init>(Lcom/hisilicon/multiscreen/vime/VImeClientControlService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 388
    iget-object v1, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService$ToastRunnable;->this$0:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    .line 389
    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080078

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 391
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x30

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 392
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 393
    return-void
.end method
