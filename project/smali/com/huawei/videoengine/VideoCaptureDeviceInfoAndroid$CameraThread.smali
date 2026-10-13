.class Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;
.super Ljava/lang/Thread;
.source "VideoCaptureDeviceInfoAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraThread"
.end annotation


# instance fields
.field public camera:Landroid/hardware/Camera;

.field index:I

.field final synthetic this$0:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;


# direct methods
.method public constructor <init>(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;I)V
    .locals 1
    .param p2, "index"    # I

    .prologue
    .line 868
    iput-object p1, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->this$0:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 866
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->index:I

    .line 867
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;

    .line 869
    iput p2, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->index:I

    .line 870
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 875
    :try_start_0
    iget v1, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->index:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :goto_0
    return-void

    .line 877
    :catch_0
    move-exception v0

    .line 879
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to open camera"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
