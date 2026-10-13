.class Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$1;
.super Ljava/lang/Object;
.source "MultiScreenControlService.java"

# interfaces
.implements Lorg/cybergarage/net/AndoridNetInfoInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$1;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBroadCastAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService$1;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;->access$000(Lcom/aloys/formuler/airsyncremote/MultiScreenControlService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
