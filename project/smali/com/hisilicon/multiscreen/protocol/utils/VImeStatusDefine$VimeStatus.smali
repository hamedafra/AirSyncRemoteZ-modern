.class public final enum Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
.super Ljava/lang/Enum;
.source "VImeStatusDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VimeStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

.field public static final enum DEINIT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

.field public static final enum INIT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

.field public static final enum INPUT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

.field public static final enum READY_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

.field public static final enum SETUP_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

.field public static final enum VIME_SERVER_STATUS_DEINIT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

.field public static final enum VIME_SERVER_STATUS_INIT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

.field public static final enum VIME_SERVER_STATUS_INPUT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

.field public static final enum VIME_SERVER_STATUS_READY:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;


# instance fields
.field private index:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 16
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    const-string v1, "INIT_STATUS_VIME_CLIENT"

    const/4 v2, 0x0

    const-string v3, "client_init"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->INIT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    new-instance v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    const-string v1, "SETUP_STATUS_VIME_CLIENT"

    const-string v2, "client_setup"

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->SETUP_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 17
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    const-string v1, "READY_STATUS_VIME_CLIENT"

    const-string v2, "client_ready"

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->READY_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 18
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    const-string v1, "INPUT_STATUS_VIME_CLIENT"

    const-string v2, "client_input"

    invoke-direct {v0, v1, v7, v2, v8}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->INPUT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 19
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    const-string v1, "DEINIT_STATUS_VIME_CLIENT"

    const-string v2, "client_close"

    invoke-direct {v0, v1, v8, v2, v9}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->DEINIT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 22
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    const-string v1, "VIME_SERVER_STATUS_INIT"

    const-string v2, "server_init"

    const/16 v3, 0x50

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->VIME_SERVER_STATUS_INIT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    new-instance v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    const-string v1, "VIME_SERVER_STATUS_READY"

    const/4 v2, 0x6

    const-string v3, "server_ready"

    const/16 v4, 0x51

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->VIME_SERVER_STATUS_READY:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 23
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    const-string v1, "VIME_SERVER_STATUS_INPUT"

    const/4 v2, 0x7

    const-string v3, "server_input"

    const/16 v4, 0x52

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->VIME_SERVER_STATUS_INPUT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 24
    new-instance v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    const-string v1, "VIME_SERVER_STATUS_DEINIT"

    const/16 v2, 0x8

    const-string v3, "server_deinit"

    const/16 v4, 0x53

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->VIME_SERVER_STATUS_DEINIT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    .line 13
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    const/4 v1, 0x0

    sget-object v2, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->INIT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    aput-object v2, v0, v1

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->SETUP_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->READY_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->INPUT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->DEINIT_STATUS_VIME_CLIENT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->VIME_SERVER_STATUS_INIT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->VIME_SERVER_STATUS_READY:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->VIME_SERVER_STATUS_INPUT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->VIME_SERVER_STATUS_DEINIT:Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->$VALUES:[Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

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
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput-object p3, p0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->name:Ljava/lang/String;

    .line 111
    iput p4, p0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->index:I

    .line 112
    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 5
    .param p0, "index"    # I

    .prologue
    .line 55
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->values()[Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 57
    .local v0, "status":Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->getIndex()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 59
    iget-object v1, v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->name:Ljava/lang/String;

    .line 62
    .end local v0    # "status":Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    :goto_1
    return-object v1

    .line 55
    .restart local v0    # "status":Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "status":Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getStatus(I)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    .locals 5
    .param p0, "index"    # I

    .prologue
    .line 38
    invoke-static {}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->values()[Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 40
    .local v0, "status":Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->getIndex()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 45
    .end local v0    # "status":Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    :goto_1
    return-object v0

    .line 38
    .restart local v0    # "status":Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "status":Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    return-object v0
.end method

.method public static values()[Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->$VALUES:[Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    invoke-virtual {v0}, [Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->index:I

    .line 101
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/hisilicon/multiscreen/protocol/utils/VImeStatusDefine$VimeStatus;->name:Ljava/lang/String;

    .line 81
    return-void
.end method
