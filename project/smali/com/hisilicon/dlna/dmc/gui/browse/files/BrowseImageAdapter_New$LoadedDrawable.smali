.class public Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$LoadedDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "BrowseImageAdapter_New.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadedDrawable"
.end annotation


# instance fields
.field private final loadImageTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;)V
    .locals 1
    .param p1, "loadImageTask"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 263
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$LoadedDrawable;->loadImageTaskReference:Ljava/lang/ref/WeakReference;

    .line 265
    return-void
.end method


# virtual methods
.method public getLoadImageTask()Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$LoadedDrawable;->loadImageTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisilicon/dlna/dmc/gui/browse/files/BrowseImageAdapter_New$AsyncLoadImageTask;

    return-object v0
.end method
