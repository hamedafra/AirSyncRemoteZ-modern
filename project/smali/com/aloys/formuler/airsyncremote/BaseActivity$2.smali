.class Lcom/aloys/formuler/airsyncremote/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/hisilicon/multiscreen/scene/ISceneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aloys/formuler/airsyncremote/BaseActivity;->resetSceneListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/BaseActivity;


# direct methods
.method constructor <init>(Lcom/aloys/formuler/airsyncremote/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/BaseActivity;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sceneChanged(Lcom/hisilicon/multiscreen/scene/SceneType;)V
    .locals 1
    .param p1, "sceneType"    # Lcom/hisilicon/multiscreen/scene/SceneType;

    .prologue
    .line 630
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/BaseActivity$2;->this$0:Lcom/aloys/formuler/airsyncremote/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/aloys/formuler/airsyncremote/BaseActivity;->dealSceneChanged(Lcom/hisilicon/multiscreen/scene/SceneType;)V

    .line 631
    return-void
.end method
