.class public Lcom/aloys/formuler/airsyncremote/GuideGallery;
.super Landroid/widget/Gallery;
.source "GuideGallery.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method public isScrollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/aloys/formuler/airsyncremote/GuideGallery;->isScrollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/GuideGallery;->onKeyLeft()Z

    move-result v0

    .line 26
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/GuideGallery;->onKeyRight()Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLeft()Z
    .locals 2

    .prologue
    .line 35
    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/GuideGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyRight()Z
    .locals 2

    .prologue
    .line 39
    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/aloys/formuler/airsyncremote/GuideGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
