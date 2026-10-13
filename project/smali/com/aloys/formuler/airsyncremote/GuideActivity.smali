.class public Lcom/aloys/formuler/airsyncremote/GuideActivity;
.super Landroid/app/Activity;
.source "GuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aloys/formuler/airsyncremote/GuideActivity$MyGesture;,
        Lcom/aloys/formuler/airsyncremote/GuideActivity$ImageAdapter;
    }
.end annotation


# static fields
.field private static final MSG_CHECK_SELECTED_POSITION:I = 0x0

.field private static final MSG_EXIT_ACTIVITY:I = 0x1


# instance fields
.field private guideMsgArray:[Ljava/lang/String;

.field private guideTxtColor:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mGallery:Lcom/aloys/formuler/airsyncremote/GuideGallery;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mImage:[Ljava/lang/Integer;

.field private mIsLastGallery:Z

.field private mNaviLayout:Landroid/widget/LinearLayout;

.field private mNaviList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mShapeArr:[Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-object v4, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mGallery:Lcom/aloys/formuler/airsyncremote/GuideGallery;

    .line 46
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mDisplayWidth:I

    .line 48
    iput v3, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mDisplayHeight:I

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f020032

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const v2, 0x7f020033

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mImage:[Ljava/lang/Integer;

    .line 59
    const/16 v0, 0xf0

    const/16 v1, 0x65

    const/16 v2, 0x3c

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->guideTxtColor:I

    .line 208
    iput-boolean v3, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mIsLastGallery:Z

    .line 213
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/aloys/formuler/airsyncremote/GuideActivity$1;

    invoke-direct {v1, p0}, Lcom/aloys/formuler/airsyncremote/GuideActivity$1;-><init>(Lcom/aloys/formuler/airsyncremote/GuideActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mHandler:Landroid/os/Handler;

    .line 241
    iput-object v4, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mNaviList:Ljava/util/ArrayList;

    .line 242
    iput-object v4, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mShapeArr:[Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method static synthetic access$000(Lcom/aloys/formuler/airsyncremote/GuideActivity;)[Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/GuideActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mImage:[Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aloys/formuler/airsyncremote/GuideActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/GuideActivity;

    .prologue
    .line 40
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/aloys/formuler/airsyncremote/GuideActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/GuideActivity;

    .prologue
    .line 40
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/aloys/formuler/airsyncremote/GuideActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/GuideActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->guideMsgArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/aloys/formuler/airsyncremote/GuideActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/GuideActivity;

    .prologue
    .line 40
    iget v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->guideTxtColor:I

    return v0
.end method

.method static synthetic access$500(Lcom/aloys/formuler/airsyncremote/GuideActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/GuideActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/aloys/formuler/airsyncremote/GuideActivity;)Lcom/aloys/formuler/airsyncremote/GuideGallery;
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/GuideActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mGallery:Lcom/aloys/formuler/airsyncremote/GuideGallery;

    return-object v0
.end method

.method static synthetic access$700(Lcom/aloys/formuler/airsyncremote/GuideActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/GuideActivity;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->setNavigation(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/aloys/formuler/airsyncremote/GuideActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/GuideActivity;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mIsLastGallery:Z

    return v0
.end method

.method static synthetic access$802(Lcom/aloys/formuler/airsyncremote/GuideActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/aloys/formuler/airsyncremote/GuideActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mIsLastGallery:Z

    return p1
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 191
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 193
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mDisplayWidth:I

    .line 195
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mDisplayHeight:I

    .line 197
    const v2, 0x7f03001c

    invoke-virtual {p0, v2}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->setContentView(I)V

    .line 199
    const v2, 0x7f0b0055

    invoke-virtual {p0, v2}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aloys/formuler/airsyncremote/GuideGallery;

    iput-object v2, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mGallery:Lcom/aloys/formuler/airsyncremote/GuideGallery;

    .line 200
    iget-object v2, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mGallery:Lcom/aloys/formuler/airsyncremote/GuideGallery;

    new-instance v3, Lcom/aloys/formuler/airsyncremote/GuideActivity$ImageAdapter;

    invoke-direct {v3, p0, p0}, Lcom/aloys/formuler/airsyncremote/GuideActivity$ImageAdapter;-><init>(Lcom/aloys/formuler/airsyncremote/GuideActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/aloys/formuler/airsyncremote/GuideGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 202
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/aloys/formuler/airsyncremote/GuideActivity$MyGesture;

    invoke-direct {v3, p0}, Lcom/aloys/formuler/airsyncremote/GuideActivity$MyGesture;-><init>(Lcom/aloys/formuler/airsyncremote/GuideActivity;)V

    invoke-direct {v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 204
    const v2, 0x7f0b0056

    invoke-virtual {p0, v2}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mNaviLayout:Landroid/widget/LinearLayout;

    .line 205
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->setNavigation(I)V

    .line 206
    return-void
.end method

.method private setNavigation(I)V
    .locals 14
    .param p1, "position"    # I

    .prologue
    const/16 v2, 0x1e

    const/4 v13, 0x1

    const/high16 v3, 0x41f00000    # 30.0f

    const/4 v1, 0x0

    const/4 v12, 0x0

    .line 245
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mNaviList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mNaviList:Ljava/util/ArrayList;

    .line 247
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mImage:[Ljava/lang/Integer;

    array-length v0, v0

    if-ge v7, v0, :cond_1

    .line 248
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 249
    .local v8, "image":Landroid/widget/ImageView;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 250
    .local v9, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mImage:[Ljava/lang/Integer;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_0

    const/16 v0, 0x32

    invoke-virtual {v9, v12, v12, v0, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 251
    :cond_0
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mNaviList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mNaviLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 256
    .end local v7    # "i":I
    .end local v8    # "image":Landroid/widget/ImageView;
    .end local v9    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mShapeArr:[Landroid/graphics/drawable/ShapeDrawable;

    if-nez v0, :cond_2

    .line 257
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/ShapeDrawable;

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mShapeArr:[Landroid/graphics/drawable/ShapeDrawable;

    .line 258
    new-instance v10, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v10, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 259
    .local v10, "sd":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v11

    new-instance v0, Landroid/graphics/RadialGradient;

    const-string v2, "#838383"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v2, "#838383"

    .line 260
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 259
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 261
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mShapeArr:[Landroid/graphics/drawable/ShapeDrawable;

    aput-object v10, v0, v12

    .line 262
    new-instance v10, Landroid/graphics/drawable/ShapeDrawable;

    .end local v10    # "sd":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v10, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 263
    .restart local v10    # "sd":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v11

    new-instance v0, Landroid/graphics/RadialGradient;

    const-string v2, "#2d7dfa"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v2, "#2d7dfa"

    .line 264
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 263
    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 265
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mShapeArr:[Landroid/graphics/drawable/ShapeDrawable;

    aput-object v10, v0, v13

    .line 267
    .end local v10    # "sd":Landroid/graphics/drawable/ShapeDrawable;
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mNaviList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 268
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mNaviList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mShapeArr:[Landroid/graphics/drawable/ShapeDrawable;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 270
    :cond_3
    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mNaviList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 271
    const-string v0, "Cho"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNavigation position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mNaviList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mShapeArr:[Landroid/graphics/drawable/ShapeDrawable;

    aget-object v1, v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    :cond_4
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 278
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mGallery:Lcom/aloys/formuler/airsyncremote/GuideGallery;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/GuideGallery;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 279
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 280
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mGallery:Lcom/aloys/formuler/airsyncremote/GuideGallery;

    invoke-virtual {v1, v0}, Lcom/aloys/formuler/airsyncremote/GuideGallery;->setSelection(I)V

    .line 281
    iget-object v1, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mGallery:Lcom/aloys/formuler/airsyncremote/GuideGallery;

    invoke-virtual {v1}, Lcom/aloys/formuler/airsyncremote/GuideGallery;->onKeyLeft()Z

    .line 285
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    const-string v0, "onCreate"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-direct {p0}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->initView()V

    .line 68
    invoke-static {}, Lcom/hisilicon/dlna/dmc/gui/activity/AppPreference;->setAppAlreadyUse()V

    .line 69
    invoke-virtual {p0}, Lcom/aloys/formuler/airsyncremote/GuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->guideMsgArray:[Ljava/lang/String;

    .line 70
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 83
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/hisilicon/multiscreen/protocol/utils/LogTool;->d(Ljava/lang/String;)V

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 76
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/aloys/formuler/airsyncremote/GuideActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
