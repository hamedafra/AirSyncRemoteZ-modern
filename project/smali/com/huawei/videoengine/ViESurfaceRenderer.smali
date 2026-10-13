.class public Lcom/huawei/videoengine/ViESurfaceRenderer;
.super Ljava/lang/Object;
.source "ViESurfaceRenderer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final displayBorder:I = 0x0

.field private static final displayClipping:I = 0x1

.field private static final displayNone:I = 0x2

.field private static final manufaturer:Ljava/lang/String;


# instance fields
.field private CreatNativeFlag:Z

.field private DataHeight:I

.field private DataWidth:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private displayType:I

.field private dstBottomScale:F

.field private dstHeight:I

.field private dstLeftScale:F

.field private dstRect:Landroid/graphics/Rect;

.field private dstRightScale:F

.field private dstTopScale:F

.field private dstWidth:I

.field private lnativeObject:J

.field private remoteSurface:Landroid/view/Surface;

.field private srcRect:Landroid/graphics/Rect;

.field private surfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/huawei/videoengine/ViESurfaceRenderer;->manufaturer:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 7
    .param p1, "view"    # Landroid/view/SurfaceView;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 30
    iput-object v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 33
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    .line 35
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    .line 40
    const/4 v2, 0x2

    iput v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->displayType:I

    .line 41
    iput-boolean v4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->CreatNativeFlag:Z

    .line 42
    iput v4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataWidth:I

    .line 43
    iput v4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataHeight:I

    .line 45
    iput v4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    .line 46
    iput v4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    .line 47
    iput v5, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstTopScale:F

    .line 48
    iput v6, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstBottomScale:F

    .line 49
    iput v5, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstLeftScale:F

    .line 50
    iput v6, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRightScale:F

    .line 51
    iput-object v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    .line 52
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    .line 55
    const-string v2, "hme-video"

    const-string v3, "enter ViESurfaceRenderer !"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 58
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_0

    .line 82
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 62
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_2

    .line 63
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 64
    .local v1, "dst":Landroid/graphics/Rect;
    if-eqz v1, :cond_1

    .line 65
    iput-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    .line 66
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    .line 67
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 72
    .end local v1    # "dst":Landroid/graphics/Rect;
    :cond_2
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 73
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 74
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 75
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 77
    iput-boolean v4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->CreatNativeFlag:Z

    .line 79
    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 81
    const-string v2, "hme-video"

    const-string v3, "leave ViESurfaceRenderer !"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native setSurface(JLjava/lang/Object;)V
.end method


# virtual methods
.method public CreateBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 163
    const/4 v0, -0x4

    .line 162
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_0
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 169
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 170
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 171
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 172
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->CreatNativeFlag:Z

    .line 174
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 165
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public CreateByteBuffer(II)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 178
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 181
    const/4 v1, -0x4

    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    :cond_0
    :goto_0
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 189
    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 190
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 191
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 192
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 193
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iput p1, v1, Landroid/graphics/Rect;->right:I

    .line 196
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->CreatNativeFlag:Z

    .line 197
    iput p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataWidth:I

    .line 198
    iput p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataHeight:I

    .line 199
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->SetSurfaceViewDisplayParas()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    :goto_1
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v1

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "hme-video"

    const-string v2, "Failed to CreateByteBuffer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iput-object v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    .line 206
    iput-object v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 183
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public DrawBitmap()V
    .locals 5

    .prologue
    .line 336
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 340
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    .line 341
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 342
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public DrawBlack()V
    .locals 2

    .prologue
    .line 347
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 350
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    .line 351
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 352
    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public DrawByteBuffer()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 331
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 332
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->DrawBitmap()V

    goto :goto_0
.end method

.method public RegisterNativeObject(J)V
    .locals 1
    .param p1, "nativeObject"    # J

    .prologue
    .line 358
    iput-wide p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    .line 359
    return-void
.end method

.method public SetCoordinates(FFFFI)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "iDisplayType"    # I

    .prologue
    .line 311
    iput p1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstLeftScale:F

    .line 312
    iput p2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstTopScale:F

    .line 313
    iput p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRightScale:F

    .line 314
    iput p4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstBottomScale:F

    .line 316
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstLeftScale:F

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 317
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstTopScale:F

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 318
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstBottomScale:F

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 319
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRightScale:F

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 322
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetCoordinates + left:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iput p5, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->displayType:I

    .line 325
    return-void
.end method

