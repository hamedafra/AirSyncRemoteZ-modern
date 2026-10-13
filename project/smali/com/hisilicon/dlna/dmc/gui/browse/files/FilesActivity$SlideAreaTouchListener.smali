.class Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideAreaTouchListener"
.end annotation


# instance fields
.field private MIN_DISTANCE:I

.field private downY:F

.field private moveY:F

.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

.field private upY:F


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)V
    .locals 1

    .prologue
    .line 94
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/16 v0, 0x64

    iput v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->MIN_DISTANCE:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$1;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)V

    return-void
.end method

.method private onDeltaY(I)V
    .locals 7
    .param p1, "deltaY"    # I

    .prologue
    .line 155
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->getLeft()I

    move-result v1

    .line 156
    .local v1, "left":I
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->getRight()I

    move-result v2

    .line 157
    .local v2, "right":I
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->getTop()I

    move-result v3

    .line 158
    .local v3, "top":I
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->getBottom()I

    move-result v0

    .line 160
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v4

    add-int v5, v3, p1

    add-int v6, v0, p1

    invoke-virtual {v4, v1, v5, v2, v6}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->layout(IIII)V

    .line 161
    return-void
.end method

.method private onDownToUpSlide()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$900(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;Z)V

    .line 165
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->touchClearShow()V

    .line 166
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$502(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Z)Z

    .line 167
    return-void
.end method

.method private onTap()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$502(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Z)Z

    .line 176
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->touchClearShow()V

    .line 177
    return-void
.end method

.method private onUpToDownSlide()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->touchClearShow()V

    .line 171
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$502(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Z)Z

    .line 172
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

    .line 102
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$500(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 104
    :try_start_0
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$600(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->downY:F

    .line 109
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->moveY:F

    .line 151
    :cond_0
    :goto_1
    return v6

    .line 114
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 116
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->downY:F

    .line 117
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->moveY:F

    goto :goto_1

    .line 121
    :pswitch_1
    iget v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->moveY:F

    .line 122
    .local v2, "preY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 123
    .local v1, "nowY":F
    iput v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->moveY:F

    .line 125
    sub-float v0, v1, v2

    .line 126
    .local v0, "deltaY":F
    float-to-int v3, v0

    invoke-direct {p0, v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->onDeltaY(I)V

    goto :goto_1

    .line 130
    .end local v0    # "deltaY":F
    .end local v1    # "nowY":F
    .end local v2    # "preY":F
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->upY:F

    .line 132
    iget v3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->downY:F

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->upY:F

    sub-float v0, v3, v4

    .line 133
    .restart local v0    # "deltaY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->MIN_DISTANCE:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 135
    cmpg-float v3, v0, v5

    if-gez v3, :cond_2

    .line 137
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->onUpToDownSlide()V

    goto :goto_1

    .line 139
    :cond_2
    cmpl-float v3, v0, v5

    if-lez v3, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->onDownToUpSlide()V

    goto :goto_1

    .line 146
    :cond_3
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$SlideAreaTouchListener;->onTap()V

    goto :goto_1

    .line 105
    .end local v0    # "deltaY":F
    :catch_0
    move-exception v3

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
