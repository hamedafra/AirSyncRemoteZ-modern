.class Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$9;
.super Ljava/lang/Object;
.source "ThumbnailGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->handleBitmap(Ljava/lang/Integer;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$imageCallback:Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

.field final synthetic val$mt:Ljava/lang/Integer;

.field final synthetic val$strImagLink:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;Ljava/lang/Integer;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    .prologue
    .line 828
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$9;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$9;->val$mt:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$9;->val$imageCallback:Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    iput-object p4, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$9;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$9;->val$strImagLink:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 831
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$9;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$200(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$9;->val$mt:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$9;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$400(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$9;->val$mt:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$9;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$500(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$9;->val$imageCallback:Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$9;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$9;->val$strImagLink:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 835
    :cond_1
    return-void
.end method
