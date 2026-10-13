.class Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$7;
.super Ljava/lang/Object;
.source "DMSOtherBrowseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 436
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v5, v6}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$302(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;Z)Z

    .line 438
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1100(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/hisilicon/dlna/dmc/gui/activity/AbsListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-static {v7, v5}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$602(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .line 440
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$600(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v4

    .line 441
    .local v4, "object":Ljava/lang/Object;
    instance-of v5, v4, Lorg/teleal/cling/support/model/item/Item;

    if-nez v5, :cond_0

    move v5, v6

    .line 467
    :goto_0
    return v5

    .line 443
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 444
    .local v2, "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1300(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 447
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->destroyDrawingCache()V

    .line 448
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 449
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 451
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 452
    .local v3, "location":[I
    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 454
    sget-object v5, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->IMAGE:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v6}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1900(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 455
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$500(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v5

    invoke-virtual {v5, v0, v3, v2}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->drawImageSlideView(Landroid/graphics/Bitmap;[ILandroid/graphics/Rect;)V

    .line 467
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "location":[I
    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 456
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "location":[I
    :cond_2
    sget-object v5, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->VIDEO:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v6}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1900(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    move-result-object v6

    if-ne v5, v6, :cond_3

    .line 457
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$500(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v5

    invoke-virtual {v5, v0, v3, v2}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->drawVideoSlideView(Landroid/graphics/Bitmap;[ILandroid/graphics/Rect;)V

    goto :goto_1

    .line 462
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "location":[I
    :catch_0
    move-exception v5

    goto :goto_1

    .line 458
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "location":[I
    :cond_3
    sget-object v5, Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;->MUSIC:Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v6}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$1900(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/MediaType;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 459
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity$7;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;->access$500(Lcom/hisilicon/dlna/dmc/gui/activity/DMSOtherBrowseActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v5

    invoke-virtual {v5, v0, v3, v2}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->drawMusicSlideView(Landroid/graphics/Bitmap;[ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 463
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "location":[I
    :catch_1
    move-exception v1

    .line 464
    .local v1, "ex":Ljava/lang/Error;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1
.end method
