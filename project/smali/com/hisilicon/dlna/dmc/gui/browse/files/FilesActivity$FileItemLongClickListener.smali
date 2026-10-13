.class Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemLongClickListener;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemLongClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$1;

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemLongClickListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)V

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

    .line 206
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemLongClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v5, v6}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$502(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Z)Z

    .line 207
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemLongClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemLongClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$1000(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    invoke-static {v7, v5}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$802(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;)Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    .line 208
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemLongClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    move-result-object v5

    if-nez v5, :cond_0

    move v5, v6

    .line 228
    :goto_0
    return v5

    .line 210
    :cond_0
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemLongClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$800(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->getData()Ljava/lang/Object;

    move-result-object v4

    .line 211
    .local v4, "object":Ljava/lang/Object;
    instance-of v5, v4, Lorg/teleal/cling/support/model/item/Item;

    if-nez v5, :cond_1

    move v5, v6

    .line 212
    goto :goto_0

    .line 213
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 214
    .local v2, "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemLongClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$1300(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 216
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->destroyDrawingCache()V

    .line 217
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 218
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 221
    .local v3, "location":[I
    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 222
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity$FileItemLongClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;->access$700(Lcom/hisilicon/dlna/dmc/gui/browse/files/FilesActivity;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v5

    invoke-virtual {v5, v0, v3, v2}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->drawImageSlideView(Landroid/graphics/Bitmap;[ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "location":[I
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "ex":Ljava/lang/Error;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    .line 223
    .end local v1    # "ex":Ljava/lang/Error;
    :catch_1
    move-exception v5

    goto :goto_1
.end method
