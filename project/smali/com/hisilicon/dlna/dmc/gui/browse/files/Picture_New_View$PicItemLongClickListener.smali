.class Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemLongClickListener;
.super Ljava/lang/Object;
.source "Picture_New_View.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PicItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;


# direct methods
.method private constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemLongClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;
    .param p2, "x1"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$1;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemLongClickListener;-><init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
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

    .line 168
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "COme into pic item long click!"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemLongClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$700(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;

    .line 170
    .local v3, "item":Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;
    iget-object v7, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemLongClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v7}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$900(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FileLongClickCallBack;

    move-result-object v7

    invoke-interface {v7, v6, v3}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$FileLongClickCallBack;->update(ZLcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;)V

    .line 171
    invoke-virtual {v3}, Lcom/hisilicon/dlna/dmc/gui/customview/AdapterItem;->getData()Ljava/lang/Object;

    move-result-object v5

    .line 172
    .local v5, "object":Ljava/lang/Object;
    instance-of v7, v5, Lorg/teleal/cling/support/model/item/Item;

    if-nez v7, :cond_0

    .line 191
    :goto_0
    return v6

    .line 174
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 175
    .local v2, "frame":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemLongClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v6}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$800(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 178
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->destroyDrawingCache()V

    .line 179
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 180
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v6, 0x2

    new-array v4, v6, [I

    .line 183
    .local v4, "location":[I
    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 185
    iget-object v6, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View$PicItemLongClickListener;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;

    invoke-static {v6}, Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;->access$1000(Lcom/hisilicon/dlna/dmc/gui/browse/files/Picture_New_View;)Lcom/hisilicon/multiscreen/widget/SlidePushView;

    move-result-object v6

    invoke-virtual {v6, v0, v4, v2}, Lcom/hisilicon/multiscreen/widget/SlidePushView;->drawImageSlideView(Landroid/graphics/Bitmap;[ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "location":[I
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "ex":Ljava/lang/Error;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    .line 187
    .end local v1    # "ex":Ljava/lang/Error;
    :catch_1
    move-exception v6

    goto :goto_1
.end method
