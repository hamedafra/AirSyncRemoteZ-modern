.class public final enum Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;
.super Ljava/lang/Enum;
.source "MultiScreenControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TopActivity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

.field public static final enum discovery:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

.field public static final enum mirror:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

.field public static final enum remote:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    const-string v1, "discovery"

    invoke-direct {v0, v1, v2}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;->discovery:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    const-string v1, "remote"

    invoke-direct {v0, v1, v3}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;->remote:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    new-instance v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    const-string v1, "mirror"

    invoke-direct {v0, v1, v4}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;->mirror:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;->discovery:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;->remote:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;->mirror:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    aput-object v1, v0, v4

    sput-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;->$VALUES:[Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    return-object v0
.end method

.method public static values()[Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;->$VALUES:[Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    invoke-virtual {v0}, [Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$TopActivity;

    return-object v0
.end method
