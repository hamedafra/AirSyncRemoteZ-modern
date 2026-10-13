.class Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;
.super Ljava/lang/Object;
.source "VImeClientStateMachine.java"

# interfaces
.implements Lcom/hisilicon/multiscreen/protocol/remote/IVImeClientStateMachineHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;


# direct methods
.method constructor <init>(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getVimeStatus()Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    .locals 1

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->access$000(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initVimeMachine(Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;)Z
    .locals 2
    .param p1, "driver"    # Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->access$000(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    move-result-object v0

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->DEINIT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    if-ne v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->INIT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    invoke-static {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->access$002(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 41
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized updateVimeStatus(Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    .locals 2
    .param p1, "driver"    # Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    .prologue
    .line 51
    monitor-enter p0

    if-nez p1, :cond_0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->access$000(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 177
    :goto_0
    monitor-exit p0

    return-object v0

    .line 56
    :cond_0
    :try_start_1
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$2;->$SwitchMap$com$hisilicon$multiscreen$protocol$utils$VImeStatusDefine$VimeStatus:[I

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->access$000(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 177
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->access$000(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    move-result-object v0

    goto :goto_0

    .line 60
    :pswitch_0
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CHECK_OK:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    if-ne p1, v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->READY_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    invoke-static {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->access$002(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 64
    :cond_2
    :try_start_2
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CHECK_FAIL:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    if-ne p1, v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->SETUP_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    invoke-static {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->access$002(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    goto :goto_1

    .line 68
    :cond_3
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CLOSE_VIME:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    if-ne p1, v0, :cond_4

    .line 70
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->DEINIT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    invoke-static {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->access$002(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 72
    const-string v0, "To close vime when it is in init status."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state machine: INIT_STATUS_VIME_CLIENT, being driven by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :pswitch_1
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->OPEN_VIME:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    if-ne p1, v0, :cond_5

    .line 85
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->INIT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    invoke-static {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->access$002(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    goto :goto_1

    .line 89
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state machine: DEINIT_STATUS_VIME_CLIENT, being driven by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :pswitch_2
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CHECK_OK:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    if-ne p1, v0, :cond_6

    .line 99
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->READY_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    invoke-static {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->access$002(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    goto :goto_1

    .line 101
    :cond_6
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CHECK_FAIL:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    if-ne p1, v0, :cond_7

    .line 103
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->DEINIT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    invoke-static {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->access$002(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    goto/16 :goto_1

    .line 106
    :cond_7
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CLOSE_VIME:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    if-ne p1, v0, :cond_8

    .line 108
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->DEINIT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    invoke-static {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->access$002(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    goto/16 :goto_1

    .line 113
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state machine: SETUP_STATUS_VIME_CLIENT, being driven by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 121
    :pswitch_3
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CALL_INPUT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    if-ne p1, v0, :cond_9

    .line 123
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->INPUT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    invoke-static {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->access$002(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    goto/16 :goto_1

    .line 125
    :cond_9
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CHECK_FAIL:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    if-ne p1, v0, :cond_a

    .line 127
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->SETUP_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    invoke-static {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->access$002(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    goto/16 :goto_1

    .line 129
    :cond_a
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CLOSE_VIME:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    if-ne p1, v0, :cond_b

    .line 131
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->DEINIT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    invoke-static {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->access$002(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    goto/16 :goto_1

    .line 134
    :cond_b
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CHECK_OK:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    if-eq p1, v0, :cond_1

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state machine: READY_STATUS_VIME_CLIENT, being driven by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->w(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 148
    :pswitch_4
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->END_INPUT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    if-ne p1, v0, :cond_c

    .line 150
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->READY_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    invoke-static {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->access$002(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    goto/16 :goto_1

    .line 152
    :cond_c
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CHECK_FAIL:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    if-ne p1, v0, :cond_d

    .line 154
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->SETUP_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    invoke-static {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->access$002(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    goto/16 :goto_1

    .line 156
    :cond_d
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CLOSE_VIME:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    if-ne p1, v0, :cond_e

    .line 158
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->DEINIT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    invoke-static {v0, v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->access$002(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 160
    const-string v0, "To close VIME when it is in input status."

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 162
    :cond_e
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CHECK_OK:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    if-eq p1, v0, :cond_1

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state machine: INPUT_STATUS_VIME_CLIENT, being driven by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    invoke-virtual {p1}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
