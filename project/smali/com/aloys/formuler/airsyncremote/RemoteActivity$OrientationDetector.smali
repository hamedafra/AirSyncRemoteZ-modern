.class public Lcom/aloys/formuler/airsyncremote/RemoteActivity$OrientationDetector;
.super Landroid/view/OrientationEventListener;
.source "RemoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aloys/formuler/airsyncremote/RemoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OrientationDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;


# direct methods
.method public constructor <init>(Lcom/aloys/formuler/airsyncremote/RemoteActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aloys/formuler/airsyncremote/RemoteActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/aloys/formuler/airsyncremote/RemoteActivity$OrientationDetector;->this$0:Lcom/aloys/formuler/airsyncremote/RemoteActivity;

    .line 1247
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 1248
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1253
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1271
    :cond_0
    :goto_0
    return-void

    .line 1257
    :cond_1
    const/16 v0, 0x104

    if-le p1, v0, :cond_0

    const/16 v0, 0x118

    if-ge p1, v0, :cond_0

    goto :goto_0
.end method
