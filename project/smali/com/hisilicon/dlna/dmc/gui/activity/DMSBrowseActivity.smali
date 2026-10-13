.class public Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;
.super Landroid/app/Activity;
.source "DMSBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$MyDeviceListener;
    }
.end annotation


# static fields
.field public static firstLoad:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private browseLayout:Landroid/widget/RelativeLayout;

.field private dmsBrowseView:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

.field private myHandler:Landroid/os/Handler;

.field private rc_quickPlayPause:Landroid/widget/ImageView;

.field private runnable:Ljava/lang/Runnable;

.field private systemListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->firstLoad:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->myHandler:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$2;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$2;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->runnable:Ljava/lang/Runnable;

    .line 112
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3;

    invoke-direct {v0, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$3;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->systemListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;

    return-void
.end method

.method static synthetic access$000(Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;)Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->systemListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;)Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;
    .locals 1
    .param p0, "x0"    # Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->dmsBrowseView:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    return-object v0
.end method

.method private dmsBrowseBack()V
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->stopLoading()V

    .line 238
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->dmsBrowseView:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->backTo()Z

    move-result v0

    .line 239
    .local v0, "isBack":Z
    if-nez v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->finish()V

    .line 242
    :cond_0
    return-void
.end method

.method private doPhoto(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 310
    packed-switch p1, :pswitch_data_0

    .line 334
    :goto_0
    return-void

    .line 313
    :pswitch_0
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->getCameraCachePath()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "photoPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    :cond_0
    const v2, 0x7f080037

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 316
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 317
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->finish()V

    goto :goto_0

    .line 321
    :cond_1
    const-string v2, ""

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->setCameraCachePath(Ljava/lang/String;)V

    .line 323
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->activity:Landroid/app/Activity;

    const-class v3, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "PHOTO_PICKER_INTENT_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x7db
        :pswitch_0
    .end packed-switch
.end method

.method private getCurrentPlaylistItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    .locals 2

    .prologue
    .line 354
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    .line 355
    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getPlaylistProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;

    move-result-object v0

    .line 356
    .local v0, "playlistProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;
    if-nez v0, :cond_0

    .line 357
    const/4 v1, 0x0

    .line 358
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/PlaylistProcessor;->getCurrentItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v1

    goto :goto_0
.end method

.method private pickPhotoFromCamera()V
    .locals 3

    .prologue
    .line 249
    const-string v0, "mounted"

    .line 250
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->activity:Landroid/app/Activity;

    const v1, 0x7f08006d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->startTakePhoto()V

    goto :goto_0
.end method

.method private startRunnable()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$1;

    invoke-direct {v1, p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity$1;-><init>(Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 95
    return-void
.end method

.method private startTakePhoto()V
    .locals 8

    .prologue
    .line 261
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 263
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/hisilicon/dlna/dmc/gui/activity/PhotoPickerActivity;->CAMERA_CATCH_PATH:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v3, "photoPath":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 265
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyMMddHHmmss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 266
    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 268
    .local v2, "photo":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 269
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 274
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->setCameraCachePath(Ljava/lang/String;)V

    .line 276
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 278
    .local v4, "photoUri":Landroid/net/Uri;
    const-string v5, "output"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 279
    const-string v5, "android.intent.extra.videoQuality"

    const/16 v6, 0x64

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    const/16 v5, 0x7db

    invoke-virtual {p0, v1, v5}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 288
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "photo":Ljava/io/File;
    .end local v3    # "photoPath":Ljava/io/File;
    .end local v4    # "photoUri":Landroid/net/Uri;
    :goto_1
    return-void

    .line 270
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "photo":Ljava/io/File;
    .restart local v3    # "photoPath":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 284
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "photo":Ljava/io/File;
    .end local v3    # "photoPath":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 285
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->activity:Landroid/app/Activity;

    const v6, 0x7f080056

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 286
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private stopDMR()V
    .locals 2

    .prologue
    .line 208
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    .line 209
    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->getDMRProcessor()Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;

    move-result-object v0

    .line 210
    .local v0, "dmrProcessor":Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;
    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/DMRProcessor;->dispose()V

    .line 212
    :cond_0
    return-void
.end method

.method private updateQuickPalyPause()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 215
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->getCurrentPlaylistItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v0

    .line 216
    .local v0, "item":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/teleal/cling/support/model/item/ImageItem;

    if-eqz v1, :cond_1

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->rc_quickPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getPlayStatue()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getPlayStatue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 220
    :cond_2
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->rc_quickPlayPause:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 222
    :cond_3
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->rc_quickPlayPause:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private videoMethod()V
    .locals 3

    .prologue
    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.videoQuality"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 294
    const/16 v1, 0x7dc

    invoke-virtual {p0, v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 297
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 301
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 302
    invoke-direct {p0, p1, p3}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->doPhoto(ILandroid/content/Intent;)V

    .line 305
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 306
    return-void
.end method

.method public onBackClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->dmsBrowseBack()V

    .line 233
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->dmsBrowseBack()V

    .line 229
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    iput-object p0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->activity:Landroid/app/Activity;

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "------------ DMSBrowseActivity DMSB-------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "STBIP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aloys/formuler/airsyncremote/MyApp;->setSTBIP(Ljava/lang/String;)V

    .line 60
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->setContentView(I)V

    .line 62
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->rc_quickPlayPause:Landroid/widget/ImageView;

    .line 63
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->browseLayout:Landroid/widget/RelativeLayout;

    .line 67
    new-instance v0, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->dmsBrowseView:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    .line 68
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->browseLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->dmsBrowseView:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 69
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->startRunnable()V

    .line 78
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 193
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->setPlayPosition(I)V

    .line 194
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->systemListener:Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;

    invoke-interface {v0, v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->removeSystemListener(Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor$SystemListener;)V

    .line 195
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->dmsBrowseView:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->onDestroy()V

    .line 196
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->stopDMR()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v0

    invoke-interface {v0}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->unbindUpnpService()V

    .line 202
    return-void

    .line 199
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/hisilicon/dlna/dmc/processor/impl/UpnpProcessorImpl;->getSington()Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/hisilicon/dlna/dmc/processor/interfaces/UpnpProcessor;->unbindUpnpService()V

    throw v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 186
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->dmsBrowseView:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->onPause()V

    .line 187
    return-void
.end method

.method public onPlayPauseClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->getCurrentPlaylistItem()Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    move-result-object v1

    .line 338
    .local v1, "item":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    if-nez v1, :cond_0

    .line 351
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getData()Ljava/lang/Object;

    move-result-object v2

    .line 341
    .local v2, "object":Ljava/lang/Object;
    instance-of v3, v2, Lorg/teleal/cling/support/model/item/ImageItem;

    if-eqz v3, :cond_1

    .line 342
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->activity:Landroid/app/Activity;

    const-class v4, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 343
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 344
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    instance-of v3, v2, Lorg/teleal/cling/support/model/item/AudioItem;

    if-nez v3, :cond_2

    instance-of v3, v2, Lorg/teleal/cling/support/model/item/MusicTrack;

    if-eqz v3, :cond_3

    .line 345
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->activity:Landroid/app/Activity;

    const-class v4, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingMusicActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 348
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->activity:Landroid/app/Activity;

    const-class v4, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingVideoActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 179
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->updateQuickPalyPause()V

    .line 180
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->dmsBrowseView:Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;

    invoke-virtual {v0}, Lcom/hisilicon/dlna/dmc/gui/customview/DMSBrowseView;->onResume()V

    .line 181
    return-void
.end method

.method public onTakePhotoClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/DMSBrowseActivity;->pickPhotoFromCamera()V

    .line 246
    return-void
.end method
