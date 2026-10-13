.class Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$3;
.super Ljava/lang/Object;
.source "MultiScreenActivity.java"

# interfaces
.implements Lcom/hisilicon/multiscreen/scene/ISceneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->resetSceneListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$3;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sceneChanged(Lcom/hisilicon/multiscreen/scene/SceneType;)V
    .locals 1
    .param p1, "sceneType"    # Lcom/hisilicon/multiscreen/scene/SceneType;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$3;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v0, p1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$600(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Lcom/hisilicon/multiscreen/scene/SceneType;)V

    .line 645
    return-void
.end method
