.class public Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;
.super Ljava/lang/Object;
.source "ImageCallbackImpl.java"

# interfaces
.implements Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;


# instance fields
.field private id:Ljava/lang/String;

.field private mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;->mImageView:Landroid/widget/ImageView;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;->mImageView:Landroid/widget/ImageView;

    .line 19
    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;->id:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "imageLink"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/processor/impl/ImageCallbackImpl;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 31
    :cond_0
    return-void
.end method
