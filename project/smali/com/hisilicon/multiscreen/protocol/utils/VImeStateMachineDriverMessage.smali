.class public final enum Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;
.super Ljava/lang/Enum;
.source "VImeStateMachineDriverMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

.field public static final enum CALL_INPUT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

.field public static final enum CHECK_FAIL:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

.field public static final enum CHECK_OK:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

.field public static final enum CLOSE_VIME:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

.field public static final enum END_INPUT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

.field public static final enum NETWORK_EXCEPTION:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

.field public static final enum OPEN_VIME:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;


# instance fields
.field private final mIndex:I

.field private mMessageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 11
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    const-string v1, "OPEN_VIME"

    const/4 v2, 0x0

    const-string v3, "client_open_vime"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->OPEN_VIME:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    new-instance v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    const-string v1, "CLOSE_VIME"

    const-string v2, "client_close_vime"

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CLOSE_VIME:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    new-instance v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    const-string v1, "CHECK_OK"

    const-string v2, "client_check_ok"

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CHECK_OK:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    .line 12
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    const-string v1, "NETWORK_EXCEPTION"

    const-string v2, "client_network_exception"

    invoke-direct {v0, v1, v7, v2, v8}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->NETWORK_EXCEPTION:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    new-instance v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    const-string v1, "CHECK_FAIL"

    const-string v2, "client_check_fail"

    invoke-direct {v0, v1, v8, v2, v9}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CHECK_FAIL:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    .line 13
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    const-string v1, "CALL_INPUT"

    const-string v2, "server_call_input"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CALL_INPUT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    new-instance v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    const-string v1, "END_INPUT"

    const/4 v2, 0x6

    const-string v3, "end_input"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->END_INPUT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    .line 8
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    const/4 v1, 0x0

    sget-object v2, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->OPEN_VIME:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    aput-object v2, v0, v1

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CLOSE_VIME:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CHECK_OK:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->NETWORK_EXCEPTION:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    aput-object v1, v0, v7

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CHECK_FAIL:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    aput-object v1, v0, v8

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->CALL_INPUT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->END_INPUT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->$VALUES:[Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->mMessageName:Ljava/lang/String;

    .line 28
    iput p4, p0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->mIndex:I

    .line 29
    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 5
    .param p0, "index"    # I

    .prologue
    .line 55
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->values()[Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 57
    .local v0, "status":Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;
    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->getIndex()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 59
    iget-object v1, v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->mMessageName:Ljava/lang/String;

    .line 62
    .end local v0    # "status":Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;
    :goto_1
    return-object v1

    .line 55
    .restart local v0    # "status":Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "status":Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getState(I)Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;
    .locals 5
    .param p0, "index"    # I

    .prologue
    .line 38
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->values()[Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 40
    .local v0, "status":Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;
    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->getIndex()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 45
    .end local v0    # "status":Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;
    :goto_1
    return-object v0

    .line 38
    .restart local v0    # "status":Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "status":Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    return-object v0
.end method

.method public static values()[Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->$VALUES:[Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    invoke-virtual {v0}, [Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->mMessageName:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStateMachineDriverMessage;->mMessageName:Ljava/lang/String;

    .line 82
    return-void
.end method
