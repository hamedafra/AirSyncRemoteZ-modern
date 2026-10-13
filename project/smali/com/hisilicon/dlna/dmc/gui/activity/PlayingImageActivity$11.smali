.class Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;
.super Landroid/os/AsyncTask;
.source "PlayingImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->loadImage(Landroid/widget/ImageView;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    iput-object p2, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "params"    # [Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 655
    const/4 v5, 0x0

    aget-object v1, p1, v5

    .line 657
    .local v1, "item":Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;
    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 658
    .local v3, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v5, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$1802(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 659
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v5}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$1900(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Lcom/hisilicon/dlna/dmc/utility/Cache;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/hisilicon/dlna/dmc/utility/Cache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 662
    .local v2, "picBitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 663
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bitmap is not null!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v4, v2

    .line 793
    :cond_0
    :goto_0
    return-object v4

    .line 666
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bitmap is null!!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v1}, Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;->fromLocalType()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 670
    const/4 v0, 0x0

    .line 672
    .local v0, "count":I
    :cond_2
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 674
    add-int/lit8 v0, v0, 0x1

    .line 675
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v5, v3, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$2000(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 677
    if-nez v2, :cond_3

    if-le v0, v8, :cond_2

    :cond_3
    :goto_1
    move-object v4, v2

    .line 793
    goto :goto_0

    .line 720
    .end local v0    # "count":I
    :cond_4
    const/4 v0, 0x0

    .line 722
    .restart local v0    # "count":I
    :cond_5
    invoke-virtual {p0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 724
    add-int/lit8 v0, v0, 0x1

    .line 725
    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v5, v3, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$2100(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;Ljava/lang/String;Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 726
    if-nez v2, :cond_3

    if-le v0, v8, :cond_5

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 643
    check-cast p1, [Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;

    invoke-virtual {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->doInBackground([Lcom/hisilicon/dlna/dmc/processor/model/PlaylistItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$1802(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 814
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$202(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;Z)Z

    .line 815
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Cancell this pic load!!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 816
    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 798
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$1802(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 799
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$1700(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 800
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v0, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$202(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;Z)Z

    .line 801
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$2200(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$2300(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080041

    invoke-static {v0, v1, v2}, Lcom/hisilicon/dlna/dmc/utility/Utility;->downToast(Landroid/widget/Toast;Landroid/content/Context;I)V

    .line 806
    :goto_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v0, v3}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$2402(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;Z)Z

    .line 807
    return-void

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 643
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$202(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;Z)Z

    .line 647
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->this$0:Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;->access$1700(Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 648
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/gui/activity/PlayingImageActivity$11;->val$imageView:Landroid/widget/ImageView;

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 650
    return-void
.end method
