.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$5;
.super Ljava/lang/Object;
.source "PlayingVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final DOWN_TIME:I = 0x2bc

.field private static final MIN_DISTANCE:I = 0x64


# instance fields
.field private downX:F

.field private moveX:F

.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

.field private toX:F

.field private upX:F


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v10, 0x2bc

    const v9, 0x7f0b00ca

    const/high16 v8, 0x42c80000    # 100.0f

    const/4 v2, 0x1

    .line 232
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 266
    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    .line 234
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$5;->downX:F

    .line 235
    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$5;->downX:F

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$5;->moveX:F

    goto :goto_0

    .line 239
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$5;->toX:F

    .line 241
    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$5;->moveX:F

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$5;->toX:F

    sub-float v0, v3, v4

    .line 243
    .local v0, "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v3, v4, v10

    if-gez v3, :cond_0

    .line 244
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v8

    if-lez v3, :cond_0

    .line 245
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-virtual {v3, v9}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 246
    .local v1, "duration":Landroid/widget/SeekBar;
    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 252
    .end local v0    # "deltaX":F
    .end local v1    # "duration":Landroid/widget/SeekBar;
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$5;->upX:F

    .line 254
    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$5;->downX:F

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$5;->upX:F

    sub-float v0, v3, v4

    .line 255
    .restart local v0    # "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v3, v4, v10

    if-gez v3, :cond_0

    .line 256
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v8

    if-gez v3, :cond_1

    .line 257
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->toggleItemInfo()V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity$5;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-virtual {v3, v9}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 260
    .restart local v1    # "duration":Landroid/widget/SeekBar;
    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
