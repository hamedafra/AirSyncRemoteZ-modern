.class Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$1;
.super Ljava/lang/Object;
.source "VImeClientController.java"

# interfaces
.implements Lcom/hisilicon/multiscreen/http/HiHttpRecvMsgListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;


# direct methods
.method constructor <init>(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpMsgReceived([BLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "arg0"    # [B
    .param p2, "remoteIP"    # Ljava/lang/String;

    .prologue
    .line 399
    const/4 v1, 0x0

    .line 402
    .local v1, "response":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    invoke-static {v2, p1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$000(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 409
    :goto_0
    if-nez v1, :cond_0

    .line 411
    const-string v1, "no_response"

    .line 413
    :cond_0
    return-object v1

    .line 404
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Vime Message parse exception."

    invoke-static {v2}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
