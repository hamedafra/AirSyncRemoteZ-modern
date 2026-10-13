.class public final enum Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;
.super Ljava/lang/Enum;
.source "MultiScreenControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

.field public static final enum DEINIT:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

.field public static final enum INIT:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

.field public static final enum NETWORK_LOST:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

.field public static final enum REAVED:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

.field public static final enum RUNNING:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

.field public static final enum STB_LEAVE:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

.field public static final enum STB_SUSPEND:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->INIT:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    const-string v1, "DEINIT"

    invoke-direct {v0, v1, v4}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->DEINIT:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v5}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->RUNNING:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    const-string v1, "NETWORK_LOST"

    invoke-direct {v0, v1, v6}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->NETWORK_LOST:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    const-string v1, "REAVED"

    invoke-direct {v0, v1, v7}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->REAVED:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    const-string v1, "STB_LEAVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->STB_LEAVE:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    const-string v1, "STB_SUSPEND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->STB_SUSPEND:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->INIT:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->DEINIT:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->RUNNING:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->NETWORK_LOST:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->REAVED:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->STB_LEAVE:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->STB_SUSPEND:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->$VALUES:[Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    return-object v0
.end method

.method public static values()[Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->$VALUES:[Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    invoke-virtual {v0}, [Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$ClientState;

    return-object v0
.end method
