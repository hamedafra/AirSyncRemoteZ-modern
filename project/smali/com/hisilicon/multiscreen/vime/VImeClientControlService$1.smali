.class Lcom/hisilicon/multiscreen/vime/VImeClientControlService$1;
.super Ljava/lang/Object;
.source "VImeClientControlService.java"

# interfaces
.implements Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/vime/VImeClientControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;


# direct methods
.method constructor <init>(Lcom/hisilicon/multiscreen/vime/VImeClientControlService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService$1;->this$0:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callInput(Lcom/hisilicon/multiscreen/protocol/message/Action;)V
    .locals 6
    .param p1, "action"    # Lcom/hisilicon/multiscreen/protocol/message/Action;

    .prologue
    const/4 v5, 0x0

    .line 113
    new-instance v1, Landroid/content/Intent;

    .line 114
    invoke-static {}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->getInstance()Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    move-result-object v2

    const-class v3, Lcom/aloys/formuler/vime/ContentInputActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "inputType"

    invoke-virtual {p1, v5}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getArgument(I)Lcom/hisilicon/multiscreen/protocol/message/Argument;

    move-result-object v2

    .line 118
    invoke-virtual {v2, v5}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->getArgumentValue(I)Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getVaule()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 117
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    const-string v3, "imeOptions"

    invoke-virtual {p1, v5}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getArgument(I)Lcom/hisilicon/multiscreen/protocol/message/Argument;

    move-result-object v2

    const/4 v4, 0x1

    .line 120
    invoke-virtual {v2, v4}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->getArgumentValue(I)Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getVaule()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 119
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const-string v3, "text"

    invoke-virtual {p1, v5}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getArgument(I)Lcom/hisilicon/multiscreen/protocol/message/Argument;

    move-result-object v2

    const/4 v4, 0x2

    .line 122
    invoke-virtual {v2, v4}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->getArgumentValue(I)Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getVaule()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 121
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v3, "srcStartSelection"

    invoke-virtual {p1, v5}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getArgument(I)Lcom/hisilicon/multiscreen/protocol/message/Argument;

    move-result-object v2

    const/4 v4, 0x3

    .line 124
    invoke-virtual {v2, v4}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->getArgumentValue(I)Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getVaule()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 123
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    const-string v3, "srcEndSelection"

    invoke-virtual {p1, v5}, Lcom/hisilicon/multiscreen/protocol/message/Action;->getArgument(I)Lcom/hisilicon/multiscreen/protocol/message/Argument;

    move-result-object v2

    const/4 v4, 0x4

    .line 126
    invoke-virtual {v2, v4}, Lcom/hisilicon/multiscreen/protocol/message/Argument;->getArgumentValue(I)Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisilicon/multiscreen/protocol/message/ArgumentValue;->getVaule()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 125
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 128
    iget-object v2, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService$1;->this$0:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    invoke-virtual {v2, v1}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public closeVimeSwitch()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService$1;->this$0:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->access$000(Lcom/hisilicon/multiscreen/vime/VImeClientControlService;)V

    .line 108
    return-void
.end method

.method public endInputBySelf()V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "hiandroid.vime.endinput.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService$1;->this$0:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    invoke-virtual {v1, v0}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->sendBroadcast(Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method public endInputByServer()V
    .locals 2

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "hiandroid.vime.endinput.stb"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService$1;->this$0:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    invoke-virtual {v1, v0}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    const-string v1, "end input by STB."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public isInputActivityOnTop()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/hisilicon/multiscreen/vime/VImeClientControlService$1;->this$0:Lcom/hisilicon/multiscreen/vime/VImeClientControlService;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/vime/VImeClientControlService;->access$100(Lcom/hisilicon/multiscreen/vime/VImeClientControlService;)Z

    move-result v0

    return v0
.end method

.method public openVimeSwitch()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method
