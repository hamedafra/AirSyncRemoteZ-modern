.class Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;
.super Ljava/lang/Object;
.source "ThumbnailGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnLocalVideoThumb(IJLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
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
    .line 701
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    iput p2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->val$position:I

    iput-wide p3, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->val$videoId:J

    iput-object p5, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->val$imageUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->val$imageCallback:Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 705
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$000(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$100(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 708
    :try_start_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$100(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$000(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$200(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    iget v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->val$position:I

    iget-wide v2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->val$videoId:J

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->val$imageUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->val$imageCallback:Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    invoke-static/range {v0 .. v5}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$800(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;IJLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v0}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$000(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->val$position:I

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$400(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)I

    move-result v1

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->val$position:I

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$500(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 720
    iget-object v0, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    iget v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->val$position:I

    iget-wide v2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->val$videoId:J

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->val$imageUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$7;->val$imageCallback:Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    invoke-static/range {v0 .. v5}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$800(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;IJLjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 722
    :cond_2
    return-void

    .line 709
    :catch_0
    move-exception v6

    .line 710
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 712
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