.method public SetSurfaceViewDisplayParas()V
    .locals 11

    .prologue
    .line 215
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetSurfaceViewDisplayParas + DataWidth:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DataHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " displayType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->displayType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetSurfaceViewDisplayParas + dstWidth/dstHeight:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width/height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataHeight:I

    if-eqz v0, :cond_0

    .line 219
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    if-nez v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->displayType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 234
    :pswitch_0
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 237
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataHeight:I

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 238
    .local v8, "tempDestWidth":F
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v1, v1

    div-float v1, v8, v1

    sub-float v6, v0, v1

    .line 239
    .local v6, "ratio":F
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CreateByteBuffer + ratio:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tempDestWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dstWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, v6, v0

    const/4 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v6, v3

    sub-float v3, v0, v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/videoengine/ViESurfaceRenderer;->SetCoordinates(FFFFI)V

    .line 250
    .end local v6    # "ratio":F
    .end local v8    # "tempDestWidth":F
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->DrawBlack()V

    .line 251
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->DrawBlack()V

    .line 252
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->DrawBlack()V

    goto :goto_0

    .line 243
    :cond_3
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 245
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataHeight:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataWidth:I

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 246
    .local v7, "tempDestHeight":F
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v1, v1

    div-float v1, v7, v1

    sub-float v6, v0, v1

    .line 247
    .restart local v6    # "ratio":F
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CreateByteBuffer + ratio:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tempDestHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dstHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v1, 0x0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v2, v6, v0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v6, v4

    sub-float v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/videoengine/ViESurfaceRenderer;->SetCoordinates(FFFFI)V

    goto :goto_1

    .line 263
    .end local v6    # "ratio":F
    .end local v7    # "tempDestHeight":F
    :pswitch_1
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    .line 266
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v9, v0

    .line 267
    .local v9, "tempSrcHeight":I
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 268
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 269
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataHeight:I

    sub-int/2addr v1, v9

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 270
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v9

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 272
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CreateByteBuffer + top"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 274
    .end local v9    # "tempSrcHeight":I
    :cond_4
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 276
    iget v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataHeight:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v10, v0

    .line 277
    .local v10, "tempSrcWidth":I
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 278
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 279
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataWidth:I

    sub-int/2addr v1, v10

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 280
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v10

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 282
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CreateByteBuffer + left"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 291
    .end local v10    # "tempSrcWidth":I
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 292
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 293
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 294
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->srcRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->DataWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getRemoteSurface()V
    .locals 4

    .prologue
    .line 133
    const-string v0, "hme-video"

    const-string v1, "VieSurfaceRenderer.java! getRemoteSurface!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/huawei/videoengine/ViESurfaceRenderer;->manufaturer:Ljava/lang/String;

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 139
    const-string v0, "hme-video"

    const-string v1, "VieSurfaceRenderer.java! set remote surface to native channel!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-wide v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/videoengine/ViESurfaceRenderer;->setSurface(JLjava/lang/Object;)V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string v0, "hme-video"

    const-string v1, "VieSurfaceRenderer.java! remoteSurface is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_2
    const-string v0, "hme-video"

    const-string v1, "VieSurfaceRenderer.java! getRemoteSurface but not registered!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeCallback()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 90
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "in_width"    # I
    .param p4, "in_height"    # I

    .prologue
    .line 95
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ViESurfaceRenderer.java! surfaceChanged  width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CreatNativeFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->CreatNativeFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iput p4, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    .line 98
    iput p3, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    .line 99
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstLeftScale:F

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 100
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstTopScale:F

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 101
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstBottomScale:F

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 102
    iget-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstRightScale:F

    iget v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->dstWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 104
    iget-boolean v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->CreatNativeFlag:Z

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "hme-video"

    const-string v1, "before SetSurfaceViewDisplayParas"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/huawei/videoengine/ViESurfaceRenderer;->SetSurfaceViewDisplayParas()V

    .line 108
    const-string v0, "hme-video"

    const-string v1, "after SetSurfaceViewDisplayParas"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 114
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VieSurfaceRenderer.java! enter surfaceCreated  this:"

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

    .line 115
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/huawei/videoengine/ViESurfaceRenderer;->manufaturer:Ljava/lang/String;

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 120
    const-string v0, "hme-video"

    const-string v1, "VieSurfaceRenderer.java! lnativeObject is registerd!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-wide v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->lnativeObject:J

    iget-object v2, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    invoke-direct {p0, v0, v1, v2}, Lcom/huawei/videoengine/ViESurfaceRenderer;->setSurface(JLjava/lang/Object;)V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/videoengine/ViESurfaceRenderer;->remoteSurface:Landroid/view/Surface;

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v0, "hme-video"

    const-string v1, "VieSurfaceRenderer.java! not registered,save remote surface!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 155
    const-string v0, "hme-video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VieSurfaceRenderer.java! enter surfaceDestroyed this:"

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

    .line 157
    return-void
.end method
