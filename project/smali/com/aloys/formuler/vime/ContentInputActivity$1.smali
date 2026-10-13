.class Lcom/aloys/formuler/vime/ContentInputActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ContentInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/vime/ContentInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/vime/ContentInputActivity;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/vime/ContentInputActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/vime/ContentInputActivity;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/aloys/formuler/vime/ContentInputActivity$1;->this$0:Lcom/aloys/formuler/vime/ContentInputActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 166
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "intentAction":Ljava/lang/String;
    const-string v1, "hiandroid.vime.endinput.stb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity$1;->this$0:Lcom/aloys/formuler/vime/ContentInputActivity;

    sget-object v2, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;->STB:Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    invoke-static {v1, v2}, Lcom/aloys/formuler/vime/ContentInputActivity;->access$002(Lcom/aloys/formuler/vime/ContentInputActivity;Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;)Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    .line 177
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name of VIME broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity$1;->this$0:Lcom/aloys/formuler/vime/ContentInputActivity;

    invoke-virtual {v1}, Lcom/aloys/formuler/vime/ContentInputActivity;->finish()V

    .line 179
    return-void

    .line 172
    :cond_1
    const-string v1, "hiandroid.vime.endinput.phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/aloys/formuler/vime/ContentInputActivity$1;->this$0:Lcom/aloys/formuler/vime/ContentInputActivity;

    sget-object v2, Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;->OTHERS:Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    invoke-static {v1, v2}, Lcom/aloys/formuler/vime/ContentInputActivity;->access$002(Lcom/aloys/formuler/vime/ContentInputActivity;Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;)Lcom/aloys/formuler/vime/ContentInputActivity$EndInputType;

    goto :goto_0
.end method
