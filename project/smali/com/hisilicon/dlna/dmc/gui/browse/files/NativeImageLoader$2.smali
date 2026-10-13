.class Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$2;
.super Landroid/os/Handler;
.source "NativeImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;->loadNativeImage(Ljava/lang/String;Landroid/graphics/Point;Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$NativeImageCallBack;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;

.field final synthetic val$mCallBack:Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$NativeImageCallBack;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$NativeImageCallBack;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$2;->this$0:Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$2;->val$mCallBack:Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$NativeImageCallBack;

    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 91
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$2;->val$mCallBack:Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$NativeImageCallBack;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$2;->val$path:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/hisilicon/dlna/dmc/gui/browse/files/NativeImageLoader$NativeImageCallBack;->onImageLoader(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 92
    return-void
.end method
