.class Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;
.super Ljava/lang/Object;
.source "ViEAndroidGLES20.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/videoengine/ViEAndroidGLES20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigChooser"
.end annotation


# static fields
.field private static EGL_OPENGL_ES2_BIT:I

.field private static s_configAttribs2:[I


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 295
    sput v3, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->EGL_OPENGL_ES2_BIT:I

    .line 297
    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 298
    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    .line 299
    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 300
    const/16 v1, 0x3022

    aput v1, v0, v3

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    .line 301
    const/16 v2, 0x3040

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->EGL_OPENGL_ES2_BIT:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 302
    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 296
    sput-object v0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->s_configAttribs2:[I

    .line 303
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "a"    # I
    .param p5, "depth"    # I
    .param p6, "stencil"    # I

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mValue:[I

    .line 284
    iput p1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mRedSize:I

    .line 285
    iput p2, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mGreenSize:I

    .line 286
    iput p3, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mBlueSize:I

    .line 287
    iput p4, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mAlphaSize:I

    .line 288
    iput p5, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mDepthSize:I

    .line 289
    iput p6, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mStencilSize:I

    .line 290
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    .prologue
    .line 359
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mValue:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 362
    .end local p5    # "defaultValue":I
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    const/4 v4, 0x0

    .line 308
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 309
    .local v5, "num_config":[I
    sget-object v2, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->s_configAttribs2:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 311
    aget v4, v5, v4

    .line 313
    .local v4, "numConfigs":I
    if-gtz v4, :cond_0

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 319
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v2, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->s_configAttribs2:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 323
    invoke-virtual {p0, p1, p2, v3}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 15
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 328
    move-object/from16 v0, p3

    array-length v14, v0

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    if-lt v13, v14, :cond_0

    .line 352
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 328
    :cond_0
    aget-object v4, p3, v13

    .line 330
    .local v4, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 329
    invoke-direct/range {v1 .. v6}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 332
    .local v9, "d":I
    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 331
    invoke-direct/range {v1 .. v6}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 335
    .local v12, "s":I
    iget v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mDepthSize:I

    if-lt v9, v1, :cond_1

    iget v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mStencilSize:I

    if-ge v12, v1, :cond_2

    .line 328
    :cond_1
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_0

    .line 340
    :cond_2
    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 339
    invoke-direct/range {v1 .. v6}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 342
    .local v11, "r":I
    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 341
    invoke-direct/range {v1 .. v6}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 344
    .local v10, "g":I
    const/16 v5, 0x3022

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 343
    invoke-direct/range {v1 .. v6}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 346
    .local v8, "b":I
    const/16 v5, 0x3021

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 345
    invoke-direct/range {v1 .. v6}, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    .line 348
    .local v7, "a":I
    iget v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mRedSize:I

    if-ne v11, v1, :cond_1

    iget v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mGreenSize:I

    if-ne v10, v1, :cond_1

    .line 349
    iget v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mBlueSize:I

    if-ne v8, v1, :cond_1

    iget v1, p0, Lcom/huawei/videoengine/ViEAndroidGLES20$ConfigChooser;->mAlphaSize:I

    if-ne v7, v1, :cond_1

    goto :goto_1
.end method
