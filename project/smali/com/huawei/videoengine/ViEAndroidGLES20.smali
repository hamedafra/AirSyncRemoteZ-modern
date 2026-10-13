.class public Lcom/huawei/videoengine/ViEAndroidGLES20;
.super Landroid/opengl/GLSurfaceView;
.source "ViEAndroidGLES20.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;,
        Lcom/huawei/videoengine/ViEAndroidGLES20$ContextFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "hme-video"

.field private static final manufaturer:Ljava/lang/String;


# instance fields
.field private lnativeObject:J

.field private nativeFreeResFlag:Z

.field private nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private nativeFunctionsRegisted:Z

.field private openGLCreated:Z

.field private remoteSurface:Landroid/view/Surface;

.field private surfaceCreated:Z

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/huawei/videoengine/ViEAndroidGLES20;->manufaturer:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x5

    const/4 v4, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    .line 35
    iput-boolean v4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    .line 37
    iput-boolean v4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 38
    iput-boolean v4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z

    .line 39
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 41
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    .line 42
    iput-object v5, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;

    .line 43
    iput v4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewWidth:I

    .line 44
    iput v4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewHeight:I

    .line 55
    const-string v0, "hme-video"

    const-string v2, "enter ViEAndroidGLES20 creat!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lcom/huawei/videoengine/ViEAndroidGLES20$ContextFactory;

    invoke-direct {v0, v5}, Lcom/huawei/videoengine/ViEAndroidGLES20$ContextFactory;-><init>(Lcom/huawei/videoengine/ViEAndroidGLES20$ContextFactory;)V

    invoke-virtual {p0, v0}, Lcom/huawei/videoengine/ViEAndroidGLES20;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 64
    new-instance v0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;

    const/4 v2, 0x6

    move v3, v1

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;-><init>(IIIIII)V

    invoke-virtual {p0, v0}, Lcom/huawei/videoengine/ViEAndroidGLES20;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 66
    invoke-virtual {p0, p0}, Lcom/huawei/videoengine/ViEAndroidGLES20;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 67
    invoke-virtual {p0, v4}, Lcom/huawei/videoengine/ViEAndroidGLES20;->setRenderMode(I)V

    .line 68
    const-string v0, "hme-video"

    const-string v1, "end creatting ViEAndroidGLES20!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method private native CreateOpenGLNative(JII)I
.end method

.method private native DrawNative(J)V
.end method

.method private native FreeGlNative(J)V
.end method

