.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private MIN_DISTANCE:I

.field private downY:F

.field private moveY:F

.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

.field private upY:F


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const/16 v0, 0x64

    iput v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->MIN_DISTANCE:I

    return-void
.end method

.method private onDeltaY(I)V
    .locals 7
    .param p1, "deltaY"    # I

    .prologue
    .line 311
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->getLeft()I

    move-result v1

    .line 312
    .local v1, "left":I
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->getRight()I

    move-result v2

    .line 313
    .local v2, "right":I
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->getTop()I

    move-result v3

    .line 314
    .local v3, "top":I
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->getBottom()I

    move-result v0

    .line 316
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v4

    add-int v5, v3, p1

    add-int v6, v0, p1

    invoke-virtual {v4, v1, v5, v2, v6}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->layout(IIII)V

    .line 317
    return-void
.end method

.method private onDownToUpSlide()V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$800(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;Z)V

    .line 321
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->touchClearShow()V

    .line 322
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$402(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Z)Z

    .line 323
    return-void
.end method

.method private onTap()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$402(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Z)Z

    .line 332
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->touchClearShow()V

    .line 333
    return-void
.end method

.method private onUpToDownSlide()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->touchClearShow()V

    .line 327
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$402(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Z)Z

    .line 328
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 254
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$300(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$300(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :cond_0
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 260
    :try_start_0
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$500(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 264
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->downY:F

    .line 265
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->moveY:F

    .line 307
    :cond_1
    :goto_1
    return v6

    .line 270
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 272
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->downY:F

    .line 273
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->moveY:F

    goto :goto_1

    .line 277
    :pswitch_1
    iget v2, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->moveY:F

    .line 278
    .local v2, "preY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 279
    .local v1, "nowY":F
    iput v1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->moveY:F

    .line 281
    sub-float v0, v1, v2

    .line 282
    .local v0, "deltaY":F
    float-to-int v3, v0

    invoke-direct {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->onDeltaY(I)V

    goto :goto_1

    .line 286
    .end local v0    # "deltaY":F
    .end local v1    # "nowY":F
    .end local v2    # "preY":F
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->upY:F

    .line 288
    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->downY:F

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->upY:F

    sub-float v0, v3, v4

    .line 289
    .restart local v0    # "deltaY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->MIN_DISTANCE:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 291
    cmpg-float v3, v0, v5

    if-gez v3, :cond_3

    .line 293
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->onUpToDownSlide()V

    goto :goto_1

    .line 295
    :cond_3
    cmpl-float v3, v0, v5

    if-lez v3, :cond_1

    .line 297
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->onDownToUpSlide()V

    goto :goto_1

    .line 302
    :cond_4
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$3;->onTap()V

    goto :goto_1

    .line 261
    .end local v0    # "deltaY":F
    :catch_0
    move-exception v3

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
