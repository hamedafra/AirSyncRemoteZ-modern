.class public Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;
.super Ljava/lang/Object;
.source "VImeClientStateMachine.java"


# static fields
.field private static mVimeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;


# instance fields
.field private mVimeStatusMachineHandler:Lcom/hisilicon/multiscreen/protocol/remote/IVImeClientStateMachineHandler;

.field private mVimeStatusValue:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->mVimeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->DEINIT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->mVimeStatusValue:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 31
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;

    invoke-direct {v0, p0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine$1;-><init>(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;)V

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->mVimeStatusMachineHandler:Lcom/hisilicon/multiscreen/protocol/remote/IVImeClientStateMachineHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->mVimeStatusValue:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    return-object v0
.end method

.method static synthetic access$002(Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    .locals 0
    .param p0, "x0"    # Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;
    .param p1, "x1"    # Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->mVimeStatusValue:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    return-object p1
.end method

.method public static getInstance()Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->mVimeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    invoke-direct {v0}, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;-><init>()V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->mVimeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    .line 198
    :cond_0
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->mVimeClientStateMachine:Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;

    return-object v0
.end method


# virtual methods
.method public deInitVimeClient()V
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->DEINIT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    iput-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->mVimeStatusValue:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 216
    return-void
.end method

.method public getStatus()Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->mVimeStatusValue:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    return-object v0
.end method

.method public getStatusIndex()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->mVimeStatusValue:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->getIndex()I

    move-result v0

    return v0
.end method

.method public initVimeClient(Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;)Z
    .locals 1
    .param p1, "driver"    # Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->mVimeStatusMachineHandler:Lcom/hisilicon/multiscreen/protocol/remote/IVImeClientStateMachineHandler;

    invoke-interface {v0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/IVImeClientStateMachineHandler;->initVimeMachine(Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;)Z

    move-result v0

    return v0
.end method

.method public setVimeStatusMachineHandler(Lcom/hisilicon/multiscreen/protocol/remote/IVImeClientStateMachineHandler;)V
    .locals 0
    .param p1, "vimeStatusMachineHandler"    # Lcom/hisilicon/multiscreen/protocol/remote/IVImeClientStateMachineHandler;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->mVimeStatusMachineHandler:Lcom/hisilicon/multiscreen/protocol/remote/IVImeClientStateMachineHandler;

    .line 254
    return-void
.end method

.method public updateStatus(Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    .locals 1
    .param p1, "driver"    # Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/remote/VImeClientStateMachine;->mVimeStatusMachineHandler:Lcom/hisilicon/multiscreen/protocol/remote/IVImeClientStateMachineHandler;

    invoke-interface {v0, p1}, Lcom/hisilicon/multiscreen/protocol/remote/IVImeClientStateMachineHandler;->updateVimeStatus(Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    move-result-object v0

    return-object v0
.end method