.method public static IsSupported(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 76
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 77
    .local v1, "info":Landroid/content/pm/ConfigurationInfo;
    iget v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v3, 0x20000

    if-lt v2, v3, :cond_0

    .line 79
    const/4 v2, 0x1

    .line 81
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static UseOpenGL2(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "renderWindow"    # Ljava/lang/Object;

    .prologue
    .line 49
    const-class v0, Lcom/huawei/videoengine/ViEAndroidGLES20;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$0(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0

    .prologue
    .line 272
    invoke-static {p0, p1}, Lcom/huawei/videoengine/ViEAndroidGLES20;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 6
    .param p0, "prompt"    # Ljava/lang/String;
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;

    .prologue
    .line 274
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .local v0, "error":I
    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    .line 277
    return-void

    .line 275
    :cond_0
    const-string v1, "hme-video"

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native setSurface(JLjava/lang/Object;)V
.end method


# virtual methods
.method public DeRegisterNativeObject()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 219
    iput-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 220
    iput-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    .line 223
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    .line 225
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 226
    return-void
.end method

.method public JavaUpdateResFreeFlag()V
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z

    .line 242
    :cond_0
    return-void
.end method

.method public ReDraw()V
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViEAndroidGLES20;->requestRender()V

    .line 233
    :cond_0
    return-void
.end method

.method public RegisterNativeObject(J)V
    .locals 1
    .param p1, "nativeObject"    # J

    .prologue
    .line 210
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 211
    iput-wide p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z

    .line 214
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 215
    return-void
.end method

.method public getRemoteSurface()V
    .locals 4

    .prologue
    .line 188
    const-string v0, "hme-video"

    const-string v1, "ViEAndroidGLES20.java! getRemoteSurface!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/huawei/videoengine/ViEAndroidGLES20;->manufaturer:Ljava/lang/String;

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 194
    const-string v0, "hme-video"

    const-string v1, "ViEAndroidGLES20.java! set remote surface to native channel!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-wide v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    iget-object v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/videoengine/ViEAndroidGLES20;->setSurface(JLjava/lang/Object;)V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const-string v0, "hme-video"

    const-string v1, "ViEAndroidGLES20.java! remoteSurface is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_2
    const-string v0, "hme-video"

    const-string v1, "ViEAndroidGLES20.java! getRemoteSurface but not registered!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 85
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 86
    iget-boolean v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    if-nez v0, :cond_3

    .line 89
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z

    if-eqz v0, :cond_1

    .line 91
    iget-wide v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    cmp-long v0, v4, v0

    if-eqz v0, :cond_2

    .line 93
    const-string v0, "hme-video"

    const-string v1, "first! onDrawFrame before FreeGlNative!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-wide v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    invoke-direct {p0, v0, v1}, Lcom/huawei/videoengine/ViEAndroidGLES20;->FreeGlNative(J)V

    .line 95
    const-string v0, "hme-video"

    const-string v1, "onDrawFrame after FreeGlNative!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    iput-boolean v3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z

    .line 103
    iput-wide v4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 137
    :goto_1
    return-void

    .line 99
    :cond_2
    const-string v0, "hme-video"

    const-string v1, "onDrawFrame 0 == lnativeObject!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_3
    iget-boolean v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z

    if-nez v0, :cond_6

    .line 113
    iget-boolean v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    if-nez v0, :cond_5

    .line 114
    iget-wide v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    iget v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewWidth:I

    iget v3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/huawei/videoengine/ViEAndroidGLES20;->CreateOpenGLNative(JII)I

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 121
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    .line 124
    :cond_5
    iget-wide v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    invoke-direct {p0, v0, v1}, Lcom/huawei/videoengine/ViEAndroidGLES20;->DrawNative(J)V

    .line 136
    :goto_2
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 129
    :cond_6
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "second! onDrawFrame before FreeGlNative! openGLCreated:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-wide v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    invoke-direct {p0, v0, v1}, Lcom/huawei/videoengine/ViEAndroidGLES20;->FreeGlNative(J)V

    .line 131
    const-string v0, "hme-video"

    const-string v1, "onDrawFrame after FreeGlNative!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput-boolean v3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z

    goto :goto_2
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x1

    .line 141
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ViEAndroidGLES20.java! enter onSurfaceChanged + width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nativeFunctionsRegisted flag:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput-boolean v4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->surfaceCreated:Z

    .line 145
    iput p2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewWidth:I

    .line 146
    iput p3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewHeight:I

    .line 148
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 150
    iget-wide v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 151
    iget-wide v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    iget v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewWidth:I

    iget v3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->viewHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/huawei/videoengine/ViEAndroidGLES20;->resetRender(JII)V

    .line 153
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionsRegisted:Z

    if-eqz v0, :cond_1

    .line 154
    iget-wide v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/huawei/videoengine/ViEAndroidGLES20;->CreateOpenGLNative(JII)I

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iput-boolean v4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->openGLCreated:Z

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 159
    const-string v0, "hme-video"

    const-string v1, "ViEAndroidGLES20.java! leave onSurfaceChanged!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 164
    const-string v1, "hme-video"

    const-string v2, "ViEAndroidGLES20.java! onSurfaceCreated!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->nativeFreeResFlag:Z

    .line 166
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 167
    .local v0, "holder":Landroid/view/SurfaceHolder;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/huawei/videoengine/ViEAndroidGLES20;->manufaturer:Ljava/lang/String;

    const-string v2, "HUAWEI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;

    .line 171
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 172
    const-string v1, "hme-video"

    const-string v2, "ViEAndroidGLES20.java! lnativeObject is registerd!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-wide v2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->lnativeObject:J

    iget-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;

    invoke-direct {p0, v2, v3, v1}, Lcom/huawei/videoengine/ViEAndroidGLES20;->setSurface(JLjava/lang/Object;)V

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20;->remoteSurface:Landroid/view/Surface;

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const-string v1, "hme-video"

    const-string v2, "ViEAndroidGLES20.java! not registered,save remote surface!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSurfaceDestory(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 184
    const-string v0, "hme-video"

    const-string v1, "ViEAndroidGLES20.java! onSurfaceDestory!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method public resetRender(JII)V
    .locals 1
    .param p1, "nativeObject"    # J
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 377
    invoke-direct {p0, p1, p2}, Lcom/huawei/videoengine/ViEAndroidGLES20;->FreeGlNative(J)V

    .line 378
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/videoengine/ViEAndroidGLES20;->CreateOpenGLNative(JII)I

    .line 379
    return-void
.end method
