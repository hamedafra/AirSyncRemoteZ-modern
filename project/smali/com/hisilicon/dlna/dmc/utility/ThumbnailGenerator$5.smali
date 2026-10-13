.class Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;
.super Ljava/lang/Object;
.source "ThumbnailGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnLocalImageThumb(IJLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

.field final synthetic val$imageCallback:Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$position:I

.field final synthetic val$videoId:J


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;IJLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    iput p2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->val$position:I

    iput-wide p3, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->val$videoId:J

    iput-object p5, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->val$imageUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->val$imageCallback:Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 606
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$000(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$100(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 609
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$100(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$000(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$200(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    iget v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->val$position:I

    iget-wide v2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->val$videoId:J

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->val$imageUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->val$imageCallback:Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    invoke-static/range {v0 .. v5}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$700(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;IJLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$000(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->val$position:I

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$400(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)I

    move-result v1

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->val$position:I

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$500(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 621
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    iget v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->val$position:I

    iget-wide v2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->val$videoId:J

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->val$imageUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$5;->val$imageCallback:Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    invoke-static/range {v0 .. v5}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$700(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;IJLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 623
    :cond_2
    return-void

    .line 610
    :catch_0
    move-exception v6

    .line 611
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 613
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
