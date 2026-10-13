.class Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$10;
.super Ljava/lang/Object;
.source "DMSBrowseView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .prologue
    .line 837
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

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

    .line 841
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v5, v6}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$402(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Z)Z

    .line 842
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Come into long click!"

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 843
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 855
    :goto_0
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$700(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->getData()Ljava/lang/Object;

    move-result-object v4

    .line 856
    .local v4, "object":Ljava/lang/Object;
    instance-of v5, v4, Lorg/teleal/cling/support/model/item/Item;

    if-nez v5, :cond_0

    move v5, v6

    .line 887
    :goto_1
    return v5

    .line 845
    .end local v4    # "object":Ljava/lang/Object;
    :sswitch_0
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1000(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseImageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    invoke-static {v7, v5}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$702(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;)Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    goto :goto_0

    .line 848
    :sswitch_1
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1200(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseVideoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    invoke-static {v7, v5}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$702(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;)Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    goto :goto_0

    .line 851
    :sswitch_2
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$1400(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/hisilicon/dlna/dmc/gui/customview/BrowseMusicAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    invoke-static {v7, v5}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$702(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;)Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    goto :goto_0

    .line 858
    .restart local v4    # "object":Ljava/lang/Object;
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 859
    .local v2, "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-virtual {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 862
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->destroyDrawingCache()V

    .line 863
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 864
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 866
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 867
    .local v3, "location":[I
    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 869
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    .line 887
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "location":[I
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 871
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "location":[I
    :sswitch_3
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Come into slidePushView"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 872
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v5

    invoke-virtual {v5, v0, v3, v2}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->drawImageSlideView(Landroid/graphics/Bitmap;[ILandroid/graphics/Rect;)V

    goto :goto_2

    .line 882
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "location":[I
    :catch_0
    move-exception v5

    goto :goto_2

    .line 875
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "location":[I
    :sswitch_4
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v5

    invoke-virtual {v5, v0, v3, v2}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->drawVideoSlideView(Landroid/graphics/Bitmap;[ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 883
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "location":[I
    :catch_1
    move-exception v1

    .line 884
    .local v1, "ex":Ljava/lang/Error;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_2

    .line 878
    .end local v1    # "ex":Ljava/lang/Error;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "location":[I
    :sswitch_5
    :try_start_1
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView$10;->this$0:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->access$600(Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v5

    invoke-virtual {v5, v0, v3, v2}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->drawMusicSlideView(Landroid/graphics/Bitmap;[ILandroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 843
    :sswitch_data_0
    .sparse-switch
        0x7f0b004a -> :sswitch_2
        0x7f0b004c -> :sswitch_0
        0x7f0b0053 -> :sswitch_1
    .end sparse-switch

    .line 869
    :sswitch_data_1
    .sparse-switch
        0x7f0b004a -> :sswitch_5
        0x7f0b004c -> :sswitch_3
        0x7f0b0053 -> :sswitch_4
    .end sparse-switch
.end method
