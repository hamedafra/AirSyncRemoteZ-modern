.class public Lcom/huawei/videoengine/ViERenderer;
.super Ljava/lang/Object;
.source "ViERenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/ViERenderer$ListenThread;
    }
.end annotation


# static fields
.field private static final MAXNUM:I = 0x10

.field private static RenderSysLock:Ljava/util/concurrent/locks/ReentrantLock; = null

.field private static final TAG:Ljava/lang/String; = "hme-video"

.field private static g_localRender:Landroid/view/SurfaceView;

.field private static g_localRenderer:Landroid/view/SurfaceHolder;

.field private static g_remoteRender:[Landroid/view/SurfaceView;

.field private static listenThread:Lcom/huawei/videoengine/ViERenderer$ListenThread;

.field private static saveLogcat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/huawei/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    .line 36
    sput-object v0, Lcom/huawei/videoengine/ViERenderer;->g_localRender:Landroid/view/SurfaceView;

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/huawei/videoengine/ViERenderer;->RenderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 42
    const/16 v0, 0x10

    new-array v0, v0, [Landroid/view/SurfaceView;

    sput-object v0, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/videoengine/ViERenderer;->saveLogcat:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateLocalRenderer(Landroid/content/Context;)Landroid/view/SurfaceView;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    const-string v1, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Phone model: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v1, "hme-video"

    const-string v2, "ViERenderer.java! CreateLocalRenderer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, "localRender":Landroid/view/SurfaceView;
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    sput-object v1, Lcom/huawei/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    .line 192
    sget-object v1, Lcom/huawei/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 194
    sput-object v0, Lcom/huawei/videoengine/ViERenderer;->g_localRender:Landroid/view/SurfaceView;

    .line 196
    invoke-static {v0}, Lcom/huawei/videoengine/ViERenderer;->SetLocalRenderInfo(Landroid/view/SurfaceView;)V

    .line 198
    return-object v0
.end method

.method public static CreateRenderer(Landroid/content/Context;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/huawei/videoengine/ViERenderer;->CreateRenderer(Landroid/content/Context;Z)Landroid/view/SurfaceView;

    move-result-object v0

    return-object v0
.end method

.method public static CreateRenderer(Landroid/content/Context;Z)Landroid/view/SurfaceView;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useOpenGLES2"    # Z

    .prologue
    const/4 v3, 0x0

    .line 52
    const-string v1, "hme-video"

    const-string v2, "ViERenderer.java! CreateRenderer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/huawei/videoengine/ViEAndroidGLES20;->IsSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v0, Lcom/huawei/videoengine/ViEAndroidGLES20;

    invoke-direct {v0, p0}, Lcom/huawei/videoengine/ViEAndroidGLES20;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "myRender":Landroid/view/SurfaceView;
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 68
    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 69
    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setDrawingCacheEnabled(Z)V

    .line 70
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 90
    return-object v0

    .line 64
    .end local v0    # "myRender":Landroid/view/SurfaceView;
    :cond_0
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .restart local v0    # "myRender":Landroid/view/SurfaceView;
    goto :goto_0
.end method

.method public static FreeLocalRenderResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    const-string v0, "hme-video"

    const-string v1, "enter ViERenderer.java! FreeLocalRenderResource"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->RenderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->RenderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 236
    :cond_0
    sput-object v2, Lcom/huawei/videoengine/ViERenderer;->g_localRender:Landroid/view/SurfaceView;

    .line 237
    sput-object v2, Lcom/huawei/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    .line 238
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->RenderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_1

    .line 240
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->RenderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 243
    :cond_1
    const-string v0, "hme-video"

    const-string v1, "leave ViERenderer.java! FreeLocalRenderResource"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-boolean v0, Lcom/huawei/videoengine/ViERenderer;->saveLogcat:Z

    if-eqz v0, :cond_2

    .line 246
    invoke-static {}, Lcom/huawei/videoengine/ViERenderer;->stopLogcatManager()V

    .line 248
    :cond_2
    return-void
.end method

.method public static GetLocalRenderer()Landroid/view/SurfaceHolder;
    .locals 2

    .prologue
    .line 254
    const-string v0, "hme-video"

    const-string v1, "ViERenderer.java! GetLocalRenderer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public static ReSetLocalRender()V
    .locals 2

    .prologue
    .line 220
    const-string v0, "hme-video"

    const-string v1, "enter ViERenderer.java! ReSetLocalRender"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->RenderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 222
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->g_localRender:Landroid/view/SurfaceView;

    invoke-static {v0}, Lcom/huawei/videoengine/ViERenderer;->SetLocalRenderInfo(Landroid/view/SurfaceView;)V

    .line 223
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->RenderSysLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 224
    const-string v0, "hme-video"

    const-string v1, "leave ViERenderer.java! ReSetLocalRender"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method public static SetLocalRenderInfo(Landroid/view/SurfaceView;)V
    .locals 4
    .param p0, "localRender"    # Landroid/view/SurfaceView;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    const-string v0, "hme-video"

    const-string v1, "enter ViERenderer.java! SetLocalRenderInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 208
    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 209
    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->setDrawingCacheEnabled(Z)V

    .line 210
    invoke-virtual {p0, v3}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 211
    invoke-virtual {p0, v3}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 213
    const-string v0, "hme-video"

    const-string v1, "leave ViERenderer.java! SetLocalRenderInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method public static StartLogcattoFile()V
    .locals 1

    .prologue
    .line 260
    sget-boolean v0, Lcom/huawei/videoengine/ViERenderer;->saveLogcat:Z

    if-nez v0, :cond_0

    .line 262
    invoke-static {}, Lcom/huawei/videoengine/ViERenderer;->startLogcatManager()V

    .line 263
    const/4 v0, 0x1

    sput-boolean v0, Lcom/huawei/videoengine/ViERenderer;->saveLogcat:Z

    .line 265
    :cond_0
    return-void
.end method

.method public static StopLogcattoFile()V
    .locals 1

    .prologue
    .line 268
    sget-boolean v0, Lcom/huawei/videoengine/ViERenderer;->saveLogcat:Z

    if-eqz v0, :cond_0

    .line 270
    invoke-static {}, Lcom/huawei/videoengine/ViERenderer;->stopLogcatManager()V

    .line 271
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huawei/videoengine/ViERenderer;->saveLogcat:Z

    .line 273
    :cond_0
    return-void
.end method

.method public static getIndexOfSurface(Landroid/view/SurfaceView;)I
    .locals 4
    .param p0, "render"    # Landroid/view/SurfaceView;

    .prologue
    const/4 v1, -0x1

    .line 97
    if-nez p0, :cond_1

    .line 99
    const-string v2, "hme-video"

    const-string v3, "The input render is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    const/4 v0, 0x1

    .local v0, "currentIndex":I
    :goto_1
    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    .line 128
    const-string v2, "hme-video"

    const-string v3, "Can\'t find the equal render!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 129
    goto :goto_0

    .line 108
    :cond_2
    sget-object v2, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    .line 110
    sget-object v1, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    aput-object p0, v1, v0

    goto :goto_0

    .line 113
    :cond_3
    sget-object v2, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    aget-object v2, v2, v0

    if-eq v2, p0, :cond_0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getSurfaceFromIndex(I)Ljava/lang/Object;
    .locals 4
    .param p0, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 134
    const/4 v1, 0x1

    if-gt v1, p0, :cond_0

    const/16 v1, 0x10

    if-gt v1, p0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-object v0

    .line 138
    :cond_1
    sget-object v1, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    aget-object v1, v1, p0

    if-eqz v1, :cond_2

    .line 140
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    aget-object v0, v0, p0

    goto :goto_0

    .line 144
    :cond_2
    const-string v1, "hme-video"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The Render of index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isAppOnForeground2(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "packageName":Ljava/lang/String;
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 279
    .local v2, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 280
    .local v1, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v4

    .line 281
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 282
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 283
    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_2

    .line 284
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static setSurfaceNull(Landroid/view/SurfaceView;)V
    .locals 3
    .param p0, "render"    # Landroid/view/SurfaceView;

    .prologue
    .line 152
    const/4 v0, 0x1

    .local v0, "numOfSurface":I
    :goto_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 160
    :goto_1
    return-void

    .line 154
    :cond_0
    sget-object v1, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    aget-object v1, v1, v0

    if-ne p0, v1, :cond_1

    .line 156
    sget-object v1, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_1

    .line 152
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static setSurfaceNullFromIndex(I)V
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 164
    const/4 v0, 0x1

    if-gt v0, p0, :cond_0

    const/16 v0, 0x10

    if-le v0, p0, :cond_0

    .line 166
    sget-object v0, Lcom/huawei/videoengine/ViERenderer;->g_remoteRender:[Landroid/view/SurfaceView;

    const/4 v1, 0x0

    aput-object v1, v0, p0

    .line 168
    :cond_0
    return-void
.end method

.method private static startLogcatManager()V
    .locals 3

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 329
    .local v0, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/tempLog.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {}, Lcom/huawei/videoengine/LogFile;->getInstance()Lcom/huawei/videoengine/LogFile;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huawei/videoengine/LogFile;->start(Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method private static stopLogcatManager()V
    .locals 1

    .prologue
    .line 336
    invoke-static {}, Lcom/huawei/videoengine/LogFile;->getInstance()Lcom/huawei/videoengine/LogFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/LogFile;->stop()V

    .line 337
    invoke-static {}, Lcom/huawei/videoengine/LogFile;->getInstance()Lcom/huawei/videoengine/LogFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/videoengine/LogFile;->writetoTrace()V

    .line 338
    return-void
.end method
