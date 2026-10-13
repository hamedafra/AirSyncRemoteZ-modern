.class Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$3;
.super Landroid/content/BroadcastReceiver;
.source "MultiScreenControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->registerConnectReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isNoConnection:Z

.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$3;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1038
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$3;->isNoConnection:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 1043
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1045
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1047
    const-string v3, "noConnectivity"

    .line 1048
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$3;->isNoConnection:Z

    .line 1050
    iget-boolean v3, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$3;->isNoConnection:Z

    if-eqz v3, :cond_1

    .line 1053
    const-string v3, "Network error."

    invoke-static {v3}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    .line 1054
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$3;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-static {v3, v5}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$300(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;Z)V

    .line 1057
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$3;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-static {v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$400(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)V

    .line 1058
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$3;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-static {v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$500(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)V

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$3;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    const-string v4, "connectivity"

    .line 1065
    invoke-virtual {v3, v4}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1066
    .local v1, "connec":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1068
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1070
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$3;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$300(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;Z)V

    .line 1071
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$3;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-static {v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$600(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)V

    goto :goto_0

    .line 1075
    :cond_2
    iget-object v3, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$3;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-static {v3, v5}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$300(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;Z)V

    goto :goto_0
.end method
