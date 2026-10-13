.class public Lcom/huawei/videoengine/VideoCaptureAndroid;
.super Ljava/lang/Object;
.source "VideoCaptureAndroid.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock; = null

.field private static CaptureSystemRunFlag:Z = false

.field private static DEBUG:Z = false

.field private static LOGLEVEL:I = 0x0

.field private static SysLockFlag:Z = false

.field private static final TAG:Ljava/lang/String; = "hme-video"

.field private static VERBOSE:Z = false

.field private static isRunning:Z = false

.field private static isStartPreviewFlag:Z = false

.field private static final java_version:Ljava/lang/String; = "HME Video Android iMedia 3.2.5.1"

.field private static final model:Ljava/lang/String;


# instance fields
.field private CapMemorySize:I

.field private PIXEL_FORMAT:I

.field private camera:Landroid/hardware/Camera;

.field private config_PIXEL_FORMAT:I

.field private context:J

.field private currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

.field private currentDevice:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

.field private expectedFrameSize:I

.field private g_buffer1:[B

.field private g_buffer2:[B

.field private g_buffer3:[B

.field private id:I

.field private localPreview:Landroid/view/SurfaceHolder;

.field private final numCaptureBuffers:I

.field private orientation:I

.field private ownsBuffers:Z

.field pixelFormat:Landroid/graphics/PixelFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    .line 47
    sput-boolean v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    .line 49
    sput-boolean v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    .line 51
    sput-boolean v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->SysLockFlag:Z

    .line 54
    sput-boolean v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSystemRunFlag:Z

    .line 55
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 76
    sput v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->LOGLEVEL:I

    .line 77
    sget v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->LOGLEVEL:I

    if-le v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->VERBOSE:Z

    .line 78
    sget v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->LOGLEVEL:I

    if-le v0, v1, :cond_1

    :goto_1
    sput-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->DEBUG:Z

    return-void

    :cond_0
    move v0, v2

    .line 77
    goto :goto_0

    :cond_1
    move v1, v2

    .line 78
    goto :goto_1
.end method

.method public constructor <init>(IJLandroid/hardware/Camera;Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    .locals 6
    .param p1, "in_id"    # I
    .param p2, "in_context"    # J
    .param p4, "in_camera"    # Landroid/hardware/Camera;
    .param p5, "in_device"    # Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .prologue
    const/16 v0, 0x11

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 34
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentDevice:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 40
    iput v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    .line 43
    iput v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->config_PIXEL_FORMAT:I

    .line 45
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->numCaptureBuffers:I

    .line 60
    iput v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->CapMemorySize:I

    .line 66
    iput v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    .line 67
    iput v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->orientation:I

    .line 68
    iput v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J

    .line 71
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 73
    iput-boolean v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->ownsBuffers:Z

    .line 80
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 152
    const-string v0, "hme-video"

    const-string v1, "VideoCaptureAndroid.java! enter VideoCaptureAndroid! java version:HME Video Android iMedia 3.2.5.1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Device model is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 157
    new-instance v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v0}, Lcom/huawei/videoengine/CaptureCapabilityAndroid;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 158
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    .line 160
    iput p1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    .line 161
    iput-wide p2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J

    .line 162
    iput-object p4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 163
    iput-object p5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentDevice:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 164
    iget v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    invoke-static {v0, v1}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 166
    sput-boolean v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSystemRunFlag:Z

    .line 168
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    iget v0, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 170
    const-string v0, "hme-video"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Java VideoCaptureAndroid fail! not support format:%d"

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 174
    const-string v0, "hme-video"

    const-string v1, "VideoCaptureAndroid.java! leave VideoCaptureAndroid!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method public static DeleteVideoCaptureAndroid(Lcom/huawei/videoengine/VideoCaptureAndroid;)V
    .locals 5
    .param p0, "captureAndroid"    # Lcom/huawei/videoengine/VideoCaptureAndroid;

    .prologue
    const/4 v4, 0x0

    .line 84
    const-string v1, "hme-video"

    const-string v2, "VideoCaptureAndroid.java! enter DeleteVideoCaptureAndroid!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 87
    const/4 v1, 0x1

    sput-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->SysLockFlag:Z

    .line 89
    const-string v1, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CaptureSystemRunFlag:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSystemRunFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 90
    const-string v3, " isRunningFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSystemRunFlag:Z

    if-eqz v1, :cond_1

    .line 95
    sget-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/huawei/videoengine/VideoCaptureAndroid;->StopCapture()I

    .line 102
    :cond_0
    :try_start_0
    const-string v1, "hme-video"

    const-string v2, "before camera.release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_4

    .line 105
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 107
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J

    .line 114
    :goto_0
    const-string v1, "hme-video"

    const-string v2, "after camera.release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    sput-boolean v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSystemRunFlag:Z

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/videoengine/VideoCaptureAndroid;->FreeCaptureResource()V

    .line 141
    sget-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->SysLockFlag:Z

    if-eqz v1, :cond_2

    .line 143
    sput-boolean v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->SysLockFlag:Z

    .line 144
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 147
    :cond_2
    const-string v1, "hme-video"

    const-string v2, "VideoCaptureAndroid.java! leave DeleteVideoCaptureAndroid!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_3
    :goto_1
    return-void

    .line 111
    :cond_4
    :try_start_1
    const-string v1, "hme-video"

    const-string v2, "camera already free!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "hme-video"

    const-string v2, "Failed to delete camera android!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    const-string v1, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Message"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sput-boolean v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSystemRunFlag:Z

    .line 126
    sget-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->SysLockFlag:Z

    if-eqz v1, :cond_3

    .line 128
    sput-boolean v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->SysLockFlag:Z

    .line 129
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1
.end method

.method private LocalRemoveCallback()V
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1061
    :cond_0
    return-void
.end method

.method private setPreviewCallback()V
    .locals 8

    .prologue
    .line 957
    const-string v4, "hme-video"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setPreviewCallback, sdk version:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :try_start_0
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 964
    const-string v4, "hme-video"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Camera not initialized in setPreviewCallback!"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :goto_0
    return-void

    .line 969
    :cond_0
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v4, v4, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    iget-object v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v5, v5, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    iget v5, v5, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x8

    .line 970
    .local v0, "bufSize":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x7

    if-le v4, v5, :cond_6

    .line 972
    const/4 v1, 0x0

    .line 974
    .local v1, "buffer":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    .line 1035
    iput v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->CapMemorySize:I

    .line 1038
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1039
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->ownsBuffers:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1047
    .end local v0    # "bufSize":I
    .end local v1    # "buffer":[B
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 1049
    .local v2, "ex":Ljava/lang/Exception;
    const-string v4, "hme-video"

    const-string v5, "Failed in setPreviewCallback!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1051
    const-string v4, "hme-video"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Message"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 978
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "bufSize":I
    .restart local v1    # "buffer":[B
    .restart local v3    # "i":I
    :cond_1
    packed-switch v3, :pswitch_data_0

    .line 1018
    :try_start_1
    const-string v4, "hme-video"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "err i: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const/4 v1, 0x0

    .line 1024
    :goto_2
    if-nez v1, :cond_5

    .line 1026
    const-string v4, "hme-video"

    const-string v5, "null == buffer in local setPreviewCallback!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 982
    :pswitch_0
    iget v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->CapMemorySize:I

    if-eq v4, v0, :cond_2

    .line 984
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer1:[B

    .line 985
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer1:[B

    .line 988
    :cond_2
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer1:[B

    .line 989
    goto :goto_2

    .line 994
    :pswitch_1
    iget v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->CapMemorySize:I

    if-eq v4, v0, :cond_3

    .line 996
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer2:[B

    .line 997
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer2:[B

    .line 1000
    :cond_3
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer2:[B

    .line 1001
    goto :goto_2

    .line 1006
    :pswitch_2
    iget v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->CapMemorySize:I

    if-eq v4, v0, :cond_4

    .line 1008
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer3:[B

    .line 1009
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer3:[B

    .line 1012
    :cond_4
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer3:[B

    .line 1013
    goto :goto_2

    .line 1030
    :cond_5
    const-string v4, "hme-video"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "start malloc buf! bufSize: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " i: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " buffer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 1032
    const/4 v1, 0x0

    .line 974
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1043
    .end local v1    # "buffer":[B
    .end local v3    # "i":I
    :cond_6
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 978
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public ConfigureCameraEncoder(II)I
    .locals 7
    .param p1, "startBps"    # I
    .param p2, "keyInternal"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 196
    const-string v4, "hme-video"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#singleBox# ConfigureCameraEncoder!startkbps: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit16 v6, p1, 0x3e8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kbps keyInternal: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :try_start_0
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 201
    const-string v3, "hme-video"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Camera not initialized!!!id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return v2

    .line 204
    :cond_0
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 206
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 207
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_1

    .line 209
    const-string v3, "hme-video"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "setCaptureEncoderRate! null == parameters!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 229
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "hme-video"

    const-string v4, "Failed to ConfigureCameraEncoder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    const-string v3, "hme-video"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Message"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 218
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    :try_start_1
    const-string v4, "double_stream_bit_rate"

    invoke-virtual {v1, v4, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 219
    const-string v4, "hme-video"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dengxijia: set start bitrate to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit16 v6, p1, 0x3e8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kbps"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 225
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v3

    .line 235
    goto :goto_0
.end method

.method public FreeCaptureResource()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 180
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 181
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 182
    iput v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J

    .line 184
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentDevice:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 185
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    .line 186
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 187
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer1:[B

    .line 188
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer2:[B

    .line 189
    iput-object v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->g_buffer3:[B

    .line 190
    iput v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->CapMemorySize:I

    .line 191
    const-string v0, "hme-video"

    const-string v1, "VideoCaptureAndroid.java! leave FreeCaptureResource!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method native ProvideCameraFrame([BIJ)V
.end method

.method public SetPreviewRotation(I)I
    .locals 14
    .param p1, "rotation"    # I

    .prologue
    const/16 v13, 0xe

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 782
    const-string v10, "hme-video"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "SetPreviewRotation start, rotation="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :try_start_0
    iget-object v10, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v10, :cond_0

    .line 789
    const-string v9, "hme-video"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "Camera not initialized in SetPreviewRotation!"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :goto_0
    return v8

    .line 795
    :cond_0
    sget-object v10, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 796
    sget-boolean v6, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    .line 797
    .local v6, "running":Z
    const/4 v7, 0x0

    .line 798
    .local v7, "width":I
    const/4 v2, 0x0

    .line 799
    .local v2, "height":I
    const/4 v1, 0x0

    .line 801
    .local v1, "framerate":I
    if-eqz v6, :cond_1

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v10, v13, :cond_1

    .line 803
    iget-object v10, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v7, v10, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 804
    iget-object v10, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v2, v10, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 805
    iget-object v10, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    iget v1, v10, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 806
    invoke-virtual {p0}, Lcom/huawei/videoengine/VideoCaptureAndroid;->StopCapture()I

    .line 809
    :cond_1
    const/4 v5, 0x0

    .line 810
    .local v5, "resultRotation":I
    iget-object v10, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentDevice:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object v10, v10, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    sget-object v11, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    if-ne v10, v11, :cond_5

    .line 817
    sget-object v10, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string v11, "GT-I9001"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    sget-object v10, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string v11, "LG-E730"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 819
    :cond_2
    rsub-int v10, p1, 0x168

    add-int/lit16 v10, v10, 0xb4

    rem-int/lit16 v5, v10, 0x168

    .line 834
    :goto_1
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v11, 0x7

    if-le v10, v11, :cond_6

    .line 836
    iget-object v10, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v10, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 848
    :goto_2
    if-eqz v6, :cond_3

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v10, v13, :cond_3

    .line 851
    iget v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->config_PIXEL_FORMAT:I

    .line 852
    .local v3, "localPicFormat":I
    invoke-virtual {p0, v7, v2, v1, v3}, Lcom/huawei/videoengine/VideoCaptureAndroid;->StartCapture(IIII)I

    .line 853
    const-string v10, "hme-video"

    const-string v11, "before setPreviewCallback "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureAndroid;->setPreviewCallback()V

    .line 855
    const-string v10, "hme-video"

    const-string v11, "before startPreview"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v10, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v10}, Landroid/hardware/Camera;->startPreview()V

    .line 857
    const/4 v10, 0x1

    sput-boolean v10, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    .line 860
    .end local v3    # "localPicFormat":I
    :cond_3
    sget-object v10, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v8, v9

    .line 875
    goto :goto_0

    .line 824
    :cond_4
    rsub-int v10, p1, 0x168

    rem-int/lit16 v5, v10, 0x168

    .line 827
    goto :goto_1

    .line 831
    :cond_5
    move v5, p1

    goto :goto_1

    .line 843
    :cond_6
    iget-object v10, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v10}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 844
    .local v4, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 845
    iget-object v10, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v10, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 864
    .end local v1    # "framerate":I
    .end local v2    # "height":I
    .end local v4    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v5    # "resultRotation":I
    .end local v6    # "running":Z
    .end local v7    # "width":I
    :catch_0
    move-exception v0

    .line 866
    .local v0, "ex":Ljava/lang/Exception;
    const-string v9, "hme-video"

    const-string v10, "Failed in setPreviewCallback!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 868
    const-string v9, "hme-video"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Message"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    sget-object v9, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0
.end method

.method public StartCapture(IIII)I
    .locals 29
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "ConfigframeRate"    # I
    .param p4, "previewImageType"    # I

    .prologue
    .line 330
    sget-boolean v23, Lcom/huawei/videoengine/VideoCaptureAndroid;->DEBUG:Z

    if-eqz v23, :cond_0

    .line 331
    const-string v23, "hme-video"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "StartCapture width:"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " height:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 332
    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " fps:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " previewImageType:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 331
    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 335
    const-string v23, "hme-video"

    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v25, "Camera not initialized %d"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v24 .. v26}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/16 v23, -0x1

    .line 599
    :goto_0
    return v23

    .line 339
    :cond_1
    sget-object v23, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 342
    .local v6, "SupportParameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v18

    .line 343
    .local v18, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v15

    .line 344
    .local v15, "iMaxFormatNum":I
    const/4 v4, 0x0

    .line 345
    .local v4, "IncludeConfigImageFlag":Z
    const/4 v9, 0x0

    .line 347
    .local v9, "enableDoubleStream":Z
    if-gtz v15, :cond_2

    .line 349
    const-string v23, "hme-video"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "StartCapture: suport format num: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "is invalid"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget-object v23, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 351
    const/16 v23, -0x1

    goto :goto_0

    .line 354
    :cond_2
    const/16 v23, 0x62

    move/from16 v0, v23

    move/from16 v1, p4

    if-ne v0, v1, :cond_3

    .line 356
    sget-object v23, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string v24, "M310"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 358
    const/4 v9, 0x1

    .line 359
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 360
    const-string v23, "hme-video"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "StartCapture change previewImageType from 98(just for M310) to "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_3
    const-string v23, "hme-video"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "StartCapture: suport format num:"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_4
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_7

    .line 382
    move/from16 v19, p4

    .line 383
    .local v19, "localPicFormat":I
    if-nez v4, :cond_5

    .line 385
    const-string v23, "hme-video"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "start capture! not support config format: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    move/from16 v19, v0

    .line 387
    move/from16 v22, v19

    .line 388
    .local v22, "tmpPicFormat":I
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_8

    .line 400
    if-nez v4, :cond_5

    .line 402
    const-string v23, "hme-video"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "start capture! not support default format: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    move/from16 v19, v22

    .line 408
    .end local v22    # "tmpPicFormat":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v23, v0

    if-nez v23, :cond_a

    .line 410
    const-string v23, "hme-video"

    const-string v24, "null == currentCapability in StartCapture!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    sget-object v23, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 412
    const/16 v23, -0x1

    goto/16 :goto_0

    .line 364
    .end local v19    # "localPicFormat":I
    :cond_6
    const-string v23, "hme-video"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "StartCapture input rawType is: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "  modle: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " is not supported"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    sget-object v23, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 366
    const/16 v23, -0x1

    goto/16 :goto_0

    .line 372
    :cond_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 375
    .local v17, "index":Ljava/lang/Integer;
    const-string v24, "hme-video"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "StartCapture: suport format:"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, p4

    if-ne v0, v1, :cond_4

    .line 378
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 388
    .end local v17    # "index":Ljava/lang/Integer;
    .restart local v19    # "localPicFormat":I
    .restart local v22    # "tmpPicFormat":I
    :cond_8
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 391
    .restart local v17    # "index":Ljava/lang/Integer;
    const-string v24, "hme-video"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "StartCapture: suport format:"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 394
    const/4 v4, 0x1

    .line 397
    :cond_9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    goto/16 :goto_2

    .line 415
    .end local v17    # "index":Ljava/lang/Integer;
    .end local v22    # "tmpPicFormat":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v23, v0

    move/from16 v0, p1

    move-object/from16 v1, v23

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v23, v0

    move/from16 v0, p2

    move-object/from16 v1, v23

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v23, v0

    move/from16 v0, p3

    move-object/from16 v1, v23

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v20

    .line 421
    .local v20, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v20, :cond_b

    .line 423
    const-string v23, "hme-video"

    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v25, "start capture! null == parameters!"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    sget-object v23, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 425
    const/16 v23, -0x1

    goto/16 :goto_0

    .line 429
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->currentCapability:Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    move/from16 v24, v0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 431
    const-string v23, "hme-video"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "StartCapture: current format:"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    move-object/from16 v23, v0

    move/from16 v0, v19

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 437
    const-string v23, "hme-video"

    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v25, "start capture! not support format:%d"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v24 .. v26}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/16 v19, 0x11

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    move-object/from16 v23, v0

    move/from16 v0, v19

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 448
    const-string v23, "hme-video"

    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v25, "start capture! not support format:NV21"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    sget-object v23, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 450
    const/16 v23, -0x1

    goto/16 :goto_0

    .line 454
    :cond_c
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 457
    const-string v23, "hme-video"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "StartCapture! PIXEL_FORMAT:"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Config PicFormat: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 458
    move-object/from16 v0, v24

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "current PicFormat:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " pixelFormat.bitsPerPixel:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 457
    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 464
    .local v14, "iLocalConfigFrame":Ljava/lang/Integer;
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 465
    .local v12, "iDifValue":Ljava/lang/Integer;
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 467
    .local v16, "iTempDifValue":Ljava/lang/Integer;
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v3

    .line 468
    .local v3, "FrameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_d
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_e

    .line 494
    :goto_4
    const-string v23, "hme-video"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "iLocalConfigFrame:"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", InputFrameFps:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 499
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_13

    .line 502
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v13, v0, [I

    .line 503
    .local v13, "iFpsRange":[I
    if-nez v13, :cond_11

    .line 505
    const-string v23, "hme-video"

    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v25, "start capture! null == iFpsRange!"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    sget-object v23, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 507
    const/16 v23, -0x1

    goto/16 :goto_0

    .line 468
    .end local v13    # "iFpsRange":[I
    :cond_e
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 470
    .local v5, "SupportFrameFps":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 472
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 473
    goto :goto_4

    .line 477
    :cond_f
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v24

    sub-int v24, p3, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 480
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v24

    if-nez v24, :cond_10

    .line 482
    move-object/from16 v16, v12

    .line 483
    move-object v14, v5

    .line 486
    :cond_10
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v24

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_d

    .line 488
    move-object/from16 v16, v12

    .line 489
    move-object v14, v5

    goto/16 :goto_3

    .line 510
    .end local v5    # "SupportFrameFps":Ljava/lang/Integer;
    .restart local v13    # "iFpsRange":[I
    :cond_11
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 511
    const-string v23, "hme-video"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "minFps:"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x0

    aget v25, v13, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " maxFps:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x1

    aget v25, v13, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " model:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v13, 0x0

    .line 514
    sget-object v23, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string v24, "XT910"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_12

    sget-object v23, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string v24, "XT928"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 516
    :cond_12
    const/16 v23, 0x1388

    const/16 v24, 0x4e20

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 523
    .end local v13    # "iFpsRange":[I
    :cond_13
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0xe

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_15

    sget-object v23, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string v24, "Full Android on exynos4412"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_15

    .line 525
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v8

    .line 527
    .local v8, "defaultMode":Ljava/lang/String;
    const-string v23, "continuous-picture"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_18

    .line 529
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v21

    .line 530
    .local v21, "supportFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_14
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_17

    .line 550
    .end local v8    # "defaultMode":Ljava/lang/String;
    .end local v21    # "supportFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_15
    :goto_5
    sget-object v23, Lcom/huawei/videoengine/VideoCaptureAndroid;->model:Ljava/lang/String;

    const-string v24, "M310"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 552
    if-eqz v9, :cond_19

    .line 554
    const-string v23, "camera_support_stream"

    const/16 v24, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 555
    const-string v23, "hme-video"

    const-string v24, "#single_box# StartCapture: M310 enalbe double stream!!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_16
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 570
    invoke-static {}, Lcom/huawei/videoengine/ViERenderer;->GetLocalRenderer()Landroid/view/SurfaceHolder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1a

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 582
    :goto_7
    mul-int v23, p1, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    div-int/lit8 v7, v23, 0x8

    .line 584
    .local v7, "bufSize":I
    const/16 v23, 0x0

    sput-boolean v23, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    .line 585
    move-object/from16 v0, p0

    iput v7, v0, Lcom/huawei/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    .line 587
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->config_PIXEL_FORMAT:I

    .line 588
    sget-object v23, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 599
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 530
    .end local v7    # "bufSize":I
    .restart local v8    # "defaultMode":Ljava/lang/String;
    .restart local v21    # "supportFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_17
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 532
    .local v11, "focusMode":Ljava/lang/String;
    const-string v24, "hme-video"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "focesMode:"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string v24, "continuous-picture"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 535
    const-string v23, "hme-video"

    const-string v24, "Support continuous-picture mode!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v23, "continuous-picture"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 590
    .end local v3    # "FrameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "IncludeConfigImageFlag":Z
    .end local v6    # "SupportParameters":Landroid/hardware/Camera$Parameters;
    .end local v8    # "defaultMode":Ljava/lang/String;
    .end local v9    # "enableDoubleStream":Z
    .end local v11    # "focusMode":Ljava/lang/String;
    .end local v12    # "iDifValue":Ljava/lang/Integer;
    .end local v14    # "iLocalConfigFrame":Ljava/lang/Integer;
    .end local v15    # "iMaxFormatNum":I
    .end local v16    # "iTempDifValue":Ljava/lang/Integer;
    .end local v18    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v19    # "localPicFormat":I
    .end local v20    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v21    # "supportFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    .line 592
    .local v10, "ex":Ljava/lang/Exception;
    const-string v23, "hme-video"

    const-string v24, "Failed to start camera"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 594
    const-string v23, "hme-video"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Message"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    sget-object v23, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 596
    const/16 v23, -0x2

    goto/16 :goto_0

    .line 543
    .end local v10    # "ex":Ljava/lang/Exception;
    .restart local v3    # "FrameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4    # "IncludeConfigImageFlag":Z
    .restart local v6    # "SupportParameters":Landroid/hardware/Camera$Parameters;
    .restart local v8    # "defaultMode":Ljava/lang/String;
    .restart local v9    # "enableDoubleStream":Z
    .restart local v12    # "iDifValue":Ljava/lang/Integer;
    .restart local v14    # "iLocalConfigFrame":Ljava/lang/Integer;
    .restart local v15    # "iMaxFormatNum":I
    .restart local v16    # "iTempDifValue":Ljava/lang/Integer;
    .restart local v18    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v19    # "localPicFormat":I
    .restart local v20    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_18
    :try_start_1
    const-string v23, "hme-video"

    const-string v24, "Default mode is continuous-picture!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 562
    .end local v8    # "defaultMode":Ljava/lang/String;
    :cond_19
    const-string v23, "camera_support_stream"

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 563
    const-string v23, "hme-video"

    const-string v24, "#single_box# StartCapture: M310 disalbe 2 streams, only YUV preview stream!!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 578
    :cond_1a
    const-string v23, "hme-video"

    const-string v24, "localPreview null!!"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7
.end method

.method public StopCapture()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 604
    sget-boolean v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 605
    const-string v3, "hme-video"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Enter java StopCapture! isRunning:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_0
    sget-object v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 609
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v3, :cond_3

    .line 610
    sget-boolean v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    if-eqz v3, :cond_3

    .line 613
    :try_start_0
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 614
    const/4 v3, 0x0

    sput-boolean v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    .line 616
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-le v3, v4, :cond_2

    .line 618
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 625
    :goto_0
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v3, :cond_1

    .line 627
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v3, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :cond_1
    :goto_1
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 666
    const-string v1, "hme-video"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "leave java StopCapture! isRunning:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 668
    :goto_2
    return v1

    .line 622
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 630
    :catch_0
    move-exception v0

    .line 632
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 633
    const-string v2, "hme-video"

    const-string v3, "Failed to stop camera"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 640
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v3, :cond_4

    .line 643
    const-string v2, "hme-video"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "camera==null or camera flag not true in StopCapture! flag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    .line 652
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v3, :cond_1

    .line 654
    iget-object v3, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v3, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 656
    :catch_1
    move-exception v0

    .line 658
    .restart local v0    # "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 659
    const-string v2, "hme-video"

    const-string v3, "Failed to removeCallback!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 9
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 675
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 677
    sget-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->VERBOSE:Z

    if-eqz v1, :cond_0

    .line 679
    const-string v1, "hme-video"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "preview frame length %d context %x"

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-wide v6, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_0
    sget-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 689
    :try_start_0
    array-length v1, p1

    iget v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    if-ne v1, v2, :cond_3

    .line 691
    iget v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    iget-wide v2, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->context:J

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/huawei/videoengine/VideoCaptureAndroid;->ProvideCameraFrame([BIJ)V

    .line 692
    sget-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->VERBOSE:Z

    if-eqz v1, :cond_1

    .line 694
    const-string v1, "hme-video"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "frame delivered"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_1
    iget-boolean v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->ownsBuffers:Z

    if-eqz v1, :cond_2

    .line 700
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :cond_2
    :goto_0
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 720
    :goto_1
    return-void

    .line 705
    :cond_3
    :try_start_1
    const-string v1, "hme-video"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "err! frame delivered data.length:%d, expectedFrameSize:%d "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 706
    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 705
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 710
    :catch_0
    move-exception v0

    .line 712
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 713
    const-string v1, "hme-video"

    const-string v2, "Failed in onPreviewFrame!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public requestKeyFrame()I
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 282
    const-string v4, "hme-video"

    const-string v5, "#singleBox# requestKeyFrame!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :try_start_0
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 287
    const-string v3, "hme-video"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Camera not initialized!!!id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_0
    return v2

    .line 290
    :cond_0
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 292
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 293
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_1

    .line 295
    const-string v3, "hme-video"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "setCaptureEncoderRate! null == parameters!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget-object v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 319
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "hme-video"

    const-string v4, "Failed to requestKeyFrame"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 321
    const-string v3, "hme-video"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Message"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    sget-object v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 303
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    :try_start_1
    const-string v4, "query_frame"

    const-string v5, "i_frame"

    invoke-virtual {v1, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v4, "hme-video"

    const-string v5, "#singleBox# requestKeyFrame set value!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 307
    const-string v4, "hme-video"

    const-string v5, "#singleBox# requestKeyFrame setParameter!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v3

    .line 326
    goto :goto_0
.end method

.method public setCaptureEncoderRate(I)I
    .locals 7
    .param p1, "bitRatebps"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 240
    const-string v4, "hme-video"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#singleBox# setCaptureEncoderRate: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit16 v6, p1, 0x3e8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kbps"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :try_start_0
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 245
    const-string v3, "hme-video"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Camera not initialized!!!id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    return v2

    .line 248
    :cond_0
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 250
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 251
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_1

    .line 253
    const-string v3, "hme-video"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "setCaptureEncoderRate! null == parameters!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    sget-object v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 270
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "hme-video"

    const-string v4, "Failed to setCaptureEncoderRate"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    const-string v3, "hme-video"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Message"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget-object v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 261
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    :try_start_1
    const-string v4, "double_stream_bit_rate"

    invoke-virtual {v1, v4, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 262
    const-string v4, "hme-video"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dengxijia: set bitrate to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit16 v6, p1, 0x3e8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " kbps"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v4, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 266
    sget-object v4, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v3

    .line 277
    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 723
    const-string v1, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VideoCaptureAndroid.java! enter surfaceChanged, format="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", widht="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const-string v1, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isStartPreviewFlag:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " CaptureSystemRunFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSystemRunFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 729
    sget-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSystemRunFlag:Z

    if-eqz v1, :cond_2

    .line 733
    :try_start_0
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 736
    sget-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    if-nez v1, :cond_0

    .line 738
    const-string v1, "hme-video"

    const-string v2, "before start preview in surfaceChanged!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 740
    const-string v1, "hme-video"

    const-string v2, "after  start preview in surfaceChanged!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/4 v1, 0x1

    sput-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    .line 750
    const/4 v1, 0x0

    sput-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :cond_0
    :goto_0
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 776
    const-string v1, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "leave surfaceChanged, isStartPreviewFlag:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :goto_1
    return-void

    .line 755
    :cond_1
    :try_start_1
    const-string v1, "hme-video"

    const-string v2, "capture has destory in surfaceChanged!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 759
    :catch_0
    move-exception v0

    .line 761
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "hme-video"

    const-string v2, "startPreview Failed in surfaceChanged!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 763
    const-string v1, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Message"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 771
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    const-string v1, "hme-video"

    const-string v2, "capture system had destroy in surfaceChanged!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 879
    const-string v1, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VideoCaptureAndroid.java! surfaceCreated! isRunning:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isStartPreviewFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const-string v1, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "surfaceCreated! surface:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " holder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 884
    sget-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSystemRunFlag:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    if-nez v1, :cond_2

    .line 887
    :try_start_0
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 890
    sget-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    if-eqz v1, :cond_0

    .line 892
    const-string v1, "hme-video"

    const-string v2, "before stop preview"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 894
    const/4 v1, 0x0

    sput-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    .line 896
    const-string v1, "hme-video"

    const-string v2, "before set preview buf null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    .line 917
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureAndroid;->setPreviewCallback()V

    .line 918
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    :cond_1
    :goto_0
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 946
    const-wide/16 v2, 0x14

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 949
    :goto_1
    const-string v1, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VideoCaptureAndroid.java! leave surfaceCreated! isRunning:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->isRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isStartPreviewFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :goto_2
    return-void

    .line 921
    :catch_0
    move-exception v0

    .line 923
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->CaptureSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 925
    const-string v1, "hme-video"

    const-string v2, "Exception in surfaceCreated()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 931
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    sget-boolean v1, Lcom/huawei/videoengine/VideoCaptureAndroid;->isStartPreviewFlag:Z

    if-eqz v1, :cond_3

    .line 933
    const-string v1, "hme-video"

    const-string v2, "now is starting preview, can\'t repeat start preview!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 937
    :cond_3
    const-string v1, "hme-video"

    const-string v2, "camera has destory in surfaceCreated"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 947
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 953
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "surfaceDestroyed! surface:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " holder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    return-void
.end method
