.class public Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;
.super Ljava/lang/Object;
.source "VideoCaptureDeviceInfoAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;,
        Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;,
        Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$huawei$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:[I = null

.field private static DEBUG:Z = false

.field private static LOGLEVEL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "hme-video"

.field private static VERBOSE:Z

.field private static final model:Ljava/lang/String;


# instance fields
.field context:Landroid/content/Context;

.field currentDeviceUniqueId:Ljava/lang/String;

.field deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;",
            ">;"
        }
    .end annotation
.end field

.field id:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$huawei$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType()[I
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->$SWITCH_TABLE$com$huawei$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->values()[Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v1}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->GalaxyS:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v1}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->HTCEvo:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v1}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->None:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v1}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->$SWITCH_TABLE$com$huawei$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    .line 32
    sput v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->LOGLEVEL:I

    .line 33
    sget v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->LOGLEVEL:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->VERBOSE:Z

    .line 34
    sget v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->LOGLEVEL:I

    if-le v0, v1, :cond_1

    :goto_1
    sput-boolean v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->DEBUG:Z

    return-void

    :cond_0
    move v0, v2

    .line 33
    goto :goto_0

    :cond_1
    move v1, v2

    .line 34
    goto :goto_1
.end method

.method private constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .param p1, "in_id"    # I
    .param p2, "in_context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->id:I

    .line 89
    iput-object p2, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->context:Landroid/content/Context;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    .line 91
    return-void
.end method

