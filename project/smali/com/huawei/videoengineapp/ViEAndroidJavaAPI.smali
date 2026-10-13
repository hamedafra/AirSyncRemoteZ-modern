.class public Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;
.super Ljava/lang/Object;
.source "ViEAndroidJavaAPI.java"


# static fields
.field public static DecStatisticParams_uiBitRate:I = 0x0

.field public static DecStatisticParams_uiImageHeight:I = 0x0

.field public static DecStatisticParams_uiImageWidth:I = 0x0

.field public static DecStatisticParams_uiPktRate:I = 0x0

.field public static EncStatisticParams_fKeyRedundanceRate:I = 0x0

.field public static EncStatisticParams_fNoRefRedundanceRate:I = 0x0

.field public static EncStatisticParams_fRefRedundanceRate:I = 0x0

.field public static EncStatisticParams_uiBufferData:I = 0x0

.field public static EncStatisticParams_uiEncBitRate:I = 0x0

.field public static EncStatisticParams_uiEncFrameRate:I = 0x0

.field public static EncStatisticParams_uiImageHeight:I = 0x0

.field public static EncStatisticParams_uiImageWidth:I = 0x0

.field public static EncStatisticParams_uiPktRate:I = 0x0

.field public static EncStatisticParams_uiSendBitRate:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "hme-video"

.field public static bColorEnhance:Z

.field public static bCtrlFec:Z

.field public static bCtrlResolution:Z

.field public static bDenoise:Z

.field public static bMirrorYAxis:Z

.field public static bMultiFrm:Z

.field public static eAntiPktLoss:I

.field public static eCipherType:Z

.field public static eCodecType:I

.field public static eDecCodecType:I

.field public static eDisplayMode:I

.field public static eProfile:I

.field public static eRCType:I

.field public static eRotateAngle:I

.field public static eRtcpType:I

.field public static eRtpType:I

.field public static enableVideoReceive:Z

.field public static enableVideoSend:Z

.field public static fFrameRate:I

.field public static logLevel:I

.field public static stCaptureCapability_eVideoCodecType:I

.field public static stCaptureCapability_eVideoRawType:I

.field public static stCaptureCapability_uiImageHeight:I

.field public static stCaptureCapability_uiImageWidth:I

.field public static stCaptureCapability_uiMaxFps:I

.field public static szLocalIP:Ljava/lang/String;

.field public static szRemoteIP:Ljava/lang/String;

.field public static uiBitRate:I

.field public static uiEncQuality:I

.field public static uiFecPktPT:I

.field public static uiHeight:I

.field public static uiKeyInterval:I

.field public static uiLocalPort:I

.field public static uiLossRate:I

.field public static uiMaxBitRate:I

.field public static uiMaxFrameRate:I

.field public static uiMaxPktLen:I

.field public static uiMinFrameRate:I

.field public static uiPayloadType:I

.field public static uiRedPktPT:I

.field public static uiRemotePort:I

.field public static uiSendBitRate:I

.field public static uiWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x2b67

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 101
    sput-boolean v2, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->enableVideoSend:Z

    .line 102
    sput-boolean v2, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->enableVideoReceive:Z

    .line 104
    sput v1, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->logLevel:I

    .line 106
    sput v2, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->eRtpType:I

    .line 107
    sput v1, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->eProfile:I

    .line 109
    sput v1, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->eCodecType:I

    .line 111
    const/16 v0, 0x7a

    sput v0, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiPayloadType:I

    .line 112
    sput v1, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiEncQuality:I

    .line 113
    const/16 v0, 0x7d0

    sput v0, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiKeyInterval:I

    .line 114
    const/16 v0, 0x140

    sput v0, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiWidth:I

    .line 115
    const/16 v0, 0xf0

    sput v0, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiHeight:I

    .line 116
    const/16 v0, 0xf

    sput v0, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->fFrameRate:I

    .line 117
    sput v1, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->eRCType:I

    .line 118
    const/16 v0, 0x100

    sput v0, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiBitRate:I

    .line 119
    const/16 v0, 0x12c

    sput v0, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiSendBitRate:I

    .line 120
    const/16 v0, 0x5dc

    sput v0, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiMaxPktLen:I

    .line 121
    const/4 v0, 0x3

    sput v0, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->eAntiPktLoss:I

    .line 123
    sput-boolean v2, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->bCtrlResolution:Z

    .line 124
    sput-boolean v2, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->bCtrlFec:Z

    .line 125
    const/16 v0, 0x9c4

    sput v0, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiMaxBitRate:I

    .line 126
    const/16 v0, 0x1e

    sput v0, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiMaxFrameRate:I

    .line 127
    sput v2, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiMinFrameRate:I

    .line 129
    const-string v0, "127.0.0.1"

    sput-object v0, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->szLocalIP:Ljava/lang/String;

    .line 130
    sput v3, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiLocalPort:I

    .line 131
    const-string v0, "127.0.0.1"

    sput-object v0, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->szRemoteIP:Ljava/lang/String;

    .line 132
    sput v3, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiRemotePort:I

    .line 134
    sput v2, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->eRtcpType:I

    .line 136
    sput-boolean v1, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->eCipherType:Z

    .line 138
    const/16 v0, 0x61

    sput v0, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiFecPktPT:I

    .line 139
    const/16 v0, 0x60

    sput v0, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiRedPktPT:I

    .line 141
    sput v1, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->uiLossRate:I

    .line 142
    sput-boolean v1, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->bMultiFrm:Z

    .line 144
    sput-boolean v1, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->bDenoise:Z

    .line 145
    sput-boolean v1, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->bColorEnhance:Z

    .line 148
    sput v1, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->eDecCodecType:I

    .line 152
    sput v2, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->eDisplayMode:I

    .line 153
    sput v1, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->eRotateAngle:I

    .line 154
    sput-boolean v1, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->bMirrorYAxis:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v2, "armeabi-v7a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const-string v1, "HME_DEMO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---------------armeabi-v7a :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v1, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {}, Lcom/huawei/videoengineapp/ViEAndroidJavaAPI;->getNeon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const-string v1, "hme-video"

    const-string v2, "Loading libHME-Video.so..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v1, "HME-Video"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 80
    const-string v1, "hme-video"

    const-string v2, "Loading libHME_VideoEngine_jni.so..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v1, "HME_VideoEngine_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 97
    :goto_0
    const-string v0, ""

    .line 98
    .local v0, "a":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 99
    return-void

    .line 84
    .end local v0    # "a":Ljava/lang/String;
    :cond_0
    const-string v1, "hme-video"

    const-string v2, "Loading libHME-Video-v6.so..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v1, "HME-Video-v6"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 86
    const-string v1, "hme-video"

    const-string v2, "Loading libHME_VideoEngine_jni-v6.so..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v1, "HME_VideoEngine_jni-v6"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    const-string v1, "hme-video"

    const-string v2, "Loading libHME-Video-v6.so..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v1, "HME-Video-v6"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 93
    const-string v1, "hme-video"

    const-string v2, "Loading libHME_VideoEngine_jni-v6.so..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v1, "HME_VideoEngine_jni-v6"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private native NativeInit(Landroid/content/Context;)Z
