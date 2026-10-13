.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$2;
.super Ljava/lang/Object;
.source "PlayingImageActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->initializeComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final DOWN_TIME:I

.field private MIN_DISTANCE:I

.field private downX:F

.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

.field private upX:F


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/16 v0, 0x64

    iput v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$2;->MIN_DISTANCE:I

    .line 140
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$2;->DOWN_TIME:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 162
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 146
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$2;->downX:F

    goto :goto_0

    .line 150
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$2;->upX:F

    .line 151
    iget v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$2;->downX:F

    iget v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$2;->upX:F

    sub-float v0, v1, v2

    .line 152
    .local v0, "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2bc

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 154
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$2;->MIN_DISTANCE:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->toggleItemInfo()V

    .line 156
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$100(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$100(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;

    move-result-object v1

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$200(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/NowPlayingImageControlView;->onTab(Z)V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
