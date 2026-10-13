.class Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;
.super Ljava/lang/Object;
.source "ThumbnailGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->returnImage(ILjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
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


# direct methods
.method constructor <init>(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;ILjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    iput p2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->val$position:I

    iput-object p3, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->val$imageUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->val$imageCallback:Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 331
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$000(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$100(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$100(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$000(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$200(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    iget v2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->val$position:I

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->val$imageUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->val$imageCallback:Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    invoke-static {v1, v2, v3, v4}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$300(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;ILjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v1}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$000(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->val$position:I

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$400(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)I

    move-result v2

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->val$position:I

    iget-object v2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    invoke-static {v2}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$500(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;)I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 346
    iget-object v1, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->this$0:Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;

    iget v2, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->val$position:I

    iget-object v3, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->val$imageUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator$2;->val$imageCallback:Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;

    invoke-static {v1, v2, v3, v4}, Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;->access$300(Lcom/hisilicon/dlna/dmc/utility/ThumbnailGenerator;ILjava/lang/String;Lcom/hisilicon/dlna/dmc/processor/interfaces/ImageCallback;)V

    .line 348
    :cond_2
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 338
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
