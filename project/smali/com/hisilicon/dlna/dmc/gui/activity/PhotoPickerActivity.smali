.class public Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;
.super Landroid/app/Activity;
.source "PhotoPickerActivity.java"


# static fields
.field public static final CAMERA_CATCH_PATH:Ljava/lang/String;

.field public static final CAMERA_PHOTO_KEY:Ljava/lang/String; = "CAMERA_PHOTO_KEY"

.field public static final PHOTO_PICKER_FROM_CAMERA:I = 0x7db

.field public static final PHOTO_PICKER_INTENT_KEY:Ljava/lang/String; = "PHOTO_PICKER_INTENT_KEY"

.field public static final SDCARD_ROOT:Ljava/lang/String;

.field public static final VIDEO_PICKER_FROM_CAMERA:I = 0x7dc


# instance fields
.field private activity:Landroid/app/Activity;

.field private photoPath:Ljava/lang/String;

.field private preview_photo:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->SDCARD_ROOT:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->SDCARD_ROOT:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Hisi/photo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->CAMERA_CATCH_PATH:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private updateImage(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/hisilicon/dlna/dmc/utility/MyException;
        }
    .end annotation

    .prologue
    .line 94
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    :cond_0
    const v2, 0x7f080037

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 97
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->finish()V

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    invoke-static {}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getInstance()Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->decodeFileBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 105
    invoke-static {p1}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->getPhotoDegree(Ljava/lang/String;)I

    move-result v1

    .line 106
    .local v1, "degree":I
    int-to-float v2, v1

    invoke-static {v0, v2}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .end local v1    # "degree":I
    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->preview_photo:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->finish()V

    .line 90
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    iput-object p0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->activity:Landroid/app/Activity;

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->setContentView(I)V

    .line 47
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->preview_photo:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PHOTO_PICKER_INTENT_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->photoPath:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->onPushClick(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 116
    return-void
.end method

.method public onPushClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->photoPath:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->photoPath:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    :cond_0
    const v4, 0x7f080037

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 57
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 58
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->finish()V

    .line 86
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v4

    .line 62
    invoke-interface {v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v3

    .line 64
    .local v3, "processor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-nez v3, :cond_2

    .line 65
    new-instance v3, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;

    .end local v3    # "processor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-direct {v3}, Lcom/hisilicon/dlna/dmc/processor/impl/PlaylistProcessorImpl;-><init>()V

    .line 66
    .restart local v3    # "processor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->setPlaylistProcessor(Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;)V

    .line 69
    :cond_2
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->photoPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/hisilicon/dlna/dmc/processor/upnp/mediaserver/ContentTree;->getImageItemFromPath(Ljava/lang/String;)Lorg/teleal/cling/support/model/DIDLObject;

    move-result-object v2

    .line 70
    .local v2, "object":Lorg/teleal/cling/support/model/DIDLObject;
    if-nez v2, :cond_3

    .line 71
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->finish()V

    goto :goto_0

    .line 74
    :cond_3
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->setItems(Ljava/util/List;)V

    .line 75
    invoke-interface {v3, v2}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->addDIDLObject(Lorg/teleal/cling/support/model/DIDLObject;)Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v1

    .line 76
    .local v1, "item":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v4

    invoke-interface {v4}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v4

    .line 77
    invoke-interface {v4, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->setCurrentItem(Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)I

    .line 79
    instance-of v4, v2, Lorg/teleal/cling/support/model/item/ImageItem;

    if-eqz v4, :cond_4

    .line 80
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->activity:Landroid/app/Activity;

    const-class v5, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 84
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
