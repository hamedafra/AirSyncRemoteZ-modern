.class Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;
.super Ljava/lang/Object;
.source "DMSOtherBrowseActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private MIN_DISTANCE:I

.field private downY:F

.field private moveY:F

.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

.field private upY:F


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/16 v0, 0x64

    iput v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->MIN_DISTANCE:I

    return-void
.end method

.method private onDeltaY(I)V
    .locals 7
    .param p1, "deltaY"    # I

    .prologue
    .line 272
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$500(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->getLeft()I

    move-result v1

    .line 273
    .local v1, "left":I
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$500(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->getRight()I

    move-result v2

    .line 274
    .local v2, "right":I
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$500(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->getTop()I

    move-result v3

    .line 275
    .local v3, "top":I
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$500(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->getBottom()I

    move-result v0

    .line 277
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$500(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v4

    add-int v5, v3, p1

    add-int v6, v0, p1

    invoke-virtual {v4, v1, v5, v2, v6}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->layout(IIII)V

    .line 278
    return-void
.end method

.method private onDownToUpSlide()V
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$600(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;Z)V

    .line 282
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$500(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->touchClearShow()V

    .line 283
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$302(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;Z)Z

    .line 284
    return-void
.end method

.method private onTap()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$302(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;Z)Z

    .line 293
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$500(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->touchClearShow()V

    .line 294
    return-void
.end method

.method private onUpToDownSlide()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$500(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->touchClearShow()V

    .line 288
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$302(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;Z)Z

    .line 289
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

    .line 219
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$300(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 221
    :try_start_0
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$400(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 225
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->downY:F

    .line 226
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->moveY:F

    .line 268
    :cond_0
    :goto_1
    return v6

    .line 231
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 233
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->downY:F

    .line 234
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->moveY:F

    goto :goto_1

    .line 238
    :pswitch_1
    iget v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->moveY:F

    .line 239
    .local v2, "preY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 240
    .local v1, "nowY":F
    iput v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->moveY:F

    .line 242
    sub-float v0, v1, v2

    .line 243
    .local v0, "deltaY":F
    float-to-int v3, v0

    invoke-direct {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->onDeltaY(I)V

    goto :goto_1

    .line 247
    .end local v0    # "deltaY":F
    .end local v1    # "nowY":F
    .end local v2    # "preY":F
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->upY:F

    .line 249
    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->downY:F

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->upY:F

    sub-float v0, v3, v4

    .line 250
    .restart local v0    # "deltaY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->MIN_DISTANCE:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 252
    cmpg-float v3, v0, v5

    if-gez v3, :cond_2

    .line 254
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->onUpToDownSlide()V

    goto :goto_1

    .line 256
    :cond_2
    cmpl-float v3, v0, v5

    if-lez v3, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->onDownToUpSlide()V

    goto :goto_1

    .line 263
    :cond_3
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$2;->onTap()V

    goto :goto_1

    .line 222
    .end local v0    # "deltaY":F
    :catch_0
    move-exception v3

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
