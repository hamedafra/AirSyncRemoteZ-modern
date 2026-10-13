.class Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;
.super Ljava/lang/Object;
.source "VImeClientController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckSTBVimeRunnable"
.end annotation


# static fields
.field private static final MAX_CHECK_FAIL_TIMES:S = 0x6s

.field private static final MAX_CHECK_PHONE_NO_INPUT_TIMES:S = 0x3s

.field private static final MAX_CHECK_STB_NO_INPUT_TIMES:S = 0x6s

.field private static final MIN_CHECK_STB_FAIL_TIMES:S = 0x3s


# instance fields
.field private VImeSTBStatus:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

.field private mCheckPhoneNotInputTimes:S

.field private mCheckSTBFailTimes:S

.field private mCheckSTBNotInputTimes:S

.field final synthetic this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;


# direct methods
.method private constructor <init>(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 612
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput-short v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckSTBFailTimes:S

    .line 653
    iput-short v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckSTBNotInputTimes:S

    .line 660
    iput-short v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckPhoneNotInputTimes:S

    .line 666
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->VImeSTBStatus:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;
    .param p2, "x1"    # Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$1;

    .prologue
    .line 612
    invoke-direct {p0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;-><init>(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 672
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$200(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 675
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$300(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->VImeSTBStatus:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 677
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->VImeSTBStatus:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    sget-object v2, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->VIME_SERVER_STATUS_INIT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->VImeSTBStatus:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    sget-object v2, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->VIME_SERVER_STATUS_READY:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    if-ne v1, v2, :cond_6

    .line 683
    :cond_1
    iput-short v4, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckSTBFailTimes:S

    .line 684
    iput-short v4, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckPhoneNotInputTimes:S

    .line 685
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$400()Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    move-result-object v1

    sget-object v2, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CHECK_OK:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->updateStatus(Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 687
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$400()Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->getStatus()Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    move-result-object v1

    sget-object v2, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->INPUT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    .line 688
    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$500(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;)Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;->isInputActivityOnTop()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 695
    :cond_2
    iget-short v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckSTBNotInputTimes:S

    if-ge v1, v6, :cond_4

    .line 697
    iget-short v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckSTBNotInputTimes:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckSTBNotInputTimes:S

    .line 781
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$200(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 785
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 787
    :catch_0
    move-exception v0

    .line 789
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Interrupted Exception"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 702
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$500(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;)Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;->endInputByServer()V

    .line 703
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$400()Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    move-result-object v1

    sget-object v2, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->END_INPUT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    .line 704
    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->updateStatus(Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 705
    iput-short v4, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckSTBNotInputTimes:S

    .line 706
    const-string v1, "End input on client because we find STB is not in input status a few time."

    .line 707
    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 712
    :cond_5
    iput-short v4, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckSTBNotInputTimes:S

    goto :goto_1

    .line 715
    :cond_6
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->VImeSTBStatus:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    sget-object v2, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->VIME_SERVER_STATUS_INPUT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    if-ne v1, v2, :cond_9

    .line 717
    iput-short v4, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckSTBFailTimes:S

    .line 718
    iput-short v4, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckSTBNotInputTimes:S

    .line 719
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$400()Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    move-result-object v1

    sget-object v2, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CHECK_OK:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->updateStatus(Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 722
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$400()Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->getStatus()Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    move-result-object v1

    sget-object v2, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->INPUT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    .line 723
    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$500(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;)Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;->isInputActivityOnTop()Z

    move-result v1

    if-nez v1, :cond_8

    .line 725
    iget-short v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckPhoneNotInputTimes:S

    if-ge v1, v5, :cond_7

    .line 727
    iget-short v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckPhoneNotInputTimes:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckPhoneNotInputTimes:S

    goto :goto_1

    .line 731
    :cond_7
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$500(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;)Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;->endInputByServer()V

    .line 732
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$400()Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    move-result-object v1

    sget-object v2, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->END_INPUT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    .line 733
    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->updateStatus(Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 734
    iput-short v4, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckPhoneNotInputTimes:S

    goto :goto_1

    .line 739
    :cond_8
    iput-short v4, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckPhoneNotInputTimes:S

    goto :goto_1

    .line 744
    :cond_9
    iget-short v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckSTBFailTimes:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckSTBFailTimes:S

    .line 746
    iget-short v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckSTBFailTimes:S

    if-ne v1, v5, :cond_b

    .line 748
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$400()Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->getStatus()Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    move-result-object v1

    sget-object v2, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->INPUT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    if-ne v1, v2, :cond_a

    .line 755
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$500(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;)Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;->endInputBySelf()V

    .line 756
    const-string v1, "check fail 3 times, activity handler endInput by self."

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 760
    :cond_a
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$400()Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    move-result-object v1

    sget-object v2, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CHECK_FAIL:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    .line 761
    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->updateStatus(Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    goto/16 :goto_1

    .line 763
    :cond_b
    iget-short v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->mCheckSTBFailTimes:S

    if-le v1, v6, :cond_3

    .line 769
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$400()Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    move-result-object v1

    sget-object v2, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CHECK_FAIL:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    .line 770
    invoke-virtual {v1, v2}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->updateStatus(Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 774
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$500(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;)Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/multiscreen/protocol/remote/IVImeActivityHandler;->closeVimeSwitch()V

    .line 775
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    invoke-static {v1, v4}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$202(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;Z)Z

    .line 777
    iget-object v1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController$CheckSTBVimeRunnable;->this$0:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;->access$600(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientController;)V

    goto/16 :goto_1

    .line 793
    :cond_c
    return-void
.end method
