.class public Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$OrientationDetector;
.super Landroid/view/OrientationEventListener;
.source "MultiScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OrientationDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;


# direct methods
.method public constructor <init>(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$OrientationDetector;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    .line 280
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 281
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 286
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    const/16 v1, 0x15e

    if-gt p1, v1, :cond_2

    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    .line 295
    :cond_2
    const-string v1, "To finish mirror activity"

    invoke-static {v1}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$OrientationDetector;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$000(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)I

    move-result v0

    .line 298
    .local v0, "select":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_3

    .line 300
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$OrientationDetector;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$100(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    goto :goto_0

    .line 302
    :cond_3
    const/4 v1, 0x1

    if-ne v1, v0, :cond_4

    .line 304
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$OrientationDetector;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$200(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    goto :goto_0

    .line 308
    :cond_4
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity$OrientationDetector;->this$0:Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;

    invoke-static {v1}, Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;->access$200(Lcom/aloys/formuler/airsyncremote/MultiScreenActivity;)V

    goto :goto_0
.end method