.end method

.method private static getNeon()Z
    .locals 11

    .prologue
    .line 26
    const/4 v7, 0x0

    .line 27
    .local v7, "neon":Z
    const/4 v4, 0x0

    .line 28
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 30
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v8, "/proc/cpuinfo"

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v8, 0x400

    invoke-direct {v1, v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 33
    .local v6, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 34
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 35
    const-string v8, "neon"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "features"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v8

    if-eqz v8, :cond_0

    .line 36
    const/4 v7, 0x1

    goto :goto_0

    .line 42
    :cond_1
    if-eqz v1, :cond_7

    .line 44
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 48
    :goto_1
    const/4 v0, 0x0

    .line 51
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v5, :cond_6

    .line 53
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 56
    :goto_3
    const/4 v4, 0x0

    .line 60
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :cond_2
    :goto_4
    const-string v8, "getNeon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "neon:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return v7

    .line 45
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 39
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_1
    move-exception v3

    .line 40
    .local v3, "ex":Ljava/io/IOException;
    :goto_5
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 42
    if-eqz v0, :cond_3

    .line 44
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 48
    :goto_6
    const/4 v0, 0x0

    .line 51
    :cond_3
    if-eqz v4, :cond_2

    .line 53
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 56
    :goto_7
    const/4 v4, 0x0

    goto :goto_4

    .line 45
    :catch_2
    move-exception v2

    .line 46
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 42
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_8
    if-eqz v0, :cond_4

    .line 44
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 48
    :goto_9
    const/4 v0, 0x0

    .line 51
    :cond_4
    if-eqz v4, :cond_5

    .line 53
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 56
    :goto_a
    const/4 v4, 0x0

    :cond_5
    throw v8

    .line 45
    :catch_3
    move-exception v2

    .line 46
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 54
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "line":Ljava/lang/String;
    :catch_4
    move-exception v8

    goto :goto_3

    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v3    # "ex":Ljava/io/IOException;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v8

    goto :goto_7

    .end local v3    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v9

    goto :goto_a

    .line 42
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_8

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "line":Ljava/lang/String;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_8

    .line 39
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "line":Ljava/lang/String;
    :catch_8
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_6
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_7
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method


# virtual methods
.method public native GetCameraOrientation(I)I
.end method

.method public native GetDecoderChannelStatistics()I
.end method

.method public native GetEncChannelStatistics()I
.end method

.method public native GetRenderSnapshot()I
.end method

.method public native Init(I)I
.end method

.method public native QueryCPUConsume([I)[I
.end method

.method public native ResetStream()I
.end method

.method public native SetHook(I)I
.end method

.method public native SetLocalReceiver(I[B)I
.end method

.method public native SetReceiveCodec(IIIIZ)I
.end method

.method public native SetRotation(I)I
.end method

.method public native SetRotationAPI()I
.end method

.method public native SetSendCodec(IZ)I
.end method

.method public native SetSendDestination(I[B)I
.end method

.method public native SetupStream()I
.end method

.method public native StartCamera(I)I
.end method

.method public native StartReceive(Ljava/lang/Object;)I
.end method

.method public native StartSend()I
.end method

.method public native StopReceive()I
.end method

.method public native StopSend()I
.end method

.method public native SwitchCapture()I
.end method

.method public native Terminate()I
.end method

.method public native getCaptureShot()I
.end method

.method public native getVersion()Ljava/lang/String;
.end method