.method private AddDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V
    .locals 22
    .param p1, "newDevice"    # Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v15

    .line 298
    .local v15, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v6

    .line 302
    .local v6, "frameRates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v11

    .line 303
    .local v11, "listFormats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    .line 305
    .local v8, "iMaxFormatNum":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    .line 307
    .local v9, "iMaxSizePerFormat":I
    const-string v18, "hme-video"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "AddDeviceInfo: suport format num:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  iMaxSizePerFormat:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v12, 0x0

    .line 311
    .local v12, "maxFPS":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_2

    .line 332
    if-lez v8, :cond_1

    .line 334
    const-string v18, "hme-video"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "AddDeviceInfo!!model is "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v20, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    mul-int v2, v9, v8

    .line 336
    .local v2, "capabilityNumber":I
    const/4 v13, 0x0

    .line 337
    .local v13, "needToQueryDoubleStream":Z
    sget-object v18, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    const-string v19, "M310"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 341
    const/4 v13, 0x1

    .line 342
    const-string v18, "hme-video"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "M310(singlebox) AddDeviceInfo capabilityNumber: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_1
    new-array v0, v2, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 351
    const/4 v10, 0x0

    .line 357
    .local v10, "index":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_5

    .line 379
    const-string v18, "hme-video"

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " needToQueryDoubleStream: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-eqz v13, :cond_1

    .line 382
    const/16 v17, 0x0

    .line 383
    .local v17, "supportDoubleStream":I
    const-string v18, "supported_stream"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 384
    const/16 v18, 0x1

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 385
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v18, v0

    add-int/lit8 v19, v2, -0x1

    aget-object v18, v18, v19

    const/16 v19, 0x2d0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 386
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v18, v0

    add-int/lit8 v19, v2, -0x1

    aget-object v18, v18, v19

    const/16 v19, 0x500

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 387
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v18, v0

    add-int/lit8 v19, v2, -0x1

    aget-object v18, v18, v19

    const/16 v19, 0x1e

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 388
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v18, v0

    add-int/lit8 v19, v2, -0x1

    aget-object v18, v18, v19

    const/16 v19, 0x62

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->VRawType:I

    .line 393
    :goto_3
    const-string v18, "hme-video"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "supportDoubelStream: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " VRawType: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v20, v0

    add-int/lit8 v21, v2, -0x1

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    iget v0, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->VRawType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v2    # "capabilityNumber":I
    .end local v10    # "index":I
    .end local v13    # "needToQueryDoubleStream":Z
    .end local v17    # "supportDoubleStream":I
    :cond_1
    return-void

    .line 311
    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 312
    .local v5, "frameRate":Ljava/lang/Integer;
    sget-boolean v19, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->VERBOSE:Z

    if-eqz v19, :cond_3

    .line 313
    const-string v19, "hme-video"

    .line 314
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "VideoCaptureDeviceInfoAndroid:frameRate "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 313
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v12, :cond_0

    .line 317
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto/16 :goto_0

    .line 346
    .end local v5    # "frameRate":Ljava/lang/Integer;
    .restart local v2    # "capabilityNumber":I
    .restart local v13    # "needToQueryDoubleStream":Z
    :cond_4
    const-string v18, "hme-video"

    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " AddDeviceInfo capabilityNumber: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 357
    .restart local v10    # "index":I
    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 359
    .local v3, "curFormat":Ljava/lang/Integer;
    const-string v19, "hme-video"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Add capture Device Info! suport format:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    mul-int v16, v9, v10

    .line 362
    .local v16, "startValue":I
    add-int/lit8 v19, v10, 0x1

    mul-int v4, v9, v19

    .line 364
    .local v4, "endValue":I
    move/from16 v7, v16

    .local v7, "i":I
    :goto_4
    if-lt v7, v4, :cond_6

    .line 376
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 366
    :cond_6
    mul-int v19, v9, v10

    sub-int v19, v7, v19

    move/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/Camera$Size;

    .line 368
    .local v14, "s":Landroid/hardware/Camera$Size;
    const-string v19, "hme-video"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "cur size("

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v21, v7, v16

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "):"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v14, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v14, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v19, v0

    new-instance v20, Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    invoke-direct/range {v20 .. v20}, Lcom/huawei/videoengine/CaptureCapabilityAndroid;-><init>()V

    aput-object v20, v19, v7

    .line 370
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v19, v0

    aget-object v19, v19, v7

    iget v0, v14, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 371
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v19, v0

    aget-object v19, v19, v7

    iget v0, v14, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 372
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v19, v0

    aget-object v19, v19, v7

    move-object/from16 v0, v19

    iput v12, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 373
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    move-object/from16 v19, v0

    aget-object v19, v19, v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->VRawType:I

    .line 364
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 391
    .end local v3    # "curFormat":Ljava/lang/Integer;
    .end local v4    # "endValue":I
    .end local v7    # "i":I
    .end local v14    # "s":Landroid/hardware/Camera$Size;
    .end local v16    # "startValue":I
    .restart local v17    # "supportDoubleStream":I
    :cond_7
    const-string v18, "hme-video"

    const-string v19, "M310 not support double stream, do nothing!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private AddDeviceSpecificCapability(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Lcom/huawei/videoengine/CaptureCapabilityAndroid;)V
    .locals 10
    .param p1, "device"    # Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    .param p2, "specificCapability"    # Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .prologue
    const/4 v5, 0x0

    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, "foundCapability":Z
    iget-object v6, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    array-length v7, v6

    move v4, v5

    :goto_0
    if-lt v4, v7, :cond_1

    .line 450
    :goto_1
    if-nez v1, :cond_0

    .line 452
    iget-object v4, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 453
    .local v3, "newCaptureCapabilies":[Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v4, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    array-length v4, v4

    if-lt v2, v4, :cond_3

    .line 456
    aput-object p2, v3, v5

    .line 457
    iput-object v3, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .line 460
    .end local v2    # "i":I
    .end local v3    # "newCaptureCapabilies":[Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    :cond_0
    return-void

    .line 443
    :cond_1
    aget-object v0, v6, v4

    .line 444
    .local v0, "capability":Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    iget v8, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    iget v9, p2, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    if-ne v8, v9, :cond_2

    .line 445
    iget v8, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    iget v9, p2, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    if-ne v8, v9, :cond_2

    .line 446
    const/4 v1, 0x1

    .line 447
    goto :goto_1

    .line 443
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 454
    .end local v0    # "capability":Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    .restart local v2    # "i":I
    .restart local v3    # "newCaptureCapabilies":[Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    :cond_3
    add-int/lit8 v4, v2, 0x1

    iget-object v6, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    aget-object v6, v6, v2

    aput-object v6, v3, v4

    .line 453
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private AllocateEVOFrontFacingCamera()Landroid/hardware/Camera;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 711
    const/4 v1, 0x0

    .line 713
    .local v1, "classPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v7, "/system/framework/com.htc.hardware.twinCamDevice.jar"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 714
    .local v4, "file":Ljava/io/File;
    const-string v1, "com.htc.hardware.twinCamDevice.FrontFacingCamera"

    .line 715
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    .line 716
    .local v3, "exists":Z
    if-nez v3, :cond_0

    .line 718
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    const-string v7, "/system/framework/com.sprint.hardware.twinCamDevice.jar"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 719
    .restart local v4    # "file":Ljava/io/File;
    const-string v1, "com.sprint.hardware.twinCamDevice.FrontFacingCamera"

    .line 720
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    .line 722
    :cond_0
    if-nez v3, :cond_1

    .line 752
    :goto_0
    return-object v0

    .line 726
    :cond_1
    const-string v2, ""

    .line 743
    .local v2, "dexOutputDir":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/system/framework"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 746
    new-instance v5, Ldalvik/system/DexClassLoader;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 747
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 746
    invoke-direct {v5, v7, v2, v0, v8}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 749
    .local v5, "loader":Ldalvik/system/DexClassLoader;
    invoke-virtual {v5, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 750
    const-string v8, "getFrontFacingCamera"

    .line 749
    invoke-virtual {v7, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 751
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 752
    .local v0, "camera":Landroid/hardware/Camera;
    goto :goto_0
.end method

.method private AllocateGalaxySFrontCamera()Landroid/hardware/Camera;
    .locals 4

    .prologue
    .line 759
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 760
    .local v0, "camera":Landroid/hardware/Camera;
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 761
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v2, "camera-id"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 762
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 763
    return-object v0
.end method

.method private AllocateHTCFrontCamera()Landroid/hardware/Camera;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 771
    const/4 v1, 0x0

    .line 772
    .local v1, "camera":Landroid/hardware/Camera;
    const/4 v4, 0x0

    .line 773
    .local v4, "localObject1":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 777
    .local v3, "localClass":Ljava/lang/Class;
    :try_start_0
    const-string v6, "android.hardware.HtcFrontFacingCamera"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getCamera"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 778
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/hardware/Camera;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 780
    :catch_0
    move-exception v2

    .line 782
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "hme-video"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static CreateVideoCaptureDeviceInfoAndroid(ILandroid/content/Context;)Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;
    .locals 5
    .param p0, "in_id"    # I
    .param p1, "in_context"    # Landroid/content/Context;

    .prologue
    .line 67
    sget-boolean v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 68
    const-string v1, "hme-video"

    .line 69
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "VideoCaptureDeviceInfoAndroid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    new-instance v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;

    invoke-direct {v0, p0, p1}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;-><init>(ILandroid/content/Context;)V

    .line 73
    .local v0, "self":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;
    if-eqz v0, :cond_1

    invoke-direct {v0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->Init()I

    move-result v1

    if-nez v1, :cond_1

    .line 75
    const-string v1, "hme-video"

    const-string v2, "Success to create VideoCaptureDeviceInfoAndroid."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v0    # "self":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;
    :goto_0
    return-object v0

    .line 80
    .restart local v0    # "self":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;
    :cond_1
    const-string v1, "hme-video"

    const-string v2, "Failed to create VideoCaptureDeviceInfoAndroid."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private Init()I
    .locals 16

    .prologue
    .line 120
    const/4 v2, 0x0

    .line 121
    .local v2, "camera":Landroid/hardware/Camera;
    const/4 v4, 0x0

    .line 122
    .local v4, "i":I
    const/4 v12, 0x0

    .line 124
    .local v12, "validCameraNum":I
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x8

    if-le v13, v14, :cond_4

    .line 127
    const/4 v4, 0x0

    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v13

    if-lt v4, v13, :cond_1

    .line 273
    :cond_0
    :goto_1
    if-nez v12, :cond_b

    .line 275
    const-string v13, "hme-video"

    const-string v14, "no valid Camera!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v13, 0x0

    .line 290
    :goto_2
    return v13

    .line 131
    :cond_1
    :try_start_0
    new-instance v10, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;-><init>(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;)V

    .line 133
    .local v10, "newDevice":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 134
    .local v5, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v4, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 135
    iput v4, v10, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    .line 137
    iget v13, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v13, :cond_3

    .line 139
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Camera "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", Facing back, Orientation "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 141
    const-string v13, "hme-video"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "back Camera, orientation: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_3
    iget v13, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v13, v10, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v12, v12, 0x1

    .line 155
    sget-object v13, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    const-string v14, "LG-P920"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x2

    if-ne v13, v12, :cond_2

    .line 157
    const-string v13, "hme-video"

    const-string v14, "Not use the camera 2 of LG-P920"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 161
    .end local v5    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v10    # "newDevice":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :catch_0
    move-exception v3

    .line 163
    .local v3, "ex":Ljava/lang/Exception;
    const-string v13, "hme-video"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Failed to init VideoCaptureDeviceInfo ex::"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 163
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 145
    .restart local v5    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v10    # "newDevice":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :cond_3
    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Camera "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", Facing front, Orientation "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 146
    sget-object v13, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    iput-object v13, v10, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 148
    const-string v13, "hme-video"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "front Camera, orientation: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v5, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 171
    .end local v5    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v10    # "newDevice":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :cond_4
    const/4 v4, 0x0

    :goto_4
    const/4 v13, 0x2

    if-ge v4, v13, :cond_0

    .line 178
    if-nez v4, :cond_7

    .line 180
    :try_start_2
    new-instance v10, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;-><init>(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;)V

    .line 181
    .restart local v10    # "newDevice":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    .line 182
    if-nez v2, :cond_6

    .line 184
    const-string v13, "hme-video"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "open camera:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " fail"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v10    # "newDevice":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 188
    .restart local v10    # "newDevice":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :cond_6
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    .line 190
    .local v11, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v13, "Camera 0, Facing back"

    iput-object v13, v10, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 191
    const/16 v13, 0x5a

    iput v13, v10, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 192
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V

    .line 194
    const-string v13, "hme-video"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Prior Android 2.3.   newDevice.orientation: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v10, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 198
    const/4 v2, 0x0

    .line 200
    add-int/lit8 v12, v12, 0x1

    .line 201
    goto :goto_5

    .line 204
    .end local v10    # "newDevice":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    .end local v11    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_7
    new-instance v10, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;-><init>(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;)V

    .line 205
    .restart local v10    # "newDevice":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    const-string v13, "Camera 1, Facing front"

    iput-object v13, v10, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 208
    sget-object v13, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v14, "HTC"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 210
    const/4 v8, 0x0

    .line 211
    .local v8, "localObject1":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 214
    .local v6, "localClass":Ljava/lang/Class;
    const-string v9, "android.hardware.HtcFrontFacingCamera"

    .line 215
    .local v9, "localObject2":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .end local v9    # "localObject2":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 216
    if-nez v6, :cond_8

    .line 218
    const-string v13, "hme-video"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "open camera:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " fail"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 264
    .end local v6    # "localClass":Ljava/lang/Class;
    .end local v8    # "localObject1":Ljava/lang/Object;
    .end local v10    # "newDevice":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :catch_1
    move-exception v3

    .line 266
    .restart local v3    # "ex":Ljava/lang/Exception;
    const-string v13, "hme-video"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Prior to Android 2.3! Failed to init VideoCaptureDeviceInfo ex::"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 266
    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 222
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v6    # "localClass":Ljava/lang/Class;
    .restart local v8    # "localObject1":Ljava/lang/Object;
    .restart local v10    # "newDevice":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :cond_8
    :try_start_3
    const-string v9, "getCamera"

    .line 223
    .restart local v9    # "localObject2":Ljava/lang/String;
    const/4 v13, 0x0

    new-array v1, v13, [Ljava/lang/Class;

    .line 224
    .local v1, "arrayOfClass":[Ljava/lang/Class;
    check-cast v9, Ljava/lang/String;

    .end local v9    # "localObject2":Ljava/lang/String;
    invoke-virtual {v6, v9, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 225
    .local v7, "localMethod":Ljava/lang/reflect/Method;
    if-eqz v7, :cond_5

    .line 229
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera;

    .line 230
    .local v9, "localObject2":Landroid/hardware/Camera;
    move-object v0, v9

    check-cast v0, Landroid/hardware/Camera;

    move-object v2, v0

    .line 232
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    .line 234
    .restart local v11    # "parameters":Landroid/hardware/Camera$Parameters;
    sget-object v13, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    const-string v14, "HTC Desire"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 236
    const/16 v13, 0x5a

    iput v13, v10, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 242
    :goto_6
    sget-object v13, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->HTCEvo:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    iput-object v13, v10, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 243
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 246
    const/4 v2, 0x0

    .line 248
    add-int/lit8 v12, v12, 0x1

    .line 250
    goto/16 :goto_5

    .line 240
    :cond_9
    const/4 v13, 0x0

    iput v13, v10, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    goto :goto_6

    .line 254
    .end local v1    # "arrayOfClass":[Ljava/lang/Class;
    .end local v6    # "localClass":Ljava/lang/Class;
    .end local v7    # "localMethod":Ljava/lang/reflect/Method;
    .end local v8    # "localObject1":Ljava/lang/Object;
    .end local v9    # "localObject2":Landroid/hardware/Camera;
    .end local v11    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->SearchOldFrontFacingCameras(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)Landroid/hardware/Camera$Parameters;

    move-result-object v11

    .line 255
    .restart local v11    # "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v11, :cond_5

    .line 257
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 259
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 290
    .end local v10    # "newDevice":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    .end local v11    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_2
.end method

.method private SearchOldFrontFacingCameras(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)Landroid/hardware/Camera$Parameters;
    .locals 11
    .param p1, "newDevice"    # Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 661
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 662
    .local v0, "camera":Landroid/hardware/Camera;
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 663
    .local v6, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v7, "camera-id"

    invoke-virtual {v6, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, "cameraId":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 667
    :try_start_0
    const-string v7, "camera-id"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 668
    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 669
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 670
    sget-object v7, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->GalaxyS:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    iput-object v7, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 671
    const/4 v7, 0x0

    iput v7, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 672
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    const/4 v0, 0x0

    move-object v7, v6

    .line 702
    :goto_0
    return-object v7

    .line 676
    :catch_0
    move-exception v3

    .line 678
    .local v3, "ex":Ljava/lang/Exception;
    const-string v7, "hme-video"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Init Failed to open front camera camera - ex "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 679
    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 678
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 683
    const/4 v0, 0x0

    .line 687
    new-instance v5, Ljava/io/File;

    const-string v7, "/system/framework/com.htc.hardware.twinCamDevice.jar"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 688
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    .line 689
    .local v4, "exists":Z
    if-nez v4, :cond_1

    .line 691
    new-instance v5, Ljava/io/File;

    .end local v5    # "file":Ljava/io/File;
    const-string v7, "/system/framework/com.sprint.hardware.twinCamDevice.jar"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 692
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    .line 694
    :cond_1
    if-eqz v4, :cond_2

    .line 695
    sget-object v7, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->HTCEvo:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    iput-object v7, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 696
    iput v10, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 697
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->AllocateEVOFrontFacingCamera()Landroid/hardware/Camera;

    move-result-object v2

    .line 698
    .local v2, "evCamera":Landroid/hardware/Camera;
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 699
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    move-object v7, v6

    .line 700
    goto :goto_0

    .line 702
    .end local v2    # "evCamera":Landroid/hardware/Camera;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private VerifyCapabilities(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    .locals 6
    .param p1, "device"    # Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .prologue
    const/16 v5, 0xf

    .line 406
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "GT-I9000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 407
    :cond_0
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "crespo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 409
    :cond_1
    new-instance v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v1}, Lcom/huawei/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 410
    .local v1, "specificCapability":Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    const/16 v2, 0x160

    iput v2, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 411
    const/16 v2, 0x120

    iput v2, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 412
    iput v5, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 413
    invoke-direct {p0, p1, v1}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceSpecificCapability(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Lcom/huawei/videoengine/CaptureCapabilityAndroid;)V

    .line 415
    new-instance v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .end local v1    # "specificCapability":Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    invoke-direct {v1}, Lcom/huawei/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 416
    .restart local v1    # "specificCapability":Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    const/16 v2, 0xb0

    iput v2, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 417
    const/16 v2, 0x90

    iput v2, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 418
    iput v5, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 419
    invoke-direct {p0, p1, v1}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceSpecificCapability(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Lcom/huawei/videoengine/CaptureCapabilityAndroid;)V

    .line 421
    new-instance v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    .end local v1    # "specificCapability":Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    invoke-direct {v1}, Lcom/huawei/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 422
    .restart local v1    # "specificCapability":Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    const/16 v2, 0x140

    iput v2, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->width:I

    .line 423
    const/16 v2, 0xf0

    iput v2, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->height:I

    .line 424
    iput v5, v1, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 425
    invoke-direct {p0, p1, v1}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceSpecificCapability(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Lcom/huawei/videoengine/CaptureCapabilityAndroid;)V

    .line 429
    .end local v1    # "specificCapability":Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    :cond_2
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "motorola"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 430
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "umts_sholes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 432
    iget-object v3, p1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_4

    .line 437
    :cond_3
    return-void

    .line 432
    :cond_4
    aget-object v0, v3, v2

    .line 433
    .local v0, "capability":Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    iput v5, v0, Lcom/huawei/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 432
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public AllocateCamera(IJLjava/lang/String;)Lcom/huawei/videoengine/VideoCaptureAndroid;
    .locals 14
    .param p1, "id"    # I
    .param p2, "context"    # J
    .param p4, "deviceUniqueId"    # Ljava/lang/String;

    .prologue
    .line 553
    :try_start_0
    const-string v2, "hme-video"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AllocateCamera "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v6, 0x0

    .line 556
    .local v6, "camera":Landroid/hardware/Camera;
    const/4 v7, 0x0

    .line 557
    .local v7, "deviceToUse":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    iget-object v2, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 637
    if-nez v6, :cond_7

    .line 638
    const/4 v2, 0x0

    .line 650
    .end local v6    # "camera":Landroid/hardware/Camera;
    .end local v7    # "deviceToUse":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :goto_1
    return-object v2

    .line 557
    .restart local v6    # "camera":Landroid/hardware/Camera;
    .restart local v7    # "deviceToUse":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 558
    .local v9, "device":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    iget-object v3, v9, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 560
    move-object v7, v9

    .line 561
    invoke-static {}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->$SWITCH_TABLE$com$huawei$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType()[I

    move-result-object v3

    iget-object v4, v9, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v4}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 588
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-le v3, v4, :cond_6

    .line 590
    new-instance v8, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;

    iget v3, v9, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    invoke-direct {v8, p0, v3}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;-><init>(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;I)V

    .line 591
    .local v8, "ct":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;
    invoke-virtual {v8}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->start()V

    .line 592
    const/4 v13, 0x0

    .line 593
    .local v13, "sleepTime":I
    :cond_2
    iget-object v3, v8, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;

    if-eqz v3, :cond_4

    .line 610
    iget-object v6, v8, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;

    .line 612
    if-nez v6, :cond_5

    .line 614
    const-string v2, "hme-video"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "open camera:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v9, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v2, 0x0

    goto :goto_1

    .line 564
    .end local v8    # "ct":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;
    .end local v13    # "sleepTime":I
    :pswitch_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v6

    .line 565
    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    .line 566
    .local v12, "paramsOfGalaxySFrontCamera":Landroid/hardware/Camera$Parameters;
    const-string v3, "camera-id"

    const/4 v4, 0x2

    invoke-virtual {v12, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 567
    invoke-virtual {v6, v12}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 568
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-le v3, v4, :cond_3

    .line 570
    invoke-direct {p0, v9, v12}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 574
    :cond_3
    :try_start_1
    invoke-direct {p0, v9}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->VerifyCapabilities(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 575
    :catch_0
    move-exception v10

    .line 577
    .local v10, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "hme-video"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to VerifyCapabilities ex::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 584
    .end local v10    # "ex":Ljava/lang/Exception;
    .end local v12    # "paramsOfGalaxySFrontCamera":Landroid/hardware/Camera$Parameters;
    :pswitch_1
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->AllocateHTCFrontCamera()Landroid/hardware/Camera;

    move-result-object v6

    .line 585
    goto/16 :goto_0

    .line 595
    .restart local v8    # "ct":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;
    .restart local v13    # "sleepTime":I
    :cond_4
    const-wide/16 v4, 0x14

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 596
    add-int/lit8 v13, v13, 0x1

    .line 601
    const/16 v3, 0xc8

    if-le v13, v3, :cond_2

    .line 603
    const-string v2, "hme-video"

    const-string v3, "AllocateCamera Failed for open camera overtime!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {v8}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->stop()V

    .line 605
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 618
    :cond_5
    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    .line 619
    .local v11, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0, v9, v11}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 622
    :try_start_3
    invoke-direct {p0, v9}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->VerifyCapabilities(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 623
    :catch_1
    move-exception v10

    .line 625
    .restart local v10    # "ex":Ljava/lang/Exception;
    :try_start_4
    const-string v2, "hme-video"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to VerifyCapabilities ex::"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 631
    .end local v8    # "ct":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;
    .end local v10    # "ex":Ljava/lang/Exception;
    .end local v11    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v13    # "sleepTime":I
    :cond_6
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v6

    goto/16 :goto_0

    .line 640
    .end local v9    # "device":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :cond_7
    sget-boolean v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->VERBOSE:Z

    if-eqz v2, :cond_8

    .line 641
    const-string v2, "hme-video"

    const-string v3, "AllocateCamera - creating VideoCaptureAndroid"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_8
    new-instance v2, Lcom/huawei/videoengine/VideoCaptureAndroid;

    move v3, p1

    move-wide/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/huawei/videoengine/VideoCaptureAndroid;-><init>(IJLandroid/hardware/Camera;Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 646
    .end local v6    # "camera":Landroid/hardware/Camera;
    .end local v7    # "deviceToUse":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    :catch_2
    move-exception v10

    .line 647
    .restart local v10    # "ex":Ljava/lang/Exception;
    const-string v2, "hme-video"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AllocateCamera Failed to open camera- ex "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 648
    invoke-virtual {v10}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 647
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 561
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public GetCapabilityArray(Ljava/lang/String;)[Lcom/huawei/videoengine/CaptureCapabilityAndroid;
    .locals 10
    .param p1, "deviceUniqueId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 478
    :try_start_0
    const-string v7, "hme-video"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "GetCapabilityArray "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v7, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 532
    :goto_0
    return-object v6

    .line 479
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 481
    .local v2, "device":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    iget-object v8, v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 483
    iget-object v7, v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    if-nez v7, :cond_5

    .line 485
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x8

    if-le v7, v8, :cond_6

    .line 487
    new-instance v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;

    iget v7, v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    invoke-direct {v1, p0, v7}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;-><init>(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;I)V

    .line 488
    .local v1, "ct":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;
    invoke-virtual {v1}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->start()V

    .line 489
    const/4 v5, 0x0

    .line 490
    .local v5, "sleepTime":I
    :cond_2
    iget-object v7, v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;

    if-eqz v7, :cond_3

    .line 504
    iget-object v0, v1, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->camera:Landroid/hardware/Camera;

    .line 506
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_4

    .line 508
    const-string v7, "hme-video"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "open camera:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " fail"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v1    # "ct":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;
    .end local v2    # "device":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    .end local v5    # "sleepTime":I
    :catch_0
    move-exception v3

    .line 528
    .local v3, "ex":Ljava/lang/Exception;
    const-string v7, "hme-video"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "GetCapabilityArray Failed to open camera- ex "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 528
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 492
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v1    # "ct":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;
    .restart local v2    # "device":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    .restart local v5    # "sleepTime":I
    :cond_3
    const-wide/16 v8, 0x14

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 493
    add-int/lit8 v5, v5, 0x1

    .line 496
    const/16 v7, 0x64

    if-le v5, v7, :cond_2

    .line 498
    invoke-virtual {v1}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;->stop()V

    .line 499
    const-string v7, "hme-video"

    const-string v8, "GetCapabilityArray Failed for open camera overtime!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 512
    .restart local v0    # "camera":Landroid/hardware/Camera;
    :cond_4
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 513
    .local v4, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0, v2, v4}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceInfo(Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V

    .line 514
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 522
    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v1    # "ct":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$CameraThread;
    .end local v4    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v5    # "sleepTime":I
    :cond_5
    :goto_1
    iget-object v6, v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lcom/huawei/videoengine/CaptureCapabilityAndroid;

    goto/16 :goto_0

    .line 519
    :cond_6
    const-string v7, "hme-video"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "GetCapabilityArray Failed. SDK<=8,device.captureCapabilies == null"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public GetDeviceUniqueName(I)Ljava/lang/String;
    .locals 1
    .param p1, "deviceNumber"    # I

    .prologue
    .line 468
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 469
    :cond_0
    const/4 v0, 0x0

    .line 471
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object v0, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    goto :goto_0
.end method

.method public GetOrientation(Ljava/lang/String;)I
    .locals 4
    .param p1, "deviceUniqueId"    # Ljava/lang/String;

    .prologue
    .line 538
    iget-object v1, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 546
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 538
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 539
    .local v0, "device":Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
    iget-object v2, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    const-string v1, "rotation"

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "java_GetOrientation device.orientation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 540
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget v1, v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    goto :goto_0
.end method

.method public NumberOfDevices()I
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public reInit()I
    .locals 3

    .prologue
    .line 96
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reInit!!model is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    const-string v1, "M310"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "hme-video"

    const-string v1, "M310(singlebox) reInit!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v0, "hme-video"

    const-string v1, "M310(singlebox) support hot plug!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/List;

    .line 108
    invoke-direct {p0}, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->Init()I

    move-result v0

    .line 114
    :goto_0
    return v0

    .line 113
    :cond_0
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/huawei/videoengine/VideoCaptureDeviceInfoAndroid;->model:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " no need to refresh camera number!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    goto :goto_0
.end method
